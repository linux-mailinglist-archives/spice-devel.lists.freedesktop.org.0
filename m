Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C7286AA47
	for <lists+spice-devel@lfdr.de>; Wed, 28 Feb 2024 09:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191BF10E9D1;
	Wed, 28 Feb 2024 08:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWk3fxcR";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7B310E9CE
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Feb 2024 08:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709109717; x=1740645717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Fg3hLOccxNCSJBeusZ9vvtsumMPP32JHRCRBJVR1k0=;
 b=mWk3fxcRnJ7rDmUQKO0GBPuE62hcZ0mSstW4ZfdcO5HVhY/bKPxvsFg0
 4h0qPcKm13tuhAX1UpD+38BmE9AHb38YolM5deTtg+Y2v5QxccNLjLgfj
 UM8JVMe6hgU2YsFF5F531Dvf52QMr9JJw2broGocUidKq8eUgI2knwrbD
 UtQlDg+992Veoh3HJLUWUSm5xKdl2XUU4T+LeDVlJKjLzXWxjoJTZGIPU
 p2XijVSCOaLN3STDncg4M2b35AD4fCRMg8vTx9vPKt46zt11tqQKcadwI
 HSX6jDOgokfeJGIpw7eSt19iV6BxeJbmGu3sqak9eapXCyLueGUZifRV3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3615926"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3615926"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7925974"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:56 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v4 2/5] dcc: Create a stream associated with gl_draw for
 non-gl clients (v3)
Date: Wed, 28 Feb 2024 00:15:16 -0800
Message-ID: <20240228081730.1374127-3-vivek.kasireddy@intel.com>
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

For non-gl/remote clients, if there is no stream associated with
the DisplayChannel, then we create a new stream. Otherwise, we
just update the current stream's timestamp.

v2: (suggestions and fixups from Frediano)
- Moved the gl_draw_stream object from DCC to DC
- Moved the stream initialization code from display_channel_create_stream()
  into a separate function that is reused when creating gl_draw_stream

v3:
- Create a new primary surface whenever a new stream gets created

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc.cpp                   |   9 ++
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/video-stream.cpp          | 140 ++++++++++++++++++++++++-------
 server/video-stream.h            |   2 +
 5 files changed, 121 insertions(+), 32 deletions(-)

diff --git a/server/dcc.cpp b/server/dcc.cpp
index ca73470a..92e69860 100644
--- a/server/dcc.cpp
+++ b/server/dcc.cpp
@@ -523,6 +523,15 @@ RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient *rcc, void *data, int num)
         return RedPipeItemPtr();
     }
 
+    if (!dcc->is_gl_client()) {
+        if (!display_channel_update_gl_draw_stream(dcc, draw)) {
+            red_channel_warning(rcc->get_channel(),
+                                "Cannot create or update stream");
+            rcc->disconnect();
+            return RedPipeItemPtr();
+        }
+    }
+
     dcc->priv->gl_draw_ongoing = TRUE;
     auto item = red::make_shared<RedGlDrawItem>();
     item->draw = *draw;
diff --git a/server/display-channel-private.h b/server/display-channel-private.h
index 04ac2c0d..e0693f54 100644
--- a/server/display-channel-private.h
+++ b/server/display-channel-private.h
@@ -110,6 +110,7 @@ struct DisplayChannelPrivate
     uint32_t stream_count;
     std::array<VideoStream, NUM_STREAMS> streams_buf;
     VideoStream *free_streams;
+    VideoStream *gl_draw_stream;
     Ring streams;
     std::array<ItemTrace, NUM_TRACE_ITEMS> items_trace;
     uint32_t next_item_trace;
diff --git a/server/display-channel.cpp b/server/display-channel.cpp
index 4bd0cf41..53a4724d 100644
--- a/server/display-channel.cpp
+++ b/server/display-channel.cpp
@@ -2172,6 +2172,7 @@ display_channel_new(RedsState *reds, QXLInstance *qxl,
                                          video_codecs, n_surfaces);
     if (display) {
         display_channel_set_stream_video(display.get(), stream_video);
+        display->priv->gl_draw_stream = nullptr;
     }
     return display;
 }
diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 056d0c31..5d4e2690 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -20,6 +20,7 @@
 #include "display-channel-private.h"
 #include "main-channel-client.h"
 #include "red-client.h"
+#include "red-qxl.h"
 
 #define FPS_TEST_INTERVAL 1
 #define FOREACH_STREAMS(display, item)                  \
@@ -366,48 +367,46 @@ static VideoStream *display_channel_stream_try_new(DisplayChannel *display)
     return stream;
 }
 
-static void display_channel_create_stream(DisplayChannel *display, Drawable *drawable)
+static void display_channel_init_stream(DisplayChannel *display,
+                                        VideoStream *stream,
+                                        Drawable *drawable,
+                                        SpiceRect* src_rect)
 {
-    DisplayChannelClient *dcc;
-    VideoStream *stream;
-    SpiceRect* src_rect;
-
-    spice_assert(!drawable->stream);
-
-    if (!(stream = display_channel_stream_try_new(display))) {
-        return;
-    }
-
-    spice_assert(drawable->red_drawable->type == QXL_DRAW_COPY);
-    src_rect = &drawable->red_drawable->u.copy.src_area;
+    SpiceBitmap *bitmap;
+    uint64_t duration;
 
     ring_add(&display->priv->streams, &stream->link);
-    stream->current = drawable;
-    stream->last_time = drawable->creation_time;
+    stream->last_time = spice_get_monotonic_time_ns();
     stream->width = src_rect->right - src_rect->left;
     stream->height = src_rect->bottom - src_rect->top;
-    stream->dest_area = drawable->red_drawable->bbox;
+    stream->dest_area = *src_rect;
     stream->refs = 1;
-    SpiceBitmap *bitmap = &drawable->red_drawable->u.copy.src_bitmap->u.bitmap;
-    stream->top_down = !!(bitmap->flags & SPICE_BITMAP_FLAGS_TOP_DOWN);
-    drawable->stream = stream;
-    /* Provide an fps estimate the video encoder can use when initializing
-     * based on the frames that lead to the creation of the stream. Round to
-     * the nearest integer, for instance 24 for 23.976.
-     */
-    uint64_t duration = drawable->creation_time - drawable->first_frame_time;
-    if (duration > NSEC_PER_SEC * drawable->frames_count / MAX_FPS) {
-        stream->input_fps = (NSEC_PER_SEC * drawable->frames_count + duration / 2) / duration;
-    } else {
-        stream->input_fps = MAX_FPS;
-    }
+    stream->input_fps = MAX_FPS * 2;
     stream->num_input_frames = 0;
-    stream->input_fps_start_time = drawable->creation_time;
+    stream->input_fps_start_time = stream->last_time;
     display->priv->streams_size_total += stream->width * stream->height;
     display->priv->stream_count++;
-    FOREACH_DCC(display, dcc) {
-        dcc_create_stream(dcc, stream);
+
+    stream->current = drawable;
+    if (drawable) {
+        drawable->stream = stream;
+        stream->last_time = drawable->creation_time;
+        stream->dest_area = drawable->red_drawable->bbox;
+        bitmap = &drawable->red_drawable->u.copy.src_bitmap->u.bitmap;
+        stream->top_down = !!(bitmap->flags & SPICE_BITMAP_FLAGS_TOP_DOWN);
+
+        /* Provide an fps estimate the video encoder can use when initializing
+         * based on the frames that lead to the creation of the stream. Round
+         * to the nearest integer, for instance 24 for 23.976.
+         */
+        duration = drawable->creation_time - drawable->first_frame_time;
+        if (duration > NSEC_PER_SEC * drawable->frames_count / MAX_FPS) {
+            stream->input_fps = (NSEC_PER_SEC * drawable->frames_count + duration / 2) / duration;
+        } else {
+            stream->input_fps = MAX_FPS;
+        }
     }
+
     spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
                 display_channel_get_video_stream_id(display, stream), stream->width,
                 stream->height, stream->dest_area.left, stream->dest_area.top,
@@ -415,6 +414,83 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
                 stream->input_fps);
 }
 
+static void display_channel_create_stream(DisplayChannel *display,
+                                          Drawable *drawable)
+{
+    DisplayChannelClient *dcc;
+    VideoStream *stream;
+    SpiceRect* src_rect;
+
+    spice_assert(!drawable->stream);
+
+    if (!(stream = display_channel_stream_try_new(display))) {
+        return;
+    }
+
+    spice_assert(drawable->red_drawable->type == QXL_DRAW_COPY);
+    src_rect = &drawable->red_drawable->u.copy.src_area;
+
+    display_channel_init_stream(display, stream, drawable, src_rect);
+    FOREACH_DCC(display, dcc) {
+        dcc_create_stream(dcc, stream);
+    }
+}
+
+bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
+                                           const SpiceMsgDisplayGlDraw *draw)
+{
+    DisplayChannel *display = DCC_TO_DC(dcc);
+    QXLInstance* qxl = display->priv->qxl;
+    SpiceMsgDisplayGlScanoutUnix *scanout = red_qxl_get_gl_scanout(qxl);
+    VideoStream *stream = display->priv->gl_draw_stream;
+    uint32_t w = draw->w, h = draw->h, top_down = 1;
+    SpiceRect dest_area = {
+        .left = draw->x,
+        .top = draw->y,
+        .right = draw->w,
+        .bottom = draw->h
+    };
+
+    if (scanout != nullptr) {
+        top_down = (scanout->flags & SPICE_GL_SCANOUT_FLAGS_Y0TOP) ? 0 : 1;
+        w = scanout->width;
+        h = scanout->height;
+    }
+    red_qxl_put_gl_scanout(qxl, scanout);
+
+    if (stream) {
+        if (stream->dest_area.left == draw->x &&
+            stream->dest_area.top == draw->y &&
+            stream->width == draw->w &&
+            stream->height == draw->h &&
+            stream->top_down == top_down) {
+            stream->last_time = spice_get_monotonic_time_ns();
+            return true;
+        }
+    }
+
+    if (display->priv->surfaces[0]) {
+        display_channel_surface_id_unref(display, 0);
+    }
+    display_channel_create_surface(display, 0, w, h, w * 4,
+                                   SPICE_SURFACE_FMT_32_xRGB,
+                                   NULL, 1, TRUE);
+    display_channel_set_monitors_config_to_primary(display);
+    display_channel_push_monitors_config(display);
+    display->pipes_add_empty_msg(SPICE_MSG_DISPLAY_MARK);
+    display->push();
+
+    if (!(stream = display_channel_stream_try_new(display))) {
+        return false;
+    }
+    stream->top_down = top_down;
+    display->priv->gl_draw_stream = stream;
+    display_channel_init_stream(display, stream, nullptr, &dest_area);
+    dcc_create_stream(dcc, stream);
+
+    return true;
+}
+
 // returns whether a stream was created
 static bool video_stream_add_frame(DisplayChannel *display,
                              Drawable *frame_drawable,
diff --git a/server/video-stream.h b/server/video-stream.h
index 23b44ff5..a35a00b6 100644
--- a/server/video-stream.h
+++ b/server/video-stream.h
@@ -124,6 +124,8 @@ struct VideoStream {
 };
 
 void display_channel_init_video_streams(DisplayChannel *display);
+bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
+                                           const SpiceMsgDisplayGlDraw *draw);
 void video_stream_stop(DisplayChannel *display, VideoStream *stream);
 void video_stream_trace_update(DisplayChannel *display, Drawable *drawable);
 void video_stream_maintenance(DisplayChannel *display, Drawable *candidate,
-- 
2.43.0

