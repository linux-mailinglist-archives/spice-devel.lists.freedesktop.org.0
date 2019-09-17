Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3A6B4B37
	for <lists+spice-devel@lfdr.de>; Tue, 17 Sep 2019 11:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6D26EB9C;
	Tue, 17 Sep 2019 09:46:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50C5D6EB99
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2019 09:46:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E540F8AC6FB
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2019 09:46:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6EDC55D9DC;
 Tue, 17 Sep 2019 09:46:36 +0000 (UTC)
Date: Tue, 17 Sep 2019 11:46:36 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190917094636.2tags7r2c7iez27t@wingsuit>
References: <20190602193226.19766-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190602193226.19766-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Tue, 17 Sep 2019 09:46:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/2] char-device: Don't
 use RedClient API
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
Content-Type: multipart/mixed; boundary="===============0161576623=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0161576623==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lesfvxmvphn34ti3"
Content-Disposition: inline


--lesfvxmvphn34ti3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 02, 2019 at 08:32:25PM +0100, Frediano Ziglio wrote:
> RedClient was an opaque structure for RedCharDevice.
> It started to be used when RedsState started to contain all
> the global state.
> Make it opaque again using a new RedCharDeviceClientOpaque.
> The RedCharDeviceClientOpaque define in the header allows users
> of the class to override the type to get a more safe type
> than RedClient.
> The define at the beginning of C file is to make sure we don't
> use the opaque type as a specific one.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/char-device.c | 52 ++++++++++++++++++++++++--------------------
>  server/char-device.h | 22 +++++++++++--------
>  2 files changed, 42 insertions(+), 32 deletions(-)
>=20
> This patch was named "char-device: Make RedClient an opaque structure aga=
in"
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index 9ee255664..82255e811 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -22,8 +22,12 @@
> =20
>  #include <config.h>
>  #include <inttypes.h>
> +
> +
> +typedef struct RedCharDeviceClientOpaque RedCharDeviceClientOpaque;
> +#define RedCharDeviceClientOpaque RedCharDeviceClientOpaque
> +
>  #include "char-device.h"
> -#include "red-client.h"
>  #include "reds.h"
>  #include "glib-compat.h"
> =20
> @@ -39,7 +43,7 @@ typedef enum {
>  } WriteBufferOrigin;
> =20
>  struct RedCharDeviceWriteBufferPrivate {
> -    RedClient *client; /* The client that sent the message to the device.
> +    RedCharDeviceClientOpaque *client; /* The client that sent the messa=
ge to the device.
>                            NULL if the server created the message */
>      WriteBufferOrigin origin;
>      uint32_t token_price;
> @@ -49,7 +53,7 @@ struct RedCharDeviceWriteBufferPrivate {
>  typedef struct RedCharDeviceClient RedCharDeviceClient;
>  struct RedCharDeviceClient {
>      RedCharDevice *dev;
> -    RedClient *client;
> +    RedCharDeviceClientOpaque *client;
>      int do_flow_control;
>      uint64_t num_client_tokens;
>      uint64_t num_client_tokens_free; /* client messages that were consum=
ed by the device */
> @@ -108,7 +112,7 @@ red_char_device_read_one_msg_from_device(RedCharDevic=
e *dev)
>  static void
>  red_char_device_send_msg_to_client(RedCharDevice *dev,
>                                     RedPipeItem *msg,
> -                                   RedClient *client)
> +                                   RedCharDeviceClientOpaque *client)
>  {
>     RedCharDeviceClass *klass =3D RED_CHAR_DEVICE_GET_CLASS(dev);
> =20
> @@ -117,7 +121,7 @@ red_char_device_send_msg_to_client(RedCharDevice *dev,
> =20
>  static void
>  red_char_device_send_tokens_to_client(RedCharDevice *dev,
> -                                      RedClient *client,
> +                                      RedCharDeviceClientOpaque *client,
>                                        uint32_t tokens)
>  {
>     RedCharDeviceClass *klass =3D RED_CHAR_DEVICE_GET_CLASS(dev);
> @@ -140,7 +144,7 @@ red_char_device_on_free_self_token(RedCharDevice *dev)
>  }
> =20
>  static void
> -red_char_device_remove_client(RedCharDevice *dev, RedClient *client)
> +red_char_device_remove_client(RedCharDevice *dev, RedCharDeviceClientOpa=
que *client)
>  {
>     RedCharDeviceClass *klass =3D RED_CHAR_DEVICE_GET_CLASS(dev);
> =20
> @@ -222,7 +226,7 @@ static void red_char_device_handle_client_overflow(Re=
dCharDeviceClient *dev_clie
>  }
> =20
>  static RedCharDeviceClient *red_char_device_client_find(RedCharDevice *d=
ev,
> -                                                        RedClient *clien=
t)
> +                                                        RedCharDeviceCli=
entOpaque *client)
>  {
>      GList *item;
> =20
> @@ -400,7 +404,7 @@ static void red_char_device_send_to_client_tokens_abs=
orb(RedCharDeviceClient *de
>  }
> =20
>  void red_char_device_send_to_client_tokens_add(RedCharDevice *dev,
> -                                               RedClient *client,
> +                                               RedCharDeviceClientOpaque=
 *client,
>                                                 uint32_t tokens)
>  {
>      RedCharDeviceClient *dev_client;
> @@ -415,7 +419,7 @@ void red_char_device_send_to_client_tokens_add(RedCha=
rDevice *dev,
>  }
> =20
>  void red_char_device_send_to_client_tokens_set(RedCharDevice *dev,
> -                                               RedClient *client,
> +                                               RedCharDeviceClientOpaque=
 *client,
>                                                 uint32_t tokens)
>  {
>      RedCharDeviceClient *dev_client;
> @@ -534,7 +538,7 @@ static void red_char_device_write_retry(void *opaque)
>  }
> =20
>  static RedCharDeviceWriteBuffer *
> -red_char_device_write_buffer_get(RedCharDevice *dev, RedClient *client, =
int size,
> +red_char_device_write_buffer_get(RedCharDevice *dev, RedCharDeviceClient=
Opaque *client, int size,
>                                   WriteBufferOrigin origin, int migrated_=
data_tokens)
>  {
>      RedCharDeviceWriteBuffer *ret;
> @@ -598,7 +602,7 @@ error:
>  }
> =20
>  RedCharDeviceWriteBuffer *red_char_device_write_buffer_get_client(RedCha=
rDevice *dev,
> -                                                                  RedCli=
ent *client,
> +                                                                  RedCha=
rDeviceClientOpaque *client,
>                                                                    int si=
ze)
>  {
>      spice_assert(client);
> @@ -658,7 +662,7 @@ void red_char_device_write_buffer_release(RedCharDevi=
ce *dev,
> =20
>      WriteBufferOrigin buf_origin =3D write_buf->priv->origin;
>      uint32_t buf_token_price =3D write_buf->priv->token_price;
> -    RedClient *client =3D write_buf->priv->client;
> +    RedCharDeviceClientOpaque *client =3D write_buf->priv->client;
> =20
>      if (!dev) {
>          g_warning("no device. write buffer is freed");
> @@ -703,11 +707,13 @@ void red_char_device_destroy(RedCharDevice *char_de=
v)
>      g_object_unref(char_dev);
>  }
> =20
> -static RedCharDeviceClient *red_char_device_client_new(RedClient *client,
> -                                                       int do_flow_contr=
ol,
> -                                                       uint32_t max_send=
_queue_size,
> -                                                       uint32_t num_clie=
nt_tokens,
> -                                                       uint32_t num_send=
_tokens)
> +static RedCharDeviceClient *
> +red_char_device_client_new(RedsState *reds,
> +                           RedCharDeviceClientOpaque *client,
> +                           int do_flow_control,
> +                           uint32_t max_send_queue_size,
> +                           uint32_t num_client_tokens,
> +                           uint32_t num_send_tokens)
>  {
>      RedCharDeviceClient *dev_client;
> =20
> @@ -717,8 +723,6 @@ static RedCharDeviceClient *red_char_device_client_ne=
w(RedClient *client,
>      dev_client->max_send_queue_size =3D max_send_queue_size;
>      dev_client->do_flow_control =3D do_flow_control;
>      if (do_flow_control) {
> -        RedsState *reds =3D red_client_get_server(client);
> -
>          dev_client->wait_for_tokens_timer =3D
>              reds_core_timer_add(reds, device_client_wait_for_tokens_time=
out,
>                                  dev_client);
> @@ -736,7 +740,7 @@ static RedCharDeviceClient *red_char_device_client_ne=
w(RedClient *client,
>  }
> =20
>  bool red_char_device_client_add(RedCharDevice *dev,
> -                                RedClient *client,
> +                                RedCharDeviceClientOpaque *client,
>                                  int do_flow_control,
>                                  uint32_t max_send_queue_size,
>                                  uint32_t num_client_tokens,
> @@ -757,7 +761,9 @@ bool red_char_device_client_add(RedCharDevice *dev,
>      dev->priv->wait_for_migrate_data =3D wait_for_migrate_data;
> =20
>      spice_debug("char device %p, client %p", dev, client);
> -    dev_client =3D red_char_device_client_new(client, do_flow_control,
> +    dev_client =3D red_char_device_client_new(dev->priv->reds,
> +                                            client,
> +                                            do_flow_control,
>                                              max_send_queue_size,
>                                              num_client_tokens,
>                                              num_send_tokens);
> @@ -769,7 +775,7 @@ bool red_char_device_client_add(RedCharDevice *dev,
>  }
> =20
>  void red_char_device_client_remove(RedCharDevice *dev,
> -                                   RedClient *client)
> +                                   RedCharDeviceClientOpaque *client)
>  {
>      RedCharDeviceClient *dev_client;
> =20
> @@ -796,7 +802,7 @@ void red_char_device_client_remove(RedCharDevice *dev,
>  }
> =20
>  int red_char_device_client_exists(RedCharDevice *dev,
> -                                  RedClient *client)
> +                                  RedCharDeviceClientOpaque *client)
>  {
>      return (red_char_device_client_find(dev, client) !=3D NULL);
>  }
> diff --git a/server/char-device.h b/server/char-device.h
> index 32ee4f78a..9d4cf9d92 100644
> --- a/server/char-device.h
> +++ b/server/char-device.h
> @@ -38,6 +38,10 @@ typedef struct SpiceCharDeviceState RedCharDevice;
>  typedef struct RedCharDeviceClass RedCharDeviceClass;
>  typedef struct RedCharDevicePrivate RedCharDevicePrivate;
> =20
> +#ifndef RedCharDeviceClientOpaque
> +#define RedCharDeviceClientOpaque RedClient
> +#endif
> +
>  /* 'SpiceCharDeviceState' name is used for consistency with what spice-c=
har.h exports */
>  struct SpiceCharDeviceState
>  {
> @@ -62,12 +66,12 @@ struct RedCharDeviceClass
>      /* after this call, the message is unreferenced */
>      void (*send_msg_to_client)(RedCharDevice *self,
>                                 RedPipeItem *msg,
> -                               RedClient *client);
> +                               RedCharDeviceClientOpaque *client);
> =20
>      /* The cb is called when a predefined number of write buffers were c=
onsumed by the
>       * device */
>      void (*send_tokens_to_client)(RedCharDevice *self,
> -                                  RedClient *client,
> +                                  RedCharDeviceClientOpaque *client,
>                                    uint32_t tokens);
> =20
>      /* The cb is called when a server (self) message that was addressed =
to the device,
> @@ -77,7 +81,7 @@ struct RedCharDeviceClass
>      /* This cb is called if it is recommended to remove the client
>       * due to slow flow or due to some other error.
>       * The called instance should disconnect the client, or at least the=
 corresponding channel */
> -    void (*remove_client)(RedCharDevice *self, RedClient *client);
> +    void (*remove_client)(RedCharDevice *self, RedCharDeviceClientOpaque=
 *client);
> =20
>      /* This cb is called when device receives an event */
>      void (*port_event)(RedCharDevice *self, uint8_t event);
> @@ -188,7 +192,7 @@ void red_char_device_reset(RedCharDevice *dev);
>  /* max_send_queue_size =3D how many messages we can read from the device=
 and enqueue for this client,
>   * when we have tokens for other clients and no tokens for this one */
>  bool red_char_device_client_add(RedCharDevice *dev,
> -                                RedClient *client,
> +                                RedCharDeviceClientOpaque *client,
>                                  int do_flow_control,
>                                  uint32_t max_send_queue_size,
>                                  uint32_t num_client_tokens,
> @@ -196,9 +200,9 @@ bool red_char_device_client_add(RedCharDevice *dev,
>                                  int wait_for_migrate_data);
> =20
>  void red_char_device_client_remove(RedCharDevice *dev,
> -                                   RedClient *client);
> +                                   RedCharDeviceClientOpaque *client);
>  int red_char_device_client_exists(RedCharDevice *dev,
> -                                  RedClient *client);
> +                                  RedCharDeviceClientOpaque *client);
> =20
>  void red_char_device_start(RedCharDevice *dev);
>  void red_char_device_stop(RedCharDevice *dev);
> @@ -209,17 +213,17 @@ SpiceServer* red_char_device_get_server(RedCharDevi=
ce *dev);
>  void red_char_device_wakeup(RedCharDevice *dev);
> =20
>  void red_char_device_send_to_client_tokens_add(RedCharDevice *dev,
> -                                               RedClient *client,
> +                                               RedCharDeviceClientOpaque=
 *client,
>                                                 uint32_t tokens);
> =20
> =20
>  void red_char_device_send_to_client_tokens_set(RedCharDevice *dev,
> -                                               RedClient *client,
> +                                               RedCharDeviceClientOpaque=
 *client,
>                                                 uint32_t tokens);
>  /** Write to device **/
> =20
>  RedCharDeviceWriteBuffer *red_char_device_write_buffer_get_client(RedCha=
rDevice *dev,
> -                                                                  RedCli=
ent *client,
> +                                                                  RedCha=
rDeviceClientOpaque *client,
>                                                                    int si=
ze);
> =20
>  /* Returns NULL if use_token =3D=3D true and no tokens are available */
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--lesfvxmvphn34ti3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2Aq3sACgkQl9kSPeN6
SE9SSBAAtGaqtRB0VEuryhpCzGbzWKIirxPd35O7c4a+1a0dmmyhtkzDT+TgeRao
yCJV5pvK7yuqo0YyXEpTGZY/gaiX1iDhK9xcq+m+mV50ZjEoBgvgjUEV4X4glBJq
t4K3AWQMpW3Dwr4OB6cZoJ7rqpkpQyV0ynJEQMgclCS711VSW84IvPj2O9quatp+
6/d18cXiSYwwwp7Q57454+pfhSfD/KB5Yn+tlOGqmtAd1D3u7sHagItzXL3waxYE
4eUdGAHgfitJmSMxLSfGAZGPJWSHYp75CK/vxcxFaRBsSXAhE5c0JWIGlbUyNH9E
CX5FnGBwfUHeLWNGmDhZFIH4UI/sUsr4SR2XS4yqTRTfyqXfr8oUbgyja9YWUC46
xVmcNlWl4lzLZmg0/3GDB4jTduuQqFu+mg/Sg4lGfjOrZg3qki2Zs0szJawSs1Rr
pkAbvhGpXo6btTR4ejiVVJHpdiqiaJM34b42fGlOxXjsgGlFSb4wQTbb1d4DRGm5
NzhodIAlF9wgqcyb0MKmAVJacEQlQ3UmKAQ2RDK856Vf79YK/Lz1xBCM7yxIQNVU
XsxSYnIkaFXVSB34wG1iYRI+50ligfaJwBiFIrZ5Cwo5te0fGk9dfvCQ1PkoV0q7
EmVnSqHEzR20Ffc2SyhAhD/Fqya6x/IahEeDeRdwskzKXyaLlb0=
=aOih
-----END PGP SIGNATURE-----

--lesfvxmvphn34ti3--

--===============0161576623==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0161576623==--
