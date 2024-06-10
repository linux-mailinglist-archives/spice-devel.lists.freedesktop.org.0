Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC0D9028F8
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2024 21:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D7910E3FD;
	Mon, 10 Jun 2024 19:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONNOG2hH";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE9510E3E8
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2024 19:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718046211; x=1749582211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fykc8umQw0uDZ1LNxspuN0hVeyINWXMw4+4aZ2z5Jxw=;
 b=ONNOG2hHvovXPd3cwvvDYRLlBWxG27j3Ji6eDN90jDxOKNVe4Ju/Hknf
 9eDgLyMOjhN7UG4bE3r+ML9yb4/V2zpXNVzxjlwVwQPGVwPEbnmzn0OyK
 abR2BWhYkAejFB578AeNgJqmFtnzCC1zmM6/gOecXIy8z9TbG4PM+y3Q4
 Hixt7fJsBK7JSpUPVGWbVduyfXxjmHaA7X+7MFQkRDiXyhUoSc/AvuPVO
 vzBHd7gd/S6H5Bah/hEpJ9cjHdvzhfu61n5SGMM1VpUgTMi8CPLn9icUV
 6q004rnp3y/OELuARfUQTSe/C/t9xRZ6kC1AtmEJ+rhelhQ/6sHlI8COn A==;
X-CSE-ConnectionGUID: Ap1STgdsSqOXqJKuu+gogw==
X-CSE-MsgGUID: LaXTv/HcQUyImXEZR04LeA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="37248406"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="37248406"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 12:03:29 -0700
X-CSE-ConnectionGUID: YSh1Ax3iRdGcuYhKLJ0WRA==
X-CSE-MsgGUID: 0v9VzEzLROKeE57VqFguTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43583734"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 12:03:29 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v8 5/6] gstreamer-encoder: Map the drm format to appropriate
 Gstreamer format
Date: Mon, 10 Jun 2024 11:34:34 -0700
Message-ID: <20240610183703.684420-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240610183703.684420-1-vivek.kasireddy@intel.com>
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
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

We need to convert the scanout's drm format to the correct Gstreamer
format while configuring the pipeline. Otherwise, visual artifacts or
corruption might be seen. This can be done using the Gstreamer API
gst_video_dma_drm_fourcc_to_format(), which will take the drm fourcc
value and return the appropriate Gst format.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-send.cpp        |   1 +
 server/gstreamer-encoder.c | 103 +++++++++++++++++++++++++++++++------
 server/video-encoder.h     |   1 +
 3 files changed, 88 insertions(+), 17 deletions(-)

diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index c418f375..7bc20a22 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -1790,6 +1790,7 @@ static void red_marshall_gl_draw_stream(DisplayChannelClient *dcc,
     }
 
     dmabuf_data->drm_dma_buf_fd = scanout->drm_dma_buf_fd;
+    dmabuf_data->drm_fourcc_format = scanout->drm_fourcc_format;
     dmabuf_data->width = stream->width;
     dmabuf_data->height = stream->height;
     dmabuf_data->stride = stream->stride;
diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d4efe732..196b27ab 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -31,6 +31,7 @@
 #include <gst/app/gstappsrc.h>
 #include <gst/app/gstappsink.h>
 #include <gst/video/video.h>
+#include <gst/video/video-info-dma.h>
 #include <orc/orcprogram.h>
 #if defined(__GNUC__) && (__GNUC__ >= 6)
 #  pragma GCC diagnostic pop
@@ -40,19 +41,26 @@
 #include "video-encoder.h"
 #include "utils.h"
 #include "common/udev.h"
-
+#include "drm/drm_fourcc.h"
 
 #define SPICE_GST_DEFAULT_FPS 30
 
 typedef struct {
     SpiceBitmapFmt spice_format;
+    uint32_t drm_format;
     uint32_t bpp;
     char format[8];
     GstVideoFormat gst_format;
 } SpiceFormatForGStreamer;
 
+#define __FMT_DESC(spice_format, drm_format, bpp, format, gst_format) \
+    { spice_format, drm_format, bpp, format, gst_format }
+
 #define FMT_DESC(spice_format, bpp, format, gst_format) \
-    { spice_format, bpp, format, gst_format }
+    __FMT_DESC(spice_format, DRM_FORMAT_INVALID, bpp, format, gst_format)
+
+#define DRM_FMT_DESC(drm_format, bpp) \
+    __FMT_DESC(SPICE_BITMAP_FMT_INVALID, drm_format, bpp, "", GST_VIDEO_FORMAT_UNKNOWN)
 
 typedef struct SpiceGstVideoBuffer {
     VideoBuffer base;
@@ -93,6 +101,7 @@ typedef struct SpiceGstEncoder {
     uint32_t height;
     const SpiceFormatForGStreamer *format;
     SpiceBitmapFmt spice_format;
+    uint32_t drm_format;
 
     /* Number of consecutive frame encoding errors. */
     uint32_t errors;
@@ -784,6 +793,47 @@ static const SpiceFormatForGStreamer *map_format(SpiceBitmapFmt format)
     return GSTREAMER_FORMAT_INVALID;
 }
 
+static SpiceFormatForGStreamer drm_format_map[] =  {
+    DRM_FMT_DESC(DRM_FORMAT_INVALID,  0),
+    DRM_FMT_DESC(DRM_FORMAT_XRGB8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_XBGR8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_RGBX8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_BGRX8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_ARGB8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_ABGR8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_RGBA8888, 32),
+    DRM_FMT_DESC(DRM_FORMAT_BGRA8888, 32),
+};
+#define GSTREAMER_DRM_FORMAT_INVALID (&drm_format_map[0])
+
+static const SpiceFormatForGStreamer *map_drm_format(uint32_t fourcc)
+{
+    int i;
+
+    for (i = 0; i < G_N_ELEMENTS(drm_format_map); i++) {
+        if (drm_format_map[i].drm_format == fourcc) {
+            if (drm_format_map[i].gst_format == GST_VIDEO_FORMAT_UNKNOWN) {
+                int format_size = sizeof(drm_format_map[i].format);
+                GstVideoFormat gst_format;
+
+                gst_format = gst_video_dma_drm_fourcc_to_format(fourcc);
+                if (gst_format == GST_VIDEO_FORMAT_UNKNOWN) {
+                    break;
+                }
+
+                drm_format_map[i].gst_format = gst_format;
+                strncpy(drm_format_map[i].format,
+                        gst_video_format_to_string(gst_format),
+                        format_size - 1);
+                drm_format_map[i].format[format_size - 1] = '\0';
+            }
+            return &drm_format_map[i];
+        }
+    }
+
+    return GSTREAMER_DRM_FORMAT_INVALID;
+}
+
 static void set_appsrc_caps(SpiceGstEncoder *encoder)
 {
     if (encoder->src_caps) {
@@ -1561,26 +1611,41 @@ static void spice_gst_encoder_add_frame(SpiceGstEncoder *encoder,
 static VideoEncodeResults
 spice_gst_encoder_configure_pipeline(SpiceGstEncoder *encoder,
                                      uint32_t width, uint32_t height,
-                                     const SpiceBitmap *bitmap,
+                                     SpiceBitmapFmt spice_format,
+                                     uint32_t drm_format,
                                      uint32_t frame_mm_time)
 {
-    SpiceBitmapFmt format = bitmap ? (SpiceBitmapFmt) bitmap->format :
-                            SPICE_BITMAP_FMT_32BIT;
+    const SpiceFormatForGStreamer *format = GSTREAMER_FORMAT_INVALID;
+
+    if (spice_format != SPICE_BITMAP_FMT_INVALID) {
+        format = map_format(spice_format);
+    } else if (drm_format != DRM_FORMAT_INVALID) {
+        format = map_drm_format(drm_format);
+    }
+
+    if (format == GSTREAMER_FORMAT_INVALID ||
+        format == GSTREAMER_DRM_FORMAT_INVALID) {
+        spice_warning("unable to map format type %d or %u",
+                      spice_format, drm_format);
+        encoder->errors = 4;
+        return VIDEO_ENCODER_FRAME_UNSUPPORTED;
+    }
 
     if (width != encoder->width || height != encoder->height ||
-        encoder->spice_format != format) {
-        spice_debug("video format change: width %d -> %d, height %d -> %d, format %d -> %d",
+        encoder->spice_format != spice_format ||
+        encoder->drm_format != drm_format) {
+        spice_debug("video format change: width %d -> %d, height %d -> %d,"
+                    "spice format %d -> %d, drm format %u -> %u",
                     encoder->width, width, encoder->height, height,
-                    encoder->spice_format, format);
-        encoder->format = map_format(format);
-        if (encoder->format == GSTREAMER_FORMAT_INVALID) {
-            spice_warning("unable to map format type %d", format);
-            encoder->errors = 4;
-            return VIDEO_ENCODER_FRAME_UNSUPPORTED;
-        }
-        encoder->spice_format = format;
+                    encoder->spice_format, spice_format,
+                    encoder->drm_format, drm_format);
+
+        encoder->format = format;
+        encoder->spice_format = spice_format;
+        encoder->drm_format = drm_format;
         encoder->width = width;
         encoder->height = height;
+
         if (encoder->bit_rate == 0) {
             encoder->history[0].mm_time = frame_mm_time;
             encoder->max_bit_rate = get_bit_rate_cap(encoder);
@@ -1640,7 +1705,9 @@ spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
     uint32_t height = src->bottom - src->top;
 
     rc = spice_gst_encoder_configure_pipeline(encoder, width, height,
-                                              bitmap, frame_mm_time);
+                                              bitmap->format,
+                                              DRM_FORMAT_INVALID,
+                                              frame_mm_time);
     if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
         return rc;
     }
@@ -1691,7 +1758,9 @@ spice_gst_encoder_encode_dmabuf(VideoEncoder *video_encoder,
     VideoEncodeResults rc;
 
     rc = spice_gst_encoder_configure_pipeline(encoder, dmabuf_data->width,
-                                              dmabuf_data->height, NULL,
+                                              dmabuf_data->height,
+                                              SPICE_BITMAP_FMT_INVALID,
+                                              dmabuf_data->drm_fourcc_format,
                                               frame_mm_time);
     if (rc != VIDEO_ENCODER_FRAME_ENCODE_DONE) {
         return rc;
diff --git a/server/video-encoder.h b/server/video-encoder.h
index 0261bfca..a4cebe0a 100644
--- a/server/video-encoder.h
+++ b/server/video-encoder.h
@@ -61,6 +61,7 @@ typedef struct VideoEncoderDmabufData {
     uint32_t width;
     uint32_t height;
     uint32_t stride;
+    uint32_t drm_fourcc_format;
     void *dcc;
     void (*free)(struct VideoEncoderDmabufData*);
 } VideoEncoderDmabufData;
-- 
2.45.1

