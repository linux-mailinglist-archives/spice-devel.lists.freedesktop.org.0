Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C097A267F
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 20:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA46E10E021;
	Fri, 15 Sep 2023 18:46:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com
 [IPv6:2607:f8b0:4864:20::c2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD8410E673
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 18:46:54 +0000 (UTC)
Received: by mail-oo1-xc2b.google.com with SMTP id
 006d021491bc7-57129417cecso1316004eaf.1
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 11:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694803613; x=1695408413; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2MaVCgar3ZaIRzSUsRCldh/8JaNk6nmHiDTAyR866GY=;
 b=YhVQ/gGQxs5QuR35EqPPX5F/vW7dth31XM5+IhO22nM8oHTGkNClOMesIvBgr2bw2k
 tcAwZbm2kgCLbPdT6eXC7FYmt0/rdT4pdWNTdWMx/G8A1TWwFdrCjBFp6wo6+qRw7JQz
 xG07PzKkKBj5+TugUUgou/E/ZrDIg51/nN0VPaspC65WDwTrL8s7H7iRxyGtBA5Xa2mp
 t9jUN5x6pQyO06urrQ3Y/qhGROaGavJoj3ZH/8aauxv1S6XGaImmxqQQMUwCUkxvhxKr
 pAce7xTxLxP0Khmm7wonlytE+tQ21pwXRzSTwDkjWRDSrmD93f/mWne7b9KLB+1ayE2d
 3qZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694803614; x=1695408414;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2MaVCgar3ZaIRzSUsRCldh/8JaNk6nmHiDTAyR866GY=;
 b=Evu9QyKqZZ4UfFJJt8rh0gYdeQYGl6ykf4RApmI54kizUs36p7ZJSo2AejFUe9S1BV
 LghfDI0EjXPloKpMBLBIZ8d6zmiF/rC92LzNVA5SY28C1y/brB7Xf+rxoEhEQHDX2kqI
 JMr++rRUxv7CP4GNJ4Nyi1/T2B47hZ+vo9t03cyB4y3Up1uM6B83p34lyS7f6USXpZrE
 YhhXwq6fJUG0ZjePYUKfk0/DxchqBQcAQAngpi1S+jDP39qeHNSAxRePGLAqd24MBmZW
 iu3QN6TwdhZanRJBd9i6CipkLdgo1FT7VsLbXMA6y3D8O3sXOgFu2H7ScFzYqHUqi39y
 HDgw==
X-Gm-Message-State: AOJu0YxtszmY3FrdqDRrvpG8fH/0BEZGn/UG/S045iyAcpH6OzXoNT2N
 64PJZq71E5VB4KHKlVhQ9mj3NshS265Z4+bsgKE=
X-Google-Smtp-Source: AGHT+IE5ZnRMm1nMl9zSEJBZRBoJZEyXl1Mfm6O8XmGo8bcXsl+IMO7SdMC/FpjdRayBTfLdIW82OfxHguy+vRRIqz4=
X-Received: by 2002:a4a:df50:0:b0:576:90e1:66c3 with SMTP id
 j16-20020a4adf50000000b0057690e166c3mr3893651oou.1.1694803613645; Fri, 15 Sep
 2023 11:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-6-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-6-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 19:46:42 +0100
Message-ID: <CAHt6W4d3MuzB2f610xkSrkVVvSVdePxy8=JJ5x=H8in9uQDKkw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH 2/2] gstreamer-encoder: Use a h/w based
 encoder with Intel GPUs if possible (v2)
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
> Once it is determined that an Intel GPU is available/active (after
> looking into udev's database), we try to see if there is a h/w
> based encoder (element) available (in Gstreamer's registry cache)
> for the user selected video codec. In other words, if we find that
> the Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
> libraries (such as va or vaapi) are all installed properly, we add
> the appropriate h/w based encoder and post-processor/converter
> elements to the pipeline (along with any relevant options) instead
> of the s/w based elements.
>
> For example, if the user selects h264 as the preferred codec format,
> msdkh264enc and vapostproc will be preferred instead of x264enc
> and videoconvert.
>
> v2: (addressed some review comments from Frediano)
> - Moved the udev helper into spice-common
> - Refactored the code to choose plugins in order msdk > va > vaapi
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Co-developed-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Co-developed-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> ---
>  server/gstreamer-encoder.c | 96 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 93 insertions(+), 3 deletions(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index 057509b5..44666f42 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -31,6 +31,7 @@
>  #include "red-common.h"
>  #include "video-encoder.h"
>  #include "utils.h"
> +#include "common/udev.h"
>
>
>  #define SPICE_GST_DEFAULT_FPS 30
> @@ -913,14 +914,94 @@ static const gchar* get_gst_codec_name(const SpiceG=
stEncoder *encoder)
>      }
>  }
>
> +static const char video_codecs[][8] =3D {
> +    { "" },
> +    { "mjpeg" },
> +    { "vp8" },
> +    { "h264" },
> +    { "vp9" },
> +    { "h265" },
> +};
> +
> +static bool gst_features_lookup(const gchar *feature_name)
> +{
> +    GstRegistry *registry;
> +    GstPluginFeature *feature;
> +
> +    registry =3D gst_registry_get();
> +    if (!registry) {
> +        return false;
> +    }
> +
> +    feature =3D gst_registry_lookup_feature(registry, feature_name);
> +    if (!feature) {
> +        return false;
> +    }
> +
> +    gst_object_unref(feature);
> +    return true;
> +}
> +
> +static gchar *find_best_plugin(const gchar *codec_name)
> +{
> +    const char *plugins[3] =3D {"msdk", "va", "vaapi"};
> +    gchar *feature_name;
> +    int i;
> +
> +    for (i =3D 0; i < 3; i++) {
> +        feature_name =3D !codec_name ? g_strconcat(plugins[i], "postproc=
", NULL) :

The name for the msdk postproc is msdkvpp, not msdkpostproc.
Looking at this function and the next one it looks correct to use,
let's say an encoder from msdk (like msdkvp9enc) and the vaapi post
processor (like vaapipostproc), but it seems wrong to me.

> +                       g_strconcat(plugins[i], codec_name, "enc", NULL);
> +        if (!gst_features_lookup(feature_name)) {
> +            g_free(feature_name);
> +            feature_name =3D NULL;
> +            continue;
> +        }
> +        break;
> +    }
> +    return feature_name;
> +}
> +
> +static void try_intel_hw_plugins(const gchar *codec_name, gchar **conver=
ter,
> +                                 gchar **gstenc_name, gchar **gstenc_opt=
s)
> +{
> +    gchar *encoder =3D find_best_plugin(codec_name);
> +    if (!encoder) {
> +        return;
> +    }
> +    gchar *vpp =3D find_best_plugin(NULL);
> +    if (!vpp) {
> +        return;
> +    }
> +
> +    g_free(*converter);
> +    g_free(*gstenc_name);
> +    g_free(*gstenc_opts);
> +
> +    *gstenc_name =3D encoder;
> +    if (strstr(encoder, "msdk")) {
> +        *gstenc_opts =3D g_strdup("async-depth=3D1 rate-control=3D3 gop-=
size=3D1 tune=3D16 b-frames=3D0 target-usage=3D7 min-qp=3D15 max-qp=3D35");

These options are nice for h264 (and probably h265) but are wrong for
vp9 and probably mjpeg.

> +    } else if (strstr(encoder, "vaapi")) {
> +        *gstenc_opts =3D g_strdup("rate-control=3Dcqp max-bframes=3D0 mi=
n-qp=3D15 max-qp=3D35");
> +    } else {
> +        *gstenc_opts =3D g_strdup("rate-control=3D16 b-frames=3D0 target=
-usage=3D7 min-qp=3D15 max-qp=3D35");
> +    }

Similar comment for these.

> +
> +    if (strstr(vpp, "vaapi")) {
> +        *converter =3D g_strconcat(vpp, " ! video/x-raw(memory:VASurface=
),format=3DNV12", NULL);
> +    } else {
> +        *converter =3D g_strconcat(vpp, " ! video/x-raw(memory:VAMemory)=
,format=3DNV12", NULL);
> +    }

From gst-inspect msdkvpp does not support any of these. Is this expected?

> +    g_free(vpp);
> +}
> +
>  static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  {
>  #ifdef HAVE_GSTREAMER_0_10
> -    const gchar *converter =3D "ffmpegcolorspace";
> +    gchar *converter =3D g_strdup("ffmpegcolorspace");
>  #else
> -    const gchar *converter =3D "videoconvert ! video/x-raw,format=3DNV12=
";
> +    gchar *converter =3D g_strdup("videoconvert ! video/x-raw,format=3DN=
V12");
>  #endif
> -    const gchar* gstenc_name =3D get_gst_codec_name(encoder);
> +    gchar* gstenc_name =3D g_strdup(get_gst_codec_name(encoder));
>      if (!gstenc_name) {
>          return FALSE;
>      }
> @@ -973,12 +1054,21 @@ static gboolean create_pipeline(SpiceGstEncoder *e=
ncoder)
>          return FALSE;
>      }
>
> +    const char *codec_name =3D video_codecs[encoder->base.codec_type];
> +    GpuVendor vendor =3D spice_udev_detect_gpu();
> +    if (vendor =3D=3D GPU_VENDOR_INTEL) {
> +        try_intel_hw_plugins(codec_name, &converter, &gstenc_name,
> +                             &gstenc_opts);
> +    }
> +
>      GError *err =3D NULL;
>      gchar *desc =3D g_strdup_printf("appsrc is-live=3Dtrue format=3Dtime=
 do-timestamp=3Dtrue name=3Dsrc !"
>                                    " %s ! %s name=3Dencoder %s ! appsink =
name=3Dsink",
>                                    converter, gstenc_name, gstenc_opts);
>      spice_debug("GStreamer pipeline: %s", desc);
>      encoder->pipeline =3D gst_parse_launch_full(desc, NULL, GST_PARSE_FL=
AG_FATAL_ERRORS, &err);
> +    g_free(converter);
> +    g_free(gstenc_name);
>      g_free(gstenc_opts);
>      g_free(desc);
>      if (!encoder->pipeline || err) {

Frediano
