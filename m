Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00525748CA
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 10:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6276E68B;
	Thu, 25 Jul 2019 08:08:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB896E68B
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 08:08:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49886C03D478;
 Thu, 25 Jul 2019 08:08:52 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C4C6660605;
 Thu, 25 Jul 2019 08:08:51 +0000 (UTC)
Date: Thu, 25 Jul 2019 10:08:51 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190725080851.e432vmkxpghf5j6q@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-2-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190724105351.13753-2-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 25 Jul 2019 08:08:52 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 1/9] usb-redir: define interfaces to
 support emulated devices
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
Content-Type: multipart/mixed; boundary="===============1661564545=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1661564545==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zsorvnc6ckezb7b6"
Content-Disposition: inline


--zsorvnc6ckezb7b6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2019 at 01:53:43PM +0300, Yuri Benditovich wrote:
> SpiceUsbBackendDevice structure is extended to support
> additional kind of device that is emulated by Spice-GTK
> and not present locally (and does not have libusb_device),
> such device has instead pointer to SpiceUsbEmulatedDevice
> abstract structure. Specific implementation of such device
> depends on its device type (currently only 'CD device'
> defined). Implementation module registers constructor for
> this device type. Device structure is abstract but always
> starts from table of virtual functions required to redirect
> such virtual device.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/meson.build     |   1 +
>  src/usb-backend.c   | 128 +++++++++++++++++++++++++++++++++++++++++++-
>  src/usb-backend.h   |  36 ++++++++++++-
>  src/usb-emulation.h |  88 ++++++++++++++++++++++++++++++
>  4 files changed, 250 insertions(+), 3 deletions(-)
>  create mode 100644 src/usb-emulation.h
>=20
> diff --git a/src/meson.build b/src/meson.build
> index adcfaec..49fec52 100644
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
> index 9ac8595..0bf2ecc 100644
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
> @@ -47,6 +48,7 @@
>  struct _SpiceUsbBackendDevice
>  {
>      libusb_device *libusb_device;
> +    SpiceUsbEmulatedDevice *edev;
>      gint ref_count;
>      SpiceUsbBackendChannel *attached_to;
>      UsbDeviceInformation device_info;
> @@ -66,6 +68,9 @@ struct _SpiceUsbBackend
>      libusb_device **libusb_device_list;
>      gint redirecting;
>  #endif
> +
> +    SpiceUsbEmulatedDeviceCreate dev_init[USB_DEV_TYPE_MAX];
> +    uint32_t own_devices_mask;
>  };
> =20
>  struct _SpiceUsbBackendChannel
> @@ -408,6 +413,7 @@ SpiceUsbBackend *spice_usb_backend_new(GError **error)
>          libusb_set_option(be->libusb_context, LIBUSB_OPTION_USE_USBDK);
>  #endif
>  #endif
> +        be->own_devices_mask =3D 3; /* exclude addresses 0 and 1 */
>      }
>      SPICE_DEBUG("%s <<", __FUNCTION__);
>      return be;
> @@ -524,8 +530,12 @@ void spice_usb_backend_device_unref(SpiceUsbBackendD=
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
> +        } else if (dev->edev) {
> +            device_ops(dev->edev)->delete(dev->edev);
> +        }
>          g_free(dev);
>      }
>  }
> @@ -824,4 +834,118 @@ spice_usb_backend_channel_get_guest_filter(SpiceUsb=
BackendChannel *ch,
>      }
>  }
> =20
> +gchar * spice_usb_backend_device_description(SpiceUsbBackendDevice *dev,
> +                                             const gchar *format)

Style: extra space after asterisk

> +{
> +    if (!dev->edev) {
> +        return g_strdup("Not available for libusb devices");
> +    }
> +    gchar *description, *descriptor, *product;
> +    descriptor =3D g_strdup_printf("[%04x:%04x]", dev->device_info.vid, =
dev->device_info.pid);
> +    product =3D device_ops(dev->edev)->get_product_description(dev->edev=
);
> +    description =3D g_strdup_printf(format, "", product, descriptor,
> +                                  dev->device_info.bus, dev->device_info=
=2Eaddress);
> +    g_free(descriptor);
> +    g_free(product);
> +    return description;
> +}
> +
> +void spice_usb_backend_register_device_type(SpiceUsbBackend *be,
> +                                            UsbEmulatedDeviceType dev_ty=
pe,
> +                                            SpiceUsbEmulatedDeviceCreate=
 init_proc)
> +{
> +    if (dev_type >=3D USB_DEV_TYPE_MAX) {
> +        g_return_if_reached();
> +    }

g_return_if_fail(dev_type < USB_DEV_TYPE_MAX); ?

> +    be->dev_init[dev_type] =3D init_proc;
> +}
> +
> +void spice_usb_backend_device_report_change(SpiceUsbBackend *be,
> +                                            SpiceUsbBackendDevice *dev)
> +{
> +    gchar *desc;
> +    g_return_if_fail(dev && dev->edev);
> +
> +    desc =3D device_ops(dev->edev)->get_product_description(dev->edev);
> +    SPICE_DEBUG("%s: %s", __FUNCTION__, desc);
> +    g_free(desc);

Curious about this function, looking at the whole set this is
called on cd_usb_bulk_msd_lun_changed() which has the comment
"called when a change happens on SCSI layer"

What kind of change can it happen on the emulated device?

> +}
> +
> +void spice_usb_backend_device_eject(SpiceUsbBackend *be, SpiceUsbBackend=
Device *dev)
> +{
> +    g_return_if_fail(dev && dev->edev);
> +
> +    if (be->hotplug_callback) {

Wondering if this should not be a
g_return_if_fail(be->hotplug_callback !=3D NULL);

This callback is unset only on
spice_usb_backend_deregister_hotplug() so it should be somewhat
programming error having spice_usb_backend_device_eject() being
called after that, no? That could also make not wanted unref to
dev

> +        be->hotplug_callback(be->hotplug_user_data, dev, FALSE);
> +    }
> +    spice_usb_backend_device_unref(dev);
> +}
> +
> +gboolean spice_usb_backend_create_device(SpiceUsbBackend *be,
> +                                         UsbEmulatedDeviceType dev_type,
> +                                         UsbCreateDeviceParameters *para=
m)
> +{
> +    SpiceUsbEmulatedDevice *edev =3D NULL;
> +    SpiceUsbBackendDevice  *dev;
> +    struct libusb_device_descriptor *desc;
> +    uint16_t device_desc_size;
> +    uint8_t address =3D 0;
> +
> +    if (dev_type >=3D USB_DEV_TYPE_MAX || !be->dev_init[dev_type]) {
> +        param->error =3D g_error_new(SPICE_CLIENT_ERROR, SPICE_CLIENT_ER=
ROR_FAILED,
> +                                   _("can't create device - not supporte=
d"));
> +        return FALSE;
> +    }
> +
> +    if (be->own_devices_mask =3D=3D 0xffffffff) {
> +        param->error =3D g_error_new(SPICE_CLIENT_ERROR, SPICE_CLIENT_ER=
ROR_FAILED,
> +                                   _("can't create device - limit reache=
d"));
> +        return FALSE;
> +    }
> +    for (address =3D 0; address < 32; ++address) {
> +        if (~be->own_devices_mask & (1 << address)) {
> +            break;
> +        }
> +    }
> +
> +    dev =3D g_new0(SpiceUsbBackendDevice, 1);
> +
> +    param->address =3D address;
> +    if (be->dev_init[dev_type](be, dev, param, &edev)) {
> +        g_free(dev);
> +        return FALSE;
> +    }
> +
> +    if (!device_ops(edev)->get_descriptor(edev, LIBUSB_DT_DEVICE, 0,
> +                                          (void **)&desc, &device_desc_s=
ize)
> +        || device_desc_size !=3D sizeof(*desc)) {
> +
> +        device_ops(edev)->delete(edev);
> +        g_free(dev);
> +        param->error =3D g_error_new(SPICE_CLIENT_ERROR, SPICE_CLIENT_ER=
ROR_FAILED,
> +                                   _("can't create device - internal err=
or"));
> +        return FALSE;
> +    }
> +
> +    be->own_devices_mask |=3D 1 << address;

I see the bit is set to 1 but shouldn't it be there a place where
the bit is set to 0, let's say, when device is disconnected?

> +
> +    dev->device_info.bus =3D BUS_NUMBER_FOR_EMULATED_USB;
> +    dev->device_info.address =3D address;
> +    dev->device_info.vid =3D desc->idVendor;
> +    dev->device_info.pid =3D desc->idProduct;
> +    dev->device_info.bcdUSB =3D desc->bcdUSB;
> +    dev->device_info.class =3D desc->bDeviceClass;
> +    dev->device_info.subclass =3D desc->bDeviceSubClass;
> +    dev->device_info.protocol =3D desc->bDeviceProtocol;
> +    dev->device_info.device_type =3D dev_type;
> +    dev->ref_count =3D 1;
> +    dev->edev =3D edev;
> +
> +    if (be->hotplug_callback) {
> +        be->hotplug_callback(be->hotplug_user_data, dev, TRUE);
> +    }
> +
> +    return TRUE;
> +}
> +
>  #endif /* USB_REDIR */
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 69a490b..8a04ed0 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -31,15 +31,24 @@ typedef struct _SpiceUsbBackend SpiceUsbBackend;
>  typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
>  typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> =20
> +typedef enum
> +{
> +    USB_DEV_TYPE_NONE,
> +    USB_DEV_TYPE_CD,
> +    USB_DEV_TYPE_MAX
> +} UsbEmulatedDeviceType;
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
> +    uint8_t device_type; /* UsbEmulatedDeviceType */
>  } UsbDeviceInformation;
> =20
>  typedef void(*usb_hot_plug_callback)(void *user_data, SpiceUsbBackendDev=
ice *dev, gboolean added);
> @@ -71,7 +80,6 @@ gboolean spice_usb_backend_device_isoch(SpiceUsbBackend=
Device *dev);
>  /* returns 0 if the device passes the filter */
>  int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
>                                            const struct usbredirfilter_ru=
le *rules, int count);
> -
>  /* Spice USB backend channel API */
>  SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *c=
ontext,
>                                                        void            *u=
ser_data);
> @@ -89,6 +97,32 @@ void spice_usb_backend_channel_get_guest_filter(SpiceU=
sbBackendChannel *ch,
>                                                  int *count);
>  void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, voi=
d *data);
> =20
> +#define BUS_NUMBER_FOR_EMULATED_USB         255

Is there a specific reason for it to be 255 (like standard)? If
yes, I'd add a small comment above it.

> +
> +typedef struct UsbCreateDeviceParameters
> +{
> +    GError *error;
> +    uint32_t    address;
> +    uint32_t    reserved;
> +    union
> +    {
> +        struct
> +        {
> +            const char *filename;
> +            uint32_t   delete_on_eject  : 1;
> +        } create_cd;
> +    } device_param;
> +
> +} UsbCreateDeviceParameters;
> +
> +/* API related to emulated devices */
> +gboolean spice_usb_backend_create_device(SpiceUsbBackend *be,
> +                                         UsbEmulatedDeviceType dev_type,
> +                                         UsbCreateDeviceParameters *para=
m);
> +gchar *spice_usb_backend_device_description(SpiceUsbBackendDevice *dev, =
const gchar *format);
> +void spice_usb_backend_device_eject(SpiceUsbBackend *be, SpiceUsbBackend=
Device *device);
> +void spice_usb_backend_device_report_change(SpiceUsbBackend *be, SpiceUs=
bBackendDevice *device);
> +
>  G_END_DECLS
> =20
>  #endif
> diff --git a/src/usb-emulation.h b/src/usb-emulation.h
> new file mode 100644
> index 0000000..4473361
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
> +#ifndef __SPICE_USB_EMULATION_H__
> +#define __SPICE_USB_EMULATION_H__
> +
> +#include "usbredirparser.h"
> +#include "usb-backend.h"
> +
> +typedef struct _SpiceUsbEmulatedDevice SpiceUsbEmulatedDevice;
> +typedef int (*SpiceUsbEmulatedDeviceCreate)(SpiceUsbBackend *be,
> +                                            SpiceUsbBackendDevice *paren=
t,
> +                                            UsbCreateDeviceParameters *p=
aram,
> +                                            SpiceUsbEmulatedDevice **dev=
ice);
> +
> +/*
> +    function table for emulated USB device
> +    must be first member of device structure
> +    all functions are mandatory for implementation
> +*/
> +typedef struct UsbDeviceOps
> +{
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
> +    void (*delete)(SpiceUsbEmulatedDevice *device);
> +} UsbDeviceOps;

Ok,

> +
> +static inline const UsbDeviceOps *device_ops(SpiceUsbEmulatedDevice *dev=
) {
> +    return (const UsbDeviceOps *)dev;
> +}
> +
> +void spice_usb_backend_register_device_type(SpiceUsbBackend *be,
> +                                            UsbEmulatedDeviceType dev_ty=
pe,
> +                                            SpiceUsbEmulatedDeviceCreate=
 init_proc);
> +/* supported device types */
> +void spice_usb_device_register_cd(SpiceUsbBackend *be);

Should be added in later patches.

Cheers,
Victor

--zsorvnc6ckezb7b6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05Y5IACgkQl9kSPeN6
SE8Xgw/9EnYMMF7fHjv51AWwbuuTksBMAJkcR2XacE5fel1MGyCd88ct82PeYtG5
iu98NToMSF7MomXrfoDJl0B4gjBPcWJMcqYC1JqInW6Tw68D9qp0ySwcomoHNSWT
FHe9HhIsFEnxR+J9n3jBtZqNz98aYFWik3Ps/CEl9OhP3bol3LF0fYbzZEfG+zbz
5CO5qNC2+3KOCBBG8z+XLpl8NrTBb36kGajgGku70bZ0kDw8E+QNbzPgjdtl+00X
t+Cw11DRMiUziFAZuEHg3YuV5xbCo+wI70aRecAXoKqU4pgzKeMjU4qmkxazRwej
MY6atFKNNViYzeN+qKAVgbekJnfCT2cIKTVL02uA1ktfqPDJCgEHvTujlMSiCwtM
nov8l+uEtUKhUwNx7sY9xK/xgVrSwNZTHVeR2iioC3apY656OrM67PyB4H/OwPz3
H8tufy28e63ePWMJtaUx9J+GPJWyLuHEF7A6xqtRoqK9tnQWghuWJ61ZGz7VF38w
MfOhzmDNX60cfEDt2jIpSUNlp4BZRA6U/AmzhnfUYiMQnhkzrIGloqL2xloyZh9Q
Dj8l6korpv7jMVnuX4KY32x8b/4TODpJqBcs/d+EjSTpR/eDeK2aOFEP2SjqfG02
zFL2fZ4/nzZhz7M8v0TyHoDoSkd2nScwFI0liyjs236TA0la0ts=
=wamo
-----END PGP SIGNATURE-----

--zsorvnc6ckezb7b6--

--===============1661564545==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1661564545==--
