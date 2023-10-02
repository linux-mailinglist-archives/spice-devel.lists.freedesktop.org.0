Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 000447B4B31
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0071310E120;
	Mon,  2 Oct 2023 05:41:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8BD10E121
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225265; x=1727761265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lIF6GOqmWdfOf+l//NagoULZASmVyCys5J7geYgeaiQ=;
 b=QBUncTCaLxBhZoB9Bn1CqItwGli3YzW8uLzDtstvy5IvrTpticab6gEU
 4Pl5rJpHO5OayDfg+gRMmYL4dCSzYnmboF6yRCnqJhhq9f2mSb5xbGeT0
 izeIvfATb3EqDC3iJzW404RAras6hJZkAGsT0lLP/5Ji0q3sfCGqsZbaH
 BmxCvqYd6Hb43saFbnj3J5UktXQTNgAXvfKNqzG7tUVKcLmCy3/Tmajhn
 m+OjnBvlRIon05tD2J2jGbWXkud8OGt0SaS700mxvL5cftK3uZaW7pjUN
 OnQA+vguZka5xtgpZrBzj8+tx6A3fxcEcmkcwM77cyHrVxyi/eoXS6VPm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935857"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935857"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682745"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682745"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:03 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:26 -0700
Message-Id: <20231002052026.2994546-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 2/2] gstreamer-encoder: Use a h/w based
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
Cc: Dongwon Kim <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Once it is determined that an Intel GPU is available/active (after
looking into udev's database), we try to see if there is a h/w
based encoder (element) available (in Gstreamer's registry cache)
for the user selected video codec. In other words, if we find that
the Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
libraries (such as va or vaapi) are all installed properly, we add
the appropriate h/w based encoder and post-processor/converter
elements to the pipeline (along with any relevant options) instead
of the s/w based elements.

For example, if the user selects h264 as the preferred codec format,
msdkh264enc and vapostproc will be preferred instead of x264enc
and videoconvert.

v2: (addressed some review comments from Frediano)
- Moved the udev helper into spice-common
- Refactored the code to choose plugins in order msdk > va > vaapi

v3: (Frediano)
- Added relevant encoder options for mjpeg and vp9 codecs (Jin Chung)

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Co-developed-by: Jin Chung Teng <jin.chung.teng@intel.com>
Co-developed-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
---
 server/gstreamer-encoder.c | 120 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 119 insertions(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 1619672a..952c2e87 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -31,6 +31,7 @@
 #include "red-common.h"
 #include "video-encoder.h"
 #include "utils.h"
+#include "common/udev.h"
 
 
 #define SPICE_GST_DEFAULT_FPS 30
@@ -913,6 +914,115 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
     }
 }
 
+static const char video_codecs[][8] = {
+    { "" },
+    { "mjpeg" },
+    { "vp8" },
+    { "h264" },
+    { "vp9" },
+    { "h265" },
+};
+
+static bool gst_features_lookup(const gchar *feature_name)
+{
+    GstRegistry *registry;
+    GstPluginFeature *feature;
+
+    registry = gst_registry_get();
+    if (!registry) {
+        return false;
+    }
+
+    feature = gst_registry_lookup_feature(registry, feature_name);
+    if (!feature) {
+        return false;
+    }
+
+    gst_object_unref(feature);
+    return true;
+}
+
+static gchar *find_best_plugin(const gchar *codec_name)
+{
+    const char *plugins[3] = {"msdk", "va", "vaapi"};
+    gchar *feature_name;
+    int i;
+
+    for (i = 0; i < 3; i++) {
+        feature_name = !codec_name ? g_strconcat(plugins[i], "postproc", NULL) :
+                       g_strconcat(plugins[i], codec_name, "enc", NULL);
+        if (!gst_features_lookup(feature_name)) {
+            g_free(feature_name);
+            feature_name = NULL;
+            continue;
+        }
+        break;
+    }
+    return feature_name;
+}
+
+static gchar *get_gstenc_opts(gchar *encoder, const gchar *codec_name)
+{
+    gchar *gstenc_opts;
+
+    if (strcmp(codec_name, "mjpeg") == 0) {
+        return g_strdup("");
+    }
+
+    if (strstr(encoder, "msdk")) {
+        if (strcmp(codec_name, "vp9") == 0) {
+            gstenc_opts = g_strdup("async-depth=1 b-frames=0 rate-control=3 target-usage=7");
+        } else {
+            gstenc_opts = g_strdup("async-depth=1 rate-control=3 gop-size=1 tune=16 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+        }
+    } else if (strstr(encoder, "vaapi")) {
+        if (strcmp(codec_name, "vp9") == 0) {
+            gstenc_opts = g_strdup("tune=3 rate-control=1");
+        } else {
+            gstenc_opts = g_strdup("rate-control=cqp max-bframes=0 min-qp=15 max-qp=35");
+        }
+    } else {
+        if (strcmp(codec_name, "vp9") == 0) {
+            gstenc_opts = g_strdup("min-qp=15 max-qp=35 rate-control=16 ref-frames=0 target-usage=7");
+        } else {
+            gstenc_opts = g_strdup("rate-control=16 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+        }
+    }
+    return gstenc_opts;
+}
+
+static void try_intel_hw_plugins(const gchar *codec_name, gchar **converter,
+                                 gchar **gstenc_name, gchar **gstenc_opts)
+{
+    gchar *encoder, *vpp;
+
+    if (strcmp(codec_name, "vp8") == 0) {
+        return;
+    }
+
+    encoder = find_best_plugin(codec_name);
+    if (!encoder) {
+        return;
+    }
+    vpp = find_best_plugin(NULL);
+    if (!vpp) {
+        return;
+    }
+
+    g_free(*converter);
+    g_free(*gstenc_name);
+    g_free(*gstenc_opts);
+    *gstenc_name = encoder;
+    *gstenc_opts = get_gstenc_opts(encoder, codec_name);
+
+    if (strstr(vpp, "vaapi")) {
+        *converter = g_strconcat(vpp, " ! video/x-raw(memory:VASurface),format=NV12", NULL);
+    } else {
+        *converter = g_strconcat(vpp, " ! video/x-raw(memory:VAMemory),format=NV12", NULL);
+    }
+    g_free(vpp);
+}
+
 static gchar *get_gst_converter(void)
 {
     gchar *converter, *pref_format;
@@ -932,7 +1042,7 @@ static gchar *get_gst_converter(void)
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
     gchar* converter = get_gst_converter();
-    const gchar* gstenc_name = get_gst_codec_name(encoder);
+    gchar* gstenc_name = g_strdup(get_gst_codec_name(encoder));
     if (!gstenc_name) {
         return FALSE;
     }
@@ -985,6 +1095,13 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
         return FALSE;
     }
 
+    const char *codec_name = video_codecs[encoder->base.codec_type];
+    GpuVendor vendor = spice_udev_detect_gpu(INTEL_VENDOR_ID);
+    if (vendor == VENDOR_GPU_DETECTED) {
+        try_intel_hw_plugins(codec_name, &converter, &gstenc_name,
+                             &gstenc_opts);
+    }
+
     GError *err = NULL;
     gchar *desc = g_strdup_printf("appsrc is-live=true format=time do-timestamp=true name=src !"
                                   " %s ! %s name=encoder %s ! appsink name=sink",
@@ -992,6 +1109,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
     spice_debug("GStreamer pipeline: %s", desc);
     encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
     g_free(converter);
+    g_free(gstenc_name);
     g_free(gstenc_opts);
     g_free(desc);
     if (!encoder->pipeline || err) {
-- 
2.39.2

