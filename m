Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04539E7ED
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F202898BC;
	Tue, 27 Aug 2019 12:30:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0BD898BC
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:30:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 07F093084025
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:30:50 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A74905C1D6;
 Tue, 27 Aug 2019 12:30:49 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:30:48 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827123048.zkau5moc3rheie6i@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-19-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-19-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 27 Aug 2019 12:30:50 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 18/29] build: Do not build
 usbredir dependent file is usbredir disabled
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
Content-Type: multipart/mixed; boundary="===============2106524143=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2106524143==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rruk46vx4pwepktc"
Content-Disposition: inline


--rruk46vx4pwepktc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:35AM +0100, Frediano Ziglio wrote:
> These files would end up to compile empty code, no reason
> to compile and link them.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/meson.build | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/src/meson.build b/src/meson.build
> index 00eb2778..0461dea6 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -119,11 +119,6 @@ spice_client_glib_sources =3D [
>    'spice-uri-priv.h',
>    'spice-util-priv.h',
>    'usb-device-manager-priv.h',
> -  'usbutil.c',
> -  'usbutil.h',
> -  'usb-backend.c',
> -  'usb-emulation.h',
> -  'usb-backend.h',
>    'vmcstream.c',
>    'vmcstream.h',
>  ]
> @@ -159,6 +154,11 @@ endif
> =20
>  if spice_gtk_has_usbredir
>    spice_client_glib_sources +=3D [
> +    'usbutil.c',
> +    'usbutil.h',
> +    'usb-backend.c',
> +    'usb-emulation.h',
> +    'usb-backend.h',

You should be able to remove some ifdef/endif USE_USBREDIR now,
probably should be in the same patch

>      'usb-device-cd.c',
>      'usb-device-cd.h',
>      'cd-scsi.c',
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--rruk46vx4pwepktc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lIngACgkQl9kSPeN6
SE+Weg//WqBlFq6ZXLD3zKsjKnq2/YBe4IkGB9z/+CzXvuAm838LGC5q2JMDRaC7
U+BZV82Df00qenAYUdddxWTJxJVCMBwVNfvHnev6Hkc852WnKv2UojQYuPTYjwgg
76sl9hk/hJaB3xOpxFuS7WaqVYtOhblD6qFn7yWXpNmTIThBIMXdI+1Hvv4f24mH
c3EgvB0NN605pUChP8Xd3H2p4nKUoUqJ6BvmbJRQ76d+FXoHNS94SW3MhIBAMxo6
AX6rDXWqXqDaK6Ah9iecqCjchXleSmh0oTZd3N/fmXpw/G4cGlgaaptP9644y9U2
Tmbrb+1bNUS4QIr8pSL9ZV/ZZq6ced1UM40mkGfmq0Q7IPMC7DNP3A1VJ0Dw4I7n
q3DniX5qzmTkoNFaGrE0kojCdVGgmmTKEg94dEdGDSl2cWZjUUx0qbNdZ4NcL+tU
z0NnRlN8uIBXZX7UZMK/jPSRAkePSY7ApuexGplE9URH2Qxc9DCS1wCT0jSCUIBv
/pLsWEl+2tDOXj0D94H6m78lD+eYInLpItlizxPJ9+Pp7ttvr2JVRmTuu+N9HN+v
s4tI0X35r0SNy8DHXtH6msJeDY5ycEpFwXeBZJQhzPnxnqcwNTTD6DW9pos2j5NX
Ez/s6nC/2P0Y6/IzWldPiS7GRUoI9muuf1WmFTFFe09TKyzwF6c=
=FZmR
-----END PGP SIGNATURE-----

--rruk46vx4pwepktc--

--===============2106524143==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2106524143==--
