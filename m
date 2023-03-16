Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0A76BC5F3
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC3A10E311;
	Thu, 16 Mar 2023 06:05:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88F310E0B1
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t/nqmEv3ab0zLCMC0lwwKtrGIr3snRR2j7NNQKBXTcI=;
 b=jydxGtb+U9CNXlCQ4ErjKuu7o+dUDw/P6Qh8tMxiJR4sUQBJaW5adwGj
 E2aOvEsElrW9j0t0qsckT0ccJlE7rd5y+7eOSvEL7sqigRBxz0tdpm9of
 rOI9Q+tzYxiZjuNAD1hdB0sFW2D70zwSt1dLLTiK6DutSI8Fnrbp0e5Gw
 OEvmYf/X++6fxHSch/C8s/h/sroiqtpmTJj/yRmY8p627kNxbALYfptyk
 l+Kg2TCeCR1Yuu29OTym8P/qec8EQTCBd+qp+TD10gaQXREBW63CAHlh4
 JAvlmDGJcRYB3ytDmytkNcXCavWMbPuqLVTna0i9767/f7KOxnX2xzHq3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588956"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588956"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141483"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141483"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:57 -0700
Message-Id: <20230316054458.1546085-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 4/5] gstreamer-encoder: Add an encoder
 function that takes dmabuf fd as input
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

This patch adds a new function to enable the creation of Gst memory with
the dmabuf fd as the source by using a dmabuf allocator. And, it also
adds a mechanism to register and invoke any callbacks once the Gst memory
object is no longer used by the pipeline.

This patch also ensures that the source_fps value is always non-zero.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 meson.build                |   2 +-
 server/gstreamer-encoder.c | 119 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 118 insertions(+), 3 deletions(-)

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
diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index 5ea11f4b..2ceb80ba 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -22,6 +22,7 @@
 #include <pthread.h>
 
 #include <gst/gst.h>
+#include <gst/allocators/gstdmabuf.h>
 #include <gst/app/gstappsrc.h>
 #include <gst/app/gstappsink.h>
 #include <gst/video/video.h>
@@ -298,6 +299,7 @@ typedef struct SpiceGstEncoder {
 
     /* How many frames were dropped by the server since the last encoded frame. */
     uint32_t server_drops;
+    GstAllocator *allocator;
 } SpiceGstEncoder;
 
 
@@ -335,8 +337,12 @@ static inline double get_mbps(uint64_t bit_rate)
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
@@ -1456,6 +1462,7 @@ static void spice_gst_encoder_destroy(VideoEncoder *video_encoder)
 {
     SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
 
+    gst_object_unref(encoder->allocator);
     free_pipeline(encoder);
     pthread_mutex_destroy(&encoder->outbuf_mutex);
     pthread_cond_destroy(&encoder->outbuf_cond);
@@ -1568,6 +1575,112 @@ spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
     return rc;
 }
 
+static void
+spice_gst_mem_free_cb(VideoEncoderDmabufData *dmabuf_data, GstMiniObject *obj)
+{
+    if (dmabuf_data->notify_mem_free) {
+        dmabuf_data->notify_mem_free(dmabuf_data->opaque);
+        g_free(dmabuf_data);
+    }
+}
+
+static VideoEncodeResults
+spice_gst_encoder_encode_dmabuf(VideoEncoder *video_encoder,
+                                uint32_t frame_mm_time,
+                                VideoEncoderDmabufData *dmabuf_data,
+                                VideoBuffer **outbuf)
+{
+    SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
+    g_return_val_if_fail(outbuf != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
+    g_return_val_if_fail(dmabuf_data != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
+    VideoEncodeResults rc = VIDEO_ENCODER_FRAME_UNSUPPORTED;
+    *outbuf = NULL;
+
+    if (dmabuf_data->width != encoder->width ||
+        dmabuf_data->height != encoder->height) {
+        encoder->format = map_format(SPICE_BITMAP_FMT_32BIT);
+        encoder->width = dmabuf_data->width;
+        encoder->height = dmabuf_data->height;
+
+        if (encoder->bit_rate == 0) {
+            encoder->history[0].mm_time = frame_mm_time;
+            encoder->max_bit_rate = get_bit_rate_cap(encoder);
+            encoder->min_bit_rate = SPICE_GST_MIN_BITRATE;
+            encoder->status = SPICE_GST_BITRATE_DECREASING;
+            set_bit_rate(encoder, encoder->starting_bit_rate);
+            encoder->vbuffer_free = 0;
+        } else if (encoder->pipeline) {
+            set_pipeline_changes(encoder, SPICE_GST_VIDEO_PIPELINE_CAPS);
+        }
+        encoder->errors = 0;
+    } else if (encoder->errors >= 3) {
+        if (encoder->errors == 3) {
+            spice_debug("%s cannot compress %dx%d:%dbpp frames",
+                        get_gst_codec_name(encoder), encoder->width,
+                        encoder->height, encoder->format->bpp);
+            encoder->errors++;
+        }
+        return VIDEO_ENCODER_FRAME_UNSUPPORTED;
+    }
+
+    if (handle_server_drops(encoder, frame_mm_time) ||
+        frame_mm_time < encoder->next_frame_mm_time) {
+        return VIDEO_ENCODER_FRAME_DROP;
+    }
+
+    if (!configure_pipeline(encoder)) {
+        encoder->errors++;
+        return rc;
+    }
+
+    GstBuffer *buffer = gst_buffer_new();
+    GstMemory *mem = NULL;
+    gsize size = GST_ROUND_UP_4(dmabuf_data->stride) * dmabuf_data->height;
+    uint64_t start = spice_get_monotonic_time_ns();
+
+    mem = gst_dmabuf_allocator_alloc_with_flags(encoder->allocator,
+                                                dmabuf_data->drm_dma_buf_fd,
+                                                size,
+                                                GST_FD_MEMORY_FLAG_DONT_CLOSE);
+    if (!mem) {
+        return rc;
+    }
+    gst_buffer_append_memory(buffer, mem);
+    gst_mini_object_weak_ref(GST_MINI_OBJECT(mem),
+                             (GstMiniObjectNotify)spice_gst_mem_free_cb,
+                             dmabuf_data);
+    GstFlowReturn ret = gst_app_src_push_buffer(encoder->appsrc, buffer);
+    if (ret != GST_FLOW_OK) {
+        spice_warning("GStreamer error: unable to push source buffer (%d)", ret);
+        return rc;
+    }
+
+    rc = pull_compressed_buffer(encoder, outbuf);
+    if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
+        /* The input buffer will be stuck in the pipeline, preventing
+         * later ones from being processed. Furthermore something went
+         * wrong with this pipeline, so it may be safer to rebuild it
+         * from scratch.
+         */
+        free_pipeline(encoder);
+        encoder->errors++;
+        return rc;
+    }
+
+    uint32_t last_mm_time = get_last_frame_mm_time(encoder);
+    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - start,
+              (*outbuf)->size);
+
+    int32_t refill = encoder->bit_rate * (frame_mm_time - last_mm_time) / MSEC_PER_SEC / 8;
+    encoder->vbuffer_free = MIN(encoder->vbuffer_free + refill,
+                                encoder->vbuffer_size) - (*outbuf)->size;
+
+    server_increase_bit_rate(encoder, frame_mm_time);
+    update_next_frame_mm_time(encoder);
+
+    return rc;
+}
+
 static void spice_gst_encoder_client_stream_report(VideoEncoder *video_encoder,
                                              uint32_t num_frames,
                                              uint32_t num_drops,
@@ -1758,6 +1871,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     SpiceGstEncoder *encoder = g_new0(SpiceGstEncoder, 1);
     encoder->base.destroy = spice_gst_encoder_destroy;
     encoder->base.encode_frame = spice_gst_encoder_encode_frame;
+    encoder->base.encode_dmabuf = spice_gst_encoder_encode_dmabuf;
     encoder->base.client_stream_report = spice_gst_encoder_client_stream_report;
     encoder->base.notify_server_frame_drop = spice_gst_encoder_notify_server_frame_drop;
     encoder->base.get_bit_rate = spice_gst_encoder_get_bit_rate;
@@ -1772,6 +1886,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     encoder->bitmap_ref = bitmap_ref;
     encoder->bitmap_unref = bitmap_unref;
     encoder->format = GSTREAMER_FORMAT_INVALID;
+    encoder->allocator = gst_dmabuf_allocator_new();
     pthread_mutex_init(&encoder->outbuf_mutex, NULL);
     pthread_cond_init(&encoder->outbuf_cond, NULL);
 
-- 
2.37.2

