Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16AF6FE497
	for <lists+spice-devel@lfdr.de>; Wed, 10 May 2023 21:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A8110E514;
	Wed, 10 May 2023 19:49:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F4910E514
 for <spice-devel@lists.freedesktop.org>; Wed, 10 May 2023 19:49:45 +0000 (UTC)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-18f4a6d2822so46537237fac.1
 for <spice-devel@lists.freedesktop.org>; Wed, 10 May 2023 12:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683748184; x=1686340184;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=59eDbr70WFRywsA+6OXfKAayUvrdQ4tb6ZHyMZeWShY=;
 b=CuFYaXtyESmCPNP6RNCSSORuWFPpSDhvo+JkvOFDuFDBhVCvGSnMeeuj+XZsQ8cYZt
 5kLr4S+/XhNKAmzYVENdmWcjSbl6wxCsNk3PhhzI2DmMzKNub5dxL9AnO0b3X0aW4NHX
 YPJPyUJHifXmUCUWYXsP2NdGqonvDgJcde4BwzP3En5lVQGEaAXPx5n2WqPPOW3I38qc
 wEsFXFa8KDq4sBUt/32OVOr/e1Aj3JVzUWmVHpwlgwtHy1CCUEE0/Lx1ikF+U2cRiNu6
 jUC9C6/CMqIr+EcLK8i0Q1RiUt9cWyc+R7fqyf/IFP2UirHY9dDcWrUz104fcPmfXi6a
 Bebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683748184; x=1686340184;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=59eDbr70WFRywsA+6OXfKAayUvrdQ4tb6ZHyMZeWShY=;
 b=ABOSei9QPjloWypi3lOM5wdoJY3ry+5MuBLQ+t3EOh2wWIfYqSijFcCjWCRvdxoE6G
 OoTskn2EY5lYqszG3xsKfBbDw1mSKplT5ireNplGFeU8d7uBFmoe6vi+d7IkVIa8eLEp
 htQ+YGh1WTE8sYBiIjBGA2hmKiS3O+Gny1OC7X0EMRCjtbwgpfLltQp8XZNEtRCDMeYn
 hH+WlO0dx6/JETCwrcHO0BITpYILUP0GT3CHgFskQpMhyfpILYRU69PlZj4HP9hMAW1n
 ABFIdAETSCpjY5cxoQo166Ru8cl916+4EZSpmeImiWtS6PzegDHyfxResKAFyUrPndvS
 Hxmw==
X-Gm-Message-State: AC+VfDyCY3AnVuEPpttFepwCsS1FBZmvjl5hthtb+nX2+OZkKJcDIdtA
 TPKl/We2gA6vqcTZM+Q6sMLg4zYsFmXinQEcYWi20Gj/QKg3Xg==
X-Google-Smtp-Source: ACHHUZ7rhclyd408VOGtOKa/Tf9d6wnYOcitN2Gw8cuxSKmTEZgb3iWtBSdYH/XcYbKJNTEymrT4ERfQdCRzgBI7lDI=
X-Received: by 2002:aca:3c82:0:b0:393:fd29:c884 with SMTP id
 j124-20020aca3c82000000b00393fd29c884mr3355740oia.22.1683748184069; Wed, 10
 May 2023 12:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
 <20230427061601.1488225-2-vivek.kasireddy@intel.com>
In-Reply-To: <20230427061601.1488225-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 10 May 2023 20:49:33 +0100
Message-ID: <CAHt6W4cdQ4LR5ArLzw1Ow2UMQ+amwZbnB6gjNMAoiU-xhAyG8Q@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH] channel-display-gst: Use h/w based
 decoders with Intel GPUs if possible
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
> We first try to detect if an Intel GPU is available (by looking into
> udev's database) and then probe Gstreamer's registry cache to see
> if there is h/w based decoder (element) available for the incoming
> video codec format. If both these conditions are satisfied (i.e,
> Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
> libraries are properly installed), we then create a simple decode
> pipeline using appropriate h/w based decoder and post-processor
> elements instead of relying on playbin -- which may not be able to
> auto-select these elements.
>
> For example, if the incoming codec format is h264, we then create
> a pipeline using msdkh264dec and vaapipostproc elements instead of
> avdec_h264 and videoconvert.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Signed-off-by: Mazlan, Hazwan Arif <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Teng, Jin Chung <jin.chung.teng@intel.com>
> ---
>  meson.build               |   3 +
>  src/channel-display-gst.c | 195 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 198 insertions(+)
>
> diff --git a/meson.build b/meson.build
> index c163a44..e373544 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -216,6 +216,9 @@ foreach dep : deps
>    spice_glib_deps +=3D dependency(dep, version: gstreamer_version_info)
>  endforeach
>
> +#udev
> +spice_glib_deps +=3D dependency('libudev', required : true)
> +

See comments on other patch. This cannot be required.

>  # builtin-mjpeg
>  spice_gtk_has_builtin_mjpeg =3D false
>  if get_option('builtin-mjpeg')
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 36db3a3..e7df83a 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -27,6 +27,7 @@
>  #include <gst/app/gstappsrc.h>
>  #include <gst/app/gstappsink.h>
>  #include <gst/video/gstvideometa.h>
> +#include <libudev.h>
>
>
>  typedef struct SpiceGstFrame SpiceGstFrame;
> @@ -64,6 +65,8 @@ typedef struct SpiceGstDecoder {
>  /* Decoded frames are big so limit how many are queued by GStreamer */
>  #define MAX_DECODED_FRAMES 2
>
> +#define INTEL_GFX_DRV_NAME "i915"
> +
>  /* GstPlayFlags enum is in plugin's header which should not be exported.
>   * https://bugzilla.gnome.org/show_bug.cgi?id=3D784279
>   */
> @@ -489,6 +492,190 @@ deep_element_added_cb(GstBin *pipeline, GstBin *bin=
, GstElement *element,
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
> +static gboolean msdk_vaapi_features_lookup(const gchar *dec_name)
> +{
> +    GstRegistry *registry =3D NULL;
> +    GstPluginFeature *msdkdec =3D NULL;
> +    GstPluginFeature *vaapivpp =3D NULL;
> +    gchar *msdk_dec_name =3D g_strconcat("msdk", dec_name,"dec", NULL);
> +
> +    registry =3D gst_registry_get();
> +    if (!registry) {
> +        return FALSE;
> +    }
> +    msdkdec =3D gst_registry_lookup_feature(registry, msdk_dec_name);
> +    g_free(msdk_dec_name);
> +    if (!msdkdec) {
> +        return FALSE;
> +    }
> +    vaapivpp =3D gst_registry_lookup_feature(registry, "vaapipostproc");
> +    if (!vaapivpp) {
> +        gst_object_unref(msdkdec);
> +        return FALSE;
> +    }
> +
> +    gst_object_unref(msdkdec);
> +    gst_object_unref(vaapivpp);
> +    return TRUE;
> +}
> +
> +static gboolean create_msdk_pipeline(SpiceGstDecoder *decoder)
> +{

A problem I noted with my testing is that if the server is not using
msdk encoder this pipeline is failing to decode. Probably this is due
to an unsupported level, possibly x264 is using some not supported
format. The problem is that without having the first frame data we
cannot know if the pipeline is supporting or not. Probably the better
option would be to create another pipeline if we failed handling first
compressed data. A future possibility would be to send more encoder
information opening the stream so we could avoid trying some pipeline.

> +    GstElement *pipeline, *src, *sink, *parser, *msdk_decoder, *vpp;
> +    GstCaps *src_caps, *sink_caps;
> +    int codec_type =3D decoder->base.codec_type;
> +    const gchar *dec_name =3D gst_opts[codec_type].name;
> +    gchar *msdk_dec_name, *parser_name, *dec_caps;
> +    gboolean use_parser;
> +
> +    use_parser =3D codec_type =3D=3D SPICE_VIDEO_CODEC_TYPE_H264 ||
> +                 codec_type =3D=3D SPICE_VIDEO_CODEC_TYPE_H265;
> +
> +    src =3D gst_element_factory_make("appsrc", NULL);
> +    if (src =3D=3D NULL) {
> +        spice_warning("error upon creation of 'appsrc' element");
> +        return FALSE;
> +    }
> +    sink =3D gst_element_factory_make("appsink", NULL);
> +    if (sink =3D=3D NULL) {
> +        spice_warning("error upon creation of 'appsink' element");
> +        goto err_sink;
> +    }
> +
> +    if (use_parser) {
> +        parser_name =3D g_strconcat(dec_name, "parse", NULL);
> +        parser =3D gst_element_factory_make(parser_name, NULL);
> +        g_free(parser_name);
> +        if (parser =3D=3D NULL) {
> +            spice_warning("error upon creation of 'parser' element");
> +            goto err_parser;
> +        }
> +    }
> +
> +    msdk_dec_name =3D g_strconcat("msdk", dec_name,"dec", NULL);
> +    msdk_decoder =3D gst_element_factory_make(msdk_dec_name, NULL);
> +    g_free(msdk_dec_name);
> +    if (msdk_decoder =3D=3D NULL) {
> +        spice_warning("error upon creation of 'decoder' element");
> +        goto err_decoder;
> +    }
> +    vpp =3D gst_element_factory_make("vaapipostproc", NULL);
> +    if (vpp =3D=3D NULL) {
> +        spice_warning("error upon creation of 'vpp' element");
> +        goto err_vpp;
> +    }
> +    g_object_set(vpp,
> +                 "format", GST_VIDEO_FORMAT_BGRx,
> +                 NULL);
> +
> +    pipeline =3D gst_pipeline_new(NULL);
> +    if (pipeline =3D=3D NULL) {
> +        spice_warning("error upon creation of 'pipeline' element");
> +        goto err_pipeline;
> +    }
> +
> +    dec_caps =3D g_strconcat(gst_opts[codec_type].dec_caps,
> +                           ",stream-format=3Dbyte-stream", NULL);

From my testing the ",stream-format=3Dbyte-stream" is also required for
x264 (ok, this is a bit OT here).

> +    src_caps =3D gst_caps_from_string(dec_caps);
> +    g_object_set(src,
> +                 "caps", src_caps,
> +                 "is-live", TRUE,
> +                 "format", GST_FORMAT_TIME,
> +                 "max-bytes", G_GINT64_CONSTANT(0),
> +                 "block", TRUE,
> +                 NULL);
> +    g_free(dec_caps);
> +    gst_caps_unref(src_caps);
> +    decoder->appsrc =3D GST_APP_SRC(gst_object_ref(src));
> +
> +    sink_caps =3D gst_caps_from_string("video/x-raw,format=3DBGRx");
> +    g_object_set(sink,
> +                 "caps", sink_caps,
> +                 "sync", FALSE,
> +                 "drop", FALSE,
> +                 NULL);
> +    gst_caps_unref(sink_caps);
> +    decoder->appsink =3D GST_APP_SINK(sink);
> +
> +    if (hand_pipeline_to_widget(decoder->base.stream,
> +        GST_PIPELINE(pipeline))) {
> +        spice_warning("error handing pipeline to widget");
> +        goto err_pipeline;
> +    }
> +
> +    if (use_parser) {
> +        gst_bin_add_many(GST_BIN(pipeline), src, parser, msdk_decoder,
> +                         vpp, sink, NULL);
> +        if (!gst_element_link_many(src, parser, msdk_decoder, vpp,
> +                                   sink, NULL)) {
> +            spice_warning("error linking elements");
> +            goto err_pipeline;
> +        }
> +    } else {
> +        gst_bin_add_many(GST_BIN(pipeline), src, msdk_decoder,
> +                         vpp, sink, NULL);
> +        if (!gst_element_link_many(src, msdk_decoder, vpp, sink, NULL)) =
{
> +            spice_warning("error linking elements");
> +            goto err_pipeline;
> +        }
> +    }
> +    decoder->pipeline =3D pipeline;
> +    return TRUE;
> +
> +err_pipeline:
> +    gst_object_unref(vpp);
> +err_vpp:
> +    gst_object_unref(msdk_decoder);
> +err_decoder:
> +    if (use_parser) {
> +        gst_object_unref(parser);
> +    }
> +err_parser:
> +    gst_object_unref(sink);
> +err_sink:
> +    gst_object_unref(src);
> +    return FALSE;
> +}
> +
>  static gboolean create_pipeline(SpiceGstDecoder *decoder)
>  {
>      GstBus *bus;
> @@ -496,6 +683,13 @@ static gboolean create_pipeline(SpiceGstDecoder *dec=
oder)
>      SpiceGstPlayFlags flags;
>      GstCaps *caps;
>
> +    if (detect_intel_gpu() &&
> +        msdk_vaapi_features_lookup(gst_opts[decoder->base.codec_type].na=
me)) {
> +        if (create_msdk_pipeline(decoder)) {
> +            goto end;
> +        }
> +    }
> +
>      playbin =3D gst_element_factory_make("playbin", "playbin");
>      if (playbin =3D=3D NULL) {
>          spice_warning("error upon creation of 'playbin' element");
> @@ -565,6 +759,7 @@ static gboolean create_pipeline(SpiceGstDecoder *deco=
der)
>      g_warn_if_fail(decoder->appsrc =3D=3D NULL);
>      decoder->pipeline =3D playbin;
>
> +end:
>      if (decoder->appsink) {
>          GstAppSinkCallbacks appsink_cbs =3D { NULL };
>          appsink_cbs.new_sample =3D new_sample;

I don't remember which side (server or client) but it seems destroying
the pipeline gstreamer is giving some CRITICAL messages about the
order of object destructions.

Frediano
