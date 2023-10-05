Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5AC7BA6F9
	for <lists+spice-devel@lfdr.de>; Thu,  5 Oct 2023 18:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698BA10E42F;
	Thu,  5 Oct 2023 16:44:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6873410E42F
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Oct 2023 16:44:22 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 46e09a7af769-6c6368a1a97so1134689a34.1
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Oct 2023 09:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696524261; x=1697129061; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BaMIa4mKjgNClvooQ7YrxGJlQkTA3SIWmIhSoAtdg1A=;
 b=ba5d2lPF/ZXn5AKKHCcBhLA+r5fbiQoiiPPnkajnkuBRbXEpjvquSvBOemVaXxGDg4
 IypC0daSkYVEIE0S68BDNaPXi/G2moOktIPTL2joXu8fDLUBCqFNE/i2mIa3KV7J1Dwj
 Sg36NCaP8yXAp7bVp5nyC/vpG/Kis5KqErTA7l3+BTjCjvIXaYiOOlGAHxAZ+XsBcOxw
 kM5rtRPG9k4TywwArv6HuzZeQOs2jR/1ZQ5xDSGsnysyIU+zSCN4SCQSuG1uYgEdkKrO
 4dCEhQ4cIl7qgg6oSNVoh5YxDg2hEcR+gt0OsyWwFxEI9wMxlFENyJtjVxlk2TI79QCc
 hzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696524261; x=1697129061;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BaMIa4mKjgNClvooQ7YrxGJlQkTA3SIWmIhSoAtdg1A=;
 b=T0/k0jxKjhHgtz4jLVcoIEiU+IzWart0Fs+ySpSzXYh4ymNTy8L+iR3Dp8EffAdRor
 SpJ+KSyzHKIAfQW9X0qY6RrQieXHhh0Mi8kYQWKMJqcGkZVQF69/rNokRebIRERx/vrS
 zG+KIvYKV6yYFToevc2+CAljP7rdVuDTfSgkMOQuq8R/aMTIsUFMyYdSnToLK3lCi1fi
 vkIgWPmbUGrKBVTwz98Dm3iXd+102Kg/cxRnL87PHLVl39KzJYgFXq0PRDda+xnoWTyL
 u4LUlTDXGrZqnIvRW+UKb98v3RjDLRyzxpf6RfD807YafU+fVKcSH7UfyUVjQFf6bHIc
 TH2A==
X-Gm-Message-State: AOJu0YwywE3CpZblVv1XdVa0mDlrP0/cfLsbLirxhhioWNPdXlvIQ77X
 VANQH03ZiSImQ8ScULGIASI41wIUE/zHKRUI6m7gUdjEEXU=
X-Google-Smtp-Source: AGHT+IGlucIevOM5WGbFoVDZmW+eshRQvJozlykfGhmYj9IXBnnUS8afJqsJTcdjOCKdwLrFwhX3npKGYVM+04OUrvg=
X-Received: by 2002:a9d:3e46:0:b0:6b9:5735:d9dc with SMTP id
 h6-20020a9d3e46000000b006b95735d9dcmr1114397otg.14.1696524261549; Thu, 05 Oct
 2023 09:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
 <20231002052026.2994546-3-vivek.kasireddy@intel.com>
 <CAHt6W4c+i=jmsCUV1LB8caexgyj7v3YMkZDzV-z-ds1rLpc8bA@mail.gmail.com>
In-Reply-To: <CAHt6W4c+i=jmsCUV1LB8caexgyj7v3YMkZDzV-z-ds1rLpc8bA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Oct 2023 17:44:10 +0100
Message-ID: <CAHt6W4c-sH9Se15LCjPB0XOtHHTQC8mr8HM-Qp8SSbcRk4MBJw@mail.gmail.com>
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

Il giorno mar 3 ott 2023 alle ore 20:36 Frediano Ziglio
<freddy77@gmail.com> ha scritto:
>
> Il giorno lun 2 ott 2023 alle ore 06:41 Vivek Kasireddy
> <vivek.kasireddy@intel.com> ha scritto:
> >
> > Given that libudev is widely available on many Linux distros, we
> > can use the relevant APIs to iterate over all the devices associated
> > with the drm subsystem to figure out if a specific vendor GPU
> > is available or not.
> >
> > This capability (identifying GPU Vendor) is useful to determine
> > whether to launch Gstreamer pipeline using h/w accelerated
> > plugins. On systems where libudev is not available (Windows,
> > MacOS, etc) we'd have to make this determination based on the
> > availability of the relevant plugins in the Gstreamer registry.
> >
> > v2: (Frediano)
> > - Added autoconf support
> > - Added license text
> > - Added pragma once and SPICE_BEGIN/END_DECLS to the header
> > - Checked the vendor id udev attribute of the pci device to
> >   determine a vendor GPU instead of checking the driver name
> >
>
> Thanks. Do you want this part of the message to be part of the final
> commit? Usually we don't put history... and not much useful IMHO.
>
> > Cc: Frediano Ziglio <freddy77@gmail.com>
> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> >  common/meson.build |  2 ++
> >  common/udev.c      | 78 ++++++++++++++++++++++++++++++++++++++++++++++
> >  common/udev.h      | 33 ++++++++++++++++++++
> >  configure.ac       |  1 +
> >  m4/spice-deps.m4   | 12 +++++++
> >  meson.build        |  7 +++++
> >  6 files changed, 133 insertions(+)
> >  create mode 100644 common/udev.c
> >  create mode 100644 common/udev.h
> >
> > diff --git a/common/meson.build b/common/meson.build
> > index 09e3ea7..63bd2db 100644
> > --- a/common/meson.build
> > +++ b/common/meson.build
> > @@ -39,6 +39,8 @@ spice_common_sources =3D [
> >    'snd_codec.h',
> >    'utils.c',
> >    'utils.h',
> > +  'udev.c',
> > +  'udev.h',
> >    'verify.h',
> >    'recorder.h'
> >  ]
> > diff --git a/common/udev.c b/common/udev.c
> > new file mode 100644
> > index 0000000..3985fdd
> > --- /dev/null
> > +++ b/common/udev.c
> > @@ -0,0 +1,78 @@
> > +/*
> > +   Copyright (C) 2023 Intel Corporation.
> > +
> > +   This library is free software; you can redistribute it and/or
> > +   modify it under the terms of the GNU Lesser General Public
> > +   License as published by the Free Software Foundation; either
> > +   version 2.1 of the License, or (at your option) any later version.
> > +
> > +   This library is distributed in the hope that it will be useful,
> > +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> > +   Lesser General Public License for more details.
> > +
> > +   You should have received a copy of the GNU Lesser General Public
> > +   License along with this library; if not, see <http://www.gnu.org/li=
censes/>.
> > +*/
> > +
> > +#include <config.h>
> > +
> > +#ifdef HAVE_UDEV
> > +#include <libudev.h>
> > +#include <stdbool.h>
> > +#include <stdlib.h>
> > +#include "udev.h"
> > +
> > +GpuVendor spice_udev_detect_gpu(long gpu_vendor)
>
> long type here looks a bit weird, considering that vendor numbers are
> encoded as 16-bit unsigned integer in PCI specifications; maybe just
> int?
>
> > +{
> > +    struct udev *udev;
> > +    struct udev_device *drm_dev, *pci_dev;
> > +    struct udev_enumerate *udev_enum;
> > +    struct udev_list_entry *entry, *devices;
> > +    const char *path, *vendor_id;
> > +    GpuVendor vendor =3D VENDOR_GPU_NOTDETECTED;
> > +
> > +    udev =3D udev_new();
> > +    if (!udev) {
> > +        return vendor;
>
> wondering if in this case VENDOR_GPU_UNKNOWN would be better, if we
> fail to get udev object we are not sure if there's the device or not.
>
> > +    }
> > +
> > +    udev_enum =3D udev_enumerate_new(udev);
> > +    if (udev_enum) {
> > +        udev_enumerate_add_match_subsystem(udev_enum, "drm");
> > +        udev_enumerate_add_match_sysname(udev_enum, "card[0-9]");
> > +        udev_enumerate_scan_devices(udev_enum);
> > +        devices =3D udev_enumerate_get_list_entry(udev_enum);
> > +
> > +        udev_list_entry_foreach(entry, devices) {
> > +            path =3D udev_list_entry_get_name(entry);
> > +            drm_dev =3D udev_device_new_from_syspath(udev, path);
> > +            if (!drm_dev) {
> > +                continue;
> > +            }
> > +
> > +            pci_dev =3D udev_device_get_parent_with_subsystem_devtype(=
drm_dev,
> > +                                                                    "p=
ci", NULL);
> > +            if (pci_dev) {
> > +                vendor_id =3D udev_device_get_sysattr_value(pci_dev, "=
vendor");
> > +                if (vendor_id && strtol(vendor_id, NULL, 16) =3D=3D gp=
u_vendor) {
> > +                    vendor =3D VENDOR_GPU_DETECTED;
> > +                    udev_device_unref(drm_dev);
> > +                    break;
> > +                }
> > +            }
> > +            udev_device_unref(drm_dev);
> > +        }
> > +        udev_enumerate_unref(udev_enum);
> > +    }
> > +    udev_unref(udev);
> > +
> > +    return vendor;
> > +}
> > +#else
> > +GpuVendor spice_udev_detect_gpu(long gpu_vendor)
>
> This won't compile as GpuVendor is not defined (udev.h not included)
>
> > +{
> > +    return VENDOR_GPU_UNKNOWN;
> > +}
> > +#endif
> > +
> > diff --git a/common/udev.h b/common/udev.h
> > new file mode 100644
> > index 0000000..6a3d068
> > --- /dev/null
> > +++ b/common/udev.h
> > @@ -0,0 +1,33 @@
> > +/*
> > +   Copyright (C) 2023 Intel Corporation.
> > +
> > +   This library is free software; you can redistribute it and/or
> > +   modify it under the terms of the GNU Lesser General Public
> > +   License as published by the Free Software Foundation; either
> > +   version 2.1 of the License, or (at your option) any later version.
> > +
> > +   This library is distributed in the hope that it will be useful,
> > +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> > +   Lesser General Public License for more details.
> > +
> > +   You should have received a copy of the GNU Lesser General Public
> > +   License along with this library; if not, see <http://www.gnu.org/li=
censes/>.
> > +*/
> > +
> > +#pragma once
> > +#include <spice/macros.h>
> > +
> > +#define INTEL_VENDOR_ID 0x8086
> > +
> > +typedef enum {
> > +    VENDOR_GPU_UNKNOWN,
> > +    VENDOR_GPU_DETECTED,
> > +    VENDOR_GPU_NOTDETECTED,
> > +} GpuVendor;
> > +
> > +SPICE_BEGIN_DECLS
> > +
> > +GpuVendor spice_udev_detect_gpu(long gpu_vendor);
> > +
> > +SPICE_END_DECLS
> > diff --git a/configure.ac b/configure.ac
> > index 0d4c22b..42e873d 100644
> > --- a/configure.ac
> > +++ b/configure.ac
> > @@ -61,6 +61,7 @@ SPICE_CHECK_GLIB2
> >  SPICE_CHECK_OPUS
> >  SPICE_CHECK_OPENSSL
> >  SPICE_CHECK_GDK_PIXBUF
> > +SPICE_CHECK_UDEV
> >
> >  SPICE_COMMON_CFLAGS=3D'$(PIXMAN_CFLAGS) $(SMARTCARD_CFLAGS) $(GLIB2_CF=
LAGS) $(OPUS_CFLAGS) $(OPENSSL_CFLAGS)'
> >  SPICE_COMMON_CFLAGS=3D"$SPICE_COMMON_CFLAGS -DG_LOG_DOMAIN=3D\\\"Spice=
\\\""
> > diff --git a/m4/spice-deps.m4 b/m4/spice-deps.m4
> > index e11fc4e..6a07ee6 100644
> > --- a/m4/spice-deps.m4
> > +++ b/m4/spice-deps.m4
> > @@ -302,6 +302,18 @@ AC_DEFUN([SPICE_CHECK_OPENSSL], [
> >      PKG_CHECK_MODULES(OPENSSL, openssl)
> >  ])
> >
> > +# SPICE_CHECK_UDEV
> > +# -----------------
> > +# Check for the availability of libudev. If found, it will help to det=
ermine
> > +# if a given vendor GPU is available or not.
> > +#------------------
> > +AC_DEFUN([SPICE_CHECK_UDEV], [
> > +    PKG_CHECK_MODULES([UDEV], [libudev], [have_udev=3Dyes],[have_udev=
=3Dno])
> > +    if test "x$have_udev" =3D "xyes"; then
> > +      AC_DEFINE([HAVE_UDEV], 1, [whether libudev is available to ident=
ify GPU])
> > +    fi
> > +])
> > +
> >  # SPICE_CHECK_INSTRUMENTATION
> >  # -----------------
> >  # Check for the availability of an instrumentation library.
> > diff --git a/meson.build b/meson.build
> > index eeccecd..cafbf03 100644
> > --- a/meson.build
> > +++ b/meson.build
> > @@ -147,6 +147,13 @@ if smartcard_dep.found()
> >    spice_common_config_data.set('USE_SMARTCARD', '1')
> >  endif
> >
> > +#udev
> > +udev_dep =3D dependency('libudev')
> > +if udev_dep.found()
> > +  spice_common_deps +=3D udev_dep
> > +  spice_common_config_data.set('HAVE_UDEV', '1')
> > +endif
> > +
> >  #
> >  # global C defines
> >  #
>
> Wrote some small fixups (also addressing some comments) at
> https://gitlab.freedesktop.org/fziglio/spice-common/-/commits/udev/
> (ignore the test, just for linking/Windows/CI checks).
>

Hi,
   added another fixup to the list, see
https://gitlab.freedesktop.org/fziglio/spice-common/-/commit/c4053f413e3e07=
2f6fdc074a2adbb2b42df579f7
(libudev should not be required otherwise it won't compile on systems
not providing it)

Frediano
