Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E29A6653ED
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 06:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5423610E6EC;
	Wed, 11 Jan 2023 05:42:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89E610E6E8
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 05:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415736; x=1704951736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XhAC6nynU+vmBVw4mR3lp+7G+MLmy0w6xLU6IlIvgi4=;
 b=ez2tWwLzXdihZ/ZuALqMLgZPkWu0wAihPZ2HLT+c7g6QN9sR+Uc816g9
 fpOaV4ulGUae1RivWYSSvCVsGA/knY5NuODaf+Y0pMaqhCK/RyFqPnV2j
 uyH2OTCiVwNhme26pXuQtgI3CFXkhHRP5FYJIgpqsAZXwLTKUnmMGr0YW
 iAIjsIXlLvogr3QrUvt4/g1NN39IyGhjboaU8tH0aeeIAtvipKuHhDufd
 9PnhzL8W7n6az876VUdWRrNaX2OhpTb2BTWxtzxN1+Fu5OqB7Q+bMiwvL
 0O2dLzhSr5uda1ZAcmuqtZQDVsvT52GA9aJp4zF7pDTDAnaQs7XKaGCUn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321027243"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321027243"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634832423"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634832423"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Jan 2023 21:22:38 -0800
Message-Id: <20230111052239.781285-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230111052239.781285-1-vivek.kasireddy@intel.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v1 3/4] gstreamer-encoder: Use a dmabuf
 allocator if the drawable has a valid fd
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

If the drawable contains a valid dmabuf fd, then allocate Gst memory
using a dmabuf allocator. And, register a callback with the pipeline
to trigger an async when the dmabuf is no longer in use.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 meson.build                |  2 +-
 server/dcc-send.cpp        | 28 ++++++++++++++++++++++++
 server/gstreamer-encoder.c | 44 +++++++++++++++++++++++++++++++++++---
 server/video-encoder.h     |  7 ++++++
 4 files changed, 77 insertions(+), 4 deletions(-)

diff --git a/meson.build b/meson.build
index ef8b41ad..d66fac10 100644
--- a/meson.build
+++ b/meson.build
@@ -131,7 +131,7 @@ endforeach
 spice_server_has_gstreamer = false
 spice_server_gst_version = get_option('gstreamer')
 if spice_server_gst_version != 'no'
-  gst_deps = ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstreamer-video']
+  gst_deps = ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstreamer-video', 'gstreamer-allocators']
   foreach dep : gst_deps
     dep = '@0@-@1@'.format(dep, spice_server_gst_version)
     spice_server_deps += dependency(dep)
diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index 2c40a231..5457196d 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -1637,6 +1637,14 @@ static void red_release_video_encoder_buffer(uint8_t *data, void *opaque)
     buffer->free(buffer);
 }
 
+static void red_mem_free_cb(void *opaque, void *data)
+{
+    auto display = static_cast<DisplayChannel *>(opaque);
+    auto red_drawable = static_cast<RedDrawable *>(data);
+
+    display_channel_encode_done(display, red_drawable);
+}
+
 static bool red_marshall_stream_data(DisplayChannelClient *dcc,
                                      SpiceMarshaller *base_marshaller,
                                      Drawable *drawable)
@@ -1667,10 +1675,20 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
     int stream_id = display_channel_get_video_stream_id(display, stream);
     VideoStreamAgent *agent = &dcc->priv->stream_agents[stream_id];
     VideoBuffer *outbuf;
+    VideoEncoderDmabufData *dmabuf_data = NULL;
     /* workaround for vga streams */
     frame_mm_time =  drawable->red_drawable->mm_time ?
                         drawable->red_drawable->mm_time :
                         reds_get_mm_time();
+
+    if (drawable->red_drawable->dmabuf_fd > 0) {
+        dmabuf_data = g_new0(VideoEncoderDmabufData, 1);
+        dmabuf_data->dmabuf_fd = drawable->red_drawable->dmabuf_fd;
+        dmabuf_data->opaque = display;
+        dmabuf_data->notify_mem_free = red_mem_free_cb;
+    }
+    agent->video_encoder->dmabuf_data = dmabuf_data;
+
     ret = !agent->video_encoder ? VIDEO_ENCODER_FRAME_UNSUPPORTED :
           agent->video_encoder->encode_frame(agent->video_encoder,
                                              frame_mm_time,
@@ -1678,6 +1696,14 @@ static bool red_marshall_stream_data(DisplayChannelClient *dcc,
                                              &copy->src_area, stream->top_down,
                                              drawable->red_drawable.get(),
                                              &outbuf);
+    if (agent->video_encoder->dmabuf_data &&
+        ret != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
+        close(agent->video_encoder->dmabuf_data->dmabuf_fd);
+        display_channel_encode_done(display, drawable->red_drawable.get());
+        g_free(agent->video_encoder->dmabuf_data);
+        agent->video_encoder->dmabuf_data = NULL;
+    }
+
     switch (ret) {
     case VIDEO_ENCODER_FRAME_DROP:
 #ifdef STREAM_STATS
@@ -2095,6 +2121,8 @@ static void marshall_qxl_drawable(DisplayChannelClient *dcc,
         marshall_lossy_qxl_drawable(dcc, m, dpi);
     else
         marshall_lossless_qxl_drawable(dcc, m, dpi);
+
+    display_channel_encode_done(display, item->red_drawable.get());
 }
 
 static void marshall_stream_start(DisplayChannelClient *dcc,
diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 5ea11f4b..78658fac 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -22,6 +22,7 @@
 #include <pthread.h>
 
 #include <gst/gst.h>
+#include <gst/allocators/gstdmabuf.h>
 #include <gst/app/gstappsrc.h>
 #include <gst/app/gstappsink.h>
 #include <gst/video/video.h>
@@ -298,6 +299,8 @@ typedef struct SpiceGstEncoder {
 
     /* How many frames were dropped by the server since the last encoded frame. */
     uint32_t server_drops;
+
+    GstAllocator *allocator;
 } SpiceGstEncoder;
 
 
@@ -335,8 +338,12 @@ static inline double get_mbps(uint64_t bit_rate)
  */
 static uint32_t get_source_fps(const SpiceGstEncoder *encoder)
 {
-    return encoder->cbs.get_source_fps ?
-        encoder->cbs.get_source_fps(encoder->cbs.opaque) : SPICE_GST_DEFAULT_FPS;
+    uint32_t source_fps = 0;
+
+    if (encoder->cbs.get_source_fps) {
+        source_fps = encoder->cbs.get_source_fps(encoder->cbs.opaque);
+    }
+    return source_fps ? source_fps : SPICE_GST_DEFAULT_FPS;
 }
 
 static uint32_t get_network_latency(const SpiceGstEncoder *encoder)
@@ -1346,6 +1353,24 @@ static void unmap_and_release_memory(GstMapInfo *map, GstBuffer *buffer)
     gst_buffer_unref(buffer);
 }
 
+static void bitmap_wrapper_weak_unref(BitmapWrapper *wrapper,
+                                      GstMiniObject *obj)
+{
+    VideoEncoder *encoder = &wrapper->encoder->base;
+
+    if (g_atomic_int_dec_and_test(&wrapper->refs)) {
+        g_async_queue_push(wrapper->encoder->unused_bitmap_opaques,
+                           wrapper->opaque);
+        g_free(wrapper);
+    }
+    if (encoder->dmabuf_data) {
+        encoder->dmabuf_data->notify_mem_free(encoder->dmabuf_data->opaque,
+                                              wrapper->opaque);
+        g_free(encoder->dmabuf_data);
+        encoder->dmabuf_data = NULL;
+    }
+}
+
 /* A helper for spice_gst_encoder_encode_frame() */
 static VideoEncodeResults
 push_raw_frame(SpiceGstEncoder *encoder,
@@ -1367,7 +1392,18 @@ push_raw_frame(SpiceGstEncoder *encoder,
     uint32_t skip_lines = top_down ? src->top : bitmap->y - (src->bottom - 0);
     uint32_t chunk_offset = bitmap->stride * skip_lines;
 
-    if (stream_stride != bitmap->stride) {
+    if (encoder->base.dmabuf_data) {
+        BitmapWrapper *wrapper = NULL;
+        int fd = encoder->base.dmabuf_data->dmabuf_fd;
+
+        GstMemory *mem = gst_dmabuf_allocator_alloc(encoder->allocator,
+                                                    fd, stream_stride * height);
+        gst_buffer_append_memory(buffer, mem);
+        wrapper = bitmap_wrapper_new(encoder, bitmap_opaque);
+        gst_mini_object_weak_ref(GST_MINI_OBJECT(mem),
+                                 (GstMiniObjectNotify)bitmap_wrapper_weak_unref,
+                                 wrapper);
+    } else if (stream_stride != bitmap->stride) {
         /* We have to do a line-by-line copy because for each we have to
          * leave out pixels on the left or right.
          */
@@ -1456,6 +1492,7 @@ static void spice_gst_encoder_destroy(VideoEncoder *video_encoder)
 {
     SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
 
+    gst_object_unref(encoder->allocator);
     free_pipeline(encoder);
     pthread_mutex_destroy(&encoder->outbuf_mutex);
     pthread_cond_destroy(&encoder->outbuf_cond);
@@ -1772,6 +1809,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     encoder->bitmap_ref = bitmap_ref;
     encoder->bitmap_unref = bitmap_unref;
     encoder->format = GSTREAMER_FORMAT_INVALID;
+    encoder->allocator = gst_dmabuf_allocator_new();
     pthread_mutex_init(&encoder->outbuf_mutex, NULL);
     pthread_cond_init(&encoder->outbuf_cond, NULL);
 
diff --git a/server/video-encoder.h b/server/video-encoder.h
index d5bc0a68..e99520b7 100644
--- a/server/video-encoder.h
+++ b/server/video-encoder.h
@@ -56,6 +56,12 @@ typedef struct VideoEncoderStats {
     double avg_quality;
 } VideoEncoderStats;
 
+typedef struct VideoEncoderDmabufData {
+    int32_t dmabuf_fd;
+    void *opaque;
+    void (*notify_mem_free)(void *opaque, void *data);
+} VideoEncoderDmabufData;
+
 typedef struct VideoEncoder VideoEncoder;
 struct VideoEncoder {
     /* Releases the video encoder's resources */
@@ -142,6 +148,7 @@ struct VideoEncoder {
 
     /* The codec being used by the video encoder */
     SpiceVideoCodecType codec_type;
+    VideoEncoderDmabufData *dmabuf_data;
 };
 
 
-- 
2.37.2

