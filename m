Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21FE6776F1
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2E910E055;
	Mon, 23 Jan 2023 09:01:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E0110E330
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464497; x=1706000497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tDx0TsNgQ6ASoLxDQNd0sv0oiCG35rAgebhD9BGfu4I=;
 b=VigVShJb635K9upwh7ZTMcwEq88t2KemWxW/RmKSuRUKF65gCmwV7bN/
 ozK96R+8khS1KOB22egwTx71uiGOT8TM3RPMpbv2z3F9Hcr72tvNUG/LZ
 Dm5Micq0kffB0ZCu7SgK+lqjfsNrEWCLBNK0NgEnkgPjOnMNevHlRobGe
 aWJwjruMPSfkscsvbLku3t0eyXXJaSrJW2r+p+nkM3nT1OqQTB+zGmUaG
 cRBDDZdPrZNQ2C7GRTIoYKHS56JdHobNZBgkvZQ15NyZOXxfthc82hUAA
 OCjE7SRh7/mN9mISm7XvY/7GKC/yxuR/t/9yGsMNHrUxsvJO8fYQ/5Kqv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352367"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352367"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340364"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340364"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:21 -0800
Message-Id: <20230123084123.1038341-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 3/5] display-channel: Share the drawable's
 copy of fd with the encoder
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

Once the drawable gets a copy of the fd, the goal is to share it with
the encoder. This patch accomplishes this task and also registers
a callback to unblock the pipeline once the encoder is done using
the fd.

Additionally, this patch also does the following:
- Adds helpers to manage the async count for different situations
- Creates an object of type VideoEncoderDmabufData and populates
  it with relevant data such as fd, callback, etc.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-send.cpp        | 30 ++++++++++++++++++++++++++++++
 server/display-channel.cpp | 14 ++++++++++++++
 server/display-channel.h   |  3 +++
 server/video-stream.cpp    |  6 ++++++
 4 files changed, 53 insertions(+)

diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index 2c40a231..13406865 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -1637,6 +1637,13 @@ static void red_release_video_encoder_buffer(uint8_t *data, void *opaque)
     buffer->free(buffer);
 }
 
+static void red_mem_free_cb(void *opaque)
+{
+    auto display = static_cast<DisplayChannel *>(opaque);
+
+    display_channel_gl_draw_done(display);
+}
+
 static bool red_marshall_stream_data(DisplayChannelClient *dcc,
                                      SpiceMarshaller *base_marshaller,
                                      Drawable *drawable)
@@ -1667,10 +1674,22 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
     int stream_id = display_channel_get_video_stream_id(display, stream);
     VideoStreamAgent *agent = &dcc->priv->stream_agents[stream_id];
     VideoBuffer *outbuf;
+    VideoEncoderDmabufData *dmabuf_data = NULL;
     /* workaround for vga streams */
     frame_mm_time =  drawable->red_drawable->mm_time ?
                         drawable->red_drawable->mm_time :
                         reds_get_mm_time();
+
+    if (drawable->dmabuf_fd > 0) {
+        dmabuf_data = g_new0(VideoEncoderDmabufData, 1);
+        dmabuf_data->dmabuf_fd = drawable->dmabuf_fd;
+        dmabuf_data->opaque = display;
+        dmabuf_data->notify_mem_free = red_mem_free_cb;
+
+        display_channel_add_encode_async(display);
+    }
+    agent->video_encoder->dmabuf_data = dmabuf_data;
+
     ret = !agent->video_encoder ? VIDEO_ENCODER_FRAME_UNSUPPORTED :
           agent->video_encoder->encode_frame(agent->video_encoder,
                                              frame_mm_time,
@@ -1678,6 +1697,13 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
                                              &copy->src_area, stream->top_down,
                                              drawable->red_drawable.get(),
                                              &outbuf);
+    if (agent->video_encoder->dmabuf_data &&
+        ret != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
+        display_channel_gl_draw_done(display);
+        g_free(agent->video_encoder->dmabuf_data);
+        agent->video_encoder->dmabuf_data = NULL;
+    }
+
     switch (ret) {
     case VIDEO_ENCODER_FRAME_DROP:
 #ifdef STREAM_STATS
@@ -2095,6 +2121,10 @@ static void marshall_qxl_drawable(DisplayChannelClient *dcc,
         marshall_lossy_qxl_drawable(dcc, m, dpi);
     else
         marshall_lossless_qxl_drawable(dcc, m, dpi);
+
+    if (item->dmabuf_fd > 0) {
+        display_channel_gl_draw_done(display);
+    }
 }
 
 static void marshall_stream_start(DisplayChannelClient *dcc,
diff --git a/server/display-channel.cpp b/server/display-channel.cpp
index 9534bbf2..349c1405 100644
--- a/server/display-channel.cpp
+++ b/server/display-channel.cpp
@@ -2343,6 +2343,20 @@ void display_channel_gl_draw_done(DisplayChannel *display)
     set_gl_draw_async_count(display, display->priv->gl_draw_async_count - 1);
 }
 
+void display_channel_set_encode_async(DisplayChannel *display, int num)
+{
+    set_gl_draw_async_count(display, num);
+}
+
+void display_channel_add_encode_async(DisplayChannel *display)
+{
+    int num = display->priv->gl_draw_async_count;
+
+    if (num == 0) {
+        display_channel_set_encode_async(display, num + 1);
+    }
+}
+
 int display_channel_get_video_stream_id(DisplayChannel *display, VideoStream *stream)
 {
     return static_cast<int>(stream - display->priv->streams_buf.data());
diff --git a/server/display-channel.h b/server/display-channel.h
index 276d015a..de1243d2 100644
--- a/server/display-channel.h
+++ b/server/display-channel.h
@@ -128,6 +128,9 @@ void                       display_channel_gl_scanout                (DisplayCha
 void                       display_channel_gl_draw                   (DisplayChannel *display,
                                                                       SpiceMsgDisplayGlDraw *draw);
 void                       display_channel_gl_draw_done              (DisplayChannel *display);
+void                       display_channel_set_encode_async          (DisplayChannel *display,
+                                                                      int num_clients);
+void                       display_channel_add_encode_async          (DisplayChannel *display);
 
 void display_channel_process_draw(DisplayChannel *display,
                                   red::shared_ptr<RedDrawable> &&red_drawable,
diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 056d0c31..28b42d91 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -371,6 +371,7 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
     DisplayChannelClient *dcc;
     VideoStream *stream;
     SpiceRect* src_rect;
+    int num_clients = 0;
 
     spice_assert(!drawable->stream);
 
@@ -407,7 +408,12 @@ static void display_channel_create_stream(DisplayChannel *display, Drawable *dra
     display->priv->stream_count++;
     FOREACH_DCC(display, dcc) {
         dcc_create_stream(dcc, stream);
+        num_clients++;
     }
+    if (drawable->dmabuf_fd > 0) {
+        display_channel_set_encode_async(display, num_clients);
+    }
+
     spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
                 display_channel_get_video_stream_id(display, stream), stream->width,
                 stream->height, stream->dest_area.left, stream->dest_area.top,
-- 
2.37.2

