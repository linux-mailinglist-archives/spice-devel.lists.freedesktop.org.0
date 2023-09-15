Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 774AE7A1A3B
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 11:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3CA10E600;
	Fri, 15 Sep 2023 09:18:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A9010E60E
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 09:18:49 +0000 (UTC)
Received: by mail-oo1-xc2f.google.com with SMTP id
 006d021491bc7-57325fcd970so1092463eaf.1
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 02:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694769528; x=1695374328; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SJaYMV1+RuBX2zf4IwXlRsI573/3AesWFqWH8fgGvvI=;
 b=IhTQ/lgCsiBTJ+f4rm/w+F65rsTLmTZYUr8/UQb1yZFuiCgB18KH/k7Hl63+qk0teK
 ZJDp3X+FAizgEXOTZKN7zko3X7YEHJXwJpREfTDRhd0NM2lejTOOZQ8QEvDv10meI5wf
 0TkiIaADOWLdbWEpcWw+hXuVdJngZIvCfhbIGI8cQR6sqk4KhjzM5DrpcYzGp9ALGL2X
 PBMrP+0pVdZaE4yM/5YgY5jIYgKZzurqKw1V2fKBnRy8YLps+t3wDQ2/Q32DkLQXeHgW
 3s25F//wm0BLpLxhywB0YTHQKwOuIv/PJG97KE875kCkk/4awHWE4zQcU2izK6K5P19Q
 4bZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694769528; x=1695374328;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SJaYMV1+RuBX2zf4IwXlRsI573/3AesWFqWH8fgGvvI=;
 b=bY9dDZUe2ssbwZQiocn6kpxl0rEw1GAuyTcDNG/4xKdeJgvDJHYa6K+VGNiYvrkpyB
 5qcGx/SVI3mJRZUXhcdbmfbloW4XIdNrvh50XJFUoedutEYsHvPfpK0KYr8rgpiRHAFF
 24vl4oIbn6nYdoFsYcBlnZyV+23SK2Ia8x48nfzsdjIzbjOhv/Psx1QCvQuNeK8Z/rAG
 WBC1FvZFuGBD1k9woW6LqWV6eHz6IIRX94MIwhZiXtyiOpDaL1ZwTUEAxBBjXoGEIQvQ
 q9Juq7RZADV58w+Xte72KZOTpFcBE7NNfscChhN+IolzcMIFBg4vPd6pnaXEojZwLymR
 rUXg==
X-Gm-Message-State: AOJu0YyqLNUYBXG/XoeKBdj5JOSjlNwWQglIqIwtoDo7XuVOwBj2Opja
 TPcXKByEX8bD5nDC8q0hEnXx4LA/lrgpoCf9YSA=
X-Google-Smtp-Source: AGHT+IFh/vrc9m3+aaekotyDHqA/+mqNs8git/84DqnKLTk8ghhZIh/2SVfFVF2g+oMFLeSBRPLnS3R5F0wiULWcbos=
X-Received: by 2002:a4a:6b4d:0:b0:56d:e6:21bf with SMTP id
 h13-20020a4a6b4d000000b0056d00e621bfmr1079780oof.0.1694769528381; 
 Fri, 15 Sep 2023 02:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-3-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 10:18:36 +0100
Message-ID: <CAHt6W4dLq2gaAt5nTJX0CM=QadNa8Z+34RETTYzoEpH6FWZQnw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH] common: Add a udev helper to identify GPU
 Vendor
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
 Gerd Hoffmann <kraxel@redhat.com>, Jin Chung Teng <jin.chung.teng@intel.com>,
 spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> Given that libudev is widely available on many distros, we can
> use the relevant APIs to iterate over all the PCI devices on
> any given system to identify if a GPU is available by looking
> at the driver name associated with it.
>
> This capability (identifying GPU Vendor) is useful to determine
> whether to launch Gstreamer pipeline using h/w accelerated
> plugins. On systems where libudev is not available (Windows),

Nor MacOS I think.

> we'd have to make this determination based on the availability
> of the plugins in Gstreamer registry.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  common/meson.build |  2 ++
>  common/udev.c      | 60 ++++++++++++++++++++++++++++++++++++++++++++++
>  common/udev.h      | 12 ++++++++++
>  meson.build        |  7 ++++++
>  4 files changed, 81 insertions(+)
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
> index 0000000..995a37e
> --- /dev/null
> +++ b/common/udev.c
> @@ -0,0 +1,60 @@

Can you add license comments?

> +#include <config.h>
> +
> +#ifdef HAVE_UDEV
> +#include <libudev.h>
> +#include <stdbool.h>
> +#include <string.h>
> +#include "udev.h"
> +
> +#define INTEL_GFX_DRV_NAME "i915"
> +
> +static bool is_intel_gpu(const char *drv_name)
> +{
> +    return !strcmp(drv_name, INTEL_GFX_DRV_NAME);
> +}
> +
> +GpuVendor spice_udev_detect_gpu()
> +{
> +    struct udev *udev;
> +    struct udev_device *udev_dev;
> +    struct udev_enumerate *udev_enum;
> +    struct udev_list_entry *entry, *devices;
> +    const char *path, *driver;
> +    GpuVendor vendor =3D GPU_VENDOR_OTHER;
> +
> +    udev =3D udev_new();
> +    if (!udev) {
> +        return vendor;
> +    }
> +
> +    udev_enum =3D udev_enumerate_new(udev);
> +    if (udev_enum) {
> +        udev_enumerate_add_match_subsystem(udev_enum, "pci");
> +        udev_enumerate_scan_devices(udev_enum);
> +        devices =3D udev_enumerate_get_list_entry(udev_enum);
> +
> +        udev_list_entry_foreach(entry, devices) {
> +            path =3D udev_list_entry_get_name(entry);
> +            udev_dev =3D udev_device_new_from_syspath(udev, path);
> +
> +            driver =3D udev_device_get_driver(udev_dev);
> +            if (driver && is_intel_gpu(driver)) {
> +                vendor =3D GPU_VENDOR_INTEL;
> +                udev_device_unref(udev_dev);
> +                break;
> +            }
> +            udev_device_unref(udev_dev);
> +        }
> +        udev_enumerate_unref(udev_enum);
> +    }
> +    udev_unref(udev);
> +
> +    return vendor;
> +}
> +#else
> +GpuVendor spice_udev_detect_gpu()
> +{
> +    return GPU_VENDOR_UNKNOWN;
> +}
> +#endif
> +
> diff --git a/common/udev.h b/common/udev.h
> new file mode 100644
> index 0000000..f1ba0ec
> --- /dev/null
> +++ b/common/udev.h
> @@ -0,0 +1,12 @@
> +#ifndef H_SPICE_COMMON_UDEV
> +#define H_SPICE_COMMON_UDEV
> +
> +typedef enum {
> +    GPU_VENDOR_UNKNOWN,
> +    GPU_VENDOR_OTHER,
> +    GPU_VENDOR_INTEL,
> +} GpuVendor;
> +
> +GpuVendor spice_udev_detect_gpu();
> +

What if the machine has more than one GPU ?
Maybe a

bool spice_udev_has_intel_gpu(void);

function instead?

Note that in C something like void funcname() is K&R style, something
you don't want, you need to specify the argument list and types (in
this case "void").

Recently we use "#pragma once" for new headers but it's your call.

I would use something like

/* SPDX-License-Identifier: BSD-3-Clause */

#pragma once

#include <stdbool.h>
#include <spice/macros.h>

SPICE_BEGIN_DECLS

bool spice_udev_has_intel_gpu(void);

SPICE_END_DECLS

> +#endif
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

Can you add autoconf support?

diff --git a/configure.ac b/configure.ac
index 0d4c22b..4fc4263 100644
--- a/configure.ac
+++ b/configure.ac
@@ -65,6 +65,8 @@ SPICE_COMMON_LIBS=3D'$(PIXMAN_LIBS) $(GLIB2_LIBS)
$(OPUS_LIBS) $(OPENSSL_LIBS)'
 AC_SUBST(SPICE_COMMON_CFLAGS)
 AC_SUBST(SPICE_COMMON_LIBS)

+PKG_CHECK_MODULES([UDEV], [libudev], AC_DEFINE([HAVE_UDEV], [1],
[Define if we have libudev support]))
+
 # The End!
 AC_CONFIG_FILES([
   Makefile

Frediano
