Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E99386EE4B
	for <lists+spice-devel@lfdr.de>; Sat,  2 Mar 2024 04:21:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF2410EE50;
	Sat,  2 Mar 2024 03:21:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ayujps6Z";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E077010EE50
 for <spice-devel@lists.freedesktop.org>; Sat,  2 Mar 2024 03:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709349663; x=1740885663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YD7J6v8FuL6tUfe86TCTrPyrO4MxJQ4DimYQYfQeTTo=;
 b=Ayujps6ZggxfAFpD+F6tvNbglTQSUBH98y1VAcbwDijztdmrs15zFbDc
 fhvLo2lTN5f9fGHa6OADB5BYCVm80jczKlSrQpdpXK455GEg4b7FbqoGP
 /igyE9xeTycxSEf3ddrpw34HU/LBIDTglE+BBNq7EHYeBH5h5+FPWBU8W
 UxyACuatvgQrRnT8eICQuGCJ/gpe/aYu+Z6hEbwH7d5HN2h8fe+z0qQFq
 qp7Bb6zr+a1TMIT5dz3yyaJKC1YKUbegA1K1Ebwdmv1BN4UpRKh5YHe/3
 WTCUT5BTkaSCBwa9AWJXqvP2IdgPoGGgOANc3MGtRyhSKbNG6oSA7BwuI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15050920"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="15050920"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 19:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="12909921"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 19:20:56 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v5 5/5] video-stream: Don't stop a stream associated with
 gl_draw (v2)
Date: Fri,  1 Mar 2024 18:54:40 -0800
Message-ID: <20240302025656.1385463-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240302025656.1385463-1-vivek.kasireddy@intel.com>
References: <20240302025656.1385463-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

We do not want to stop a stream associated with gl_draw as a result
of timeout because we may not get another opportunity to create a
new stream if the current one gets stopped. However, when the
stream does get stopped for other reasons, we need to clear the
gl_draw_stream pointer associated with the relevant DC.

v2: (suggestions from Frediano)
- Don't stop the stream regardless of whether gl_draw is ongoing
  or not

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Acked-by: Frediano Ziglio <freddy77@gmail.com>
---
 server/video-stream.cpp | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index b62b2924..74cbb932 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -116,6 +116,10 @@ void video_stream_stop(DisplayChannel *display, VideoStream *stream)
         }
         dcc->pipe_add(video_stream_destroy_item_new(stream_agent));
         video_stream_agent_stats_print(stream_agent);
+
+        if (stream == display->priv->gl_draw_stream) {
+            display->priv->gl_draw_stream = nullptr;
+        }
     }
     display->priv->streams_size_total -= stream->width * stream->height;
     ring_remove(&stream->link);
@@ -1042,7 +1046,8 @@ void video_stream_timeout(DisplayChannel *display)
     while (item) {
         VideoStream *stream = SPICE_CONTAINEROF(item, VideoStream, link);
         item = ring_next(ring, item);
-        if (now >= (stream->last_time + RED_STREAM_TIMEOUT)) {
+        if (now >= (stream->last_time + RED_STREAM_TIMEOUT) &&
+            stream != display->priv->gl_draw_stream) {
             detach_video_stream_gracefully(display, stream, nullptr);
             video_stream_stop(display, stream);
         }
-- 
2.43.0

