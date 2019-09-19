Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6963B7527
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C2B6F4EC;
	Thu, 19 Sep 2019 08:32:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8E46F4EC
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:32:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BA7478AC6E0
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:32:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6800C19C5B
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:32:34 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:32:33 +0200
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190919083233.rjhnuxwzix3tm2ss@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-14-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190916102104.20943-14-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Thu, 19 Sep 2019 08:32:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 13/20] build: Do not build usbredir
 dependent file is usbredir disabled
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
Content-Type: multipart/mixed; boundary="===============0414678531=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0414678531==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bep2dyofrc5v6obj"
Content-Disposition: inline


--bep2dyofrc5v6obj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 16, 2019 at 12:20:56PM +0200, Victor Toso wrote:
> From: Frediano Ziglio <fziglio@redhat.com>
>=20
> These files would end up to compile empty code, no reason
> to compile and link them.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/meson.build   | 10 +++++-----
>  src/usb-backend.c |  4 ----
>  src/usbutil.c     |  3 ---
>  src/usbutil.h     |  4 ----
>  4 files changed, 5 insertions(+), 16 deletions(-)
>=20
> diff --git a/src/meson.build b/src/meson.build
> index 00eb277..0461dea 100644
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
>      'usb-device-cd.c',
>      'usb-device-cd.h',
>      'cd-scsi.c',
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 81d7c9e..3a5a873 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -22,8 +22,6 @@
> =20
>  #include "config.h"
> =20
> -#ifdef USE_USBREDIR
> -
>  #include <glib-object.h>
>  #include <inttypes.h>
>  #include <gio/gio.h>
> @@ -1522,5 +1520,3 @@ spice_usb_backend_create_emulated_device(SpiceUsbBa=
ckend *be,
> =20
>      return TRUE;
>  }
> -
> -#endif /* USB_REDIR */
> diff --git a/src/usbutil.c b/src/usbutil.c
> index 5052ef3..aebed35 100644
> --- a/src/usbutil.c
> +++ b/src/usbutil.c
> @@ -26,7 +26,6 @@
>  #include <ctype.h>
>  #include <stdlib.h>
> =20
> -#ifdef USE_USBREDIR
>  #include <stdio.h>
>  #ifdef __linux__
>  #include <unistd.h>
> @@ -275,8 +274,6 @@ void spice_usb_util_get_device_strings(int bus, int a=
ddress,
>      }
>  }
> =20
> -#endif
> -
>  #ifdef USBUTIL_TEST
>  int main()
>  {
> diff --git a/src/usbutil.h b/src/usbutil.h
> index 6c570d9..2f683fa 100644
> --- a/src/usbutil.h
> +++ b/src/usbutil.h
> @@ -21,8 +21,6 @@
>  #pragma once
> =20
>  #include <glib.h>
> -
> -#ifdef USE_USBREDIR
>  #include <libusb.h>
> =20
>  G_BEGIN_DECLS
> @@ -32,5 +30,3 @@ void spice_usb_util_get_device_strings(int bus, int add=
ress,
>                                         gchar **manufacturer, gchar **pro=
duct);
> =20
>  G_END_DECLS
> -
> -#endif /* USE_USBREDIR */
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--bep2dyofrc5v6obj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DPSEACgkQl9kSPeN6
SE8aTw//XwbtF6wlUmS52Q3l7Ie3OHU1yCCqUgwTQCvHpRHqOqfN6g4S50cgXNsN
otx24pdLqYUwprXr7d7u78zAH5vxSwdgXp5QkwyPKscgJojTBV3RdMi8a7S/PO9W
LlXZ9uqVXu0uaYp54ysUVnzi6hzcivgsPm3+C2bWO16pgNPNnYRaNWVK+j8jpJKG
80xUW1VXKrrVftBG8sMVSLWG+4WWk8+uGTPOmNTkjylWttu8khKDPAxOuQRA+oRC
mMVH9Kfej2I+L+oLH8S0tbT+HuiYTr3lQBrWPw0MQNYkbpw9H8l2DJL99UhPIlbJ
hqPTNkxdMooGo3ftSwOKp61+RxVS4tmYrYXoEUI4mlozjAnBGCJ7+xjRhFAyic8K
8tFTKjNaQzfAeXgIVRLdjQRaKOR2V612niprYc3+zMLwh98H3rwWwVgK+8Z21AZr
SC7UUz9JLMwV4X/Z4dQMTjVJZ+SaLHCvP8FknJpxUiB06RSMV5OtMrgff/vz8HZc
gRnF83NY085sKItH8dIrfEHAYe3TGtQcb0k1CGKFxPXozPUMHm2OWN/nvMv5hDz4
7hvCa7Zlx7/1D+0zirvWlgeXHTJPvuBc7O/i1rV3Gyz0ffxOp4VmPT/5+MXDIKVm
W69i+givAhfBz8raGUpgsav0Dd9RmjXmrsnJFrt5yf22ou+Mpqs=
=F1PN
-----END PGP SIGNATURE-----

--bep2dyofrc5v6obj--

--===============0414678531==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0414678531==--
