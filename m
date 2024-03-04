Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C177E86FFF0
	for <lists+spice-devel@lfdr.de>; Mon,  4 Mar 2024 12:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F2610FFE1;
	Mon,  4 Mar 2024 11:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ql5kIdad";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6D210FFDE
 for <spice-devel@lists.freedesktop.org>; Mon,  4 Mar 2024 11:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709550636; x=1741086636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hTQklp/IsVUFgXnrI54g4ukSF0Vo8usWHAkoKVEjt1Q=;
 b=Ql5kIdadKwmoWKBXE1SoothbocicuIwKW+hH5aHgoN2dlfE4W4QikjNt
 bkFDrTbFzsZAX5vZ3qBeGo+Ah0AfaljfIH3h0plH/Ikj7jNZqUQk+rT+v
 bItvyWLYUCuykohLq62w9bK1rrZ5baLY/ap1BJq3/y+8JXZM+8/CfJ9cd
 eYtPOBld2YOHoFfEG/xERP6KlQiHUp0Pr2UOHA+ppQCcmAxtQxtsA3xCN
 c5h5D4fymSo4bOWXNAuDVwzmHX7ey4Eb46dE/hm2Qli77hFYbkXrnxdgI
 +/sjzHxQiJvCR90ps0iJoTyqIR/XgRwWXzBBkMwxZH9LYF8vnLcOd+sGy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="21572109"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="21572109"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13530819"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v6 4/5] gstreamer-encoder: Add an encoder function that takes
 dmabuf fd as input (v3)
Date: Mon,  4 Mar 2024 02:45:46 -0800
Message-ID: <20240304104643.1462676-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
References: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
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

This patch adds a new function to enable the creation of Gst memory with
the dmabuf fd as the source by using a dmabuf allocator. And, it also
adds a mechanism to register and invoke any callbacks once the Gst memory
object is no longer used by the pipeline.

This patch also ensures that the source_fps value is always non-zero.

v2: (suggestions from Frediano)
- Moved the code associated with add_frame() and pipeline configuration
  into separate functions that are used when encoding dmabuf fd

v3:
- Add the new gstreamer-allocators dependency in autoconf as well
  (Frediano)
- Ensure that VIDEO_ENCODER_FRAME_UNSUPPORTED is returned when an
  error is encountered in spice_gst_encoder_encode_dmabuf()

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 configure.ac               |   2 +-
 meson.build                |   2 +-
 server/gstreamer-encoder.c | 165 ++++++++++++++++++++++++++++++-------
 3 files changed, 137 insertions(+), 32 deletions(-)

diff --git a/configure.ac b/configure.ac
index ff13ee3a..5ad947ca 100644
--- a/configure.ac
+++ b/configure.ac
@@ -99,7 +99,7 @@ AC_ARG_ENABLE(gstreamer,
               [enable_gstreamer="auto"])
 
 if test "x$enable_gstreamer" != "xno" && test "x$enable_gstreamer" != "x0.10"; then
-    SPICE_CHECK_GSTREAMER(GSTREAMER_1_0, 1.0, [gstreamer-1.0 gstreamer-base-1.0 gstreamer-app-1.0 gstreamer-video-1.0],
+    SPICE_CHECK_GSTREAMER(GSTREAMER_1_0, 1.0, [gstreamer-1.0 gstreamer-base-1.0 gstreamer-app-1.0 gstreamer-video-1.0 gstreamer-allocators-1.0],
         [enable_gstreamer="1.0"
          SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0, [gst-plugins-base 1.0], [appsrc videoconvert appsink])
          SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0, [gstreamer-libav 1.0], [avenc_mjpeg])
diff --git a/meson.build b/meson.build
index b1237e61..d6aea60a 100644
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
index be8e3111..d4efe732 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -27,6 +27,7 @@
 #  pragma GCC diagnostic ignored "-Wunused-const-variable"
 #endif
 #include <gst/gst.h>
+#include <gst/allocators/gstdmabuf.h>
 #include <gst/app/gstappsrc.h>
 #include <gst/app/gstappsink.h>
 #include <gst/video/video.h>
@@ -283,6 +284,7 @@ typedef struct SpiceGstEncoder {
 
     /* How many frames were dropped by the server since the last encoded frame. */
     uint32_t server_drops;
+    GstAllocator *allocator;
 } SpiceGstEncoder;
 
 
@@ -318,8 +320,12 @@ static inline double get_mbps(uint64_t bit_rate)
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
@@ -1523,6 +1529,7 @@ static void spice_gst_encoder_destroy(VideoEncoder *video_encoder)
 {
     SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
 
+    gst_object_unref(encoder->allocator);
     free_pipeline(encoder);
     pthread_mutex_destroy(&encoder->outbuf_mutex);
     pthread_cond_destroy(&encoder->outbuf_cond);
@@ -1533,35 +1540,45 @@ static void spice_gst_encoder_destroy(VideoEncoder *video_encoder)
     g_free(encoder);
 }
 
+static void spice_gst_encoder_add_frame(SpiceGstEncoder *encoder,
+                                        VideoBuffer **outbuf,
+                                        uint64_t start,
+                                        uint32_t frame_mm_time)
+{
+    uint32_t last_mm_time = get_last_frame_mm_time(encoder);
+
+    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - start,
+              (*outbuf)->size);
+
+    int32_t refill = encoder->bit_rate * (frame_mm_time - last_mm_time) / MSEC_PER_SEC / 8;
+    encoder->vbuffer_free = MIN(encoder->vbuffer_free + refill,
+                                encoder->vbuffer_size) - (*outbuf)->size;
+
+    server_increase_bit_rate(encoder, frame_mm_time);
+    update_next_frame_mm_time(encoder);
+}
+
 static VideoEncodeResults
-spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
-                               uint32_t frame_mm_time,
-                               const SpiceBitmap *bitmap,
-                               const SpiceRect *src, int top_down,
-                               gpointer bitmap_opaque,
-                               VideoBuffer **outbuf)
+spice_gst_encoder_configure_pipeline(SpiceGstEncoder *encoder,
+                                     uint32_t width, uint32_t height,
+                                     const SpiceBitmap *bitmap,
+                                     uint32_t frame_mm_time)
 {
-    SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
-    g_return_val_if_fail(outbuf != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
-    *outbuf = NULL;
+    SpiceBitmapFmt format = bitmap ? (SpiceBitmapFmt) bitmap->format :
+                            SPICE_BITMAP_FMT_32BIT;
 
-    /* Unref the last frame's bitmap_opaque structures if any */
-    clear_zero_copy_queue(encoder, FALSE);
-
-    uint32_t width = src->right - src->left;
-    uint32_t height = src->bottom - src->top;
     if (width != encoder->width || height != encoder->height ||
-        encoder->spice_format != bitmap->format) {
+        encoder->spice_format != format) {
         spice_debug("video format change: width %d -> %d, height %d -> %d, format %d -> %d",
                     encoder->width, width, encoder->height, height,
-                    encoder->spice_format, bitmap->format);
-        encoder->format = map_format((SpiceBitmapFmt) bitmap->format);
+                    encoder->spice_format, format);
+        encoder->format = map_format(format);
         if (encoder->format == GSTREAMER_FORMAT_INVALID) {
-            spice_warning("unable to map format type %d", bitmap->format);
+            spice_warning("unable to map format type %d", format);
             encoder->errors = 4;
             return VIDEO_ENCODER_FRAME_UNSUPPORTED;
         }
-        encoder->spice_format = (SpiceBitmapFmt) bitmap->format;
+        encoder->spice_format = format;
         encoder->width = width;
         encoder->height = height;
         if (encoder->bit_rate == 0) {
@@ -1600,8 +1617,36 @@ spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
         return VIDEO_ENCODER_FRAME_UNSUPPORTED;
     }
 
+    return VIDEO_ENCODER_FRAME_ENCODE_DONE;
+}
+
+static VideoEncodeResults
+spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
+                               uint32_t frame_mm_time,
+                               const SpiceBitmap *bitmap,
+                               const SpiceRect *src, int top_down,
+                               gpointer bitmap_opaque,
+                               VideoBuffer **outbuf)
+{
+    SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
+    g_return_val_if_fail(outbuf != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
+    VideoEncodeResults rc;
+    *outbuf = NULL;
+
+    /* Unref the last frame's bitmap_opaque structures if any */
+    clear_zero_copy_queue(encoder, FALSE);
+
+    uint32_t width = src->right - src->left;
+    uint32_t height = src->bottom - src->top;
+
+    rc = spice_gst_encoder_configure_pipeline(encoder, width, height,
+                                              bitmap, frame_mm_time);
+    if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
+        return rc;
+    }
+
     uint64_t start = spice_get_monotonic_time_ns();
-    VideoEncodeResults rc = push_raw_frame(encoder, bitmap, src, top_down, bitmap_opaque);
+    rc = push_raw_frame(encoder, bitmap, src, top_down, bitmap_opaque);
     if (rc == VIDEO_ENCODER_FRAME_ENCODE_DONE) {
         rc = pull_compressed_buffer(encoder, outbuf);
         if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
@@ -1621,17 +1666,75 @@ spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
     if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
         return rc;
     }
-    uint32_t last_mm_time = get_last_frame_mm_time(encoder);
-    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - start,
-              (*outbuf)->size);
 
-    int32_t refill = encoder->bit_rate * (frame_mm_time - last_mm_time) / MSEC_PER_SEC / 8;
-    encoder->vbuffer_free = MIN(encoder->vbuffer_free + refill,
-                                encoder->vbuffer_size) - (*outbuf)->size;
+    spice_gst_encoder_add_frame(encoder, outbuf, start, frame_mm_time);
+    return rc;
+}
 
-    server_increase_bit_rate(encoder, frame_mm_time);
-    update_next_frame_mm_time(encoder);
+static void
+spice_gst_mem_free_cb(VideoEncoderDmabufData *dmabuf_data, GstMiniObject *obj)
+{
+    if (dmabuf_data->free) {
+        dmabuf_data->free(dmabuf_data);
+    }
+}
 
+static VideoEncodeResults
+spice_gst_encoder_encode_dmabuf(VideoEncoder *video_encoder,
+                                uint32_t frame_mm_time,
+                                VideoEncoderDmabufData *dmabuf_data,
+                                VideoBuffer **outbuf)
+{
+    SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
+    g_return_val_if_fail(outbuf != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
+    g_return_val_if_fail(dmabuf_data != NULL, VIDEO_ENCODER_FRAME_UNSUPPORTED);
+    VideoEncodeResults rc;
+
+    rc = spice_gst_encoder_configure_pipeline(encoder, dmabuf_data->width,
+                                              dmabuf_data->height, NULL,
+                                              frame_mm_time);
+    if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
+        return rc;
+    }
+
+    gsize size = dmabuf_data->stride * dmabuf_data->height;
+    uint64_t start = spice_get_monotonic_time_ns();
+    GstBuffer *buffer;
+    GstMemory *mem;
+    *outbuf = NULL;
+    rc = VIDEO_ENCODER_FRAME_UNSUPPORTED;
+
+    mem = gst_dmabuf_allocator_alloc_with_flags(encoder->allocator,
+                                                dmabuf_data->drm_dma_buf_fd,
+                                                size,
+                                                GST_FD_MEMORY_FLAG_DONT_CLOSE);
+    if (!mem) {
+        return rc;
+    }
+    buffer = gst_buffer_new();
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
+    spice_gst_encoder_add_frame(encoder, outbuf, start, frame_mm_time);
     return rc;
 }
 
@@ -1825,6 +1928,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     SpiceGstEncoder *encoder = g_new0(SpiceGstEncoder, 1);
     encoder->base.destroy = spice_gst_encoder_destroy;
     encoder->base.encode_frame = spice_gst_encoder_encode_frame;
+    encoder->base.encode_dmabuf = spice_gst_encoder_encode_dmabuf;
     encoder->base.client_stream_report = spice_gst_encoder_client_stream_report;
     encoder->base.notify_server_frame_drop = spice_gst_encoder_notify_server_frame_drop;
     encoder->base.get_bit_rate = spice_gst_encoder_get_bit_rate;
@@ -1837,6 +1941,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     encoder->bitmap_ref = bitmap_ref;
     encoder->bitmap_unref = bitmap_unref;
     encoder->format = GSTREAMER_FORMAT_INVALID;
+    encoder->allocator = gst_dmabuf_allocator_new();
     pthread_mutex_init(&encoder->outbuf_mutex, NULL);
     pthread_cond_init(&encoder->outbuf_cond, NULL);
 
-- 
2.43.0

