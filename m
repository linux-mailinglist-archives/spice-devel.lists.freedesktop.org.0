Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F567995E7
	for <lists+spice-devel@lfdr.de>; Sat,  9 Sep 2023 04:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E38310E153;
	Sat,  9 Sep 2023 02:09:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74B010E153
 for <spice-devel@lists.freedesktop.org>; Sat,  9 Sep 2023 02:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694225379; x=1725761379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g0KOVfyZ4qaSW0cm4qqHSI+Ubgsz3yUKsBOF3LB0iXM=;
 b=hhCzgs1p4c5u26vh7nc3izBZci6KeTjUReKRUb79LQO46VM3suVUK8QY
 XfVAsXA+8CJn07Sdn/EV+IcAXjdn2g3+/dPWUNX8qYm9Eb3qj4TSmQzQp
 mEzUMIolbU0RQrTsMCUFss/S3O48JQ1eE1jO1b3wLXFlMtNzdefPnYKX5
 G1zC6assv9bLCuP4g6lYhfnKjGiMrkVGiX62ljnb1GyIN3m02EVcMpQMs
 +it6aHunPfAg8bmWZvRYwOKIdP5Yd6oHW6mxz0HuDwqnNhbwY0HQZDNA8
 QeE8KNT5pCTZrXxQQgfCc4nsMxWuibVaxZTNvDTqBDpNVTsHEDKaJiFh9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358090426"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358090426"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832857062"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832857062"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:48:43 -0700
Message-Id: <20230909014843.260583-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230909014843.260583-1-vivek.kasireddy@intel.com>
References: <20230909014843.260583-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2 5/5] video-stream: Don't stop a stream
 associated with gl_draw (v2)
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
---
 server/video-stream.cpp | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 18e98108..f2daea09 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -115,6 +115,10 @@ void video_stream_stop(DisplayChannel *display, VideoStream *stream)
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
@@ -989,7 +993,8 @@ void video_stream_timeout(DisplayChannel *display)
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
2.39.2

