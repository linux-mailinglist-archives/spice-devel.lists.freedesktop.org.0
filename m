Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0EB9E528
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:02:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846EF89664;
	Tue, 27 Aug 2019 10:02:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA62689664
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:02:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4B05330821C1
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:02:50 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E79965D9CC;
 Tue, 27 Aug 2019 10:02:49 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:02:49 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827100249.n4cn47rwkwewxszw@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-8-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-8-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 27 Aug 2019 10:02:50 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 07/29] fixup! usb-redir:
 extend USB backend to support emulated devices
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
Content-Type: multipart/mixed; boundary="===============0574446727=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0574446727==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fwshwy52bwrcpugw"
Content-Disposition: inline


--fwshwy52bwrcpugw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:24AM +0100, Frediano Ziglio wrote:
> Rename wait_disc_ack, confusing "disc"
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/usb-backend.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 9369bf5e..13d24d52 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -94,7 +94,7 @@ struct _SpiceUsbBackendChannel
>      uint32_t hello_done_parser : 1;
>      uint32_t hello_sent        : 1;
>      uint32_t rejected          : 1;
> -    uint32_t wait_disc_ack     : 1;
> +    uint32_t wait_disconnect_ack : 1;
>      SpiceUsbBackendDevice *attached;
>      SpiceUsbredirChannel  *user_data;
>      SpiceUsbBackend *backend;
> @@ -1004,12 +1004,12 @@ static void usbredir_device_disconnect_ack(void *=
priv)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> -    if (ch->parser && ch->wait_disc_ack) {
> +    if (ch->parser && ch->wait_disconnect_ack) {
>          ch->parser =3D NULL;
>          SPICE_DEBUG("%s switch to usbredirhost", __FUNCTION__);
>          ch->usbredirhost =3D ch->hidden_host;
>      }
> -    ch->wait_disc_ack =3D 0;
> +    ch->wait_disconnect_ack =3D 0;
>  }
> =20
>  static void usbredir_hello(void *priv,
> @@ -1193,7 +1193,7 @@ static gboolean attach_edev(SpiceUsbBackendChannel =
*ch,
>          ch->usbredirhost =3D NULL;
>          ch->parser =3D ch->hidden_parser;
>      }
> -    ch->wait_disc_ack =3D 0;
> +    ch->wait_disconnect_ack =3D 0;
>      ch->attached =3D dev;
>      dev->attached_to =3D ch;
>      device_ops(dev->edev)->attach(dev->edev, ch->hidden_parser);
> @@ -1269,9 +1269,9 @@ void spice_usb_backend_channel_detach(SpiceUsbBacke=
ndChannel *ch)
>          }
>          usbredirparser_send_device_disconnect(ch->parser);
>          usbredir_write_flush_callback(ch);
> -        ch->wait_disc_ack =3D usbredirparser_peer_has_cap(ch->parser,
> -                                                        usb_redir_cap_de=
vice_disconnect_ack);
> -        if (!ch->wait_disc_ack) {
> +        ch->wait_disconnect_ack =3D
> +            usbredirparser_peer_has_cap(ch->parser, usb_redir_cap_device=
_disconnect_ack);
> +        if (!ch->wait_disconnect_ack) {
>              ch->usbredirhost =3D ch->hidden_host;
>              ch->parser =3D NULL;
>          }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fwshwy52bwrcpugw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1k/8kACgkQl9kSPeN6
SE87HRAAj9BkCS8HwYE1ehVC00ouUTGhziZUDvjtzmSzcWbNvIDvMGPMr+FPUh/P
5SsQz3JyqAXqsw1ZPwi0bq9x9+JMNT8Omif5y4CT1k3AosJWJQzFAM4sKro6hfpR
BVovdvcbAJc1nPiHPDjgKf7JSEmfSjqV38N8Fmne4dQBHfuSNDvJfO78fl5iuyXS
xqPIc+lTp9+MdHENDUYqeO2cY+TMBM8a2ocbfo3oD9PdD06TUmbBjsveZbatc9wW
97626ZzA42r4MYWNW8yrkTt40pZuk2mfKk3SjQE3lGJvUd4Ny+ZigQQzoojgO9st
JAwA9PFeBpmXT4oxA/jEC1BJpubEB3yU+sQPUQ7D2kI9XJEY8lVUuB0X8WAMllqR
eF2FLePDXNRko0v02LNkgFJrUCpRy00f1wWzSVZk0AQbp0fIeiMmXpe4Itqu9Yty
+8b365QghdyP0iimRgLBeVP93rShuxENQveEarxn/TwkqLS0kfZ4qW9WbXiTlMy/
ccvhgXDhHwOJ0z1Fw6l7ntCEgQQ8BJgO9rAHOYRwmAItRLhELWHm980CYWhjIohF
Zh8AHWLu7VxTbXV68CMWaPmfEj6avLa0Q5QVWtpevyWeHyuDlWbnlPkSaMfKXxsV
madXbrPg1Ny7Kx463VVj/DLNfQC24R6yYC7FH28cEEasbzn5sfc=
=v68z
-----END PGP SIGNATURE-----

--fwshwy52bwrcpugw--

--===============0574446727==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0574446727==--
