Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D33EA7B4B30
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB08F10E11E;
	Mon,  2 Oct 2023 05:41:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E9A10E120
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225265; x=1727761265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CjKWBtUpWXWgZiP7RVpzUHRLBAtIdCXa4MZt6edbJls=;
 b=YCRp7Ask/oUjWSgcetdxa2fkfnAiYWBZGifo4yJLgWgs2XFRziAi/boX
 82J80AQos795HKSyVlBxQ1e4p3XxQhC8wlZTRNjsl+lj9aFfbAicS+A0V
 8asl2oE6fD/VnTTw2YNw23ZG/l9NsttJr3dkf5JpGbiwOUoRk9qj9OikJ
 V/K8KI+6b8Ch5r6sR6vn+xbce4sviRL+Oq0AzXWi0Be6MbUZckyCSb7Iy
 AdH873f/HdxdF9DglwzjYagbn7uFZKRxJxrDQ5wXXU3PChTkesNzir/eD
 SL6iFK363nosjS5cAgoW/62W65cB1yW9kegjgyEM+lEqH0+xHqyhQV67e A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935854"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682739"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682739"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:03 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:25 -0700
Message-Id: <20231002052026.2994546-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 2/2] channel-display-gst: Use h/w based
 decoders with Intel GPUs if possible (v3)
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
 Gerd Hoffmann <kraxel@redhat.com>
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

v2: (addressed some review comments from Frediano)
- s/gboolean/bool, s/TRUE/true, s/FALSE/false
- Used a single cleanup label instead of multiple while instantiating
  elements
- Moved the code that launches the Gst pipeline into a helper that
  is used while trying h/w based plugins

v3:
- Updated the patch to reflect the new signature and return value of
  spice_udev_detect_gpu().

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
---
 src/channel-display-gst.c | 216 ++++++++++++++++++++++++++++++++++----
 1 file changed, 194 insertions(+), 22 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 5c9927b..8dffe86 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -20,6 +20,7 @@
 #include "spice-common.h"
 #include "spice-channel-priv.h"
 #include "common/recorder.h"
+#include "common/udev.h"
 
 #include "channel-display-priv.h"
 
@@ -489,13 +490,204 @@ deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
     }
 }
 
-static gboolean create_pipeline(SpiceGstDecoder *decoder)
+static gchar *find_best_plugin(const gchar *dec_name)
+{
+    const char *plugins[3] = {"msdk", "va", "vaapi"};
+    GstRegistry *registry;
+    GstPluginFeature *feature;
+    gchar *feature_name;
+    int i;
+
+    registry = gst_registry_get();
+    if (!registry) {
+        return NULL;
+    }
+
+    for (i = 0; i < 3; i++) {
+        feature_name = !dec_name ? g_strconcat(plugins[i], "postproc", NULL) :
+                       g_strconcat(plugins[i], dec_name, "dec", NULL);
+        feature = gst_registry_lookup_feature(registry, feature_name);
+        if (!feature) {
+            g_free(feature_name);
+            feature_name = NULL;
+            continue;
+        }
+        gst_object_unref(feature);
+        break;
+    }
+    return feature_name;
+}
+
+static bool launch_pipeline(SpiceGstDecoder *decoder)
 {
     GstBus *bus;
+
+    if (decoder->appsink) {
+        GstAppSinkCallbacks appsink_cbs = { NULL };
+        appsink_cbs.new_sample = new_sample;
+        gst_app_sink_set_callbacks(decoder->appsink, &appsink_cbs, decoder, NULL);
+        gst_app_sink_set_max_buffers(decoder->appsink, MAX_DECODED_FRAMES);
+        gst_app_sink_set_drop(decoder->appsink, FALSE);
+    }
+    bus = gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
+    gst_bus_add_watch(bus, handle_pipeline_message, decoder);
+    gst_object_unref(bus);
+
+    decoder->clock = gst_pipeline_get_clock(GST_PIPELINE(decoder->pipeline));
+
+    if (gst_element_set_state(decoder->pipeline, GST_STATE_PLAYING) == GST_STATE_CHANGE_FAILURE) {
+        SPICE_DEBUG("GStreamer error: Unable to set the pipeline to the playing state.");
+        free_pipeline(decoder);
+        return false;
+    }
+
+    return true;
+}
+
+static bool try_intel_hw_pipeline(SpiceGstDecoder *decoder)
+{
+    GstElement *pipeline = NULL, *src = NULL, *sink = NULL;
+    GstElement *parser = NULL, *hw_decoder = NULL, *vpp = NULL;
+    GstCaps *src_caps, *sink_caps;
+    int codec_type = decoder->base.codec_type;
+    const gchar *dec_name = gst_opts[codec_type].name;
+    gchar *hw_dec_name, *vpp_name, *parser_name;
+    gboolean use_parser;
+
+    use_parser = codec_type == SPICE_VIDEO_CODEC_TYPE_H264 ||
+                 codec_type == SPICE_VIDEO_CODEC_TYPE_H265;
+
+    src = gst_element_factory_make("appsrc", NULL);
+    if (!src) {
+        spice_warning("error upon creation of 'appsrc' element");
+        return false;
+    }
+    sink = gst_element_factory_make("appsink", NULL);
+    if (!sink) {
+        spice_warning("error upon creation of 'appsink' element");
+        goto err;
+    }
+
+    if (use_parser) {
+        parser_name = g_strconcat(dec_name, "parse", NULL);
+        parser = gst_element_factory_make(parser_name, NULL);
+        g_free(parser_name);
+        if (!parser) {
+            spice_warning("error upon creation of 'parser' element");
+            goto err;
+        }
+    }
+
+    hw_dec_name = find_best_plugin(dec_name);
+    if (!hw_dec_name) {
+        spice_warning("error finding suitable plugin for decode");
+        goto err;
+    }
+    hw_decoder = gst_element_factory_make(hw_dec_name, NULL);
+    g_free(hw_dec_name);
+    if (!hw_decoder) {
+        spice_warning("error upon creation of 'decoder' element");
+        goto err;
+    }
+    vpp_name = find_best_plugin(NULL);
+    if (!vpp_name) {
+        spice_warning("error finding suitable plugin for postproc");
+        goto err;
+    }
+    vpp = gst_element_factory_make(vpp_name, NULL);
+    if (!vpp) {
+        spice_warning("error upon creation of 'vpp' element");
+        goto err;
+    }
+    g_object_set(vpp,
+                 "format", GST_VIDEO_FORMAT_BGRx,
+                 NULL);
+
+    pipeline = gst_pipeline_new(NULL);
+    if (!pipeline) {
+        spice_warning("error upon creation of 'pipeline' element");
+        goto err;
+    }
+
+    src_caps = gst_caps_from_string(gst_opts[codec_type].dec_caps);
+    g_object_set(src,
+                 "caps", src_caps,
+                 "is-live", TRUE,
+                 "format", GST_FORMAT_TIME,
+                 "max-bytes", G_GINT64_CONSTANT(0),
+                 "block", TRUE,
+                 NULL);
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
+        goto err;
+    }
+
+    if (use_parser) {
+        gst_bin_add_many(GST_BIN(pipeline), src, parser, hw_decoder,
+                         vpp, sink, NULL);
+        if (!gst_element_link_many(src, parser, hw_decoder, vpp,
+                                   sink, NULL)) {
+            spice_warning("error linking elements");
+            goto err;
+        }
+    } else {
+        gst_bin_add_many(GST_BIN(pipeline), src, hw_decoder,
+                         vpp, sink, NULL);
+        if (!gst_element_link_many(src, hw_decoder, vpp, sink, NULL)) {
+            spice_warning("error linking elements");
+            goto err;
+        }
+    }
+
+    decoder->pipeline = pipeline;
+    return launch_pipeline(decoder);
+
+err:
+    if (src) {
+        gst_object_unref(src);
+    }
+    if (sink) {
+        gst_object_unref(sink);
+    }
+    if (use_parser) {
+        gst_object_unref(parser);
+    }
+    if (hw_decoder) {
+        gst_object_unref(hw_decoder);
+    }
+    if (vpp) {
+        gst_object_unref(vpp);
+    }
+    return false;
+}
+
+static gboolean create_pipeline(SpiceGstDecoder *decoder)
+{
     GstElement *playbin, *sink;
     SpiceGstPlayFlags flags;
     GstCaps *caps;
     static bool playbin3_supported = true;
+    GpuVendor vendor = spice_udev_detect_gpu(INTEL_VENDOR_ID);
+
+    if (vendor == VENDOR_GPU_DETECTED ||
+        vendor == VENDOR_GPU_UNKNOWN) {
+        if (try_intel_hw_pipeline(decoder)) {
+            return TRUE;
+        }
+    }
 
     playbin = playbin3_supported ?
               gst_element_factory_make("playbin3", "playbin") : NULL;
@@ -571,29 +763,9 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
     g_warn_if_fail(decoder->appsrc == NULL);
     decoder->pipeline = playbin;
 
-    if (decoder->appsink) {
-        GstAppSinkCallbacks appsink_cbs = { NULL };
-        appsink_cbs.new_sample = new_sample;
-        gst_app_sink_set_callbacks(decoder->appsink, &appsink_cbs, decoder, NULL);
-        gst_app_sink_set_max_buffers(decoder->appsink, MAX_DECODED_FRAMES);
-        gst_app_sink_set_drop(decoder->appsink, FALSE);
-    }
-    bus = gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
-    gst_bus_add_watch(bus, handle_pipeline_message, decoder);
-    gst_object_unref(bus);
-
-    decoder->clock = gst_pipeline_get_clock(GST_PIPELINE(decoder->pipeline));
-
-    if (gst_element_set_state(decoder->pipeline, GST_STATE_PLAYING) == GST_STATE_CHANGE_FAILURE) {
-        SPICE_DEBUG("GStreamer error: Unable to set the pipeline to the playing state.");
-        free_pipeline(decoder);
-        return FALSE;
-    }
-
-    return TRUE;
+    return launch_pipeline(decoder);
 }
 
-
 /* ---------- VideoDecoder's public API ---------- */
 
 static void spice_gst_decoder_reschedule(VideoDecoder *video_decoder)
-- 
2.39.2

