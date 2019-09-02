Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C0AA545F
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D7B899BC;
	Mon,  2 Sep 2019 10:50:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767D9899BC
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:50:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0A8DD3082E10
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:50:52 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA37F61341;
 Mon,  2 Sep 2019 10:50:51 +0000 (UTC)
Date: Mon, 2 Sep 2019 12:50:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190902105050.fo6xzijupono4owq@wingsuit>
References: <20190902103520.29210-1-fziglio@redhat.com>
 <20190902103520.29210-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190902103520.29210-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 02 Sep 2019 10:50:52 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2 3/3] usb-device-manager: Use
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
Content-Type: multipart/mixed; boundary="===============0830425327=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0830425327==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lsp5lariovkz74p6"
Content-Disposition: inline


--lsp5lariovkz74p6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2019 at 11:35:20AM +0100, Frediano Ziglio wrote:
> They were the same structure.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-backend.c        |  6 +++---
>  src/usb-backend.h        |  6 +++---
>  src/usb-device-manager.c | 42 +++++++++++-----------------------------
>  3 files changed, 17 insertions(+), 37 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index e61ec01f..cfd14e2c 100644
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
> @@ -517,12 +517,12 @@ void spice_usb_backend_delete(SpiceUsbBackend *be)
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
> index 66e13f54..5830312b 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -27,7 +27,7 @@
>  G_BEGIN_DECLS
> =20
>  typedef struct _SpiceUsbBackend SpiceUsbBackend;
> -typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
> +typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;
>  typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> =20
>  typedef struct UsbDeviceInformation
> @@ -64,8 +64,8 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBacke=
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
> index b85b20de..17bca099 100644
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
> @@ -1480,16 +1474,9 @@ gchar *spice_usb_device_get_description(SpiceUsbDe=
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
>  guint16 spice_usb_device_get_busnum(const SpiceUsbDevice *info)
> @@ -1498,7 +1485,7 @@ guint16 spice_usb_device_get_busnum(const SpiceUsbD=
evice *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->bus;
>  }
> =20
> @@ -1508,7 +1495,7 @@ guint8 spice_usb_device_get_devaddr(const SpiceUsbD=
evice *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->address;
>  }
> =20
> @@ -1518,7 +1505,7 @@ guint16 spice_usb_device_get_vid(const SpiceUsbDevi=
ce *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->vid;
>  }
> =20
> @@ -1528,7 +1515,7 @@ guint16 spice_usb_device_get_pid(const SpiceUsbDevi=
ce *info)
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    b_info =3D spice_usb_backend_device_get_info(info);
>      return b_info->pid;
>  }
> =20
> @@ -1536,7 +1523,7 @@ gboolean spice_usb_device_is_isochronous(const Spic=
eUsbDevice *info)
>  {
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return spice_usb_backend_device_isoch(info->bdev);
> +    return spice_usb_backend_device_isoch((SpiceUsbBackendDevice*) info);
>  }
> =20
>  #ifdef G_OS_WIN32
> @@ -1615,21 +1602,14 @@ void _usbdk_hider_update(SpiceUsbDeviceManager *m=
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
> @@ -1640,7 +1620,7 @@ spice_usb_manager_device_equal_bdev(SpiceUsbDeviceM=
anager *manager,
>      if ((info =3D=3D NULL) || (bdev =3D=3D NULL))
>          return FALSE;
> =20
> -    return info->bdev =3D=3D bdev;
> +    return info =3D=3D bdev;
>  }
> =20
>  /*
> @@ -1652,6 +1632,6 @@ spice_usb_device_manager_device_to_bdev(SpiceUsbDev=
iceManager *self,
>                                          SpiceUsbDevice *info)
>  {
>      /* Simply return a ref to the cached libdev */
> -    return spice_usb_backend_device_ref(info->bdev);
> +    return spice_usb_backend_device_ref(info);

Some more cleanup can be done now, I think, but series looks
fine.

Acked-by: Victor Toso <victortoso@redhat.com>

>  }
>  #endif /* USE_USBREDIR */
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--lsp5lariovkz74p6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1s9AoACgkQl9kSPeN6
SE9zUw//ZcpXI0dkjxnl6HqFIEYIzYEoXCc2v2E+CFsEqCCQ09KBP9CXISq8b8Mm
DwR+0tbgr8i5ngaHEX+3jP3xhkM9wtEnnn+mv7/wfnJMjiD0Ec9/7sAUJUKHjCAd
ALLDdkxWjxUyhC+CkOv91U+KFOzfI53g1UuNpKziwnrPczLbbpARDD/Zp1WnjY3r
N0c6DZcvtEXfn6uDxHofqLxQ5iKtXwnGQEU4tLA6WtubfL2tI98KJB6ivZy5IESi
XrRu+BbywsfwMPtE3NuIJ6MEG231jtu+qhWd0fTmg1VamlMfLEDmLv7qPBhcjXnv
69ByrWrTHWI9H7fifa0VC9zL4FqLLhk18u2JSjSmBlqBmG/z/wTCSMYjoQakGiQI
0L4C2U4W6HMANKXyzMzv4okGrV+fC61PNGpIgLjdEEwRrASCEJYQjo7n+EhN2/HE
R5eL3TptmNQpxLOi9mQQQjBgSVA6BOWZVgYOCUp+/vG7mY6CY38x6/3/llqYdc+p
bROJw2pU1bpyjIqvBExRmA9RtM+Bz+kjA/p0iyou4kQbuWqxA3ShwWEqribUFu1X
vhpj4c41h9/nPF9Xp4voKVALvKO7JjhH8Bh1m9fMmLEzeZG+B0xICaBcUSszNu0O
FT3DEk6MYSEab+Kk1/Er5gQLt6nv4aVv4VYwVWDgY1ekedTJNHs=
=doFN
-----END PGP SIGNATURE-----

--lsp5lariovkz74p6--

--===============0830425327==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0830425327==--
