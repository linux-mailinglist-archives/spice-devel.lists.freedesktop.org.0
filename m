Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3A1657D7
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97976E235;
	Thu, 11 Jul 2019 13:23:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59D06E235
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:23:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5C91B30C0DDA
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:23:12 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 09AA160928;
 Thu, 11 Jul 2019 13:23:11 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:23:11 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711132311.kv5zoqbw2omvy7er@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 11 Jul 2019 13:23:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/7] usb-device-manager: Put all
 windows field in a single #if section
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
Content-Type: multipart/mixed; boundary="===============1360877846=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1360877846==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a4o6o7jgx243xvfh"
Content-Disposition: inline


--a4o6o7jgx243xvfh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

For 1-5,
Acked-by: Victor Toso <victortoso@redhat.com>

On Thu, Jul 11, 2019 at 02:00:48PM +0100, Frediano Ziglio wrote:
> This reduces conditional code.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-device-manager.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 860f5c19..479558f4 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -103,13 +103,11 @@ struct _SpiceUsbDeviceManagerPrivate {
>      int redirect_on_connect_rules_count;
>  #ifdef G_OS_WIN32
>      GUdevClient *udev;
> +    usbdk_api_wrapper *usbdk_api;
> +    HANDLE usbdk_hider_handle;
>  #else
>      gboolean redirecting; /* Handled by GUdevClient in the gudev case */
>  #endif
> -#ifdef G_OS_WIN32
> -    usbdk_api_wrapper     *usbdk_api;
> -    HANDLE                 usbdk_hider_handle;
> -#endif
>  #endif
>      GPtrArray *devices;
>      GPtrArray *channels;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--a4o6o7jgx243xvfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nOD8ACgkQl9kSPeN6
SE/Q1w/+Np07xX0j+6VTJl9Jq/IJzLaaFRtMtKF2xKA/s7CVXInh9yg3i1LbvbyO
9JfM2CwEOQoEun20JWb0jsMzKdMLpryjjG5TyEqMmiUxQWSRyStD/aUNaTHkmE4W
eCTesbB02HtgFq7/sdWFsaAe+i32KCpX6ayocPxxDDQw6nPBfICO11vyD/e73vGS
1LgFUBnLwBhSEyUUZLG8/q4bV6qclEn7BkFPiry2yK9PxY/Prxbm8xXmrTaoHM8v
MEhUjqLemNAFk1x8FdTl7zgi7Dnmvy6zLkCVPepyuj/Nb8zfMTFIL90fqFoYH9cQ
TPaG5Mgl7VaiDDfuI9ooVPvsHDBMnDMqA9Fp+rPhiI3i0HZkW84AYlsdYJE+frOs
aBXNruZT9GpH5C2Eg4uKsvCxwqyGwfSTt8FMiWZ6A4FC+3qFaOV3Ksl0FFb25V50
avJ/b/QSvs8ovAw3nqAjMdqvu7jJaos4egGtqTY+baCzl1XvGkT+krxiDIQ6ifsi
f+9duvRnouwquxG37Ja6pIEMsEAla/PVQ8lVn9MS8NQuPx4Cf8rexpdsWviZb9hZ
BTDgbiZW85FUmywVX1WDJPDfb+ZctaMwkHwQuk1Ka8HT8UAjrGVL9M+JqCyt/3Wa
K9pne3Y+EKMVO8fJwgKmG52u70dCGMJrGyPkm9nrOsQiMy8kzQc=
=B8uK
-----END PGP SIGNATURE-----

--a4o6o7jgx243xvfh--

--===============1360877846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1360877846==--
