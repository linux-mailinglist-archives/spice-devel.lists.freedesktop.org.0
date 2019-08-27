Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 826299E4DB
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF92894D4;
	Tue, 27 Aug 2019 09:51:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9CF894D4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:51:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 98C82C04959E
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:51:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42B275D9C3;
 Tue, 27 Aug 2019 09:51:38 +0000 (UTC)
Date: Tue, 27 Aug 2019 11:51:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827095137.vl67z33snb3ulrm7@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-5-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-5-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 27 Aug 2019 09:51:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 04/29] fixup! usb-redir: move
 implementation of device description to USB backend
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
Content-Type: multipart/mixed; boundary="===============0467997709=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0467997709==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4h74cdncntoqbvxa"
Content-Disposition: inline


--4h74cdncntoqbvxa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:21AM +0100, Frediano Ziglio wrote:
> Really minor space removal

sure,
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/usb-backend.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index aa11c791..252c0a64 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -845,8 +845,8 @@ spice_usb_backend_channel_get_guest_filter(SpiceUsbBa=
ckendChannel *ch,
>      }
>  }
> =20
> -gchar * spice_usb_backend_device_get_description(SpiceUsbBackendDevice *=
dev,
> -                                                 const gchar *format)
> +gchar *spice_usb_backend_device_get_description(SpiceUsbBackendDevice *d=
ev,
> +                                                const gchar *format)
>  {
>      guint16 bus, address, vid, pid;
>      gchar *description, *descriptor, *manufacturer =3D NULL, *product =
=3D NULL;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--4h74cdncntoqbvxa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1k/SkACgkQl9kSPeN6
SE+/4A/+KmU7aoUECUBEJfZ4phy6qkCSz1LDPWqE9dEIzY83aSMbthXO5DK428K4
HqKVqMyyL3tEhv0Q+vWUa4Fn3+g95MsFNuc8zryVmbK3N/zlM2X75W4VOmGEbjQK
SsaLb+qH62fLhbLnEQkZILcApnYtMPBy7xfuIpDuSD90uAnnhohBgZ3eVsnyliib
UrVNDktW6U599TbrOE+aOIjAc0AdlJJPxO8hCKLakff+UV6oul/176yabWpX/Ilx
Uq1RKkSRn0IHXBHKqRtktNplb4bUDlC59i2P1G20wwXaLVxU/4rPuKczaSalj4xc
RjaLPbJGFhZRTYjF1pUtPa/gODXWmZkAnFnstNKY32lTgIl3gYgI3Q/T15TBozT6
W2sZvKANqssYehLz1h1A4c8R78rjAY6jTxV30YeCSxnAY15m87nqhfM4BQIRzrZW
8IU1pFEmzmdz6FxRjCRf9L44HIffyhR7HTVzxPHlItkWF1VQgluIHVgNWC629Guu
V0l+9MbP44RloBszWZXk8Jj52StacOVRzUjmm44i5S5Un6pQvbh4Yxw3XRgJcbVH
GvVvBfQUwGvhHNQ+8gXtKp9twA4tZzZdWayEbEbfsx51P0yVd0Vj0Vv6l2sGQxn4
MOEy+C9Q7S3+tC2XmExh8gmJcU8xd70lE8wXciXDJBk06BWFE3s=
=W9aV
-----END PGP SIGNATURE-----

--4h74cdncntoqbvxa--

--===============0467997709==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0467997709==--
