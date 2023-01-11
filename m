Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B7B6653EB
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 06:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C48210E6E9;
	Wed, 11 Jan 2023 05:42:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B9210E6E9
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 05:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415737; x=1704951737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wGGdFLVti2R7HM2Hb9/xATwn45dD3QdCHXhzrUCXBrk=;
 b=TmwfXTmI9n5ILeW3UeMfpStlWAIWOWHr8QnIYZEw1RJnL90ou5SBCvfs
 NGvr+4CNiAz6DgXp/25TG9ag8uJhsBXI72nNTerUJQ2ehZN65zEJgPlLb
 qQoABKAjflqzPJR7bQKFutptXZRyzfwOl1Fg/jcKe8AVXhBkOn6SaH/aK
 JrOYNvBSRfRA9yYyvGMWZw8qmmVNYGvzY/bPXvrdxCgxqEvrAFhAL2sC3
 skKs80fwhqd5AiTd1drhIPsfjC9NYv+Lp2i3O1MprsenssaJozizslmXf
 ccoIT4lItX9/vvI/S4Q6ckAq3peweMke+qnHKzyTL+6kmk6iZoHEFhl/l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321027245"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321027245"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634832426"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634832426"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Jan 2023 21:22:39 -0800
Message-Id: <20230111052239.781285-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230111052239.781285-1-vivek.kasireddy@intel.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v1 4/4] video-stream: Force stream creation for
 a valid dmabuf fd
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

If the drawable contains a valid dmabuf fd, then a stream needs
to be created for all the display channels.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/video-stream.cpp | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 056d0c31..5edc7472 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -213,18 +213,20 @@ static bool is_next_stream_frame(const Drawable *candidate,
                                  const VideoStream *stream,
                                  int container_candidate_allowed)
 {
-    RedDrawable *red_drawable;
+    RedDrawable *red_drawable = candidate->red_drawable.get();
 
     if (!candidate->streamable) {
         return FALSE;
     }
+    if (red_drawable->dmabuf_fd > 0) {
+        return TRUE;
+    }
 
     if (candidate->creation_time - other_time >
             (stream ? RED_STREAM_CONTINUOUS_MAX_DELTA : RED_STREAM_DETECTION_MAX_DELTA)) {
         return FALSE;
     }
 
-    red_drawable = candidate->red_drawable.get();
     if (!container_candidate_allowed) {
         SpiceRect* candidate_src;
 
@@ -371,6 +373,7 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
     DisplayChannelClient *dcc;
     VideoStream *stream;
     SpiceRect* src_rect;
+    bool added = false;
 
     spice_assert(!drawable->stream);
 
@@ -407,6 +410,10 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
     display->priv->stream_count++;
     FOREACH_DCC(display, dcc) {
         dcc_create_stream(dcc, stream);
+        added = true;
+    }
+    if (!added) {
+        display_channel_encode_done(display, drawable->red_drawable.get());
     }
     spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
                 display_channel_get_video_stream_id(display, stream), stream->width,
@@ -442,7 +449,8 @@ static bool video_stream_add_frame(DisplayChannel *display,
         frame_drawable->last_gradual_frame = last_gradual_frame;
     }
 
-    if (is_stream_start(frame_drawable)) {
+    if (is_stream_start(frame_drawable) ||
+        frame_drawable->red_drawable->dmabuf_fd > 0) {
         display_channel_create_stream(display, frame_drawable);
         return TRUE;
     }
-- 
2.37.2

