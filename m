Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A59B3B3E0
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 13:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649EC890A5;
	Mon, 10 Jun 2019 11:15:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F8B890A5
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 11:15:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B30682CE940;
 Mon, 10 Jun 2019 11:15:53 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5B0075B685;
 Mon, 10 Jun 2019 11:15:53 +0000 (UTC)
Date: Mon, 10 Jun 2019 11:15:52 +0000
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190610111552.zw7z5ndh6idei6kl@toolbox>
References: <20190410193139.10912-1-yuri.benditovich@daynix.com>
 <20190410193139.10912-4-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190410193139.10912-4-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 10 Jun 2019 11:15:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 3/3] usb-redirection: do not duplicate USB
 device properties
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1977601045=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1977601045==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="id66rtxglznm6qoz"
Content-Disposition: inline


--id66rtxglznm6qoz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2019 at 10:31:39PM +0300, Yuri Benditovich wrote:
> Do not keep bus, address, vid and pid of the USB device
> in SpiceUsbDeviceInfo structure. Getters for these properties
> can easily obtain them from respective backend device.

Why should we keep this structure at all? gboolean isochronous is
set with spice_usb_backend_device_isoch() so we basically have a
referece counter and a pointer to SpiceUsbBackendDevice after
this patch.

> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/usb-device-manager.c | 29 +++++++++++++----------------
>  1 file changed, 13 insertions(+), 16 deletions(-)
>=20
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 2bee55d..6898472 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -129,13 +129,9 @@ enum {
>  #ifdef USE_USBREDIR
> =20
>  typedef struct _SpiceUsbDeviceInfo {
> -    guint8  busnum;
> -    guint8  devaddr;
> -    guint16 vid;
> -    guint16 pid;
> -    gboolean isochronous;
>      SpiceUsbBackendDevice *bdev;
>      gint    ref;
> +    gboolean isochronous;
>  } SpiceUsbDeviceInfo;
> =20
> =20
> @@ -1613,18 +1609,11 @@ gchar *spice_usb_device_get_description(SpiceUsbD=
evice *device, const gchar *for
>  static SpiceUsbDeviceInfo *spice_usb_device_new(SpiceUsbBackendDevice *b=
dev)
>  {
>      SpiceUsbDeviceInfo *info;
> -    const UsbDeviceInformation *bdev_info;
> =20
>      g_return_val_if_fail(bdev !=3D NULL, NULL);
> =20
> -    bdev_info =3D spice_usb_backend_device_get_info(bdev);
> -
>      info =3D g_new0(SpiceUsbDeviceInfo, 1);
> =20
> -    info->busnum  =3D bdev_info->bus;
> -    info->devaddr =3D bdev_info->address;
> -    info->vid =3D bdev_info->vid;
> -    info->pid =3D bdev_info->pid;
>      info->ref =3D 1;
>      info->bdev =3D spice_usb_backend_device_ref(bdev);
>      info->isochronous =3D spice_usb_backend_device_isoch(bdev);
> @@ -1635,37 +1624,45 @@ static SpiceUsbDeviceInfo *spice_usb_device_new(S=
piceUsbBackendDevice *bdev)
>  guint8 spice_usb_device_get_busnum(const SpiceUsbDevice *device)
>  {
>      const SpiceUsbDeviceInfo *info =3D (const SpiceUsbDeviceInfo *)devic=
e;
> +    const UsbDeviceInformation *b_info;
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return info->busnum;
> +    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    return b_info->bus;
>  }
> =20
>  guint8 spice_usb_device_get_devaddr(const SpiceUsbDevice *device)
>  {
>      const SpiceUsbDeviceInfo *info =3D (const SpiceUsbDeviceInfo *)devic=
e;
> +    const UsbDeviceInformation *b_info;
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return info->devaddr;
> +    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    return b_info->address;
>  }
> =20
>  guint16 spice_usb_device_get_vid(const SpiceUsbDevice *device)
>  {
>      const SpiceUsbDeviceInfo *info =3D (const SpiceUsbDeviceInfo *)devic=
e;
> +    const UsbDeviceInformation *b_info;
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return info->vid;
> +    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    return b_info->vid;
>  }
> =20
>  guint16 spice_usb_device_get_pid(const SpiceUsbDevice *device)
>  {
>      const SpiceUsbDeviceInfo *info =3D (const SpiceUsbDeviceInfo *)devic=
e;
> +    const UsbDeviceInformation *b_info;
> =20
>      g_return_val_if_fail(info !=3D NULL, 0);
> =20
> -    return info->pid;
> +    b_info =3D spice_usb_backend_device_get_info(info->bdev);
> +    return b_info->pid;
>  }
> =20
>  gboolean spice_usb_device_is_isochronous(const SpiceUsbDevice *device)
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--id66rtxglznm6qoz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz+O+gACgkQl9kSPeN6
SE9P2g/7BFR0zZjDqgw++2bpZqsKdCv8y1Ch5KInsBZEmntqX/ZSazAYF8JqhUh7
2dRKlrx7mL53bvIyz7ZUJaBqPPsLOTmlfFQOn2xluVMi1bZOyNhF++c1Vne/6kcT
d4PJVOrLSN4HdXTxH0YpBXSQ7WTohGTo9BCzewf75LqL1bJUm0HviLelXAr44qWS
MnQTY2Q/qxMEhCe4XwuUqA8XchSss7uKhfiJWWpXv6dJS+ImbN10RzconSQS8A04
D90kQZcbWE1F4azN56//XopicUGe5mBAxieoygus2usBtBIURM+0GFpvyLU5ulEW
hiWD3AXfR/pf+ixVJBg+YfR355gCkSbx86ScfnkudsOz3gSaIepenAu7ulVwEHXW
uVPIJFh+JHsKcjXi561wkL2BDRHhUAgRakgXFTvnvnuJUXchZWQuKtKuaQO6uKIU
4Art2hZvw1XIOtY6qS+U3MNpsZutHUM1emANn7Woz1/zKLWjvelbMHYaBBfJsMs+
V5svjzW+YDVlOtO+2wRoys3M6qGQj/cZbQS7OC0HewEP+68j8QjNqb/6uEfM7w/0
S7oNXVLJduIKPx6jD7KpPpIZDr7I/S2EHazOKkTbgKHvMcZ29gnwZLnM+m0IPR6d
OL7Fy5P2iCFt/PRznh3dnpelC1CgDxS9tmcM7zBgJ7Je4Lyts1I=
=ZjXG
-----END PGP SIGNATURE-----

--id66rtxglznm6qoz--

--===============1977601045==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1977601045==--
