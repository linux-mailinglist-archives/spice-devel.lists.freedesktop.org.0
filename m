Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E21537CBCA3
	for <lists+spice-devel@lfdr.de>; Tue, 17 Oct 2023 09:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387F410E281;
	Tue, 17 Oct 2023 07:45:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8855A10E281
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Oct 2023 07:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697528707; x=1729064707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FQzuCV4z1vOjjikhxx1BRmHEflJebXdpC+9jRf/tlZY=;
 b=BELRUhSa3OaQWmNakKZy1SMJZ70yheZcFoR64DuDdqIcsdmwMvtXRWut
 MnN6kUkv3pnGKa5hjz0QhitsxkP7mic/HDxkG5mccmOkf/bPmEQio8Av/
 Y4rJOijxBGuMThhsQop0NDtcbflwc+uhV/I+jZBD2NXHEeyDIeEPqomRB
 LZhQzpUKie9fEAeYtAbu9fu3oEqhsvrnWsXwy4ol5OTnPh2Ftp1CubFer
 4CO5M7Ur2T5cNfQwcfhsC++fM2edv2/tPeC3tWBNZ1af/IQNljT/ee3pZ
 R+aviaVukJe7D5rYHixTkOBxqUmIVZ2BSUUlSjpAyFBTmjpxplGbduItN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="452199944"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="452199944"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="705895967"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="705895967"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:45:04 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 17 Oct 2023 00:24:44 -0700
Message-Id: <20231017072444.4013504-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017072444.4013504-1-vivek.kasireddy@intel.com>
References: <20231017072444.4013504-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v4 2/2] gstreamer-encoder: Use a h/w based
 encoder with Intel GPUs if possible (v4)
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

v4: (Fixups from Frediano)
- Free the encoder when we cannot find vpp
- Change type and find plugins array length using G_N_ELEMENTS
- Fix gstenc_name UAF by freeing it at the end of the function
- Use g_str_has_prefix instead of strstr
- Include the string "_hw_" in function names that deal with
  h/w based plugins
- Rebase on master

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Co-developed-by: Jin Chung Teng <jin.chung.teng@intel.com>
Co-developed-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
---
 server/gstreamer-encoder.c | 123 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 7a75923d..30197e03 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -38,6 +38,7 @@
 #include "red-common.h"
 #include "video-encoder.h"
 #include "utils.h"
+#include "common/udev.h"
 
 
 #define SPICE_GST_DEFAULT_FPS 30
@@ -861,6 +862,116 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
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
+static gchar *find_best_hw_plugin(const gchar *codec_name)
+{
+    static const char plugins[][8] = {"msdk", "va", "vaapi"};
+    gchar *feature_name;
+    int i;
+
+    for (i = 0; i < G_N_ELEMENTS(plugins); i++) {
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
+static gchar *get_hw_gstenc_opts(gchar *encoder, const gchar *codec_name)
+{
+    gchar *gstenc_opts;
+
+    if (strcmp(codec_name, "mjpeg") == 0) {
+        return g_strdup("");
+    }
+
+    if (g_str_has_prefix(encoder, "msdk")) {
+        if (strcmp(codec_name, "vp9") == 0) {
+            gstenc_opts = g_strdup("async-depth=1 b-frames=0 rate-control=3 target-usage=7");
+        } else {
+            gstenc_opts = g_strdup("async-depth=1 rate-control=3 gop-size=1 tune=16 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+        }
+    } else if (g_str_has_prefix(encoder, "vaapi")) {
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
+    encoder = find_best_hw_plugin(codec_name);
+    if (!encoder) {
+        return;
+    }
+    vpp = find_best_hw_plugin(NULL);
+    if (!vpp) {
+        g_free(encoder);
+        return;
+    }
+
+    g_free(*converter);
+    g_free(*gstenc_name);
+    g_free(*gstenc_opts);
+    *gstenc_name = encoder;
+    *gstenc_opts = get_hw_gstenc_opts(encoder, codec_name);
+
+    if (g_str_has_prefix(vpp, "vaapi")) {
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
@@ -875,7 +986,7 @@ static gchar *get_gst_converter(void)
 
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
-    const gchar* gstenc_name = get_gst_codec_name(encoder);
+    gchar* gstenc_name = g_strdup(get_gst_codec_name(encoder));
     if (!gstenc_name) {
         return FALSE;
     }
@@ -922,10 +1033,18 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
     default:
         /* gstreamer_encoder_new() should have rejected this codec type */
         spice_warning("unsupported codec type %d", encoder->base.codec_type);
+        g_free(gstenc_name);
         g_free(converter);
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
@@ -942,6 +1061,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
             gst_object_unref(encoder->pipeline);
             encoder->pipeline = NULL;
         }
+        g_free(gstenc_name);
         return FALSE;
     }
     encoder->appsrc = GST_APP_SRC(gst_bin_get_by_name(GST_BIN(encoder->pipeline), "src"));
@@ -978,6 +1098,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
                                   SPICE_GST_VIDEO_PIPELINE_BITRATE |
                                   SPICE_GST_VIDEO_PIPELINE_CAPS);
 
+    g_free(gstenc_name);
     return TRUE;
 }
 
-- 
2.39.2

