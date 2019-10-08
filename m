Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098DCFB46
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 15:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8B36E7BD;
	Tue,  8 Oct 2019 13:25:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAAFF6E7BD
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:25:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5677C11A22
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:25:51 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 003F65C1D4;
 Tue,  8 Oct 2019 13:25:50 +0000 (UTC)
Date: Tue, 8 Oct 2019 15:25:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008132550.ysqdlgc4zbhp2pyn@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-6-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-6-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 08 Oct 2019 13:25:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 5/8] smartcard: Use generated
 parse for messages
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
Content-Type: multipart/mixed; boundary="===============0950225984=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0950225984==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v7eyimerfa6rgv6e"
Content-Disposition: inline


--v7eyimerfa6rgv6e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 11:39:03AM +0100, Frediano Ziglio wrote:
> The generated code handle possible endianess mismatch and check
> for message format.
> The copy back to "write_buf" allows to use that buffer to send
> data back to device.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Looks fine as well.
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard-channel-client.c | 7 +++----
>  server/smartcard.c                | 1 +
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index 08af49df..f71b6523 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -274,17 +274,15 @@ bool smartcard_channel_client_handle_message(RedCha=
nnelClient *rcc,
>                                               uint32_t size,
>                                               void *message)
>  {
> -    uint8_t *msg =3D message;
>      VSCMsgHeader* vheader =3D message;
>      SmartCardChannelClient *scc =3D SMARTCARD_CHANNEL_CLIENT(rcc);
> =20
>      if (type !=3D SPICE_MSGC_SMARTCARD_DATA) {
>          /* Handles seamless migration protocol. Also handles ack's,
>           * spicy sends them while spicec does not */
> -        return red_channel_client_handle_message(rcc, type, size, msg);
> +        return red_channel_client_handle_message(rcc, type, size, messag=
e);
>      }
> =20
> -    spice_assert(size =3D=3D vheader->length + sizeof(VSCMsgHeader));
>      switch (vheader->type) {
>          case VSC_ReaderAdd:
>              smartcard_channel_client_add_reader(scc);
> @@ -315,7 +313,8 @@ bool smartcard_channel_client_handle_message(RedChann=
elClient *rcc,
>                              vheader->reader_id, vheader->type, vheader->=
length);
>          return FALSE;
>      }
> -    spice_assert(scc->priv->write_buf->buf =3D=3D msg);
> +    spice_assert(scc->priv->write_buf->buf_size >=3D size);
> +    memcpy(scc->priv->write_buf->buf, message, size);
>      smartcard_channel_client_write_to_reader(scc);
> =20
>      return TRUE;
> diff --git a/server/smartcard.c b/server/smartcard.c
> index 17794b06..3f51f529 100644
> --- a/server/smartcard.c
> +++ b/server/smartcard.c
> @@ -547,6 +547,7 @@ red_smartcard_channel_class_init(RedSmartcardChannelC=
lass *klass)
> =20
>      object_class->constructed =3D red_smartcard_channel_constructed;
> =20
> +    channel_class->parser =3D spice_get_client_channel_parser(SPICE_CHAN=
NEL_SMARTCARD, NULL);
>      channel_class->handle_message =3D smartcard_channel_client_handle_me=
ssage,
> =20
>      channel_class->send_item =3D smartcard_channel_send_item;
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--v7eyimerfa6rgv6e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cjl4ACgkQl9kSPeN6
SE8MRQ/+KefBx0qFtTbSm4kBQqUuElpAf8MqpTFrl4CPVKDMd5xXFq9J3JMRG0/7
TbhwW+MvTMrJr2g4L7bB9CNRlYIrSMhrpYfr70VCEw3DwH9XkPbJnaPHkQdOODi6
Y69FREBH+VnCtSTj7h+NO1FzjWS/UvGnZLTGxXfV5xAtTE/NxDKMJEXmE6zlsyfJ
TIGx40yJ/+QUgpHuK6HqaI6pWqag2o5+n1PSkHIm1KNlY0J+zOOaSC8+T2oLyrjO
TLxLMpjejgMYUvH0Dsidsg32WhAF2xuveAwjFu0qXEUewILN+JQlSLCUAonII4al
0SAZl2ddD5AcqPHTAaOzEFnNC6tNW/EPNBsV6yBpOzi35K0/2jW+T986BQ/n3bD0
cFal0rUExqK0boadWA+StVHoc4XyDqjNRo66brvnUYOn8MFF/PYoDu3IUh/dW1Up
O4ZrlEK+SzyuBXMtpncfwsMyuws2mAmkcj+5jBPdrKxbFTTSxX/+ljVewqjETKGO
D8IGihMSUp8EPor/8kX2LcUf74rIDYoPuDBoijnbzvOx1YQtU37T+BoDy4wmHViB
dpthRRyFhPcx5Y+OMkOphcalZyGAcJU4MBRIJcAg9N+Z8I1PIGGZl4jQni4QE029
bb+uP4hCDE1EhuD4gWCYejuoSR/2+iyO9q53gdmP8jx1dFpprIQ=
=pGmP
-----END PGP SIGNATURE-----

--v7eyimerfa6rgv6e--

--===============0950225984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0950225984==--
