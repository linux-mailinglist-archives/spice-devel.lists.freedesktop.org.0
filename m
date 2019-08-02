Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED77F196
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DE26ED86;
	Fri,  2 Aug 2019 09:40:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BBD6ED86
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:40:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B6F9F81F10
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:40:45 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6338319C70;
 Fri,  2 Aug 2019 09:40:45 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:40:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094044.42ezxq6nlg3bbsrm@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 02 Aug 2019 09:40:45 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 03/13] char-device: Allocate
 all write buffer in a single block
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0829785125=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0829785125==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2oo2zvfbwyc4pjnc"
Content-Disposition: inline


--2oo2zvfbwyc4pjnc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:44PM +0100, Frediano Ziglio wrote:
> There are no much data other than the buffer, reduce the
> allocations.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/char-device.c | 27 +++++++++++++++------------
>  server/char-device.h |  2 +-
>  2 files changed, 16 insertions(+), 13 deletions(-)
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index 89581ea42..059e8e5f6 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -149,11 +149,9 @@ red_char_device_remove_client(RedCharDevice *dev, Re=
dClient *client)
> =20
>  static void red_char_device_write_buffer_free(RedCharDeviceWriteBuffer *=
buf)
>  {
> -    if (buf =3D=3D NULL)
> -        return;
> -
> -    g_free(buf->buf);
> -    g_free(buf);
> +    if (buf) {
> +        g_free(buf->priv);
> +    }
>  }
> =20
>  static void write_buffers_queue_free(GQueue *write_queue)
> @@ -542,22 +540,27 @@ red_char_device_write_buffer_get(RedCharDevice *dev=
, RedClient *client, int size
>      ret =3D g_queue_pop_tail(&dev->priv->write_bufs_pool);
>      if (ret) {
>          dev->priv->cur_pool_size -=3D ret->buf_size;
> -    } else {
> +        if (ret->buf_size < size) {
> +            spice_assert(!spice_extra_checks || ret->priv->refs =3D=3D 1=
);

Weird we didn't check this before...

> +            red_char_device_write_buffer_free(ret);
> +            ret =3D NULL;

I think that in the kernel they do this kind of _free() function
to return NULL just to make this kind of function call nicer,
that is,
   =20
    ret =3D red_char_device_write_buffer_free(ret);

while we often use glib's

    g_clear_pointer(&ret, red_char_device_write_buffer_free);

=2E.. just a silly comment :)

> +        }
> +    }
> +    if (ret =3D=3D NULL) {
>          struct RedCharDeviceWriteBufferFull {
> -            RedCharDeviceWriteBuffer buffer;
>              RedCharDeviceWriteBufferPrivate priv;
> +            RedCharDeviceWriteBuffer buffer;
>          } *write_buf;
> -        write_buf =3D g_new0(struct RedCharDeviceWriteBufferFull, 1);
> +        write_buf =3D g_malloc(sizeof(struct RedCharDeviceWriteBufferFul=
l) + size);
> +        memset(write_buf, 0, sizeof(*write_buf));

g_malloc0?

> +        write_buf->priv.refs =3D 1;

Weird that this was not being set before...

>          ret =3D &write_buf->buffer;
> +        ret->buf_size =3D size;
>          ret->priv =3D &write_buf->priv;
>      }
> =20
>      spice_assert(!ret->buf_used);
> =20
> -    if (ret->buf_size < size) {
> -        ret->buf =3D g_realloc(ret->buf, size);
> -        ret->buf_size =3D size;
> -    }

Looks fine,
Acked-by: Victor Toso <victortoso@redhat.com>

>      ret->priv->origin =3D origin;
> =20
>      if (origin =3D=3D WRITE_BUFFER_ORIGIN_CLIENT) {
> diff --git a/server/char-device.h b/server/char-device.h
> index 7d3ad8b3a..5327c25e5 100644
> --- a/server/char-device.h
> +++ b/server/char-device.h
> @@ -151,11 +151,11 @@ GType red_char_device_get_type(void) G_GNUC_CONST;
>  /* buffer that is used for writing to the device */
>  typedef struct RedCharDeviceWriteBufferPrivate RedCharDeviceWriteBufferP=
rivate;
>  typedef struct RedCharDeviceWriteBuffer {
> -    uint8_t *buf;
>      uint32_t buf_size;
>      uint32_t buf_used;
> =20
>      RedCharDeviceWriteBufferPrivate *priv;
> +    uint8_t buf[0];
>  } RedCharDeviceWriteBuffer;
> =20
>  void red_char_device_reset_dev_instance(RedCharDevice *dev,
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2oo2zvfbwyc4pjnc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBRwACgkQl9kSPeN6
SE+z0g//RvIm6LjOjnVjLZn1UWmNdkjtn+4I9aRcoCeUUsFRu65R/Jg5lHwRE8ia
nVRoyLfGA8XrP0KhIgV0IpaK3vhHzpVxQeHE1UhJQ+zj07BS56gZSh/7qekii+TW
ioEBCywkbhnN/utfnets06WUw8vE8ktPFXJajPfHw9Goz+tm1G+2i6M3+cw1U1DF
v52yzSfIVTECRX2JwbFaX6F18fahhyhrMsqtJBcjxOlqhGpBQmjDV/CV8+/a9IOh
jeKS0Xa4tUCpvzdXB5Ro7iYHSmPEl//xr8HsBJJZe25gA5sbOhNxoNM1P5lGEm9i
Efq8oH5cgJ5HMoZjcI28Y5vfg57AIsBamqX53kfe8Fjf92EI+y2x6liOhuKc8NGs
sLjHJhuv63thDtlq21LdapCpuDIxlMRx5ERHpocHXmFLIFZRqSlS/x9PBHQK1V4n
lrzpWQjmdbUtx8cfTZUQR2sVjE7C7TphTTRi39hJ3MTY2Al+xZEMcziVRYsiqiuD
A36FSvoqz+Sk9iR6cd51C0Zd2oa6IjhGK2GqaxR+H1xytthlmFfEIrbenWfNd/Mf
Cp9Bw5IUwMwFaoA25w7R50QshOBHixGjakywqsM2ZuAXzcvt2ZgKtTwdkv+B5KiN
EAlp030CA6opq52izpsetPkoznxyWh36Uuy2r56w7cuRsj361kY=
=K8Vw
-----END PGP SIGNATURE-----

--2oo2zvfbwyc4pjnc--

--===============0829785125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0829785125==--
