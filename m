Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317556FE48C
	for <lists+spice-devel@lfdr.de>; Wed, 10 May 2023 21:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF17E10E50F;
	Wed, 10 May 2023 19:38:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com
 [IPv6:2607:f8b0:4864:20::c35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1DE910E50F
 for <spice-devel@lists.freedesktop.org>; Wed, 10 May 2023 19:38:58 +0000 (UTC)
Received: by mail-oo1-xc35.google.com with SMTP id
 006d021491bc7-54f8b7a4feeso1321007eaf.2
 for <spice-devel@lists.freedesktop.org>; Wed, 10 May 2023 12:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683747537; x=1686339537;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=66iqgQlmQXrV2pKznKfg10P1wGQt6ZLc3DamIe3v+3E=;
 b=gEAqCi8h2zjLgnAq30CU60akv4tsxB8C+kxvXYp3bHpSe5vQSzrplw+yT8ttyXEbnS
 DHVELe3a47McI0A+XRu49ZAK+yDEnjF0HOxNUuAs5nZhSudeJpOSWNumcPg7T+vYTNCL
 B8m1vGxBCAt/mPhpsCgfxgK8CIhWpEbolNWOYVk8SUpYImpTz/AjnT7r63rMccRaXyLY
 AygaLPu3OWG2fnoNXpjrnmJlxWb2SbI6D1Yh/p4KZkFxs6V/Qj5yZ4ErNKf6PVZ93syB
 JXCiHeILbx01EgNiWjLfqxjHjmt9glaGCnSmI0cuXrgrLROZ8f5pdzVZd77+rWW27RCC
 S2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683747537; x=1686339537;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=66iqgQlmQXrV2pKznKfg10P1wGQt6ZLc3DamIe3v+3E=;
 b=MXnkAYyGhj+wdWI7Iq0lWw3tll4Ck/wa25AkYCJ/sDPRyV6nadCp2JRGf4LgBOcaof
 2H0xqOzLHzVV4vJdb4SrZ2t7rtU//sLI6xwr0DAIzXakpFgFRgqvH5K1cTBY+gHoEHxC
 12OjIRcI35/ZH21HuBwA2JBiSMIPKvqTbyrviHM1L24pi9SJoaIcb5ObZav/vWfWacYc
 YQUbcqFK9lZXRXPgBe3vq3U8zF66uZVRHNbzIA2I41zDUuyv6CqE7dBuy+QkM9aiEreP
 fmFHpCPDk33m6bBlAUuQvRqywTxTIO4pqwcXhkOmurlH7GITC91VExgmIIxe8KS7LOfI
 FRRw==
X-Gm-Message-State: AC+VfDyMMvYdnCrJQLdLlBcn2Li4X5PkpM1XBO0nLfHo3PVh7gdE3rZ8
 LkMxkwBaZBsr0qAuMPxZUvAzBKJxp63sFVqFR5+OTkyIFkk=
X-Google-Smtp-Source: ACHHUZ6avmTFCMZ9EYHRPWlia/B4/3AeJLogxUygTTOMGM4aiQgKHnd/avXtFMtJ9U81gO73kqY9VZ4Dyn52ugPRfc8=
X-Received: by 2002:a05:6808:65a:b0:38d:edd7:8cd4 with SMTP id
 z26-20020a056808065a00b0038dedd78cd4mr3482408oih.53.1683747537332; Wed, 10
 May 2023 12:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
 <20230427061601.1488225-3-vivek.kasireddy@intel.com>
In-Reply-To: <20230427061601.1488225-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 10 May 2023 20:38:46 +0100
Message-ID: <CAHt6W4d9qza9AAAiL3PUzD528nFgwEfum-QPGK9K-nYRsv+5uw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: Use a h/w based
 encoder with Intel GPUs if possible
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
 Hazwan Arif <hazwan.arif.mazlan@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Jin Chung <jin.chung.teng@intel.com>, spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno gio 27 apr 2023 alle ore 07:37 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> Once it is determined that an Intel GPU is available/active (after
> looking into udev's database), we try to see if there is a h/w
> based encoder (element) available (in Gstreamer's registry cache)
> for the user selected video codec. In other words, if we find that
> the Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
> libraries (such as vaapi) are all installed properly, we add the
> appropriate h/w based encoder and post-processor/converter elements
> to the pipeline (along with any relevant options) instead of the
> s/w based elements.
>
> For example, if the user selects h264 as the preferred codec format,
> msdkh264enc and vaapipostproc will be added instead of x264enc
> and videoconvert.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Signed-off-by: Mazlan, Hazwan Arif <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Teng, Jin Chung <jin.chung.teng@intel.com>
> ---
>  meson.build                |  3 ++
>  server/gstreamer-encoder.c | 93 +++++++++++++++++++++++++++++++++++++-
>  2 files changed, 94 insertions(+), 2 deletions(-)
>
> diff --git a/meson.build b/meson.build
> index d66fac10..a401fe2c 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -182,6 +182,9 @@ if smartcard_dep.found()
>    spice_server_requires +=3D 'libcacard >=3D 2.5.1 '
>  endif
>
> +#udev
> +spice_server_deps +=3D dependency('libudev', required : true)
> +

udev cannot be required, for instance it is not available on Windows.
Also you should check if Gstreamer is enabled.

>  #
>  # global C defines
>  #
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index 2ceb80ba..eed359df 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -27,6 +27,7 @@
>  #include <gst/app/gstappsink.h>
>  #include <gst/video/video.h>
>  #include <orc/orcprogram.h>
> +#include <libudev.h>
>
>  #include "red-common.h"
>  #include "video-encoder.h"
> @@ -39,6 +40,7 @@
>  # define DO_ZERO_COPY
>  #endif
>
> +#define INTEL_GFX_DRV_NAME "i915"
>

Is it the only available driver name?

>  typedef struct {
>      SpiceBitmapFmt spice_format;
> @@ -913,14 +915,97 @@ static const gchar* get_gst_codec_name(const SpiceG=
stEncoder *encoder)
>      }
>  }
>
> +static gboolean detect_intel_gpu()
> +{
> +    struct udev *udev;
> +    struct udev_device *udev_dev;
> +    struct udev_enumerate *udev_enum;
> +    struct udev_list_entry *entry, *devices;
> +    const char *path, *driver;
> +    gboolean found =3D FALSE;
> +
> +    udev =3D udev_new();
> +    if (!udev) {
> +        return FALSE;
> +    }
> +
> +    udev_enum =3D udev_enumerate_new(udev);

I noted that msdk plugins are not visible using gst-inspect-1.0 if
some setup is not correct. Maybe we can test this using Gstreamer
instead of udev? For SPICE is not a big deal, we want this mainly to
encode DMAbuf and these are not available under Windows but for
spice-gtk msdk plugins should be available also on Windows.

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
> +            if (!g_strcmp0(driver, INTEL_GFX_DRV_NAME)) {
> +                found =3D TRUE;
> +                udev_device_unref(udev_dev);
> +                break;
> +            }
> +            udev_device_unref(udev_dev);
> +        }
> +        udev_enumerate_unref(udev_enum);
> +    }
> +    udev_unref(udev);
> +
> +    return found;
> +}
> +
> +static gboolean msdk_vaapi_features_lookup(const gchar *enc_name)
> +{
> +    GstRegistry *registry =3D NULL;
> +    GstPluginFeature *msdkenc =3D NULL;
> +    GstPluginFeature *vaapivpp =3D NULL;
> +
> +    registry =3D gst_registry_get();
> +    if (!registry) {
> +        return FALSE;
> +    }
> +    msdkenc =3D gst_registry_lookup_feature(registry, enc_name);
> +    if (!msdkenc) {
> +        return FALSE;
> +    }
> +    vaapivpp =3D gst_registry_lookup_feature(registry, "vaapipostproc");
> +    if (!vaapivpp) {
> +        gst_object_unref(msdkenc);
> +        return FALSE;
> +    }
> +
> +    gst_object_unref(msdkenc);
> +    gst_object_unref(vaapivpp);
> +    return TRUE;
> +}
> +
> +static const struct {
> +    const gchar name[8];
> +} video_codecs[] =3D {
> +    { "" },
> +    { "mjpeg" },
> +    { "vp8" },
> +    { "h264" },
> +    { "vp9" },
> +    { "h265" },
> +};
> +
>  static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  {
> +    const gchar *codec_name =3D video_codecs[encoder->base.codec_type].n=
ame;
> +    gchar *msdk_enc_name =3D g_strconcat("msdk", codec_name, "enc", NULL=
);
> +    gboolean use_msdk =3D detect_intel_gpu() &&
> +                        msdk_vaapi_features_lookup(msdk_enc_name);
>  #ifdef HAVE_GSTREAMER_0_10
>      const gchar *converter =3D "ffmpegcolorspace";
>  #else
> -    const gchar *converter =3D "videoconvert";
> +    const gchar *converter =3D use_msdk ?
> +                             "vaapipostproc ! video/x-raw(memory:DMABuf)=
" :

testing it appears that the older Gstreamer version does not support
this "video/x-raw(memory:DMABuf)" but removing it the pipeline will
work. Should not Gstreamer choose the better format to use? Or could
this code be modified to work with both versions of Gstreamer?

> +                             "videoconvert";
>  #endif
> -    const gchar* gstenc_name =3D get_gst_codec_name(encoder);
> +    const gchar* gstenc_name =3D use_msdk ? g_strdup(msdk_enc_name) :
> +                               get_gst_codec_name(encoder);
> +    g_free(msdk_enc_name);
>      if (!gstenc_name) {
>          return FALSE;
>      }
> @@ -972,6 +1057,10 @@ static gboolean create_pipeline(SpiceGstEncoder *en=
coder)
>          spice_warning("unsupported codec type %d", encoder->base.codec_t=
ype);
>          return FALSE;
>      }
> +    if (use_msdk) {
> +        g_free(gstenc_opts);
> +        gstenc_opts =3D g_strdup("async-depth=3D1 rate-control=3D3 gop-s=
ize=3D1 tune=3D16 ref-frames=3D1 b-frames=3D0 target-usage=3D7 min-qp=3D15 =
max-qp=3D35");
> +    }
>
>      GError *err =3D NULL;
>      gchar *desc =3D g_strdup_printf("appsrc is-live=3Dtrue format=3Dtime=
 do-timestamp=3Dtrue name=3Dsrc !"

Frediano
