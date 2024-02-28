Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6EE86AA48
	for <lists+spice-devel@lfdr.de>; Wed, 28 Feb 2024 09:42:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE3410E9C9;
	Wed, 28 Feb 2024 08:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nacjxd9f";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5871710E9BE
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Feb 2024 08:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709109718; x=1740645718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XvJ1ircJ+x7D8m/VIW//XjWPItj7R39MYXpilokqhi8=;
 b=nacjxd9f1Ukrgm7niF1RaTqfu3Xfi6RAMvuYwrnDNwkTT/WTzsr3/K0j
 eJgBx6wuMpArJ0I+CO+rLffKAdtpTYp3cuj9Mnv1MkIcuTSGD859gwZPj
 lxoUv9kMANzT1Jx2en3uwS09AIvWwiqSv3ksaIV3zaVdVTBF6e60ZFTGu
 yKI0E1EXwY8PCsU19mkvmYanddYqqv8DhaYjPAd/skeUChIWdodw9KGGf
 2m1zQGX5rhYIsluKBeyQXea6QrMPTSKudcAarfylVgDoaZEvJkKsL/2X0
 X55m1+8Mq22mn36f7CaGDvMv9R0F3BryTvmxp+QacB6Fa+Ro4AQTkjSLb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3615947"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3615947"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7925983"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:57 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v4 5/5] video-stream: Don't stop a stream associated with
 gl_draw (v2)
Date: Wed, 28 Feb 2024 00:15:19 -0800
Message-ID: <20240228081730.1374127-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
References: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
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
---
 server/video-stream.cpp | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 5d4e2690..a7233459 100644
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
@@ -1016,7 +1020,8 @@ void video_stream_timeout(DisplayChannel *display)
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

