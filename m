Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E14B7E10FC
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 21:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D0C10E055;
	Sat,  4 Nov 2023 20:52:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4445910E055
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 20:52:21 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-40850b244beso24327045e9.2
 for <spice-devel@lists.freedesktop.org>; Sat, 04 Nov 2023 13:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699131139; x=1699735939; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=liB7h2zotvhLZWC7tFXYSlNhgDIDHwtIcXyvSiaU7Ds=;
 b=P0EVPtYuvC87NqtQ4AZkHFgJG04Np7Wt7DwME6/Y1JNskvMG13mNpQC2EAc1wuc8s0
 bh+imOGa/eKeaXq8Wfvg49J0Lu11ue8b1rfl+CYvaXGVm+17Uu/1e6zNuycHd3qoquQb
 +oeOO+XY7+h7TccIxPMHrbbKVsWHBxjAYbvgM1pBlgtxvpGilzFVkHjYaee8kDJ8yLA7
 mXlpw2aER5jKcgz0OHvzzsVgDeX7d0SQ2izXtTlX5geJ8gQrVi04MsBxomw+jVXEN7OZ
 cxbJXFLU1b3D5qTz5pA5PnHXM/kwawiPsMy9HlXV4qnq5nMqlpJYDLNYIxzkBr5O3JnF
 oR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699131139; x=1699735939;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=liB7h2zotvhLZWC7tFXYSlNhgDIDHwtIcXyvSiaU7Ds=;
 b=qzWFoyWvvK0Hzhkv03kQjbAPw6JDhqGGsYiTb11pn8gcaLlKrYx1RQJawIS/QIeQSK
 IvVwSJ61bhRwF9iMKSflH8WO4EDHBS8OGH82Tscz0Y6ODehZs7U3bnMfk5qesrV/OZYT
 BCGDZ1wJ+PDIZseLYN7sM7TP+kNtmRI82LvayodGjYcVyYdgxB4xzm6jpzQrb1d2VYAk
 BLx1WDIIFm16YwbC+cQqe8Qonx2aoYytOLKGTuHDPbTKsqAZsDe0au4DtSl2loqZi0io
 FK8GB4GroS0486lW2DOZ1BtzYialWpR3QtqfvsqaKA54iglBlNzZi++s5uxKh/WIsm+p
 8sDw==
X-Gm-Message-State: AOJu0Yxi7o5HOclP+z565Ys0+rbMFKodjtOMDxmLP87auuhyrmLKK0XQ
 bcnxqv1DZ+e1xbHIPOtvTqqrv9hWn3A=
X-Google-Smtp-Source: AGHT+IH/eCHH0aQNs9+iyasyhwz2HSQMNrxw1NilKhewYpK7wotg+6XL1A6w255WaXfKqvQiAYXiWw==
X-Received: by 2002:a05:600c:4fc6:b0:406:84a0:bc87 with SMTP id
 o6-20020a05600c4fc600b0040684a0bc87mr22067309wmq.15.1699131138998; 
 Sat, 04 Nov 2023 13:52:18 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 o8-20020a05600c510800b00407752f5ab6sm6997357wms.6.2023.11.04.13.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Nov 2023 13:52:18 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  4 Nov 2023 20:52:15 +0000
Message-ID: <20231104205215.929-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk] gstreamer: Fallback to S/W decoder
 if H/W one is not working (v2)
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

In case the H/W decoder is not able to decode the stream (like too high
profile) try the S/W version.
This is done detecting the failure and trying to recreate the pipeline
in case:
- we are using a H/W pipeline;
- we didn't decode any frame (otherwise it means we lost the beginning
  or it was not a problem of H/W decoder).

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
Changes since v1:
- avoid a if/else (Vivek);
- fix typo in comment (Vivek).
---
 src/channel-display-gst.c | 39 +++++++++++++++++++++++++++++++++++----
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 2734a546..78b4985e 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -48,6 +48,8 @@ typedef struct SpiceGstDecoder {
     GstElement *pipeline;
     GstClock *clock;
     GstBus *bus;
+    bool is_hw_pipeline;
+    bool frame_removed;
 
     /* ---------- Decoding and display queues ---------- */
 
@@ -125,6 +127,7 @@ static void free_gst_frame(SpiceGstFrame *gstframe)
 /* ---------- GStreamer pipeline ---------- */
 
 static void schedule_frame(SpiceGstDecoder *decoder);
+static void try_sw_pipeline(SpiceGstDecoder *decoder);
 
 RECORDER(frames_stats, 64, "Frames statistics");
 
@@ -231,6 +234,7 @@ static guint32 pop_up_to_frame(SpiceGstDecoder *decoder, const SpiceGstFrame *po
     SpiceGstFrame *gstframe;
     guint32 freed = 0;
 
+    decoder->frame_removed = true;
     while ((gstframe = g_queue_pop_head(decoder->decoding_queue)) != popframe) {
         free_gst_frame(gstframe);
         freed++;
@@ -371,6 +375,7 @@ static void free_pipeline(SpiceGstDecoder *decoder)
     decoder->clock = NULL;
     gst_object_unref(decoder->pipeline);
     decoder->pipeline = NULL;
+    decoder->is_hw_pipeline = false;
 }
 
 static gboolean handle_pipeline_message(GstBus *bus, GstMessage *msg, gpointer video_decoder)
@@ -390,8 +395,11 @@ static gboolean handle_pipeline_message(GstBus *bus, GstMessage *msg, gpointer v
         }
         g_clear_error(&err);
 
-        /* We won't be able to process any more frame anyway */
+        bool was_hw = decoder->is_hw_pipeline;
         free_pipeline(decoder);
+        if (was_hw && !decoder->frame_removed) {
+            try_sw_pipeline(decoder);
+        }
         break;
     }
     case GST_MESSAGE_STREAM_START: {
@@ -672,6 +680,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder *decoder)
     }
 
     decoder->pipeline = pipeline;
+    decoder->is_hw_pipeline = true;
     return launch_pipeline(decoder);
 
 err:
@@ -704,7 +713,7 @@ err:
     return false;
 }
 
-static gboolean create_pipeline(SpiceGstDecoder *decoder)
+static gboolean create_pipeline(SpiceGstDecoder *decoder, bool try_hw_pipeline)
 {
     GstElement *playbin, *sink;
     SpiceGstPlayFlags flags;
@@ -714,7 +723,7 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
 
     if (vendor == VENDOR_GPU_DETECTED ||
         vendor == VENDOR_GPU_UNKNOWN) {
-        if (try_intel_hw_pipeline(decoder)) {
+        if (try_hw_pipeline && try_intel_hw_pipeline(decoder)) {
             return TRUE;
         }
     }
@@ -997,7 +1006,7 @@ VideoDecoder* create_gstreamer_decoder(int codec_type, display_stream *stream)
         g_mutex_init(&decoder->queues_mutex);
         decoder->decoding_queue = g_queue_new();
 
-        if (!create_pipeline(decoder)) {
+        if (!create_pipeline(decoder, true)) {
             decoder->base.destroy((VideoDecoder*)decoder);
             decoder = NULL;
         }
@@ -1066,3 +1075,25 @@ gboolean gstvideo_has_codec(int codec_type)
     gst_plugin_feature_list_free(all_decoders);
     return TRUE;
 }
+
+static void try_sw_pipeline(SpiceGstDecoder *decoder)
+{
+    // try to create a S/W pipeline
+    if (!create_pipeline(decoder, false)) {
+        return;
+    }
+
+    // replay the old queue
+    g_mutex_lock(&decoder->queues_mutex);
+    GList *l = g_queue_peek_head_link(decoder->decoding_queue);
+    while (l) {
+        const SpiceGstFrame *gstframe = l->data;
+        GstBuffer *buf = gst_buffer_ref(gstframe->encoded_buffer);
+        if (gst_app_src_push_buffer(decoder->appsrc, buf) != GST_FLOW_OK) {
+            SPICE_DEBUG("GStreamer error: unable to push frame");
+            stream_dropped_frame_on_playback(decoder->base.stream);
+        }
+        l = l->next;
+    }
+    g_mutex_unlock(&decoder->queues_mutex);
+}
-- 
2.41.0

