Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9A47CBCA4
	for <lists+spice-devel@lfdr.de>; Tue, 17 Oct 2023 09:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B05F10E282;
	Tue, 17 Oct 2023 07:45:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5885C10E280
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Oct 2023 07:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697528707; x=1729064707;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XHKq5p31xGIEqA5IACT/U34oAx1Md9I5s74m2uIPkQ8=;
 b=dKVUH6GNqI/6m2sVu6TKdS6cjE9Riz7roySetUc8zpCFBngLGTOoSJFu
 RSFQ9OlxQAoRSVvKNSMhgzjVsx73WSeaLln/zJiHF4SLjSDg5J27XrkvS
 iEivBFoMasbKK3fcxEbGhVwZiIHR0Wd0P6VUOqZjunC5nq+ScUUPlR0Pr
 c8PnQvnOsnk+fAjQT5rvTlcB3zjl8HGHBabsgZqfP8t10PfNyFoA9IoTW
 PydQkbCRSJ+ZJZN5lnVbcrrgsLlz6+biagZPgy5BR27bgta2RdZFH5n5h
 Vt+t9DzpthPAHX7klW5JblAhL8EezVkx6Qp6FeKYUyxwZjT6gQD9bGvDp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="452199938"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="452199938"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="705895938"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="705895938"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:45:03 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 17 Oct 2023 00:24:43 -0700
Message-Id: <20231017072444.4013504-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v4 1/2] gstreamer-encoder: Use an env var to
 override converter format (v3)
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

v3:
- Free converter when pipeline creation fails due to invalid codec
- Rebase on master

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/gstreamer-encoder.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d08de35a..7a75923d 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -861,13 +861,25 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
     }
 }
 
+static gchar *get_gst_converter(void)
+{
+    gchar *converter, *pref_format;
+    pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
+    if (pref_format) {
+        converter = g_strconcat("videoconvert ! video/x-raw,format=", pref_format, NULL);
+    } else {
+        converter = g_strdup("videoconvert");
+    }
+    return converter;
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
@@ -910,6 +922,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
     default:
         /* gstreamer_encoder_new() should have rejected this codec type */
         spice_warning("unsupported codec type %d", encoder->base.codec_type);
+        g_free(converter);
         return FALSE;
     }
 
@@ -919,6 +932,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
                                   converter, gstenc_name, gstenc_opts);
     spice_debug("GStreamer pipeline: %s", desc);
     encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
+    g_free(converter);
     g_free(gstenc_opts);
     g_free(desc);
     if (!encoder->pipeline || err) {
-- 
2.39.2

