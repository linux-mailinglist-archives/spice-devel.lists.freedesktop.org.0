Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4866BC5F4
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4CB10EA29;
	Thu, 16 Mar 2023 06:05:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A409510E06F
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=89+8lt+FIFPHiVio7W1I0wtUsud64gSMOWaCuOO8IkY=;
 b=iQQ7T5dQ4fgE8jPh+WtgTf1vc4qRE09hSpBq0kSFMP5lyJ369nT1QJKd
 ErmNqGUDbeVGyrVV8TuygeKMUvW5HG5MAo25dz5VjgHSnpbl64QWHNXmM
 ZUmiFXE1q8CVYjNYG/+8+QjlYy7CuVxGif6oaYbglR1mn+zU6BwYU9kCV
 jmtzew4/tUTiwkILzNJGa24T9dc3c4grFK4/2NXbgkJ4JuK3YXSTs2zTs
 kt3igs2W3SYZZXJWXrXfa2SX94rpb9xHQDrEjB/cwQ2zl6d9whK0OQghy
 d5pISYUe1D6Cmyou8sFVL0OEXzjT7Qb85lH7dILhD2hR0fpUAQwYCtkSZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588954"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588954"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141480"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141480"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:56 -0700
Message-Id: <20230316054458.1546085-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 3/5] dcc-send: Encode and send gl_draw
 stream data to the remote client
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

For remote (or non-gl) clients, if a valid gl_draw stream exists,
then we first extract the dmabuf fd associated with the scanout and
share it with the encoder along with other key parameters such as
stride, width and height. Once the encoder finishes creating an
encoded buffer (using the dmabuf fd as input), we then send it
over to the client. Also, as soon as the encoder notifies that
it is no longer using the dmabuf fd, we send a gl_draw_done async
to the application.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-send.cpp    | 89 +++++++++++++++++++++++++++++++++++++++++-
 server/video-encoder.h | 13 ++++++
 2 files changed, 100 insertions(+), 2 deletions(-)

diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index 2c40a231..94cbe7e7 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -1730,6 +1730,82 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
     return TRUE;
 }
 
+static void red_gst_mem_free_cb(void *opaque)
+{
+    auto dcc = static_cast<DisplayChannelClient *>(opaque);
+    DisplayChannel *display = DCC_TO_DC(dcc);
+
+    dcc->priv->gl_draw_ongoing = FALSE;
+    display_channel_gl_draw_done(display);
+}
+
+static void red_marshall_gl_draw_stream(DisplayChannelClient *dcc,
+                                        SpiceMarshaller *base_marshaller)
+{
+    DisplayChannel *display = DCC_TO_DC(dcc);
+    QXLInstance* qxl = display->priv->qxl;
+    VideoEncoderDmabufData *dmabuf_data = nullptr;
+
+    VideoStream *stream = dcc->priv->gl_draw_stream;
+    SpiceMsgDisplayGlScanoutUnix *scanout = red_qxl_get_gl_scanout(qxl);
+    if (scanout != nullptr) {
+        dmabuf_data = g_new0(VideoEncoderDmabufData, 1);
+        dmabuf_data->drm_dma_buf_fd = scanout->drm_dma_buf_fd;
+        dmabuf_data->width = stream->width;
+        dmabuf_data->height = stream->height;
+        dmabuf_data->stride = scanout->stride;
+        dmabuf_data->opaque = dcc;
+        dmabuf_data->notify_mem_free = red_gst_mem_free_cb;
+    }
+    red_qxl_put_gl_scanout(qxl, scanout);
+    if (!dmabuf_data) {
+        spice_warning("scanout is not valid");
+        return;
+    }
+
+    int stream_id = display_channel_get_video_stream_id(display, stream);
+    VideoStreamAgent *agent = &dcc->priv->stream_agents[stream_id];
+    uint32_t frame_mm_time = reds_get_mm_time();
+    VideoBuffer *outbuf;
+    VideoEncodeResults ret;
+
+    ret = !agent->video_encoder || !agent->video_encoder->encode_dmabuf ?
+          VIDEO_ENCODER_FRAME_UNSUPPORTED :
+          agent->video_encoder->encode_dmabuf(agent->video_encoder,
+                                              frame_mm_time,
+                                              dmabuf_data, &outbuf);
+    switch (ret) {
+    case VIDEO_ENCODER_FRAME_ENCODE_DONE:
+        break;
+    case VIDEO_ENCODER_FRAME_DROP:
+#ifdef STREAM_STATS
+        agent->stats.num_drops_fps++;
+#endif
+    case VIDEO_ENCODER_FRAME_UNSUPPORTED:
+    default:
+        spice_warning("bad return value (%d) from VideoEncoder::encode_dmabuf", ret);
+        display_channel_gl_draw_done(display);
+        g_free(dmabuf_data);
+        return;
+    }
+
+    SpiceMsgDisplayStreamData stream_data;
+
+    dcc->init_send_data(SPICE_MSG_DISPLAY_STREAM_DATA);
+    stream_data.base.id = stream_id;
+    stream_data.base.multi_media_time = frame_mm_time;
+    stream_data.data_size = outbuf->size;
+    spice_marshall_msg_display_stream_data(base_marshaller, &stream_data);
+
+    spice_marshaller_add_by_ref_full(base_marshaller, outbuf->data, outbuf->size,
+                                     &red_release_video_encoder_buffer, outbuf);
+#ifdef STREAM_STATS
+    agent->stats.num_frames_sent++;
+    agent->stats.size_sent += outbuf->size;
+    agent->stats.end = frame_mm_time;
+#endif
+}
+
 static inline void marshall_inval_palette(RedChannelClient *rcc,
                                           SpiceMarshaller *base_marshaller,
                                           RedCachePipeItem *cache_item)
@@ -2126,6 +2202,8 @@ static void marshall_stream_start(DisplayChannelClient *dcc,
     if (stream->current) {
         RedDrawable *red_drawable = stream->current->red_drawable.get();
         stream_create.clip = red_drawable->clip;
+    } else if (stream == dcc->priv->gl_draw_stream){
+        stream_create.clip.type = SPICE_CLIP_TYPE_NONE;
     } else {
         stream_create.clip.type = SPICE_CLIP_TYPE_RECTS;
         clip_rects.num_rects = 0;
@@ -2279,10 +2357,17 @@ static void marshall_gl_draw(RedChannelClient *rcc,
                              SpiceMarshaller *m,
                              RedPipeItem *item)
 {
+    DisplayChannelClient *dcc = DISPLAY_CHANNEL_CLIENT(rcc);
     auto p = static_cast<RedGlDrawItem*>(item);
 
-    rcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
-    spice_marshall_msg_display_gl_draw(m, &p->draw);
+    if (dcc_is_gl_client(dcc)) {
+        rcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
+        spice_marshall_msg_display_gl_draw(m, &p->draw);
+    } else if (dcc->priv->gl_draw_stream) {
+        red_marshall_gl_draw_stream(dcc, m);
+    } else {
+        spice_warning("nothing to send to the client");
+    }
 }
 
 
diff --git a/server/video-encoder.h b/server/video-encoder.h
index d5bc0a68..8eb71ca1 100644
--- a/server/video-encoder.h
+++ b/server/video-encoder.h
@@ -56,6 +56,15 @@ typedef struct VideoEncoderStats {
     double avg_quality;
 } VideoEncoderStats;
 
+typedef struct VideoEncoderDmabufData {
+    int32_t drm_dma_buf_fd;
+    uint32_t width;
+    uint32_t height;
+    uint32_t stride;
+    void *opaque;
+    void (*notify_mem_free)(void *opaque);
+} VideoEncoderDmabufData;
+
 typedef struct VideoEncoder VideoEncoder;
 struct VideoEncoder {
     /* Releases the video encoder's resources */
@@ -84,6 +93,10 @@ struct VideoEncoder {
                                        const SpiceRect *src, int top_down,
                                        gpointer bitmap_opaque, VideoBuffer** outbuf);
 
+    VideoEncodeResults (*encode_dmabuf)(VideoEncoder *encoder, uint32_t frame_mm_time,
+                                        VideoEncoderDmabufData *dmabuf_data,
+                                        VideoBuffer** outbuf);
+
     /*
      * Bit rate control methods.
      */
-- 
2.37.2

