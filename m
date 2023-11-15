Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B19587EBF72
	for <lists+spice-devel@lfdr.de>; Wed, 15 Nov 2023 10:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1B210E517;
	Wed, 15 Nov 2023 09:28:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B4AA10E517
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Nov 2023 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700040479; x=1731576479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4gho/zcBvjHK+CVYyeA8FZ1bHWndqu5Gsxi2dzHotVI=;
 b=dZcsP8cUkvzGvgpb23ivKU2u58N9ph9cWFBijowy2R8Y/gHdQgq+PJ9U
 oNLwGz+AGJ2LpOVDf6n59t28RShwndcXXf9EunYN/IzxzAhtHzkwsUZIA
 faYU34syzC5O3T5iYr5n17ForB8Kj9DCbqU4MPRFwvzAjpe6cDeAEapNL
 Kw8qClFMp8ypIKjCjckHyOWbv19B5AsjmsHf/VfpCZaJ2vYNtZPY17rgl
 OBfFhO1cStb7nmOnqa0fZvRui2rWNGWpToWvDqI1LVi+cFtY5h1u2C0UG
 SPvfjW4xnyywGqFfN+EGTc0Pm/dWjV9FImIkNqsOCjk5YaK9aNO2CTMBt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="477066100"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="477066100"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="794097209"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="794097209"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:27:46 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Nov 2023 01:04:45 -0800
Message-Id: <20231115090445.503069-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <CAHt6W4eEaMs-39u4X8x7_S+VQgs4Ks3DQ7fSRKHmtenFoGLRRQ@mail.gmail.com>
References: <CAHt6W4eEaMs-39u4X8x7_S+VQgs4Ks3DQ7fSRKHmtenFoGLRRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v5] gstreamer-encoder: Use an env var to
 override converter format (v5)
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
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

If we use the x264enc encoder to encode a stream, then videoconvert
would convert the BGRx data into Y444, which is the preferred format
for x264enc. However, some decoders particularly the ones that are
h/w based cannot work with Y444 if it was the format used by the
encoder. Therefore, to address these situations, we need a way to
override the format used during the encoding stage which can be
accomplished by using the environment variable introduced in this
patch: SPICE_CONVERTER_PREFERRED_FORMAT.

For example, using NV12 as the output format for the videoconvert
element would allow us to pair a s/w based encoder (such as x264enc)
with a h/w based decoder (such as msdkh264dec) for decoding the
stream as most h/w based decoders only work with NV12 format given
its popularity.

Note that choosing an encoder format such as NV12 over Y444 would
probably result in decreased video quality although it would be
compatible with more decoders. Ideally, the client and server need
to negotiate a suitable format dynamically but the current
capabilities do not allow for such exchange.

v2:
- Add the environment variable to override encoding format
- Augment the commit message to explain the impact of overriding
  the default encoding format (Frediano)

v3: (Frediano)
- Free converter when pipeline creation fails due to invalid codec
- Rebase on master

v4: (Frediano)
- Ensure that the preferred format obtained via the environment var
  SPICE_CONVERTER_PREFERRED_FORMAT is valid
- Use the g_once mechanism to cache and return the preferred format
  after validating it

v5: (Frediano)
- Prevent the double free by doing g_strdup(gst_once.retval) in
  get_gst_converter().

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/gstreamer-encoder.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d08de35a..40882f69 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -861,13 +861,50 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
     }
 }
 
+/* At this time, only the following formats are supported by x264enc. */
+static const char valid_formats[][10] = {
+    { "Y444" },
+    { "Y42B" },
+    { "I420" },
+    { "YV12" },
+    { "NV12" },
+    { "GRAY8" },
+    { "Y444_10LE" },
+    { "I422_10LE" },
+    { "I420_10LE" },
+};
+
+static gpointer get_pref_format_once(gpointer data)
+{
+    const gchar *pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
+    int i;
+
+    if (pref_format) {
+        for (i = 0; i < G_N_ELEMENTS(valid_formats); i++) {
+            if (strcmp(valid_formats[i], pref_format) == 0) {
+                return g_strdup_printf("videoconvert ! video/x-raw,format=%s",
+                                       pref_format);
+            }
+        }
+    }
+    return g_strdup("videoconvert");
+}
+
+static gchar *get_gst_converter(void)
+{
+    static GOnce gst_once = G_ONCE_INIT;
+
+    g_once(&gst_once, get_pref_format_once, NULL);
+    return g_strdup(gst_once.retval);
+}
+
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
-    const gchar *converter = "videoconvert";
     const gchar* gstenc_name = get_gst_codec_name(encoder);
     if (!gstenc_name) {
         return FALSE;
     }
+    gchar* converter = get_gst_converter();
     gchar* gstenc_opts;
     switch (encoder->base.codec_type)
     {
@@ -910,6 +947,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
     default:
         /* gstreamer_encoder_new() should have rejected this codec type */
         spice_warning("unsupported codec type %d", encoder->base.codec_type);
+        g_free(converter);
         return FALSE;
     }
 
@@ -919,6 +957,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
                                   converter, gstenc_name, gstenc_opts);
     spice_debug("GStreamer pipeline: %s", desc);
     encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
+    g_free(converter);
     g_free(gstenc_opts);
     g_free(desc);
     if (!encoder->pipeline || err) {
-- 
2.39.2

