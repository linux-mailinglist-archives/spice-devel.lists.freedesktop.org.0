Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0BF86FFEF
	for <lists+spice-devel@lfdr.de>; Mon,  4 Mar 2024 12:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE93310FFE0;
	Mon,  4 Mar 2024 11:10:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CDEjF2BJ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7515910FFDC
 for <spice-devel@lists.freedesktop.org>; Mon,  4 Mar 2024 11:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709550636; x=1741086636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FDYir7NjA6f2d5mpmR+U74sqgN1NIjDOLI3+vVaIwxI=;
 b=CDEjF2BJAqOKCGyTn6cN+ZP+7nf5YZnYU0Up5imTu6DnGDvFPDUx8xgz
 6w8LdtEwvTtWrqt9R2+p1ps+B6iCWDEwdaJv9ZRgZEXzvpb8ZOaFMAWDg
 xeZpnL39sU4ujv6e+U49CSzQLQ8sND3EO+S9AHDUtjsssp/b7Jpsr1QZD
 vTx0V8lpDysFNzeaV9zM02jcDWrqDqchGocRI4GqnPzYYC2U0wEJ2+q4X
 Y5uYcsZ9VSLtXmDlhUPN6e56kamj3XeOz9G+etEKbUnR2XPghnj6E9eiF
 CHUf0kLP/2yLb0NsGfVMig1KVTNfbqi4+7XWgW9Pjp8PlyBfwKzE0lUPp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="21572113"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="21572113"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13530821"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v6 5/5] video-stream: Don't stop a stream associated with
 gl_draw (v2)
Date: Mon,  4 Mar 2024 02:45:47 -0800
Message-ID: <20240304104643.1462676-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
References: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
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
 server/video-stream.cpp | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 29143c24..a5cddb0e 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -117,6 +117,9 @@ void video_stream_stop(DisplayChannel *display, VideoStream *stream)
         dcc->pipe_add(video_stream_destroy_item_new(stream_agent));
         video_stream_agent_stats_print(stream_agent);
 
+        if (stream == display->priv->gl_draw_stream) {
+            display->priv->gl_draw_stream = nullptr;
+        }
         if (stream->drm_dma_buf_fd > 0) {
             close(stream->drm_dma_buf_fd);
             stream->drm_dma_buf_fd = -1;
@@ -1074,7 +1077,8 @@ void video_stream_timeout(DisplayChannel *display)
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

