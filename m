Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA53804C70
	for <lists+spice-devel@lfdr.de>; Tue,  5 Dec 2023 09:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D83210E4C1;
	Tue,  5 Dec 2023 08:32:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F4310E4BF
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Dec 2023 08:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701765156; x=1733301156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pI/K2Ds8niqNPB/d7dZxZRyJRRSoVqmKbixyT3G9PZU=;
 b=PIRR59ouBPrinZnrDfFiIIlOtYqL+KSV6NYQInM05nkNZ/WFR8nl/oq8
 0aS32xNkR0HyadoDlKRym76pZYAganCsJ2fcWcUmPLvWjA3bFyafcetjj
 HwQb1oLPVzIeey4TuexpH3FtENrk7v74XQin8nON7BLRVG9cQ194ShLIg
 TiTYn8nGEvmY0SdBTKJqkeulaZSN+EfYfXpyaeIbVRznKuuTl3/2CWPoY
 GIHkzjAaGxNeYCaiQabJGF4KpgcXi4CXUvXtqRSvIFYoMttF+xVHwDy3+
 wU+jhjdsa7BFtgYyfwGX3Ja54iNwciLIU1C/GA34DsH1y8c0HUq2nsLvW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="397758885"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="397758885"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="841371992"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="841371992"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  5 Dec 2023 00:07:56 -0800
Message-Id: <20231205080759.2347381-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205080759.2347381-1-vivek.kasireddy@intel.com>
References: <20231205080759.2347381-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v3 2/5] dcc: Create a stream associated with
 gl_draw for non-gl clients (v3)
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

v3:
- Create a new primary surface whenever a new stream gets created

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc.cpp                   |   9 +++
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/video-stream.cpp          | 127 +++++++++++++++++++++++--------
 server/video-stream.h            |   2 +
 5 files changed, 108 insertions(+), 32 deletions(-)

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
index 056d0c31..ebd8960f 100644
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
@@ -415,6 +414,70 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
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
+        if (stream->dest_area.left == draw->x &&
+            stream->dest_area.top == draw->y &&
+            stream->width == draw->w &&
+            stream->height == draw->h) {
+            stream->last_time = spice_get_monotonic_time_ns();
+            return true;
+        }
+    }
+
+    if (display->priv->surfaces[0]) {
+        display_channel_surface_id_unref(display, 0);
+    }
+    display_channel_create_surface(display, 0, draw->w, draw->h, draw->w * 4,
+                                   SPICE_SURFACE_FMT_32_xRGB, NULL, 1, TRUE);
+    display_channel_set_monitors_config_to_primary(display);
+    display_channel_push_monitors_config(display);
+    display->pipes_add_empty_msg(SPICE_MSG_DISPLAY_MARK);
+    display->push();
+
+    if (!(stream = display_channel_stream_try_new(display))) {
+        return false;
+    }
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

