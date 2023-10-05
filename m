Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AA77BA72C
	for <lists+spice-devel@lfdr.de>; Thu,  5 Oct 2023 18:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902B210E42F;
	Thu,  5 Oct 2023 16:57:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9897310E42F
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Oct 2023 16:57:28 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-57ad95c555eso633601eaf.3
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Oct 2023 09:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696525048; x=1697129848; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SwFQ2IDD0itqNAXdHukkoQUuPu5FJs4tm++YyrwiGX0=;
 b=M77xA2hcjKC2ZsCtmZoS+0AVtx4MY5P8ZCOODUB4cxRRBsnH7Zw/JjLoF/0y6PAttG
 eCSVQANxz6Ihp4OfjnJn8iepljoN/6t7U4xVsDds6f8eb/ykmj/FXtNmOv4YGdMZZOpz
 7t1zZFClHhwfQFX+e1VyJnUdPOacBjvqNzBvPWgdNQ31dWfoAdGAk7Q1OCVUq30oWALb
 IGxCyCeNgXrDBIHB3Trl0flzEKu1sXG5dKr/4xe9vl+VTAXgFarRB4UqSHL6BSZWV97B
 tns5+MUnshZAufsLyzV47blMukV56nf0Mh1sd7Z/A669viTkD4/MdxdHwQn0utmJOWqa
 Bg9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696525048; x=1697129848;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SwFQ2IDD0itqNAXdHukkoQUuPu5FJs4tm++YyrwiGX0=;
 b=togyb9+/VMNrrZSgqT6uvYR8UAA4YdVkj47rHCZiD8q5ZldKeuzV+VsNzxdVIoxLLx
 IKVNw3rfDGdI1zx3HKiGLpeoxuh+r+pvXcsPY4d62Am06xwr/bYB0C3UJ8F940qHHKmO
 SWzI5rpFvL5qxvcnwsaL/A5EzEJASyJeRSZG5e0Y8ZuZI0GpWX7ysgiBm86h6iARKjjs
 swk9UoNQJ53clu9q0u89YpUj1l5farKRmQL6CGfEyi1rZ7xFqgR3O8xMpQ57a0SZD4/X
 z7TsWb7YRQIzFKp6tdx7DVrNuopKbd+jxkHHLYEwQGOvi17dUMyYVCJ5Wx5u0JkTuQqu
 aPRw==
X-Gm-Message-State: AOJu0YygkvcEsTo34+QU/W7sMCfoKfYFUrKTuuR4TyJ2OY/2epTiLp1Y
 6Kiuqq813xw4b9pUt701VqDenMtcSx4HGO7f/VJMBtsEiHAwCw==
X-Google-Smtp-Source: AGHT+IF/274gPLIu8aVAeHgStze8NHiAfGwfKLvXGnWiGEQ+wlHkyEIhgt0YEOx806aCLXEroVf9235LuS20yZrdLGo=
X-Received: by 2002:a4a:925c:0:b0:57b:5c28:4169 with SMTP id
 g28-20020a4a925c000000b0057b5c284169mr5702011ooh.1.1696525047778; Thu, 05 Oct
 2023 09:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
 <20231002052026.2994546-6-vivek.kasireddy@intel.com>
In-Reply-To: <20231002052026.2994546-6-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Oct 2023 17:57:16 +0100
Message-ID: <CAHt6W4erpAoE2DBScCxDt3pNO74Hzzamkc2dTzqXgGYvogyd6Q@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH 2/2] gstreamer-encoder: Use a h/w based
 encoder with Intel GPUs if possible (v3)
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
> v3: (Frediano)
> - Added relevant encoder options for mjpeg and vp9 codecs (Jin Chung)
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Co-developed-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Co-developed-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> ---
>  server/gstreamer-encoder.c | 120 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 119 insertions(+), 1 deletion(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index 1619672a..952c2e87 100644
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
> @@ -913,6 +914,115 @@ static const gchar* get_gst_codec_name(const SpiceG=
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
> +static gchar *get_gstenc_opts(gchar *encoder, const gchar *codec_name)
> +{
> +    gchar *gstenc_opts;
> +
> +    if (strcmp(codec_name, "mjpeg") =3D=3D 0) {
> +        return g_strdup("");
> +    }
> +
> +    if (strstr(encoder, "msdk")) {
> +        if (strcmp(codec_name, "vp9") =3D=3D 0) {
> +            gstenc_opts =3D g_strdup("async-depth=3D1 b-frames=3D0 rate-=
control=3D3 target-usage=3D7");
> +        } else {
> +            gstenc_opts =3D g_strdup("async-depth=3D1 rate-control=3D3 g=
op-size=3D1 tune=3D16 b-frames=3D0 target-usage=3D7 min-qp=3D15 max-qp=3D35=
");
> +        }
> +    } else if (strstr(encoder, "vaapi")) {
> +        if (strcmp(codec_name, "vp9") =3D=3D 0) {
> +            gstenc_opts =3D g_strdup("tune=3D3 rate-control=3D1");
> +        } else {
> +            gstenc_opts =3D g_strdup("rate-control=3Dcqp max-bframes=3D0=
 min-qp=3D15 max-qp=3D35");
> +        }
> +    } else {
> +        if (strcmp(codec_name, "vp9") =3D=3D 0) {
> +            gstenc_opts =3D g_strdup("min-qp=3D15 max-qp=3D35 rate-contr=
ol=3D16 ref-frames=3D0 target-usage=3D7");
> +        } else {
> +            gstenc_opts =3D g_strdup("rate-control=3D16 b-frames=3D0 tar=
get-usage=3D7 min-qp=3D15 max-qp=3D35");
> +        }
> +    }
> +    return gstenc_opts;
> +}
> +
> +static void try_intel_hw_plugins(const gchar *codec_name, gchar **conver=
ter,
> +                                 gchar **gstenc_name, gchar **gstenc_opt=
s)
> +{
> +    gchar *encoder, *vpp;
> +
> +    if (strcmp(codec_name, "vp8") =3D=3D 0) {
> +        return;
> +    }
> +
> +    encoder =3D find_best_plugin(codec_name);
> +    if (!encoder) {
> +        return;
> +    }
> +    vpp =3D find_best_plugin(NULL);
> +    if (!vpp) {
> +        return;
> +    }
> +
> +    g_free(*converter);
> +    g_free(*gstenc_name);
> +    g_free(*gstenc_opts);
> +    *gstenc_name =3D encoder;
> +    *gstenc_opts =3D get_gstenc_opts(encoder, codec_name);
> +
> +    if (strstr(vpp, "vaapi")) {
> +        *converter =3D g_strconcat(vpp, " ! video/x-raw(memory:VASurface=
),format=3DNV12", NULL);
> +    } else {
> +        *converter =3D g_strconcat(vpp, " ! video/x-raw(memory:VAMemory)=
,format=3DNV12", NULL);
> +    }
> +    g_free(vpp);
> +}
> +
>  static gchar *get_gst_converter(void)
>  {
>      gchar *converter, *pref_format;
> @@ -932,7 +1042,7 @@ static gchar *get_gst_converter(void)
>  static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  {
>      gchar* converter =3D get_gst_converter();
> -    const gchar* gstenc_name =3D get_gst_codec_name(encoder);
> +    gchar* gstenc_name =3D g_strdup(get_gst_codec_name(encoder));
>      if (!gstenc_name) {
>          return FALSE;
>      }
> @@ -985,6 +1095,13 @@ static gboolean create_pipeline(SpiceGstEncoder *en=
coder)
>          return FALSE;
>      }
>
> +    const char *codec_name =3D video_codecs[encoder->base.codec_type];
> +    GpuVendor vendor =3D spice_udev_detect_gpu(INTEL_VENDOR_ID);
> +    if (vendor =3D=3D VENDOR_GPU_DETECTED) {
> +        try_intel_hw_plugins(codec_name, &converter, &gstenc_name,
> +                             &gstenc_opts);
> +    }
> +
>      GError *err =3D NULL;
>      gchar *desc =3D g_strdup_printf("appsrc is-live=3Dtrue format=3Dtime=
 do-timestamp=3Dtrue name=3Dsrc !"
>                                    " %s ! %s name=3Dencoder %s ! appsink =
name=3Dsink",
> @@ -992,6 +1109,7 @@ static gboolean create_pipeline(SpiceGstEncoder *enc=
oder)
>      spice_debug("GStreamer pipeline: %s", desc);
>      encoder->pipeline =3D gst_parse_launch_full(desc, NULL, GST_PARSE_FL=
AG_FATAL_ERRORS, &err);
>      g_free(converter);
> +    g_free(gstenc_name);
>      g_free(gstenc_opts);
>      g_free(desc);
>      if (!encoder->pipeline || err) {


Hi,
   rebased on master, added some fixup, see
https://gitlab.freedesktop.org/fziglio/spice/-/commits/gstreamer_hw/.

Specifically
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/54eba373a0d2c34b65f=
c5f2551fc406a6058962b
to fix CI;
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/2a55b6dd52eb1388391=
60e7e78c977a3c978fd35
update submodule (well, we need to changed when final spice-common
patches will be merged);
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/8cabd4de61244ef28f4=
7eee4105cd55924065727
removes minor leak;
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/a1c9d3adde2710b43be=
bcfbe43bb23608d8e037e
minor style/optimization changes, not really important;
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/a7876c878234e0ca14c=
f0a94cf25b9b34b7c39ae
fixes a leak and a use-after-free;
- https://gitlab.freedesktop.org/fziglio/spice/-/commit/7640409b0d5ec87c514=
41e46df7fa61281669df5
some "styles" changes. I added a "_hw_" in some function names to make
clear they are for hardware codecs. Using g_str_has_prefix instead of
strstr, it seems more clear to me the intention. Added a const to a
pointer, we are not changing the string.

get_gstenc_opts seems too dependent on the output and flow of other
functions making the implementation a bit confusing but I don't have
any practical suggestions to make it more clear... so in the end I'm
fine with it.

Regards,
   Frediano
