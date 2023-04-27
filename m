Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C1A6F00DC
	for <lists+spice-devel@lfdr.de>; Thu, 27 Apr 2023 08:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D1810EAAF;
	Thu, 27 Apr 2023 06:37:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4543810EAAD
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Apr 2023 06:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682577466; x=1714113466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cfkqm8IWmqZRU3/BywOsW2jDrxYyTzfjhdpguAgpnOk=;
 b=QZhBCSAptE8yPBieoVh3rhYW6GUmzYbo/E4qOvjcHkbLklnNc1lbhyDW
 llLPSsWudSlynTW68oYgrQVYQUcAZLjswFDCiPOHIHp13Xq5dsjzYha9H
 Jg2KvVV/mOrqUX+Cg//O8utLhct28zspnF5Nz2b1dYKcjUBsm0e2Nt4ff
 wk7aZvlkisJuNaLewe2rM3VJKC26c1xOIj6WpWi7OnfJg6dC+QyNBJGO4
 HeiMVoxMRxbGaBYh01fF0QH5dZK/6Ou2pOqEDTRVD2Tfknlqmw05Qc9v+
 aj4rhHhcdKptjhuMyWARCM0PAs6kkpsug0okyxCV/IQtTdpJIO3Vv1QiQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="336285561"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="336285561"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="758953656"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="758953656"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:44 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 26 Apr 2023 23:16:00 -0700
Message-Id: <20230427061601.1488225-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
References: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH] channel-display-gst: Use h/w based decoders
 with Intel GPUs if possible
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
	Hazwan Arif <hazwan.arif.mazlan@intel.com>, Teng@freedesktop.org,
	Gerd Hoffmann <kraxel@redhat.com>,
	Jin Chung <jin.chung.teng@intel.com>, Mazlan@freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

We first try to detect if an Intel GPU is available (by looking into
udev's database) and then probe Gstreamer's registry cache to see
if there is h/w based decoder (element) available for the incoming
video codec format. If both these conditions are satisfied (i.e,
Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
libraries are properly installed), we then create a simple decode
pipeline using appropriate h/w based decoder and post-processor
elements instead of relying on playbin -- which may not be able to
auto-select these elements.

For example, if the incoming codec format is h264, we then create
a pipeline using msdkh264dec and vaapipostproc elements instead of
avdec_h264 and videoconvert.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Signed-off-by: Mazlan, Hazwan Arif <hazwan.arif.mazlan@intel.com>
Signed-off-by: Teng, Jin Chung <jin.chung.teng@intel.com>
---
 meson.build               |   3 +
 src/channel-display-gst.c | 195 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 198 insertions(+)

diff --git a/meson.build b/meson.build
index c163a44..e373544 100644
--- a/meson.build
+++ b/meson.build
@@ -216,6 +216,9 @@ foreach dep : deps
   spice_glib_deps += dependency(dep, version: gstreamer_version_info)
 endforeach
 
+#udev
+spice_glib_deps += dependency('libudev', required : true)
+
 # builtin-mjpeg
 spice_gtk_has_builtin_mjpeg = false
 if get_option('builtin-mjpeg')
diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 36db3a3..e7df83a 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -27,6 +27,7 @@
 #include <gst/app/gstappsrc.h>
 #include <gst/app/gstappsink.h>
 #include <gst/video/gstvideometa.h>
+#include <libudev.h>
 
 
 typedef struct SpiceGstFrame SpiceGstFrame;
@@ -64,6 +65,8 @@ typedef struct SpiceGstDecoder {
 /* Decoded frames are big so limit how many are queued by GStreamer */
 #define MAX_DECODED_FRAMES 2
 
+#define INTEL_GFX_DRV_NAME "i915"
+
 /* GstPlayFlags enum is in plugin's header which should not be exported.
  * https://bugzilla.gnome.org/show_bug.cgi?id=784279
  */
@@ -489,6 +492,190 @@ deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
     }
 }
 
+static gboolean detect_intel_gpu()
+{
+    struct udev *udev;
+    struct udev_device *udev_dev;
+    struct udev_enumerate *udev_enum;
+    struct udev_list_entry *entry, *devices;
+    const char *path, *driver;
+    gboolean found = FALSE;
+
+    udev = udev_new();
+    if (!udev) {
+        return FALSE;
+    }
+
+    udev_enum = udev_enumerate_new(udev);
+    if (udev_enum) {
+        udev_enumerate_add_match_subsystem(udev_enum, "pci");
+        udev_enumerate_scan_devices(udev_enum);
+        devices = udev_enumerate_get_list_entry(udev_enum);
+
+        udev_list_entry_foreach(entry, devices) {
+            path = udev_list_entry_get_name(entry);
+            udev_dev = udev_device_new_from_syspath(udev, path);
+
+            driver = udev_device_get_driver(udev_dev);
+            if (!g_strcmp0(driver, INTEL_GFX_DRV_NAME)) {
+                found = TRUE;
+                udev_device_unref(udev_dev);
+                break;
+            }
+            udev_device_unref(udev_dev);
+        }
+        udev_enumerate_unref(udev_enum);
+    }
+    udev_unref(udev);
+
+    return found;
+}
+
+static gboolean msdk_vaapi_features_lookup(const gchar *dec_name)
+{
+    GstRegistry *registry = NULL;
+    GstPluginFeature *msdkdec = NULL;
+    GstPluginFeature *vaapivpp = NULL;
+    gchar *msdk_dec_name = g_strconcat("msdk", dec_name,"dec", NULL);
+
+    registry = gst_registry_get();
+    if (!registry) {
+        return FALSE;
+    }
+    msdkdec = gst_registry_lookup_feature(registry, msdk_dec_name);
+    g_free(msdk_dec_name);
+    if (!msdkdec) {
+        return FALSE;
+    }
+    vaapivpp = gst_registry_lookup_feature(registry, "vaapipostproc");
+    if (!vaapivpp) {
+        gst_object_unref(msdkdec);
+        return FALSE;
+    }
+
+    gst_object_unref(msdkdec);
+    gst_object_unref(vaapivpp);
+    return TRUE;
+}
+
+static gboolean create_msdk_pipeline(SpiceGstDecoder *decoder)
+{
+    GstElement *pipeline, *src, *sink, *parser, *msdk_decoder, *vpp;
+    GstCaps *src_caps, *sink_caps;
+    int codec_type = decoder->base.codec_type;
+    const gchar *dec_name = gst_opts[codec_type].name;
+    gchar *msdk_dec_name, *parser_name, *dec_caps;
+    gboolean use_parser;
+
+    use_parser = codec_type == SPICE_VIDEO_CODEC_TYPE_H264 ||
+                 codec_type == SPICE_VIDEO_CODEC_TYPE_H265;
+
+    src = gst_element_factory_make("appsrc", NULL);
+    if (src == NULL) {
+        spice_warning("error upon creation of 'appsrc' element");
+        return FALSE;
+    }
+    sink = gst_element_factory_make("appsink", NULL);
+    if (sink == NULL) {
+        spice_warning("error upon creation of 'appsink' element");
+        goto err_sink;
+    }
+
+    if (use_parser) {
+        parser_name = g_strconcat(dec_name, "parse", NULL);
+        parser = gst_element_factory_make(parser_name, NULL);
+        g_free(parser_name);
+        if (parser == NULL) {
+            spice_warning("error upon creation of 'parser' element");
+            goto err_parser;
+        }
+    }
+
+    msdk_dec_name = g_strconcat("msdk", dec_name,"dec", NULL);
+    msdk_decoder = gst_element_factory_make(msdk_dec_name, NULL);
+    g_free(msdk_dec_name);
+    if (msdk_decoder == NULL) {
+        spice_warning("error upon creation of 'decoder' element");
+        goto err_decoder;
+    }
+    vpp = gst_element_factory_make("vaapipostproc", NULL);
+    if (vpp == NULL) {
+        spice_warning("error upon creation of 'vpp' element");
+        goto err_vpp;
+    }
+    g_object_set(vpp,
+                 "format", GST_VIDEO_FORMAT_BGRx,
+                 NULL);
+
+    pipeline = gst_pipeline_new(NULL);
+    if (pipeline == NULL) {
+        spice_warning("error upon creation of 'pipeline' element");
+        goto err_pipeline;
+    }
+
+    dec_caps = g_strconcat(gst_opts[codec_type].dec_caps,
+                           ",stream-format=byte-stream", NULL);
+    src_caps = gst_caps_from_string(dec_caps);
+    g_object_set(src,
+                 "caps", src_caps,
+                 "is-live", TRUE,
+                 "format", GST_FORMAT_TIME,
+                 "max-bytes", G_GINT64_CONSTANT(0),
+                 "block", TRUE,
+                 NULL);
+    g_free(dec_caps);
+    gst_caps_unref(src_caps);
+    decoder->appsrc = GST_APP_SRC(gst_object_ref(src));
+
+    sink_caps = gst_caps_from_string("video/x-raw,format=BGRx");
+    g_object_set(sink,
+                 "caps", sink_caps,
+                 "sync", FALSE,
+                 "drop", FALSE,
+                 NULL);
+    gst_caps_unref(sink_caps);
+    decoder->appsink = GST_APP_SINK(sink);
+
+    if (hand_pipeline_to_widget(decoder->base.stream,
+        GST_PIPELINE(pipeline))) {
+        spice_warning("error handing pipeline to widget");
+        goto err_pipeline;
+    }
+
+    if (use_parser) {
+        gst_bin_add_many(GST_BIN(pipeline), src, parser, msdk_decoder,
+                         vpp, sink, NULL);
+        if (!gst_element_link_many(src, parser, msdk_decoder, vpp,
+                                   sink, NULL)) {
+            spice_warning("error linking elements");
+            goto err_pipeline;
+        }
+    } else {
+        gst_bin_add_many(GST_BIN(pipeline), src, msdk_decoder,
+                         vpp, sink, NULL);
+        if (!gst_element_link_many(src, msdk_decoder, vpp, sink, NULL)) {
+            spice_warning("error linking elements");
+            goto err_pipeline;
+        }
+    }
+    decoder->pipeline = pipeline;
+    return TRUE;
+
+err_pipeline:
+    gst_object_unref(vpp);
+err_vpp:
+    gst_object_unref(msdk_decoder);
+err_decoder:
+    if (use_parser) {
+        gst_object_unref(parser);
+    }
+err_parser:
+    gst_object_unref(sink);
+err_sink:
+    gst_object_unref(src);
+    return FALSE;
+}
+
 static gboolean create_pipeline(SpiceGstDecoder *decoder)
 {
     GstBus *bus;
@@ -496,6 +683,13 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
     SpiceGstPlayFlags flags;
     GstCaps *caps;
 
+    if (detect_intel_gpu() &&
+        msdk_vaapi_features_lookup(gst_opts[decoder->base.codec_type].name)) {
+        if (create_msdk_pipeline(decoder)) {
+            goto end;
+        }
+    }
+
     playbin = gst_element_factory_make("playbin", "playbin");
     if (playbin == NULL) {
         spice_warning("error upon creation of 'playbin' element");
@@ -565,6 +759,7 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
     g_warn_if_fail(decoder->appsrc == NULL);
     decoder->pipeline = playbin;
 
+end:
     if (decoder->appsink) {
         GstAppSinkCallbacks appsink_cbs = { NULL };
         appsink_cbs.new_sample = new_sample;
-- 
2.39.2

