Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DFCA53F5
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0EC389AA2;
	Mon,  2 Sep 2019 10:26:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9FA89A94
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:26:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70E8781F10
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:26:30 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1A96B19D7A;
 Mon,  2 Sep 2019 10:26:29 +0000 (UTC)
Date: Mon, 2 Sep 2019 12:26:29 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190902102629.lqyfhj7q5rdytya2@wingsuit>
References: <20190725134353.23174-1-fziglio@redhat.com>
 <20190725134353.23174-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190725134353.23174-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 02 Sep 2019 10:26:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 3/3] usb-device-manager: Use
 SpiceUsbBackendDevice directly instead of SpiceUsbDevice
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
Content-Type: multipart/mixed; boundary="===============1545686549=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1545686549==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="73vk3ev2lldlf3mb"
Content-Disposition: inline


--73vk3ev2lldlf3mb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 25, 2019 at 02:43:53PM +0100, Frediano Ziglio wrote:
> They were the same structure.

Right, the changes in the design made this happen.

Patch seems fine but you might need to rebase, I couldn't apply
it cleanly. Really sorry for the delay.

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-backend.c        |  6 +++---
>  src/usb-backend.h        |  6 +++---
>  src/usb-device-manager.c | 42 +++++++++++-----------------------------
>  3 files changed, 17 insertions(+), 37 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 7e0e4a8a..26bda8b9 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -44,7 +44,7 @@
> =20
>  #define LOUD_DEBUG(x, ...)
> =20
> -struct _SpiceUsbBackendDevice
> +struct _SpiceUsbDevice
>  {
>      libusb_device *libusb_device;
>      gint ref_count;
> @@ -512,12 +512,12 @@ void spice_usb_backend_delete(SpiceUsbBackend *be)
>      SPICE_DEBUG("%s <<", __FUNCTION__);
>  }
> =20
> -const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBa=
ckendDevice *dev)
> +const UsbDeviceInformation* spice_usb_backend_device_get_info(const Spic=
eUsbBackendDevice *dev)
>  {
>      return &dev->device_info;
>  }
> =20
> -gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice =
*dev)
> +gconstpointer spice_usb_backend_device_get_libdev(const SpiceUsbBackendD=
evice *dev)
>  {
>      return dev->libusb_device;
>  }
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 69a490b5..6eb02cb5 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -28,7 +28,7 @@
>  G_BEGIN_DECLS
> =20
>  typedef struct _SpiceUsbBackend SpiceUsbBackend;
> -typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
> +typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;
>  typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> =20
>  typedef struct UsbDeviceInformation
> @@ -65,8 +65,8 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBacke=
nd *be);
>  /* Spice USB backend device API */
>  SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevic=
e *dev);
>  void spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev);
> -gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice =
*dev);
> -const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBa=
ckendDevice *dev);
> +gconstpointer spice_usb_backend_device_get_libdev(const SpiceUsbBackendD=
evice *dev);
> +const UsbDeviceInformation* spice_usb_backend_device_get_info(const Spic=
eUsbBackendDevice *dev);
>  gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev);
>  /* returns 0 if the device passes the filter */
>  int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index bf1c23bd..897aa09c 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -120,12 +120,6 @@ enum {
> =20
>  #ifdef USE_USBREDIR
> =20
> -struct _SpiceUsbDevice {
> -    SpiceUsbBackendDevice *bdev;
> -    gint    ref;
> -};
> -
> -
>  static void channel_new(SpiceSession *session, SpiceChannel *channel,
>                          gpointer user_data);
>  static void channel_destroy(SpiceSession *session, SpiceChannel *channel,
> @@ -637,7 +631,7 @@ spice_usb_device_get_libusb_device(const SpiceUsbDevi=
ce *info G_GNUC_UNUSED)
>  #ifdef USE_USBREDIR
>      g_return_val_if_fail(info !=3D NULL, FALSE);
> =20
> -    return spice_usb_backend_device_get_libdev(info->bdev);
> +    return spice_usb_backend_device_get_libdev(info);
>  #endif
>      return NULL;
>  }
> @@ -1476,16 +1470,9 @@ gchar *spice_usb_device_get_description(SpiceUsbDe=
vice *device, const gchar *for
>   */
>  static SpiceUsbDevice *spice_usb_device_new(SpiceUsbBackendDevice *bdev)
>  {
> -    SpiceUsbDevice *info;
> -
>      g_return_val_if_fail(bdev !=3D NULL, NULL);
> =20
> -    info =3D g_new0(SpiceUsbDevice, 1);
> -
> -    info->ref =3D 1;
> -    info->bdev =3D spice_usb_backend_device_ref(bdev);
> -
> -    return info;
> +    return spice_usb_backend_device_ref(bdev);
>  }
> =20
>  guint8 spice_usb_device_get_busnum(const SpiceUsbDevice *info)
> @@ -1494,7 +1481,7 @@ guint8 spice_usb_device_get_busnum(const SpiceUsbDe=
vice *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->bus;
>  }
> =20
> @@ -1504,7 +1491,7 @@ guint8 spice_usb_device_get_devaddr(const SpiceUsbD=
evice *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->address;
>  }
> =20
> @@ -1514,7 +1501,7 @@ guint16 spice_usb_device_get_vid(const SpiceUsbDevi=
ce *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->vid;
>  }
> =20
> @@ -1524,7 +1511,7 @@ guint16 spice_usb_device_get_pid(const SpiceUsbDevi=
ce *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->pid;
>  }
> =20
> @@ -1532,7 +1519,7 @@ gboolean spice_usb_device_is_isochronous(const Spic=
eUsbDevice *info)
>  {
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return spice_usb_backend_device_isoch(info->bdev);
> +    return spice_usb_backend_device_isoch((SpiceUsbBackendDevice*) info);
>  }
> =20
>  #ifdef G_OS_WIN32
> @@ -1605,21 +1592,14 @@ void _usbdk_hider_update(SpiceUsbDeviceManager *m=
anager)
>  static SpiceUsbDevice *spice_usb_device_ref(SpiceUsbDevice *info)
>  {
>      g_return_val_if_fail(info !=3D NULL, NULL);
> -    g_atomic_int_inc(&info->ref);
> -    return info;
> +    return spice_usb_backend_device_ref(info);
>  }
> =20
>  static void spice_usb_device_unref(SpiceUsbDevice *info)
>  {
> -    gboolean ref_count_is_0;
> -
>      g_return_if_fail(info !=3D NULL);
> =20
> -    ref_count_is_0 =3D g_atomic_int_dec_and_test(&info->ref);
> -    if (ref_count_is_0) {
> -        spice_usb_backend_device_unref(info->bdev);
> -        g_free(info);
> -    }
> +    spice_usb_backend_device_unref(info);
>  }
> =20
>  static gboolean
> @@ -1630,7 +1610,7 @@ spice_usb_manager_device_equal_bdev(SpiceUsbDeviceM=
anager *manager,
>      if ((info =3D=3D NULL) || (bdev =3D=3D NULL))
>          return FALSE;
> =20
> -    return info->bdev =3D=3D bdev;
> +    return info =3D=3D bdev;
>  }
> =20
>  /*
> @@ -1642,6 +1622,6 @@ spice_usb_device_manager_device_to_bdev(SpiceUsbDev=
iceManager *self,
>                                          SpiceUsbDevice *info)
>  {
>      /* Simply return a ref to the cached libdev */
> -    return spice_usb_backend_device_ref(info->bdev);
> +    return spice_usb_backend_device_ref(info);
>  }
>  #endif /* USE_USBREDIR */
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--73vk3ev2lldlf3mb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1s7lUACgkQl9kSPeN6
SE+BWBAArmnL5xf0Nof12lMX9Jw1efyJO8fBsX+IyJYJ+v4JQ1tetkpGx0w/woor
oe1OzP9IHp8kTh0uwYVxeLj9PjLcgp/huxw50/49gOp2lbEERYJiINYQK+wW6Dbm
VqOb5l67VPdFWfR+Xw3v47KAU/aNQ5gQRwrlMNVNs0U4k6OkdUvce0VPlVWp6hw1
fmWDRugDVdDuYDkFkPi2l8IpadYysCaA2xSF1wY7JywVpmaiYgOl7mXWtQBAa4Dq
eoWTRcwCKHPsTfCjG9J+MEvZ1Ek1BB/nTxubdz0vh9IW063uY9Gsqd73o0VCtoDN
RIYs5thQPab9KOoBclflxgYm2FLrXpTCeHBRZR6ujz5jFPBYLfgcmktQOcrliMY3
XZXavu9qRTcxFjU0RsphtPlOE14LEgy1XGmrF85+l1N36XF7BHMYSToJjqTj1AFb
XcZgEkqB3wgIGuL1BRAvnPuTEGHfnmn1Ll+p7tOPGTjIjFlILbbsPQ/YtMfKG4Fu
JvNUt4K5lDyfpTWGdbSrFYeVSKAO4T+gisFHThGFk7oEYdvdP6h8pVaPzHmgNICx
xUuks3myur54wRqyooiVm8WeN9OugK4p4GDg0hzmqPVER0ctbmE9EYyX4CnBLFhu
OxzfR9UPavKQaUNAjf7Kvglc1Nz1aoz+YTaOGWnAxnSu0L8p3V0=
=TlW9
-----END PGP SIGNATURE-----

--73vk3ev2lldlf3mb--

--===============1545686549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1545686549==--
