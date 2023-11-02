Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A68347DEC55
	for <lists+spice-devel@lfdr.de>; Thu,  2 Nov 2023 06:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F317810E80F;
	Thu,  2 Nov 2023 05:36:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7D210E80F
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Nov 2023 05:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698903366; x=1730439366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lf5XSGsmsniWD/cFiYjADDnju83HMMuMcLDzknkXG/k=;
 b=fLDD1R4l+m7EyQQWrJw2CGsCrueaeol/VfQD4W/LWWetR/mSrshccAxS
 6m8cAgFsShFJDTA3AxgQjpLAUmhhh4JjPpcsgj1cmh8DAQd4YkJkFOg1a
 mQo7G/oRRLBenDW2JNAA7lBvZQPArR4yCbIyHsoLve6GiLKxZCH4qFxJQ
 utI96ctEAvvh5Ju3VggelPs0WX7DiqW0R4bwdIlRj/kIZ4//hU+av3LTH
 2x9pLnTSV/PJGXdJljGw28urswr3QMnChs6dIdu1S/SQbmxMoxHB9o+HP
 kMwoAdIXsOnXbbCtST+alUjDVBTrCXEMNzGjbbtxJPj/riXcV40WwHOy0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="367987874"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="367987874"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 22:36:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="878117621"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="878117621"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.7])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 22:36:05 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 Nov 2023 22:34:24 -0700
Message-Id: <20231102053424.242577-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <CAHt6W4cOi-=W5Z6OY1rQ-QhUdwUN00jxcotYAVtK0hUmR4Yutw@mail.gmail.com>
References: <CAHt6W4cOi-=W5Z6OY1rQ-QhUdwUN00jxcotYAVtK0hUmR4Yutw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v5] channel-display-gst: Use h/w based
 decoders with Intel GPUs if possible (v5)
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

v4:
- Include the string "_hw_" in the function that finds best h/w plugins
- Change type and determine plugins array length using G_N_ELEMENTS
- Free vpp_name immediately after using it to prevent leak
- Rebase on master

v5: (fixups from Frediano)
- Use bool instead of gboolean for use_parser variable
- Don't forget to take a ref on sink while creating appsink
- Set all the elements to NULL after the call to gst_bin_add_many()
  to indicate ownership transfer
- Don't forget to unref appsink and appsrc elements when an error occurs

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
---
 src/channel-display-gst.c | 233 ++++++++++++++++++++++++++++++++++----
 1 file changed, 211 insertions(+), 22 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 5c9927b..c72f381 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -20,6 +20,7 @@
 #include "spice-common.h"
 #include "spice-channel-priv.h"
 #include "common/recorder.h"
+#include "common/udev.h"
 
 #include "channel-display-priv.h"
 
@@ -489,13 +490,221 @@ deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
     }
 }
 
-static gboolean create_pipeline(SpiceGstDecoder *decoder)
+static gchar *find_best_hw_plugin(const gchar *dec_name)
+{
+    static const char plugins[][8] = {"msdk", "va", "vaapi"};
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
+    for (i = 0; i < G_N_ELEMENTS(plugins); i++) {
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
+    bool use_parser;
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
+    hw_dec_name = find_best_hw_plugin(dec_name);
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
+    vpp_name = find_best_hw_plugin(NULL);
+    if (!vpp_name) {
+        spice_warning("error finding suitable plugin for postproc");
+        goto err;
+    }
+    vpp = gst_element_factory_make(vpp_name, NULL);
+    g_free(vpp_name);
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
+    decoder->appsink = GST_APP_SINK(gst_object_ref(sink));
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
+            /* No need to unref these elements anymore as their ownership
+             * would have transferred to the pipeline after gst_bin_add_many().
+             */
+            src = parser = hw_decoder = vpp = sink = NULL;
+            goto err;
+        }
+    } else {
+        gst_bin_add_many(GST_BIN(pipeline), src, hw_decoder,
+                         vpp, sink, NULL);
+        if (!gst_element_link_many(src, hw_decoder, vpp, sink, NULL)) {
+            spice_warning("error linking elements");
+            src = hw_decoder = vpp = sink = NULL;
+            goto err;
+        }
+    }
+
+    decoder->pipeline = pipeline;
+    return launch_pipeline(decoder);
+
+err:
+    if (decoder->appsink) {
+        gst_object_unref(decoder->appsink);
+        decoder->appsink = NULL;
+    }
+    if (decoder->appsrc) {
+        gst_object_unref(decoder->appsrc);
+        decoder->appsrc = NULL;
+    }
+    if (pipeline) {
+        gst_object_unref(pipeline);
+    }
+    if (vpp) {
+        gst_object_unref(vpp);
+    }
+    if (hw_decoder) {
+        gst_object_unref(hw_decoder);
+    }
+    if (parser) {
+        gst_object_unref(parser);
+    }
+    if (sink) {
+        gst_object_unref(sink);
+    }
+    if (src) {
+        gst_object_unref(src);
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
@@ -571,29 +780,9 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
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

