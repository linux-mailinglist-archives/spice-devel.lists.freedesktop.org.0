Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A906F0CC6
	for <lists+spice-devel@lfdr.de>; Thu, 27 Apr 2023 21:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA6A10E035;
	Thu, 27 Apr 2023 19:59:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D782210E035
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Apr 2023 19:59:27 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id
 5614622812f47-38e12d973bfso4939393b6e.0
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Apr 2023 12:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682625567; x=1685217567;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IxG13i15huBk8kR1HwGHV6noKDfsouXMR+FLH/Ih4Tk=;
 b=Piv8mYCQpliINsQ9g4ECglLbhV/1vtd2MMr+B3/LnP71X4TfEp4gcCX4WBJ78VcTVQ
 MJGM90VDy5R0SEBbizJQ2rZCnFjeAB05p8Mc+cqhu8d9+EsZQ1PMV/RZ5wjaGO5wrqjK
 O1NQBjfODQLGRKn4Wvy/6CRhbARNVvH00ISjgjyj7HwI8Q2ZNxtsFMVN+ON3iavX6lFG
 sRYUehtWMz9AEYmbtNVe9p8WTzb385LyjNcptRrLTqAnfM5+USQTsmUSuNFFeQSM9L/C
 e8pVYTPD8442msWvtAfhcpFxfatpx8klWVYI1mw3VEBK+tmCk24NT5QO20UuRWsGELOv
 D3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682625567; x=1685217567;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IxG13i15huBk8kR1HwGHV6noKDfsouXMR+FLH/Ih4Tk=;
 b=lemAGo+OKfRWfyBkXSRwTIsPDbLKx8Gaen8sJNlPQ7bxfnyp0zrhRy/thM4x1hImxX
 WY62zBhol70sexIr8g2deT+xpkbP4DdKTTtqskTNWxaSHYENCkrypB8S//cXqxtgjDj4
 hyMs24un3elvgRn7VEj9YB6Obz+bUIP3ieAxusMg8FjW9lMh2VReR/N4PA9p8gbG6HnM
 rI0aeoddgjbb0nAst9ucOfOe3PnKhfjjM50RhFXObv2Axd2tXC9CnwI2nqVztTMBmznp
 Law7C4rZ2SmTCmPtX8HISqM8YIoKHLMzlsYIeV3erhMdqJcCBZF/LT6mjw7zsAg+9f6F
 8BsQ==
X-Gm-Message-State: AC+VfDxF/CIqHildFQ92jrIvUWqOAA4BHFs+NX7opDcs6Y53DrriyEXE
 dMCeXhV4M0KryU4McSBhlZ7IxDHzmhfWKEua4ec=
X-Google-Smtp-Source: ACHHUZ6fVQJe8FNaVSIJhstyy7xur3wXfZbcNPCEUICtpTTxvGxSYShBEbFBwtOBOVnmqLj3pLKjy6sD8OvKzPK8GKQ=
X-Received: by 2002:aca:2b17:0:b0:389:1274:be46 with SMTP id
 i23-20020aca2b17000000b003891274be46mr1342678oik.19.1682625565208; Thu, 27
 Apr 2023 12:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
 <20230427061601.1488225-3-vivek.kasireddy@intel.com>
In-Reply-To: <20230427061601.1488225-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 27 Apr 2023 20:59:14 +0100
Message-ID: <CAHt6W4fM8=09C6C2kjyS2OArMscZRssbkctvRA2YX83uHKqYCA@mail.gmail.com>
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
>  typedef struct {
>      SpiceBitmapFmt spice_format;
> @@ -913,14 +915,97 @@ static const gchar* get_gst_codec_name(const SpiceG=
stEncoder *encoder)
>      }
>  }
>
> +static gboolean detect_intel_gpu()

This function is mostly the same as the other patch, why not put
common stuff in spice-common (used by both spice-gtk and spice-server)
?

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

why not a simpler "static const char video_codec_names[][8]" ? Are you
planning to extend the structure?

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

similar comment of other patch, also we could share some code here too.

> +    gboolean use_msdk =3D detect_intel_gpu() &&
> +                        msdk_vaapi_features_lookup(msdk_enc_name);
>  #ifdef HAVE_GSTREAMER_0_10
>      const gchar *converter =3D "ffmpegcolorspace";
>  #else
> -    const gchar *converter =3D "videoconvert";
> +    const gchar *converter =3D use_msdk ?
> +                             "vaapipostproc ! video/x-raw(memory:DMABuf)=
" :
> +                             "videoconvert";
>  #endif
> -    const gchar* gstenc_name =3D get_gst_codec_name(encoder);
> +    const gchar* gstenc_name =3D use_msdk ? g_strdup(msdk_enc_name) :
> +                               get_gst_codec_name(encoder);

Either we are getting a leak or an invalid free() I suppose.
Both names are used for the encoder name so now maybe the
get_gst_codec_name function name is misleading now.

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

Regards,
  Frediano
