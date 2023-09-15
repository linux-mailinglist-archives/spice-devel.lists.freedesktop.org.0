Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C37BB7A1255
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDA510E5B9;
	Fri, 15 Sep 2023 00:33:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB29410E14C
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737983; x=1726273983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RfI3FiTAuW8uKRGA5DqLaeCiEOLmPE5bn50rJXMBSb0=;
 b=a555q8gySOYNcLTSiQ3lbcjXFIUC+QRIirUFt+fn91yoytav6yTOG2g4
 hN6l0Cn4/VqeZjtlUzXSms7/IzMwl7ASkKgfKAZIVOIIrfYRxt5Irbn+A
 ARVZp9/az55zOMVAr3zM0+FzATMjbc5XvCpLIB+prSqPDAuVjCz6U5GkW
 bWXipzsBBL/Gr7o06jXEpLSdi+rIBAMeA50ZCVDqYCyrbwptdf6PDWyMm
 EAzlb6AYrVoGxjBtB5DA2cveVVahUtyGx7Rx7w7D5kJzy8u3H2Wamu8Sb
 Zk2sbRciXYZRVlYtOVfOkSf2xZ6QZIlQx51dL0WvHOs8kmc9+lKCbFUPF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378172"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378172"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442368"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442368"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:03 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:15 -0700
Message-Id: <20230915001215.531746-8-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 4/4] channel-display-gst: Use h/w based
 decoders with Intel GPUs if possible (v2)
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
 Gerd Hoffmann <kraxel@redhat.com>, Jin Chung Teng <jin.chung.teng@intel.com>
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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
---
 src/channel-display-gst.c | 219 ++++++++++++++++++++++++++++++++++----
 1 file changed, 197 insertions(+), 22 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index ad0ac99..1b17856 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -20,6 +20,7 @@
 #include "spice-common.h"
 #include "spice-channel-priv.h"
 #include "common/recorder.h"
+#include "common/udev.h"
 
 #include "channel-display-priv.h"
 
@@ -485,12 +486,206 @@ deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
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
+    gchar *hw_dec_name, *vpp_name, *parser_name, *dec_caps;
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
+    GpuVendor vendor = spice_udev_detect_gpu();
+
+    if (vendor == GPU_VENDOR_INTEL ||
+        vendor == GPU_VENDOR_UNKNOWN) {
+        if (try_intel_hw_pipeline(decoder)) {
+            return TRUE;
+        }
+    }
 
     playbin = gst_element_factory_make("playbin3", "playbin3");
     if (playbin == NULL) {
@@ -564,29 +759,9 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
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

