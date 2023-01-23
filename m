Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6880B6776EA
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E401E10E32C;
	Mon, 23 Jan 2023 09:01:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F5410E32C
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464474; x=1706000474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9e0ASREqER22P9tlxtIOMwrMmgVkdr1stk7+s+QObhg=;
 b=mf9X5ffgY4E1sIRJVC4SYGbO+RB1JEzONM7MwxLDAumyUWWmMXbKAvAn
 gqsYTbyVsewq5l6qzLkjTe+vn2Q7KR9o3EK581i9RK1bD2Lf2dmxZ3oTC
 7za53x0YHhgtZwsZ98k0kxP44ASS8l9AO9MuzM5Gy1hDzu5dhtD2l+vGw
 MN7CIvmyWJd5HNI6iKS3n47eGa48VVuTCM1dj4dK/qwHyje9jhEOeLQmr
 8JeNzn2TsaC54kfnCSuEHP3mW9osOIL3XFWhIsWjR5I32bKCCbk+YVLkb
 w3RpCdwj+uLA79XTJb9hHjzN5cPm5QAQK68nD+2HZWukl+xV/E0ydFKde Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352311"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352311"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340357"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340357"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:19 -0800
Message-Id: <20230123084123.1038341-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 1/5] gstreamer-encoder: Use a dmabuf
 allocator for a valid fd
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

If a valid dmabuf fd is shared with the encoder, then this patch
enables the creation of Gst memory with the fd as the source by
using a dmabuf allocator. This patch also adds code to invoke
any registered callbacks after the Gst memory object is no longer
in use by the pipeline.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 meson.build                |  2 +-
 server/gstreamer-encoder.c | 48 +++++++++++++++++++++++++++++++++++---
 server/video-encoder.h     |  7 ++++++
 3 files changed, 53 insertions(+), 4 deletions(-)

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
index 5ea11f4b..f590a495 100644
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
@@ -1346,6 +1353,23 @@ static void unmap_and_release_memory(GstMapInfo *map, GstBuffer *buffer)
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
+        encoder->dmabuf_data->notify_mem_free(encoder->dmabuf_data->opaque);
+        g_free(encoder->dmabuf_data);
+        encoder->dmabuf_data = NULL;
+    }
+}
+
 /* A helper for spice_gst_encoder_encode_frame() */
 static VideoEncodeResults
 push_raw_frame(SpiceGstEncoder *encoder,
@@ -1367,7 +1391,23 @@ push_raw_frame(SpiceGstEncoder *encoder,
     uint32_t skip_lines = top_down ? src->top : bitmap->y - (src->bottom - 0);
     uint32_t chunk_offset = bitmap->stride * skip_lines;
 
-    if (stream_stride != bitmap->stride) {
+    if (encoder->base.dmabuf_data) {
+        GstMemory *mem = NULL;
+        BitmapWrapper *wrapper = NULL;
+        int fd = encoder->base.dmabuf_data->dmabuf_fd;
+
+        mem = gst_dmabuf_allocator_alloc_with_flags(encoder->allocator,
+                                                    fd, stream_stride * height,
+                                                    GST_FD_MEMORY_FLAG_DONT_CLOSE);
+        if (!mem) {
+            return VIDEO_ENCODER_FRAME_UNSUPPORTED;
+        }
+        gst_buffer_append_memory(buffer, mem);
+        wrapper = bitmap_wrapper_new(encoder, bitmap_opaque);
+        gst_mini_object_weak_ref(GST_MINI_OBJECT(mem),
+                                 (GstMiniObjectNotify)bitmap_wrapper_weak_unref,
+                                 wrapper);
+    } else if (stream_stride != bitmap->stride) {
         /* We have to do a line-by-line copy because for each we have to
          * leave out pixels on the left or right.
          */
@@ -1456,6 +1496,7 @@ static void spice_gst_encoder_destroy(VideoEncoder *video_encoder)
 {
     SpiceGstEncoder *encoder = (SpiceGstEncoder*)video_encoder;
 
+    gst_object_unref(encoder->allocator);
     free_pipeline(encoder);
     pthread_mutex_destroy(&encoder->outbuf_mutex);
     pthread_cond_destroy(&encoder->outbuf_cond);
@@ -1772,6 +1813,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodecType codec_type,
     encoder->bitmap_ref = bitmap_ref;
     encoder->bitmap_unref = bitmap_unref;
     encoder->format = GSTREAMER_FORMAT_INVALID;
+    encoder->allocator = gst_dmabuf_allocator_new();
     pthread_mutex_init(&encoder->outbuf_mutex, NULL);
     pthread_cond_init(&encoder->outbuf_cond, NULL);
 
diff --git a/server/video-encoder.h b/server/video-encoder.h
index d5bc0a68..03a6f34d 100644
--- a/server/video-encoder.h
+++ b/server/video-encoder.h
@@ -56,6 +56,12 @@ typedef struct VideoEncoderStats {
     double avg_quality;
 } VideoEncoderStats;
 
+typedef struct VideoEncoderDmabufData {
+    int32_t dmabuf_fd;
+    void *opaque;
+    void (*notify_mem_free)(void *opaque);
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

