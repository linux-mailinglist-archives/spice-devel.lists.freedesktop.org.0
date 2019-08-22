Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB66B9908A
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 12:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9896EAD8;
	Thu, 22 Aug 2019 10:18:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF436EAD8
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 10:18:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B232430832C8;
 Thu, 22 Aug 2019 10:18:45 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 36BBC600CD;
 Thu, 22 Aug 2019 10:18:45 +0000 (UTC)
Date: Thu, 22 Aug 2019 12:18:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190822101844.eamrljoozhujwofp@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-2-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190812095729.32692-2-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 22 Aug 2019 10:18:45 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 1/9] usb-redir: define interfaces
 to support emulated devices
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
Content-Type: multipart/mixed; boundary="===============1383424871=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1383424871==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ktvkl66nkxkpx76u"
Content-Disposition: inline


--ktvkl66nkxkpx76u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 12, 2019 at 12:57:21PM +0300, Yuri Benditovich wrote:
> SpiceUsbBackendDevice structure is extended to support
> additional kind of device that is emulated by Spice-GTK
> and not present locally (and does not have libusb_device),
> such device has instead pointer to SpiceUsbEmulatedDevice
> abstract structure. Specific implementation of such device
> depends on its device type. Implementation module will define
> constructor for specific device type.
> Device structure is abstract but always starts from table of
> virtual functions required to redirect such virtual device.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/meson.build     |   1 +
>  src/usb-backend.c   | 103 +++++++++++++++++++++++++++++++++++++++++++-
>  src/usb-backend.h   |   3 ++
>  src/usb-emulation.h |  88 +++++++++++++++++++++++++++++++++++++
>  4 files changed, 193 insertions(+), 2 deletions(-)
>  create mode 100644 src/usb-emulation.h
>=20
> diff --git a/src/meson.build b/src/meson.build
> index b4a6870..fe19c16 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -122,6 +122,7 @@ spice_client_glib_sources =3D [
>    'usbutil.c',
>    'usbutil.h',
>    'usb-backend.c',
> +  'usb-emulation.h',
>    'usb-backend.h',
>    'vmcstream.c',
>    'vmcstream.h',
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 9ac8595..de2b55e 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -39,6 +39,7 @@
>  #include "usbredirparser.h"
>  #include "spice-util.h"
>  #include "usb-backend.h"
> +#include "usb-emulation.h"
>  #include "channel-usbredir-priv.h"
>  #include "spice-channel-priv.h"
> =20
> @@ -46,7 +47,10 @@
> =20
>  struct _SpiceUsbBackendDevice
>  {
> +    /* Pointer to device. Either real device (libusb_device)
> +     * or emulated one (edev) */
>      libusb_device *libusb_device;
> +    SpiceUsbEmulatedDevice *edev;
>      gint ref_count;
>      SpiceUsbBackendChannel *attached_to;
>      UsbDeviceInformation device_info;
> @@ -66,6 +70,10 @@ struct _SpiceUsbBackend
>      libusb_device **libusb_device_list;
>      gint redirecting;
>  #endif
> +
> +    /* Mask of allocated device, a specific bit set to 1 to indicate tha=
t the device at
> +     * that address is allocated */
> +    uint32_t own_devices_mask;
>  };
> =20
>  struct _SpiceUsbBackendChannel
> @@ -408,6 +416,8 @@ SpiceUsbBackend *spice_usb_backend_new(GError **error)
>          libusb_set_option(be->libusb_context, LIBUSB_OPTION_USE_USBDK);
>  #endif
>  #endif
> +        /* exclude addresses 0 (reserved) and 1 (root hub) */
> +        be->own_devices_mask =3D 3;
>      }
>      SPICE_DEBUG("%s <<", __FUNCTION__);
>      return be;
> @@ -524,8 +534,13 @@ void spice_usb_backend_device_unref(SpiceUsbBackendD=
evice *dev)
>  {
>      LOUD_DEBUG("%s >> %p(%d)", __FUNCTION__, dev, dev->ref_count);
>      if (g_atomic_int_dec_and_test(&dev->ref_count)) {
> -        libusb_unref_device(dev->libusb_device);
> -        LOUD_DEBUG("%s freeing %p (libusb %p)", __FUNCTION__, dev, dev->=
libusb_device);
> +        if (dev->libusb_device) {
> +            libusb_unref_device(dev->libusb_device);
> +            LOUD_DEBUG("%s freeing %p (libusb %p)", __FUNCTION__, dev, d=
ev->libusb_device);
> +        }
> +        if (dev->edev) {
> +            device_ops(dev->edev)->unrealize(dev->edev);
> +        }
>          g_free(dev);
>      }
>  }
> @@ -824,4 +839,88 @@ spice_usb_backend_channel_get_guest_filter(SpiceUsbB=
ackendChannel *ch,
>      }
>  }
> =20
> +void spice_usb_backend_device_report_change(SpiceUsbBackend *be,
> +                                            SpiceUsbBackendDevice *dev)
> +{
> +    gchar *desc;
> +    g_return_if_fail(dev && dev->edev);
> +
> +    desc =3D device_ops(dev->edev)->get_product_description(dev->edev);
> +    SPICE_DEBUG("%s: %s", __FUNCTION__, desc);
> +    g_free(desc);
> +}
> +
> +void spice_usb_backend_device_eject(SpiceUsbBackend *be, SpiceUsbBackend=
Device *dev)
> +{
> +    g_return_if_fail(dev);
> +
> +    if (dev->edev) {
> +        be->own_devices_mask &=3D ~(1 << dev->device_info.address);
> +    }
> +    if (be->hotplug_callback) {
> +        be->hotplug_callback(be->hotplug_user_data, dev, FALSE);
> +    }
> +}
> +
> +gboolean
> +spice_usb_backend_create_emulated_device(SpiceUsbBackend *be,
> +                                         SpiceUsbEmulatedDeviceCreate cr=
eate_proc,
> +                                         void *create_params,
> +                                         GError **err)
> +{
> +    SpiceUsbEmulatedDevice *edev;
> +    SpiceUsbBackendDevice *dev;
> +    struct libusb_device_descriptor *desc;
> +    uint16_t device_desc_size;
> +    uint8_t address =3D 0;
> +
> +    if (be->own_devices_mask =3D=3D 0xffffffff) {
> +        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +                    _("can't create device - limit reached"));
> +        return FALSE;
> +    }
> +    for (address =3D 0; address < 32; ++address) {
> +        if (~be->own_devices_mask & (1 << address)) {
> +            break;
> +        }
> +    }
> +
> +    dev =3D g_new0(SpiceUsbBackendDevice, 1);
> +    dev->device_info.bus =3D BUS_NUMBER_FOR_EMULATED_USB;
> +    dev->device_info.address =3D address;
> +    dev->ref_count =3D 1;
> +
> +    dev->edev =3D edev =3D create_proc(be, dev, create_params, err);

I take creating emulated devices can take some time, isn't it
worth to do async?

> +    if (edev =3D=3D NULL) {
> +        spice_usb_backend_device_unref(dev);
> +        return FALSE;
> +    }
> +
> +    if (!device_ops(edev)->get_descriptor(edev, LIBUSB_DT_DEVICE, 0,
> +                                          (void **)&desc, &device_desc_s=
ize)
> +        || device_desc_size !=3D sizeof(*desc)) {
> +
> +        spice_usb_backend_device_unref(dev);
> +        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +                    _("can't create device - internal error"));
> +        return FALSE;
> +    }
> +
> +    be->own_devices_mask |=3D 1 << address;
> +
> +    dev->device_info.vid =3D desc->idVendor;
> +    dev->device_info.pid =3D desc->idProduct;
> +    dev->device_info.bcdUSB =3D desc->bcdUSB;
> +    dev->device_info.class =3D desc->bDeviceClass;
> +    dev->device_info.subclass =3D desc->bDeviceSubClass;
> +    dev->device_info.protocol =3D desc->bDeviceProtocol;
> +
> +    if (be->hotplug_callback) {
> +        be->hotplug_callback(be->hotplug_user_data, dev, TRUE);
> +    }
> +    spice_usb_backend_device_unref(dev);
> +
> +    return TRUE;
> +}
> +
>  #endif /* USB_REDIR */
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 66e13f5..cd3ff09 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -30,12 +30,15 @@ typedef struct _SpiceUsbBackend SpiceUsbBackend;
>  typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
>  typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> =20
> +#define BUS_NUMBER_FOR_EMULATED_USB G_MAXUINT16
> +
>  typedef struct UsbDeviceInformation
>  {
>      uint16_t bus;
>      uint16_t address;
>      uint16_t vid;
>      uint16_t pid;
> +    uint16_t bcdUSB;
>      uint8_t class;
>      uint8_t subclass;
>      uint8_t protocol;
> diff --git a/src/usb-emulation.h b/src/usb-emulation.h
> new file mode 100644
> index 0000000..ac3d8e0
> --- /dev/null
> +++ b/src/usb-emulation.h
> @@ -0,0 +1,88 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +    Copyright (C) 2019 Red Hat, Inc.
> +
> +    Red Hat Authors:
> +    Yuri Benditovich<ybendito@redhat.com>
> +
> +    This library is free software; you can redistribute it and/or
> +    modify it under the terms of the GNU Lesser General Public
> +    License as published by the Free Software Foundation; either
> +    version 2.1 of the License, or (at your option) any later version.
> +
> +    This library is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +    Lesser General Public License for more details.
> +
> +    You should have received a copy of the GNU Lesser General Public
> +    License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
> +*/
> +
> +#pragma once
> +
> +#include "usbredirparser.h"
> +#include "usb-backend.h"
> +
> +typedef struct SpiceUsbEmulatedDevice SpiceUsbEmulatedDevice;
> +typedef SpiceUsbEmulatedDevice*
> +(*SpiceUsbEmulatedDeviceCreate)(SpiceUsbBackend *be,
> +                                SpiceUsbBackendDevice *parent,
> +                                void *create_params,
> +                                GError **err);
> +
> +/*
> +    function table for emulated USB device
> +    must be first member of device structure
> +    all functions are mandatory for implementation
> +*/
> +typedef struct UsbDeviceOps {
> +    gboolean (*get_descriptor)(SpiceUsbEmulatedDevice *device,
> +                               uint8_t type, uint8_t index,
> +                               void **buffer, uint16_t *size);
> +    gchar * (*get_product_description)(SpiceUsbEmulatedDevice *device);
> +    void (*attach)(SpiceUsbEmulatedDevice *device, struct usbredirparser=
 *parser);
> +    void (*reset)(SpiceUsbEmulatedDevice *device);
> +    /*
> +        processing is synchronous, default =3D stall:
> +        - return success without data: set status to 0
> +        - return error - set status to error
> +        - return success with data - set status to 0,
> +                                    set buffer to some buffer
> +                                    set length to out len
> +                                    truncation is automatic
> +    */
> +    void (*control_request)(SpiceUsbEmulatedDevice *device,
> +                            uint8_t *data, int data_len,
> +                            struct usb_redir_control_packet_header *h,
> +                            void **buffer);
> +    /*
> +        processing is synchronous:
> +        - set h->status to resulting status, default =3D stall
> +    */
> +    void (*bulk_out_request)(SpiceUsbEmulatedDevice *device,
> +                             uint8_t ep, uint8_t *data, int data_len,
> +                             uint8_t *status);
> +    /*
> +        if returns true, processing is asynchronous
> +        otherwise header contains error status
> +    */
> +    gboolean (*bulk_in_request)(SpiceUsbEmulatedDevice *device, uint64_t=
 id,
> +                            struct usb_redir_bulk_packet_header *bulk_he=
ader);
> +    void (*cancel_request)(SpiceUsbEmulatedDevice *device, uint64_t id);
> +    void (*detach)(SpiceUsbEmulatedDevice *device);
> +    void (*unrealize)(SpiceUsbEmulatedDevice *device);
> +} UsbDeviceOps;
> +
> +static inline const UsbDeviceOps *device_ops(SpiceUsbEmulatedDevice *dev)
> +{
> +    return (const UsbDeviceOps *)dev;
> +}
> +
> +gboolean
> +spice_usb_backend_create_emulated_device(SpiceUsbBackend *be,
> +                                         SpiceUsbEmulatedDeviceCreate cr=
eate_proc,
> +                                         void *create_params,
> +                                         GError **err);
> +void spice_usb_backend_device_eject(SpiceUsbBackend *be, SpiceUsbBackend=
Device *device);
> +void spice_usb_backend_device_report_change(SpiceUsbBackend *be, SpiceUs=
bBackendDevice *device);
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ktvkl66nkxkpx76u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1ebAQACgkQl9kSPeN6
SE/ZTw//TdRlVTYyOWMSUJHpMj2vTkFkl1g/2WBGgQUQgmzzKOIlyEFU+0p8eg8+
BrXrsu64Msaj09UFCsxDFxZFhjC4R+Af3S9qtdDMbsOa1GVCOvZUpIm2AgAtwQIz
vq8Ko+jWngaebQog0u3cRd3AcbLGDNmjFdgpI3n5ZdxqagcjVvgQ+tApqgGFei5p
K6RuhjITTtzUOgFwSj4p3lAKiZBijznytygZl3T0ABJ5q35W7iLFt6B0/Drsv+Tg
z6jfEpiHphlLRmh1VcFfKkBmRVJWK5OMHbTfrURd3JZj0rhqEPMe//bcC4GpVT0L
dhhgv/b+EXTyVPEEIbxZRinc4ut6/nSUUL1nZGC8vnqI5O/3foOnQiObhQ4+UN7k
yALTpvpwpuh1Cja/MUUMQ8nQcF/PFd0w88k70sHGNsCKl2yzHpf0THZwRZZMRDCb
DVFF7/DpyovXp6C1LW1zeUVodzGekuSi4jtZK3Wt2xSUdJaZ9uFheb0R/ggBHiLR
i7YN6j4VP9OQfF0MCrMNX7pJUia4w2vZa/K4QW4fyVkRbYtZVvnCDu7lj0RQ1xi2
wB6G5ZdJEBVShspWtfO7WK7HMqu+XyL8espsIzrcW5ac3moy/pEFi5706wgiJ8pF
IDSqcfdRzyAXFIoYeeFkF/pdNsSPOKMl3GePZzNzd+igqwO7T0A=
=Zxpv
-----END PGP SIGNATURE-----

--ktvkl66nkxkpx76u--

--===============1383424871==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1383424871==--
