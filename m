Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58C66BC5EF
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18F810E0B1;
	Thu, 16 Mar 2023 06:05:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE25910E0A0
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S+B74T7XoAZNUbk3bxl/x7rcG0Gg3/Uc0DhQDw1VUkI=;
 b=c3vD5dGFUr6XvvlQun5ChspMLol02s9p0eTvfl475PNCkOt2xHuHEbMc
 d6O7XVdhQ673E5n8l6ppi6MCeBV/Lc9Th006GK2LVe/1c0qEWENNwdv2v
 0Yf3K8uCTCNKL12e40AdDMk/PV+ZXMYS7s5iLQPpYfZIV9FQDqLR/E9sY
 dzi7Wl/Jsn1ho0+ndlaVKb7G7M2HmstjPv5xy1MzR9SSQ4twIdGQusLKS
 WxHldDrCVtNbl+U29V8XSt5WcR/9olKw9pv/fn0HXxqvPJqnLQpAxKOjn
 eaHMhLH8glOHkpCoZM8vW1anhaWr/SHqKxQ+ZJpLdKDxhiHsgUZq1NXDC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588952"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588952"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141477"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141477"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:55 -0700
Message-Id: <20230316054458.1546085-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 2/5] dcc: Create a stream associated with
 gl_draw for non-gl clients
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

For non-gl/remote clients, if a stream does not exist or if any
of the key parameters associated with gl_draw such as x/y or
width/height are changed, then we create a new stream. Otherwise,
we just update the current stream's timestamp.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-private.h    |  2 ++
 server/dcc.cpp          | 14 +++++++++++++
 server/video-stream.cpp | 44 +++++++++++++++++++++++++++++++++++++++++
 server/video-stream.h   |  2 ++
 4 files changed, 62 insertions(+)

diff --git a/server/dcc-private.h b/server/dcc-private.h
index bf485aec..cd5b76a3 100644
--- a/server/dcc-private.h
+++ b/server/dcc-private.h
@@ -69,6 +69,8 @@ struct DisplayChannelClientPrivate
     uint32_t streams_max_latency;
     uint64_t streams_max_bit_rate;
     bool gl_draw_ongoing;
+
+    VideoStream *gl_draw_stream;
 };
 
 #include "pop-visibility.h"
diff --git a/server/dcc.cpp b/server/dcc.cpp
index f0b355ca..9d91ca53 100644
--- a/server/dcc.cpp
+++ b/server/dcc.cpp
@@ -525,6 +525,20 @@ RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient *rcc, void *data, int num)
     auto item = red::make_shared<RedGlDrawItem>();
     item->draw = *draw;
 
+    if (!dcc_is_gl_client(dcc)) {
+        VideoStream *stream = dcc->priv->gl_draw_stream;
+
+        if (!stream ||
+            stream->dest_area.left != draw->x ||
+            stream->dest_area.top != draw->y ||
+            stream->width != draw->w || stream->height != draw->h) {
+            stream = display_channel_create_gl_draw_stream(dcc, draw);
+        } else {
+            stream->last_time = spice_get_monotonic_time_ns();
+        }
+        dcc->priv->gl_draw_stream = stream;
+    }
+
     return item;
 }
 
diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 056d0c31..03a7d68d 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -415,6 +415,47 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
                 stream->input_fps);
 }
 
+VideoStream *
+display_channel_create_gl_draw_stream(DisplayChannelClient *dcc,
+                                      const SpiceMsgDisplayGlDraw *draw)
+{
+    DisplayChannel *display = DCC_TO_DC(dcc);
+    VideoStream *stream;
+    SpiceRect dest_area = {
+        .left = draw->x,
+        .top = draw->y,
+        .right = draw->w,
+        .bottom = draw->h
+    };
+
+    if (!(stream = display_channel_stream_try_new(display))) {
+        return nullptr;
+    }
+
+    ring_add(&display->priv->streams, &stream->link);
+    stream->current = nullptr;
+    stream->last_time = spice_get_monotonic_time_ns();
+    stream->width = draw->w;
+    stream->height = draw->h;
+    stream->dest_area = dest_area;
+    stream->refs = 1;
+    stream->top_down = 1;
+    stream->input_fps = MAX_FPS;
+    stream->num_input_frames = 0;
+    stream->input_fps_start_time = spice_get_monotonic_time_ns();
+    display->priv->streams_size_total += stream->width * stream->height;
+    display->priv->stream_count++;
+
+    dcc_create_stream(dcc, stream);
+    spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
+                display_channel_get_video_stream_id(display, stream), stream->width,
+                stream->height, stream->dest_area.left, stream->dest_area.top,
+                stream->dest_area.right, stream->dest_area.bottom,
+                stream->input_fps);
+
+    return stream;
+}
+
 // returns whether a stream was created
 static bool video_stream_add_frame(DisplayChannel *display,
                              Drawable *frame_drawable,
@@ -744,6 +785,9 @@ void dcc_create_stream(DisplayChannelClient *dcc, VideoStream *stream)
     if (stream->current) {
         region_clone(&agent->vis_region, &stream->current->tree_item.base.rgn);
         region_clone(&agent->clip, &agent->vis_region);
+    } else {
+        region_add(&agent->vis_region, &stream->dest_area);
+        region_clone(&agent->clip, &agent->vis_region);
     }
     agent->dcc = dcc;
 
diff --git a/server/video-stream.h b/server/video-stream.h
index 23b44ff5..a8b2c61c 100644
--- a/server/video-stream.h
+++ b/server/video-stream.h
@@ -124,6 +124,8 @@ struct VideoStream {
 };
 
 void display_channel_init_video_streams(DisplayChannel *display);
+VideoStream *display_channel_create_gl_draw_stream(DisplayChannelClient *dcc,
+                                                   const SpiceMsgDisplayGlDraw *draw);
 void video_stream_stop(DisplayChannel *display, VideoStream *stream);
 void video_stream_trace_update(DisplayChannel *display, Drawable *drawable);
 void video_stream_maintenance(DisplayChannel *display, Drawable *candidate,
-- 
2.37.2

