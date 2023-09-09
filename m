Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086427995E4
	for <lists+spice-devel@lfdr.de>; Sat,  9 Sep 2023 04:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AD410E0CE;
	Sat,  9 Sep 2023 02:09:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A04310E113
 for <spice-devel@lists.freedesktop.org>; Sat,  9 Sep 2023 02:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694225379; x=1725761379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ywrExAYjBDgdBaiUvHIK0mG+kvyQXdHdLsmXyawzmNw=;
 b=DWeYNjI2RaRXgZUE631UBt3GajFB++PYjEHc1TG+Rj/hL/VVWra2LGp/
 LRpl/2+cGStb/EKX01ialtEuiuRdEks0umTGkos9KBoH1R/si9f3S79ej
 AfMtkf3h7EHhRnAP+iOPaCQPRHKi75EM7MxQEinbNFgBN+y5t5rHz0fii
 YvQWm3E/i1J1Mp4D6fGM7Er1nveX47kMgViTSrtUcmngW4upQ4ROVpbpO
 JnoTaO5QzTPaFSTWeZmOnnJuRqNrhlNjxEa/SGvcm81NCfE3Big1jT1RM
 go0CAn/VPJhmtq0b26GcLTe2gjbKVGbcDFIPZRYWVIElPvIrq/m2EDvKX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358090417"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358090417"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832857051"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832857051"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:48:40 -0700
Message-Id: <20230909014843.260583-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230909014843.260583-1-vivek.kasireddy@intel.com>
References: <20230909014843.260583-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2 2/5] dcc: Create a stream associated with
 gl_draw for non-gl clients (v2)
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

For non-gl/remote clients, if there is no stream associated with
the DisplayChannel, then we create a new stream. Otherwise, we
just update the current stream's timestamp.

v2: (suggestions and fixups from Frediano)
- Moved the gl_draw_stream object from DCC to DC
- Moved the stream initialization code from display_channel_create_stream()
  into a separate function that is reused when creating gl_draw_stream

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc.cpp                   |   9 +++
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/video-stream.cpp          | 113 ++++++++++++++++++++++---------
 server/video-stream.h            |   2 +
 5 files changed, 94 insertions(+), 32 deletions(-)

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
index 056d0c31..18e98108 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -366,48 +366,47 @@ static VideoStream *display_channel_stream_try_new(DisplayChannel *display)
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
+    stream->top_down = 1;
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
@@ -415,6 +414,56 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
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
+    VideoStream *stream = display->priv->gl_draw_stream;
+    SpiceRect dest_area = {
+        .left = draw->x,
+        .top = draw->y,
+        .right = draw->w,
+        .bottom = draw->h
+    };
+
+    if (stream) {
+        stream->last_time = spice_get_monotonic_time_ns();
+        return true;
+    }
+
+    if (!(stream = display_channel_stream_try_new(display))) {
+        return false;
+    }
+
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
2.39.2

