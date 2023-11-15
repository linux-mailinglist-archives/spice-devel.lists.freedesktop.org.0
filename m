Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 089377EBD3D
	for <lists+spice-devel@lfdr.de>; Wed, 15 Nov 2023 07:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ABF910E4F0;
	Wed, 15 Nov 2023 06:53:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D4E10E4F0
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Nov 2023 06:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700031207; x=1731567207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z8EfKpMks0n+wUn4nk+PjcOV9ei6ZlCBQzRWTWUJ+dE=;
 b=CYNlaNjnOgpsq6h1EQiy413TDuiofZ+7AibRq+1X6RPVUxF03XYLESI/
 wZAYpm1O6K/kh4NFsUf82DS2Ea8OfjzHAH3F+YA/9yNK3qqOMtj4rs+Ov
 xVzxzhB/j+q6Suar+LtL+yrmBqfwU4F5mPCkUpvatSdkdTcqslap0e1bk
 38j9WX5m3EwhczXl1aYjIOBsP/1O2bUZTLQwAptWY0lwGFixgfzoarLyS
 mGgPKsGBkeSNCCIJKVeDDUFhDn5DeAAacdxcc0vn+Dc1IKK4LywVP7gMT
 mbX49iMAtPmAJZzNzuauCUDzDi6FVTWpmq0Yd+nV2BO3RsV/IE485RUqD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="394739018"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="394739018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:53:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1012175619"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="1012175619"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:53:25 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 14 Nov 2023 22:29:52 -0800
Message-Id: <20231115062952.498665-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <CAHt6W4fVVDVtkWXfgDsqSDUHqjwEpFqQ85WbGZgZryEpkXF00Q@mail.gmail.com>
References: <CAHt6W4fVVDVtkWXfgDsqSDUHqjwEpFqQ85WbGZgZryEpkXF00Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v4] gstreamer-encoder: Use an env var to
 override converter format (v4)
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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/gstreamer-encoder.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d08de35a..28fc1251 100644
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
+    return (gchar *)gst_once.retval;
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

