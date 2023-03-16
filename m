Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1154E6BC5F2
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB07710E12E;
	Thu, 16 Mar 2023 06:05:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F239B10E06F
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FZGFKOOf/q3rg4wmQktWuN86svmH772n7En2VdOT3C0=;
 b=jCXRrhWRTMSxryhCHmJ4zT2FUTraS0JV0Tk4NmyG9YjN+Btjld30D6kF
 WpSHYSUaMfMlVYyOmj2YdKAlUw6r+JXebm2S1+Dcsmf9dJArRnvgajF+a
 bfX4EgR58FsRbQkgGuuR+Sx5ZJkm4EOlWQWIuU+beAXK3NEivhYXm6ase
 TQp3jtOUdo0jyNrQGrhwPs/DDP3mGii0hU4It4VSWtnLLVsSGMtN79M1u
 L8gspaJFaz8J/sGhuHjCaP8YDOIcCB3CArz6SOaOihITEVRJxIhV+4sXH
 /UE6GtM8LzvUpyKetXdT6mxwwu6r5oeEmuY1U0vNp9NOairVmlObdvYhm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588958"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588958"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141486"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141486"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:58 -0700
Message-Id: <20230316054458.1546085-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 5/5] video-stream: Don't stop a stream if a
 gl_draw operation is pending
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
Cc: Dongwon Kim <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Before stopping a stream, we need to ensure that there is no ongoing
gl_draw operation; otherwise, we may not get another opportunity to
create a new stream if the current one gets stopped. And, once the
stream is stopped, we need to clear the gl_draw_stream pointer
associated with the relevant client (dcc).

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/video-stream.cpp | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 03a7d68d..b7f3d2c5 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -18,6 +18,7 @@
 
 #include "video-stream.h"
 #include "display-channel-private.h"
+#include "dcc-private.h"
 #include "main-channel-client.h"
 #include "red-client.h"
 
@@ -115,6 +116,10 @@ void video_stream_stop(DisplayChannel *display, VideoStream *stream)
         }
         dcc->pipe_add(video_stream_destroy_item_new(stream_agent));
         video_stream_agent_stats_print(stream_agent);
+
+        if (stream == dcc->priv->gl_draw_stream) {
+            dcc->priv->gl_draw_stream = nullptr;
+        }
     }
     display->priv->streams_size_total -= stream->width * stream->height;
     ring_remove(&stream->link);
@@ -974,6 +979,19 @@ void video_stream_detach_and_stop(DisplayChannel *display)
     }
 }
 
+static bool is_stream_gl_draw(VideoStream *stream, DisplayChannel *display)
+{
+    DisplayChannelClient *dcc;
+
+    FOREACH_DCC(display, dcc) {
+        if (stream == dcc->priv->gl_draw_stream &&
+            dcc->priv->gl_draw_ongoing) {
+            return TRUE;
+        }
+    }
+    return FALSE;
+}
+
 void video_stream_timeout(DisplayChannel *display)
 {
     Ring *ring = &display->priv->streams;
@@ -984,7 +1002,8 @@ void video_stream_timeout(DisplayChannel *display)
     while (item) {
         VideoStream *stream = SPICE_CONTAINEROF(item, VideoStream, link);
         item = ring_next(ring, item);
-        if (now >= (stream->last_time + RED_STREAM_TIMEOUT)) {
+        if (now >= (stream->last_time + RED_STREAM_TIMEOUT) &&
+            !is_stream_gl_draw(stream, display)) {
             detach_video_stream_gracefully(display, stream, nullptr);
             video_stream_stop(display, stream);
         }
-- 
2.37.2

