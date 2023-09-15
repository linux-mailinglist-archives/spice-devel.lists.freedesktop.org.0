Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D454B7A1254
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB35010E5B7;
	Fri, 15 Sep 2023 00:33:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4148810E14C
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737983; x=1726273983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YuOuqT6qGEpp/OxEBXJtVGoReWeAaGlDfzcKVVbYvFs=;
 b=bmq3CpmMd8px1+xxMzK3Eeks4wH6P/hDAj3gM9MrsOgMr817N6IgVaTs
 9Am+8W6CkDelK+Vd0/+8or0o1Iv302mbqQuA0ACG9K02hhVnOyML/QyGL
 Fd3zlgqx7NdqA4qb5w5dTNOv9izTGNH5hw70zv4S1A5mQy4dbUn9VnAvV
 AVTVDDlodUsDcLiglOgddytFHJTBtCk62BV5oOHoQiCGn8/kyJbwqWdA5
 85bmk6nZW2S6/BFfBp2RmwAds0QpHJebTh+g3SH6cpsAInawM8JkxwSWJ
 qbAUUIvDsEcFuA+4PQzn3GtSf+VW3DN8xYBU5sJ9vrx+ncNvfJM+HDALG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378165"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378165"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442361"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442361"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:13 -0700
Message-Id: <20230915001215.531746-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 2/2] gstreamer-encoder: Use a h/w based
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
 Jin Chung Teng <jin.chung.teng@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Co-developed-by: Jin Chung Teng <jin.chung.teng@intel.com>
Co-developed-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
---
 server/gstreamer-encoder.c | 96 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 93 insertions(+), 3 deletions(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 057509b5..44666f42 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -31,6 +31,7 @@
 #include "red-common.h"
 #include "video-encoder.h"
 #include "utils.h"
+#include "common/udev.h"
 
 
 #define SPICE_GST_DEFAULT_FPS 30
@@ -913,14 +914,94 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
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
+static void try_intel_hw_plugins(const gchar *codec_name, gchar **converter,
+                                 gchar **gstenc_name, gchar **gstenc_opts)
+{
+    gchar *encoder = find_best_plugin(codec_name);
+    if (!encoder) {
+        return;
+    }
+    gchar *vpp = find_best_plugin(NULL);
+    if (!vpp) {
+        return;
+    }
+
+    g_free(*converter);
+    g_free(*gstenc_name);
+    g_free(*gstenc_opts);
+
+    *gstenc_name = encoder;
+    if (strstr(encoder, "msdk")) {
+        *gstenc_opts = g_strdup("async-depth=1 rate-control=3 gop-size=1 tune=16 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+    } else if (strstr(encoder, "vaapi")) {
+        *gstenc_opts = g_strdup("rate-control=cqp max-bframes=0 min-qp=15 max-qp=35");
+    } else {
+        *gstenc_opts = g_strdup("rate-control=16 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+    }
+
+    if (strstr(vpp, "vaapi")) {
+        *converter = g_strconcat(vpp, " ! video/x-raw(memory:VASurface),format=NV12", NULL);
+    } else {
+        *converter = g_strconcat(vpp, " ! video/x-raw(memory:VAMemory),format=NV12", NULL);
+    }
+    g_free(vpp);
+}
+
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
 #ifdef HAVE_GSTREAMER_0_10
-    const gchar *converter = "ffmpegcolorspace";
+    gchar *converter = g_strdup("ffmpegcolorspace");
 #else
-    const gchar *converter = "videoconvert ! video/x-raw,format=NV12";
+    gchar *converter = g_strdup("videoconvert ! video/x-raw,format=NV12");
 #endif
-    const gchar* gstenc_name = get_gst_codec_name(encoder);
+    gchar* gstenc_name = g_strdup(get_gst_codec_name(encoder));
     if (!gstenc_name) {
         return FALSE;
     }
@@ -973,12 +1054,21 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
         return FALSE;
     }
 
+    const char *codec_name = video_codecs[encoder->base.codec_type];
+    GpuVendor vendor = spice_udev_detect_gpu();
+    if (vendor == GPU_VENDOR_INTEL) {
+        try_intel_hw_plugins(codec_name, &converter, &gstenc_name,
+                             &gstenc_opts);
+    }
+
     GError *err = NULL;
     gchar *desc = g_strdup_printf("appsrc is-live=true format=time do-timestamp=true name=src !"
                                   " %s ! %s name=encoder %s ! appsink name=sink",
                                   converter, gstenc_name, gstenc_opts);
     spice_debug("GStreamer pipeline: %s", desc);
     encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
+    g_free(converter);
+    g_free(gstenc_name);
     g_free(gstenc_opts);
     g_free(desc);
     if (!encoder->pipeline || err) {
-- 
2.39.2

