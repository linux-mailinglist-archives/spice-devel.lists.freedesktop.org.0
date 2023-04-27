Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115DF6F00DA
	for <lists+spice-devel@lfdr.de>; Thu, 27 Apr 2023 08:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912AE10EAAC;
	Thu, 27 Apr 2023 06:37:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C9510EAAC
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Apr 2023 06:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682577466; x=1714113466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xf/PoA4rCZoBvqsaa7B7uIz/uAmjJJeTtiWHh7seyJQ=;
 b=hJ2wK1qg76wu8HusTmzwJ2zaUIWo8sShPPud04ZOFn4m/eiOwXSGVX27
 d7PLy/hOp6zWrrsIa4EZQNGjWEsfxMT4pw5/bIkaZykMicP+MAFtFhudn
 M5PbM4DoD2kzQWXLT8do6ngayAPC116qQI+AuLHvBnwE5sPuexYAGMs0F
 z1Pjmoo8p7MjWMD8ZeV+tWPb8sbEXtrwDje6L4kTAw01cW8FIRpuy5nCW
 fNzkSswyZm7wQSHLm2jX9jD8wC/vLASeGcP5m1vlk80vr7ER+NWZbeFuH
 v255lvrxX4p4mczO1tayiJGgiB9meQrmrx9671fnoKjQHHkvVSQTYnv9z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="336285568"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="336285568"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="758953660"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="758953660"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:44 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 26 Apr 2023 23:16:01 -0700
Message-Id: <20230427061601.1488225-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
References: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH] gstreamer-encoder: Use a h/w based encoder
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

Once it is determined that an Intel GPU is available/active (after
looking into udev's database), we try to see if there is a h/w
based encoder (element) available (in Gstreamer's registry cache)
for the user selected video codec. In other words, if we find that
the Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
libraries (such as vaapi) are all installed properly, we add the
appropriate h/w based encoder and post-processor/converter elements
to the pipeline (along with any relevant options) instead of the
s/w based elements.

For example, if the user selects h264 as the preferred codec format,
msdkh264enc and vaapipostproc will be added instead of x264enc
and videoconvert.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Signed-off-by: Mazlan, Hazwan Arif <hazwan.arif.mazlan@intel.com>
Signed-off-by: Teng, Jin Chung <jin.chung.teng@intel.com>
---
 meson.build                |  3 ++
 server/gstreamer-encoder.c | 93 +++++++++++++++++++++++++++++++++++++-
 2 files changed, 94 insertions(+), 2 deletions(-)

diff --git a/meson.build b/meson.build
index d66fac10..a401fe2c 100644
--- a/meson.build
+++ b/meson.build
@@ -182,6 +182,9 @@ if smartcard_dep.found()
   spice_server_requires += 'libcacard >= 2.5.1 '
 endif
 
+#udev
+spice_server_deps += dependency('libudev', required : true)
+
 #
 # global C defines
 #
diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 2ceb80ba..eed359df 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -27,6 +27,7 @@
 #include <gst/app/gstappsink.h>
 #include <gst/video/video.h>
 #include <orc/orcprogram.h>
+#include <libudev.h>
 
 #include "red-common.h"
 #include "video-encoder.h"
@@ -39,6 +40,7 @@
 # define DO_ZERO_COPY
 #endif
 
+#define INTEL_GFX_DRV_NAME "i915"
 
 typedef struct {
     SpiceBitmapFmt spice_format;
@@ -913,14 +915,97 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
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
+static gboolean msdk_vaapi_features_lookup(const gchar *enc_name)
+{
+    GstRegistry *registry = NULL;
+    GstPluginFeature *msdkenc = NULL;
+    GstPluginFeature *vaapivpp = NULL;
+
+    registry = gst_registry_get();
+    if (!registry) {
+        return FALSE;
+    }
+    msdkenc = gst_registry_lookup_feature(registry, enc_name);
+    if (!msdkenc) {
+        return FALSE;
+    }
+    vaapivpp = gst_registry_lookup_feature(registry, "vaapipostproc");
+    if (!vaapivpp) {
+        gst_object_unref(msdkenc);
+        return FALSE;
+    }
+
+    gst_object_unref(msdkenc);
+    gst_object_unref(vaapivpp);
+    return TRUE;
+}
+
+static const struct {
+    const gchar name[8];
+} video_codecs[] = {
+    { "" },
+    { "mjpeg" },
+    { "vp8" },
+    { "h264" },
+    { "vp9" },
+    { "h265" },
+};
+
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
+    const gchar *codec_name = video_codecs[encoder->base.codec_type].name;
+    gchar *msdk_enc_name = g_strconcat("msdk", codec_name, "enc", NULL);
+    gboolean use_msdk = detect_intel_gpu() &&
+                        msdk_vaapi_features_lookup(msdk_enc_name);
 #ifdef HAVE_GSTREAMER_0_10
     const gchar *converter = "ffmpegcolorspace";
 #else
-    const gchar *converter = "videoconvert";
+    const gchar *converter = use_msdk ?
+                             "vaapipostproc ! video/x-raw(memory:DMABuf)" :
+                             "videoconvert";
 #endif
-    const gchar* gstenc_name = get_gst_codec_name(encoder);
+    const gchar* gstenc_name = use_msdk ? g_strdup(msdk_enc_name) :
+                               get_gst_codec_name(encoder);
+    g_free(msdk_enc_name);
     if (!gstenc_name) {
         return FALSE;
     }
@@ -972,6 +1057,10 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
         spice_warning("unsupported codec type %d", encoder->base.codec_type);
         return FALSE;
     }
+    if (use_msdk) {
+        g_free(gstenc_opts);
+        gstenc_opts = g_strdup("async-depth=1 rate-control=3 gop-size=1 tune=16 ref-frames=1 b-frames=0 target-usage=7 min-qp=15 max-qp=35");
+    }
 
     GError *err = NULL;
     gchar *desc = g_strdup_printf("appsrc is-live=true format=time do-timestamp=true name=src !"
-- 
2.39.2

