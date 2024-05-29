Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846E58D2EB0
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2024 09:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF815112A4B;
	Wed, 29 May 2024 07:44:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dhuzLJgP";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA731129B1
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2024 07:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716968662; x=1748504662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hlAtUyQ1s9AQtuSYD/Wv+m62HsLRv7o+bIR6LprJQ7o=;
 b=dhuzLJgPLiPXM0zzU2gak9fxCEErBgijwNDlJ/gv28d85bPo3znIigEB
 s2JT83eQkr39c71QVmuDfzakgPe0jFgZyVOmpVh1ybCe4RcgXYEtitnJw
 28y04NaWr+bBMQHPQWhApLQcaQ1kIWKVpPEY55hysvZVgDp1kuT3sLqVo
 9sGTH64zw8vadwrwDirTQPVKRVL4ha70IIpCqXgNnBoXKTAPX9fQNL0d6
 pbijX8Bkp7xZvdfP8fuM36iDvxPfj5i6YCNMt3ghfb040JvQO1SOsoZzX
 jMtYsdZJlNMyrSRV7BbBaQe2x1uEpCtP6hvYxRNxlC5acyqzppH4C/J2i A==;
X-CSE-ConnectionGUID: ky759IqyT9GW/g5VoUp4JQ==
X-CSE-MsgGUID: MQVPyMyYQ4KKV2c2L9ZCPg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13540843"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="13540843"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:44:20 -0700
X-CSE-ConnectionGUID: ulvvp5XrRmOTyuxnSg0BMQ==
X-CSE-MsgGUID: SD9HdDDURKaccjvpLLylJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35371518"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:44:20 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v7 5/5] video-stream: Don't stop a stream associated with
 gl_draw (v2)
Date: Wed, 29 May 2024 00:16:39 -0700
Message-ID: <20240529071832.208908-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240529071832.208908-1-vivek.kasireddy@intel.com>
References: <20240529071832.208908-1-vivek.kasireddy@intel.com>
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
index f17b11f9..72a926cc 100644
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
@@ -1076,7 +1080,8 @@ void video_stream_timeout(DisplayChannel *display)
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
2.45.1

