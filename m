Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC97995E5
	for <lists+spice-devel@lfdr.de>; Sat,  9 Sep 2023 04:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EBE10E0DB;
	Sat,  9 Sep 2023 02:09:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EAF10E0CE
 for <spice-devel@lists.freedesktop.org>; Sat,  9 Sep 2023 02:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694225379; x=1725761379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pIwknMBXRJ/vI4+2ELjiZoILvEC/qFY7I2tV17aVJMg=;
 b=YxsrkP38ZWvdUgKBJ6lLJDtoO16qd0jauJp760Ld87lxtRzsUpyRJNIR
 Y0nVbc8305RYGHMhkhv55BiMoC2RY+QvcpyIbf6byHy8fKnGX6MSJ0tLY
 aK/wSk+JYyh6gXc7AS1VyTkkocolzTl7ETsDqkp/dTwmxbvZ2LuHrIpqY
 ZxJxqnNRypUOYkI/I7IFa5FTVo/e2TcARSLE8KR0xX670Hy10gVbCwlF/
 jp8IzkyBG+I6mVOlnZGOwufLPp1/WM3i0WO6vmQRDwbqFYK13PeKde2xL
 ikVnXLCcH7ev8aQzyGJTcua+uvqZQS9fUavEhdwC31ePBnS7ii/RgqJnd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358090420"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358090420"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832857056"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832857056"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:48:41 -0700
Message-Id: <20230909014843.260583-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230909014843.260583-1-vivek.kasireddy@intel.com>
References: <20230909014843.260583-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2 3/5] dcc-send: Encode and send gl_draw
 stream data to the remote client (v2)
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
over to the client. And, as soon as the encoder notifies that it
is no longer using the dmabuf fd, we send a gl_draw_done async to
the application.

v2: (suggestions and fixups from Frediano)
- Moved the DisplayStreamData initialization code from
  red_marshall_stream_data() into a separate function that is reused
  when marshalling gl_draw_stream.
- Used new/delete instead of g_new/g_free for creating and destroying
  dmabuf_data object
- s/notify_mem_free/free
  s/red_gst_mem_free_cb/red_free_fb
- Removed the usage of opaque from red_free_cb

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-send.cpp    | 152 +++++++++++++++++++++++++++++++++--------
 server/video-encoder.h |  13 ++++
 2 files changed, 136 insertions(+), 29 deletions(-)

diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index 2c40a231..0aea3b5a 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -1637,6 +1637,60 @@ static void red_release_video_encoder_buffer(uint8_t *data, void *opaque)
     buffer->free(buffer);
 }
 
+static void red_init_display_stream_data(DisplayChannelClient *dcc,
+                                         SpiceMarshaller *base_marshaller,
+                                         Drawable *drawable, int stream_id,
+                                         VideoBuffer *outbuf, int is_sized)
+{
+    SpiceMsgDisplayStreamData stream_data;
+    SpiceMsgDisplayStreamDataSized stream_data_sized;
+    SpiceStreamDataHeader *base;
+    SpiceCopy *copy;
+    uint32_t frame_mm_time = reds_get_mm_time();
+    uint16_t msg_type = is_sized ? SPICE_MSG_DISPLAY_STREAM_DATA_SIZED :
+                        SPICE_MSG_DISPLAY_STREAM_DATA;
+
+    dcc->init_send_data(msg_type);
+
+    base = is_sized ? &stream_data_sized.base : &stream_data.base;
+    base->id = stream_id;
+    base->multi_media_time = frame_mm_time;
+    stream_data.data_size = outbuf->size;
+
+    if (!is_sized) {
+        spice_marshall_msg_display_stream_data(base_marshaller, &stream_data);
+    } else {
+        copy = &drawable->red_drawable->u.copy;
+        frame_mm_time = drawable->red_drawable->mm_time ?
+                        drawable->red_drawable->mm_time :
+                        reds_get_mm_time();
+
+        stream_data_sized.base.multi_media_time = frame_mm_time;
+        stream_data_sized.width = copy->src_area.right - copy->src_area.left;
+        stream_data_sized.height = copy->src_area.bottom - copy->src_area.top;
+        stream_data_sized.dest = drawable->red_drawable->bbox;
+        stream_data_sized.data_size = outbuf->size;
+
+        spice_debug("stream %d: sized frame: dest ==> ",
+                    stream_data_sized.base.id);
+        rect_debug(&stream_data_sized.dest);
+        spice_marshall_msg_display_stream_data_sized(base_marshaller,
+                                                     &stream_data_sized);
+    }
+
+    spice_marshaller_add_by_ref_full(base_marshaller, outbuf->data,
+                                     outbuf->size,
+                                     &red_release_video_encoder_buffer,
+                                     outbuf);
+#ifdef STREAM_STATS
+    VideoStreamAgent *agent = &dcc->priv->stream_agents[stream_id];
+
+    agent->stats.num_frames_sent++;
+    agent->stats.size_sent += outbuf->size;
+    agent->stats.end = frame_mm_time;
+#endif
+}
+
 static bool red_marshall_stream_data(DisplayChannelClient *dcc,
                                      SpiceMarshaller *base_marshaller,
                                      Drawable *drawable)
@@ -1693,41 +1747,73 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
         return FALSE;
     }
 
-    if (!is_sized) {
-        SpiceMsgDisplayStreamData stream_data;
+    red_init_display_stream_data(dcc, base_marshaller, drawable,
+                                 stream_id, outbuf, is_sized);
+    return TRUE;
+}
 
-        dcc->init_send_data(SPICE_MSG_DISPLAY_STREAM_DATA);
+static void red_free_cb(VideoEncoderDmabufData *dmabuf_data)
+{
+    auto dcc = static_cast<DisplayChannelClient *>(dmabuf_data->dcc);
+    DisplayChannel *display = DCC_TO_DC(dcc);
 
-        stream_data.base.id = stream_id;
-        stream_data.base.multi_media_time = frame_mm_time;
-        stream_data.data_size = outbuf->size;
+    dcc->priv->gl_draw_ongoing = false;
+    display_channel_gl_draw_done(display);
+    delete dmabuf_data;
+}
 
-        spice_marshall_msg_display_stream_data(base_marshaller, &stream_data);
-    } else {
-        SpiceMsgDisplayStreamDataSized stream_data;
+static void red_marshall_gl_draw_stream(DisplayChannelClient *dcc,
+                                        SpiceMarshaller *base_marshaller)
+{
+    DisplayChannel *display = DCC_TO_DC(dcc);
+    QXLInstance* qxl = display->priv->qxl;
+    VideoEncoderDmabufData *dmabuf_data = nullptr;
 
-        dcc->init_send_data(SPICE_MSG_DISPLAY_STREAM_DATA_SIZED);
+    VideoStream *stream = display->priv->gl_draw_stream;
+    SpiceMsgDisplayGlScanoutUnix *scanout = red_qxl_get_gl_scanout(qxl);
+    if (scanout) {
+        dmabuf_data = new VideoEncoderDmabufData;
+        dmabuf_data->drm_dma_buf_fd = scanout->drm_dma_buf_fd;
+        dmabuf_data->width = stream->width;
+        dmabuf_data->height = stream->height;
+        dmabuf_data->stride = scanout->stride;
+        dmabuf_data->dcc = dcc;
+        dmabuf_data->free = red_free_cb;
+    }
+    red_qxl_put_gl_scanout(qxl, scanout);
+    if (!dmabuf_data) {
+        spice_warning("scanout is not valid");
+        return;
+    }
 
-        stream_data.base.id = stream_id;
-        stream_data.base.multi_media_time = frame_mm_time;
-        stream_data.data_size = outbuf->size;
-        stream_data.width = copy->src_area.right - copy->src_area.left;
-        stream_data.height = copy->src_area.bottom - copy->src_area.top;
-        stream_data.dest = drawable->red_drawable->bbox;
+    int stream_id = display_channel_get_video_stream_id(display, stream);
+    VideoStreamAgent *agent = &dcc->priv->stream_agents[stream_id];
+    VideoBuffer *outbuf;
+    VideoEncodeResults ret;
 
-        spice_debug("stream %d: sized frame: dest ==> ", stream_data.base.id);
-        rect_debug(&stream_data.dest);
-        spice_marshall_msg_display_stream_data_sized(base_marshaller, &stream_data);
-    }
-    spice_marshaller_add_by_ref_full(base_marshaller, outbuf->data, outbuf->size,
-                                     &red_release_video_encoder_buffer, outbuf);
+    ret = !agent->video_encoder || !agent->video_encoder->encode_dmabuf ?
+          VIDEO_ENCODER_FRAME_UNSUPPORTED :
+          agent->video_encoder->encode_dmabuf(agent->video_encoder,
+                                              reds_get_mm_time(),
+                                              dmabuf_data, &outbuf);
+    switch (ret) {
+    case VIDEO_ENCODER_FRAME_ENCODE_DONE:
+        break;
+    case VIDEO_ENCODER_FRAME_DROP:
 #ifdef STREAM_STATS
-    agent->stats.num_frames_sent++;
-    agent->stats.size_sent += outbuf->size;
-    agent->stats.end = frame_mm_time;
+        agent->stats.num_drops_fps++;
 #endif
+    case VIDEO_ENCODER_FRAME_UNSUPPORTED:
+    default:
+        spice_warning("bad return value (%d) from VideoEncoder::encode_dmabuf", ret);
+        dcc->priv->gl_draw_ongoing = false;
+        display_channel_gl_draw_done(display);
+        delete dmabuf_data;
+        return;
+    }
 
-    return TRUE;
+    red_init_display_stream_data(dcc, base_marshaller, nullptr,
+                                 stream_id, outbuf, false);
 }
 
 static inline void marshall_inval_palette(RedChannelClient *rcc,
@@ -2126,6 +2212,8 @@ static void marshall_stream_start(DisplayChannelClient *dcc,
     if (stream->current) {
         RedDrawable *red_drawable = stream->current->red_drawable.get();
         stream_create.clip = red_drawable->clip;
+    } else if (stream == DCC_TO_DC(dcc)->priv->gl_draw_stream){
+        stream_create.clip.type = SPICE_CLIP_TYPE_NONE;
     } else {
         stream_create.clip.type = SPICE_CLIP_TYPE_RECTS;
         clip_rects.num_rects = 0;
@@ -2275,14 +2363,20 @@ static void marshall_gl_scanout(DisplayChannelClient *dcc,
     red_qxl_put_gl_scanout(qxl, scanout);
 }
 
-static void marshall_gl_draw(RedChannelClient *rcc,
+static void marshall_gl_draw(DisplayChannelClient *dcc,
                              SpiceMarshaller *m,
                              RedPipeItem *item)
 {
     auto p = static_cast<RedGlDrawItem*>(item);
 
-    rcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
-    spice_marshall_msg_display_gl_draw(m, &p->draw);
+    if (dcc->is_gl_client()) {
+        dcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
+        spice_marshall_msg_display_gl_draw(m, &p->draw);
+    } else if (DCC_TO_DC(dcc)->priv->gl_draw_stream) {
+        red_marshall_gl_draw_stream(dcc, m);
+    } else {
+        spice_warning("nothing to send to the client");
+    }
 }
 
 
diff --git a/server/video-encoder.h b/server/video-encoder.h
index d5bc0a68..79ab780b 100644
--- a/server/video-encoder.h
+++ b/server/video-encoder.h
@@ -56,6 +56,15 @@ typedef struct VideoEncoderStats {
     double avg_quality;
 } VideoEncoderStats;
 
+typedef struct VideoEncoderDmabufData {
+    int drm_dma_buf_fd;
+    uint32_t width;
+    uint32_t height;
+    uint32_t stride;
+    void *dcc;
+    void (*free)(struct VideoEncoderDmabufData*);
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
2.39.2

