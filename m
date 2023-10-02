Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59287B4B2E
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604F710E115;
	Mon,  2 Oct 2023 05:41:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD6A10E11E
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225265; x=1727761265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wGPlUDNz0fOEGwMIsksech1hVM161v4pyfewmVi3E1w=;
 b=hNLW7o6DfRGacjS0zFuriOuOJcA1LOZtxh8fz+LdXP/oZa/Jm25LrZ7M
 6Orx8Em+D0HV6yB7zunDY71B1RPd/NOPnDoMOloEgREJQEclUTgvxRdHZ
 eFFjJ+g5ShRlbhgoBdP7bHiUCFlG6SvUituPk4eXiiJ0fWUBxMbkULPrH
 d0WrtyAivbGpB8avJuBDpYN//GDO4+SUWp8IO2a1tI16wI/5mAsLKtIwz
 xuwLfXYX7UHg5bcnQHz5mL6DAQAUWCvRlMy4QL+kg3lpG422QWrSqOk2K
 Tno8SzdO4zey2Fw8UBABC6/AK2rPk6nkRmS1gjyka3S2hNSYEsqIalrTb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935851"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682734"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682734"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:03 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:24 -0700
Message-Id: <20231002052026.2994546-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 1/2] gstreamer-encoder: Use an env var to
 override converter format (v2)
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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/gstreamer-encoder.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d8af91f1..1619672a 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -913,13 +913,25 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
     }
 }
 
+static gchar *get_gst_converter(void)
+{
+    gchar *converter, *pref_format;
+#ifdef HAVE_GSTREAMER_0_10
+    converter = g_strdup("ffmpegcolorspace");
+#else
+    pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
+    if (pref_format) {
+        converter = g_strconcat("videoconvert ! video/x-raw,format=", pref_format, NULL);
+    } else {
+        converter = g_strdup("videoconvert");
+    }
+#endif
+    return converter;
+}
+
 static gboolean create_pipeline(SpiceGstEncoder *encoder)
 {
-#ifdef HAVE_GSTREAMER_0_10
-    const gchar *converter = "ffmpegcolorspace";
-#else
-    const gchar *converter = "videoconvert";
-#endif
+    gchar* converter = get_gst_converter();
     const gchar* gstenc_name = get_gst_codec_name(encoder);
     if (!gstenc_name) {
         return FALSE;
@@ -979,6 +991,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
                                   converter, gstenc_name, gstenc_opts);
     spice_debug("GStreamer pipeline: %s", desc);
     encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
+    g_free(converter);
     g_free(gstenc_opts);
     g_free(desc);
     if (!encoder->pipeline || err) {
-- 
2.39.2

