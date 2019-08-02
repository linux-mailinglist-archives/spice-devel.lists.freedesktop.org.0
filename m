Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A187F575
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7055D6EDC0;
	Fri,  2 Aug 2019 10:49:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB126EDC0
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:49:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 92BCF81F19
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:49:21 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40AFA5D712;
 Fri,  2 Aug 2019 10:49:21 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:49:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802104920.elrzlc4cenu7fr6q@wingsuit>
References: <20190801095222.17475-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190801095222.17475-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 02 Aug 2019 10:49:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] usb-device-manager: Fix
 number truncation by spice_usb_device_get_busnum
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
Content-Type: multipart/mixed; boundary="===============0311940820=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0311940820==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="haqtsehb6sevuhey"
Content-Disposition: inline


--haqtsehb6sevuhey
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

For both patches,
Acked-by: Victor Toso <victortoso@redhat.com>

On Thu, Aug 01, 2019 at 10:52:21AM +0100, Frediano Ziglio wrote:
> "bus" field is 16 bit so returning using a guint8 type potentially
> truncate the value.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-device-manager-priv.h | 2 +-
>  src/usb-device-manager.c      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager-priv.h
> index 66acf6d5..2530d294 100644
> --- a/src/usb-device-manager-priv.h
> +++ b/src/usb-device-manager-priv.h
> @@ -29,7 +29,7 @@ G_BEGIN_DECLS
>  void spice_usb_device_manager_device_error(
>      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError *err);
> =20
> -guint8 spice_usb_device_get_busnum(const SpiceUsbDevice *device);
> +guint16 spice_usb_device_get_busnum(const SpiceUsbDevice *device);
>  guint8 spice_usb_device_get_devaddr(const SpiceUsbDevice *device);
>  guint16 spice_usb_device_get_vid(const SpiceUsbDevice *device);
>  guint16 spice_usb_device_get_pid(const SpiceUsbDevice *device);
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 544e5687..a035683d 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -1490,7 +1490,7 @@ static SpiceUsbDevice *spice_usb_device_new(SpiceUs=
bBackendDevice *bdev)
>      return info;
>  }
> =20
> -guint8 spice_usb_device_get_busnum(const SpiceUsbDevice *info)
> +guint16 spice_usb_device_get_busnum(const SpiceUsbDevice *info)
>  {
>      const UsbDeviceInformation *b_info;
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--haqtsehb6sevuhey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EFTAACgkQl9kSPeN6
SE+b+RAAwijzVGzEY5fvBoC33bORm2IKF1IuaArulNsE0QBRLHVXMMF9hAiMePFt
7TmuZoU5E/Jn+UurKy8oQPcrhiWAB4LedSQCSArSUnDAZLVyoja+WnLSGCyRIMxI
IYBugTj9dDH2Ypph5Pb3szGuJouDWTRgzQe2F3bQriSXRZtJiHlRbRz6ZfycOc6b
Gy18VN7kvsxQJwFWOJy8ek61o/TbpanJOWu8z1zi3Xjt/65SbBBc8Fk2HuM4n7A4
A7QY044DJ4+p34p9BjSd6K17erBPBgZSfA6SvKhKVtaYsTfchjmgxwkaBh0c8VDS
1m7qRSuRyoQFu/Q7dgTJ/u3mdb/hdwpq4aHI/ef1km/YlEnI6xfVEUvm4D6F3dsH
Me52PazZzvF1A1+DCjtonwVAzZaLhfBbFV2E+IzDoOS+BUr1EjP5iBrVKSFjfFaO
Q+eCXTgY7jTumqvNBD33zfWITHbLcefXgNAuWSZwAaukK79aSm09adXRsaGW1gIw
1ghS3J2M1Q+IgXG1wNWkO+7yzOsHf1L2o3PjZwJSfJ2CK7tOPBAmkujl6ukaODJX
uBj6NJz1E4ID0PQweEV6tjRAmjJp46D9Va7x49qh0nF+29KhUEqPTEv8czExiKJh
44csWdCcu3xHCscaXUNKq/u91EYnHqINAL0/AqDGJGqvtUftDc8=
=VfRD
-----END PGP SIGNATURE-----

--haqtsehb6sevuhey--

--===============0311940820==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0311940820==--
