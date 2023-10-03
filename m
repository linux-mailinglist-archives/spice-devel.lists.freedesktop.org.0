Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999D77B71DA
	for <lists+spice-devel@lfdr.de>; Tue,  3 Oct 2023 21:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F57D10E30F;
	Tue,  3 Oct 2023 19:36:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com
 [IPv6:2607:f8b0:4864:20::c34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE53610E30F
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Oct 2023 19:36:27 +0000 (UTC)
Received: by mail-oo1-xc34.google.com with SMTP id
 006d021491bc7-57bb6b1f764so848753eaf.2
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Oct 2023 12:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696361787; x=1696966587; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=D756pVldwLTWzmNWyF7xovuc567ckwjT3up8J4hUw2E=;
 b=FAidwFIU+5IVUv66SNDEVZ/9oXNSUeYQV9u5mvELFVS0H5uXJa9fkbt9FeqXj9sVze
 oMuNKzBcMpcRLhL/IEHdmihiHWJabhJn9ok97G57DykvnXOtQsPUOs0/yo01SMbMZYv7
 +coPcKWIHay2oJT+GGhBvtA02bP6MarbdhrTv9Wu250ZJUoRM2IvhtQq993cr4mFuhnV
 hf82hFZhsw0rstylf+Ovy9yz6WTumJHsIpE/Kf7MnEIuPDCse+NsgmDmT4qThapMW2v4
 8ZcKtmMG0LjxfSr+xLIZKG8gMFOwXQb3Gf/fqcEAFTKygi4Z19NXEEWgMefLumjmBFEe
 WVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696361787; x=1696966587;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D756pVldwLTWzmNWyF7xovuc567ckwjT3up8J4hUw2E=;
 b=Rnp18ibfhrL/FPmWoFjnJ7yugevx5u7Vct0D1Agb/AQTambzZOR7sKUd5VCPD5N7+k
 uRvc5/yrg2BCD1ODEC1eem3PhqsBUxERPemqMhMdRjS7XQlhCC/QckhGdQEwUk9xMayd
 MSZoonQbKOk+FIVRU3E/rPnbA9OOdr8GPegzDH0pqj1KGBunYUnIDh7dHNcLQlOPBQ/G
 nC+pUeTPqeSIALakkKcYKhT8udSLNu1XyKQGe8pURzB+h2++kGdBQEzleUUx9BFZ4wYo
 AdlHmrO6CBCMoy04ugFa7/+UYLnDCvpktoFm2ik9EJFA+yk3FsimuyfXe3lmEgdfIyN0
 nvhg==
X-Gm-Message-State: AOJu0YzEkiGvj4hnA+5XmQdcCQJfdf8TZnZmJNNShT9lpur9AlQHOuQa
 2D9MNre/TOxAyOnodnCy+cYyxcaevr/PkbaqoLA=
X-Google-Smtp-Source: AGHT+IFV3oQsSlh3mfPCsZcyuxHDjDNil7UE22gQxRcoHKj/MzLCYQiVVgrWzAEgehNvSaPBVliTm2Nvb8AIYlLwT0c=
X-Received: by 2002:a4a:85cd:0:b0:57b:6ab1:87c9 with SMTP id
 u13-20020a4a85cd000000b0057b6ab187c9mr365025ooh.0.1696361786875; Tue, 03 Oct
 2023 12:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
 <20231002052026.2994546-3-vivek.kasireddy@intel.com>
In-Reply-To: <20231002052026.2994546-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 3 Oct 2023 20:36:15 +0100
Message-ID: <CAHt6W4c+i=jmsCUV1LB8caexgyj7v3YMkZDzV-z-ds1rLpc8bA@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH] common: Add a udev helper to identify GPU
 Vendor (v2)
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>, spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 2 ott 2023 alle ore 06:41 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> Given that libudev is widely available on many Linux distros, we
> can use the relevant APIs to iterate over all the devices associated
> with the drm subsystem to figure out if a specific vendor GPU
> is available or not.
>
> This capability (identifying GPU Vendor) is useful to determine
> whether to launch Gstreamer pipeline using h/w accelerated
> plugins. On systems where libudev is not available (Windows,
> MacOS, etc) we'd have to make this determination based on the
> availability of the relevant plugins in the Gstreamer registry.
>
> v2: (Frediano)
> - Added autoconf support
> - Added license text
> - Added pragma once and SPICE_BEGIN/END_DECLS to the header
> - Checked the vendor id udev attribute of the pci device to
>   determine a vendor GPU instead of checking the driver name
>

Thanks. Do you want this part of the message to be part of the final
commit? Usually we don't put history... and not much useful IMHO.

> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  common/meson.build |  2 ++
>  common/udev.c      | 78 ++++++++++++++++++++++++++++++++++++++++++++++
>  common/udev.h      | 33 ++++++++++++++++++++
>  configure.ac       |  1 +
>  m4/spice-deps.m4   | 12 +++++++
>  meson.build        |  7 +++++
>  6 files changed, 133 insertions(+)
>  create mode 100644 common/udev.c
>  create mode 100644 common/udev.h
>
> diff --git a/common/meson.build b/common/meson.build
> index 09e3ea7..63bd2db 100644
> --- a/common/meson.build
> +++ b/common/meson.build
> @@ -39,6 +39,8 @@ spice_common_sources =3D [
>    'snd_codec.h',
>    'utils.c',
>    'utils.h',
> +  'udev.c',
> +  'udev.h',
>    'verify.h',
>    'recorder.h'
>  ]
> diff --git a/common/udev.c b/common/udev.c
> new file mode 100644
> index 0000000..3985fdd
> --- /dev/null
> +++ b/common/udev.c
> @@ -0,0 +1,78 @@
> +/*
> +   Copyright (C) 2023 Intel Corporation.
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#include <config.h>
> +
> +#ifdef HAVE_UDEV
> +#include <libudev.h>
> +#include <stdbool.h>
> +#include <stdlib.h>
> +#include "udev.h"
> +
> +GpuVendor spice_udev_detect_gpu(long gpu_vendor)

long type here looks a bit weird, considering that vendor numbers are
encoded as 16-bit unsigned integer in PCI specifications; maybe just
int?

> +{
> +    struct udev *udev;
> +    struct udev_device *drm_dev, *pci_dev;
> +    struct udev_enumerate *udev_enum;
> +    struct udev_list_entry *entry, *devices;
> +    const char *path, *vendor_id;
> +    GpuVendor vendor =3D VENDOR_GPU_NOTDETECTED;
> +
> +    udev =3D udev_new();
> +    if (!udev) {
> +        return vendor;

wondering if in this case VENDOR_GPU_UNKNOWN would be better, if we
fail to get udev object we are not sure if there's the device or not.

> +    }
> +
> +    udev_enum =3D udev_enumerate_new(udev);
> +    if (udev_enum) {
> +        udev_enumerate_add_match_subsystem(udev_enum, "drm");
> +        udev_enumerate_add_match_sysname(udev_enum, "card[0-9]");
> +        udev_enumerate_scan_devices(udev_enum);
> +        devices =3D udev_enumerate_get_list_entry(udev_enum);
> +
> +        udev_list_entry_foreach(entry, devices) {
> +            path =3D udev_list_entry_get_name(entry);
> +            drm_dev =3D udev_device_new_from_syspath(udev, path);
> +            if (!drm_dev) {
> +                continue;
> +            }
> +
> +            pci_dev =3D udev_device_get_parent_with_subsystem_devtype(dr=
m_dev,
> +                                                                    "pci=
", NULL);
> +            if (pci_dev) {
> +                vendor_id =3D udev_device_get_sysattr_value(pci_dev, "ve=
ndor");
> +                if (vendor_id && strtol(vendor_id, NULL, 16) =3D=3D gpu_=
vendor) {
> +                    vendor =3D VENDOR_GPU_DETECTED;
> +                    udev_device_unref(drm_dev);
> +                    break;
> +                }
> +            }
> +            udev_device_unref(drm_dev);
> +        }
> +        udev_enumerate_unref(udev_enum);
> +    }
> +    udev_unref(udev);
> +
> +    return vendor;
> +}
> +#else
> +GpuVendor spice_udev_detect_gpu(long gpu_vendor)

This won't compile as GpuVendor is not defined (udev.h not included)

> +{
> +    return VENDOR_GPU_UNKNOWN;
> +}
> +#endif
> +
> diff --git a/common/udev.h b/common/udev.h
> new file mode 100644
> index 0000000..6a3d068
> --- /dev/null
> +++ b/common/udev.h
> @@ -0,0 +1,33 @@
> +/*
> +   Copyright (C) 2023 Intel Corporation.
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#pragma once
> +#include <spice/macros.h>
> +
> +#define INTEL_VENDOR_ID 0x8086
> +
> +typedef enum {
> +    VENDOR_GPU_UNKNOWN,
> +    VENDOR_GPU_DETECTED,
> +    VENDOR_GPU_NOTDETECTED,
> +} GpuVendor;
> +
> +SPICE_BEGIN_DECLS
> +
> +GpuVendor spice_udev_detect_gpu(long gpu_vendor);
> +
> +SPICE_END_DECLS
> diff --git a/configure.ac b/configure.ac
> index 0d4c22b..42e873d 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -61,6 +61,7 @@ SPICE_CHECK_GLIB2
>  SPICE_CHECK_OPUS
>  SPICE_CHECK_OPENSSL
>  SPICE_CHECK_GDK_PIXBUF
> +SPICE_CHECK_UDEV
>
>  SPICE_COMMON_CFLAGS=3D'$(PIXMAN_CFLAGS) $(SMARTCARD_CFLAGS) $(GLIB2_CFLA=
GS) $(OPUS_CFLAGS) $(OPENSSL_CFLAGS)'
>  SPICE_COMMON_CFLAGS=3D"$SPICE_COMMON_CFLAGS -DG_LOG_DOMAIN=3D\\\"Spice\\=
\""
> diff --git a/m4/spice-deps.m4 b/m4/spice-deps.m4
> index e11fc4e..6a07ee6 100644
> --- a/m4/spice-deps.m4
> +++ b/m4/spice-deps.m4
> @@ -302,6 +302,18 @@ AC_DEFUN([SPICE_CHECK_OPENSSL], [
>      PKG_CHECK_MODULES(OPENSSL, openssl)
>  ])
>
> +# SPICE_CHECK_UDEV
> +# -----------------
> +# Check for the availability of libudev. If found, it will help to deter=
mine
> +# if a given vendor GPU is available or not.
> +#------------------
> +AC_DEFUN([SPICE_CHECK_UDEV], [
> +    PKG_CHECK_MODULES([UDEV], [libudev], [have_udev=3Dyes],[have_udev=3D=
no])
> +    if test "x$have_udev" =3D "xyes"; then
> +      AC_DEFINE([HAVE_UDEV], 1, [whether libudev is available to identif=
y GPU])
> +    fi
> +])
> +
>  # SPICE_CHECK_INSTRUMENTATION
>  # -----------------
>  # Check for the availability of an instrumentation library.
> diff --git a/meson.build b/meson.build
> index eeccecd..cafbf03 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -147,6 +147,13 @@ if smartcard_dep.found()
>    spice_common_config_data.set('USE_SMARTCARD', '1')
>  endif
>
> +#udev
> +udev_dep =3D dependency('libudev')
> +if udev_dep.found()
> +  spice_common_deps +=3D udev_dep
> +  spice_common_config_data.set('HAVE_UDEV', '1')
> +endif
> +
>  #
>  # global C defines
>  #

Wrote some small fixups (also addressing some comments) at
https://gitlab.freedesktop.org/fziglio/spice-common/-/commits/udev/
(ignore the test, just for linking/Windows/CI checks).

Frediano
