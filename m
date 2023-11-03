Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF637DFFD6
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 09:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457E910E4F3;
	Fri,  3 Nov 2023 08:51:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90F110E9AE
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 08:51:26 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-da077db5145so1821559276.0
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 01:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699001486; x=1699606286; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=691z7qdILBnocz+ZZsXPdL4GJPhopNP/PuvpQcXrRIQ=;
 b=SBKcdQFD/krgCiHzOHtY7MzuIrQUgI7sC6LYEodjkN1L9TIK6UPQ4c+tUhD7q2EmWn
 kiKdu+9GUlEJu0wIQWNl2dix0j1rtS9+plFPRkHzYgMrw0vgVQnSNSGXaIJGu/TB0Utm
 jJvMF4p28xY42Jz/Dbn+OK7gzQzKTdjpMV89NzrTogHuyM4hNFvbymd5tb1m2AIzjPA2
 ydeTwK9Hjc/0Nn0giwxcJqzbtOZBvjGH3jhUa4C5ncgqq2EA2eXuucFfqB+Ox6Xf/na7
 JjLlJvcv/mI5DujZbNgF/xl3Zw7PKxXZDsrzaEEjNXbQe50qFNECQ0R8eOkV1qwj/zxT
 5wLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699001486; x=1699606286;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=691z7qdILBnocz+ZZsXPdL4GJPhopNP/PuvpQcXrRIQ=;
 b=KE/0u/OEC52305+EUjhmejJBp5u1rpmntGxG7w3VJqq+M67xsPqAfac+yCSDDriIoL
 enw7mF5FAX3xhGA5PLEXnybXI1FgSKNYbFtx8j4k6qsQFwTjbfKl3b6uf/xUbit0go0E
 BZsQOgRDXkbY/usGjU844+GcCEdpzxMze/ColWxppztrZbFP3i5khHIqwqqkLLt1iook
 WUXcNUGjvp144ep0eFhyN3ytthEPrxohra+WhSzvdU8gsglEJS8rxlKt5aBoRV34XM/Y
 GxJHujfH28DmPJ6G6KsirxKdgtOkzI7MOl8+VDJuhS2Z6ExjCfqTb471zWSatpldL0hK
 WxtQ==
X-Gm-Message-State: AOJu0Yyne4C5l3mvO7VBAdK5lGgIKEjZr/9/u1Vk6bQAOIh7N4xvn0Tj
 g3olpOEPyAbjfthTW0nVlj8yAbfoLkQ=
X-Google-Smtp-Source: AGHT+IGt/Bsa6juTKiGjyXVAZEfSgMGPPmeuAE/bkS3il7pF7TKztKRRSu8oUnj62th8tr0sc732Vw==
X-Received: by 2002:a25:c750:0:b0:da3:ab31:ce22 with SMTP id
 w77-20020a25c750000000b00da3ab31ce22mr8517387ybe.2.1699001485723; 
 Fri, 03 Nov 2023 01:51:25 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 j10-20020a25550a000000b00d9ca5709f27sm627984ybb.37.2023.11.03.01.51.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 01:51:25 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 Nov 2023 08:51:20 +0000
Message-ID: <20231103085120.1339-2-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231103085120.1339-1-freddy77@gmail.com>
References: <20231103085120.1339-1-freddy77@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Fallback to S/W
 decoder if H/W one is not working
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
 src/channel-display-gst.c | 43 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 6e126000..1238c943 100644
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
@@ -390,8 +395,12 @@ static gboolean handle_pipeline_message(GstBus *bus, GstMessage *msg, gpointer v
         }
         g_clear_error(&err);
 
-        /* We won't be able to process any more frame anyway */
-        free_pipeline(decoder);
+        if (decoder->is_hw_pipeline && !decoder->frame_removed) {
+            try_sw_pipeline(decoder);
+        } else {
+            /* We won't be able to process any more frame anyway */
+            free_pipeline(decoder);
+        }
         break;
     }
     case GST_MESSAGE_STREAM_START: {
@@ -670,6 +679,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder *decoder)
     }
 
     decoder->pipeline = pipeline;
+    decoder->is_hw_pipeline = true;
     return launch_pipeline(decoder);
 
 err:
@@ -702,7 +712,7 @@ err:
     return false;
 }
 
-static gboolean create_pipeline(SpiceGstDecoder *decoder)
+static gboolean create_pipeline(SpiceGstDecoder *decoder, bool try_hw_pipeline)
 {
     GstElement *playbin, *sink;
     SpiceGstPlayFlags flags;
@@ -712,7 +722,7 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
 
     if (vendor == VENDOR_GPU_DETECTED ||
         vendor == VENDOR_GPU_UNKNOWN) {
-        if (try_intel_hw_pipeline(decoder)) {
+        if (try_hw_pipeline && try_intel_hw_pipeline(decoder)) {
             return TRUE;
         }
     }
@@ -995,7 +1005,7 @@ VideoDecoder* create_gstreamer_decoder(int codec_type, display_stream *stream)
         g_mutex_init(&decoder->queues_mutex);
         decoder->decoding_queue = g_queue_new();
 
-        if (!create_pipeline(decoder)) {
+        if (!create_pipeline(decoder, true)) {
             decoder->base.destroy((VideoDecoder*)decoder);
             decoder = NULL;
         }
@@ -1064,3 +1074,26 @@ gboolean gstvideo_has_codec(int codec_type)
     gst_plugin_feature_list_free(all_decoders);
     return TRUE;
 }
+
+static void try_sw_pipeline(SpiceGstDecoder *decoder)
+{
+    // try to create a S/W pipeline
+    free_pipeline(decoder);
+    if (!create_pipeline(decoder, false)) {
+        return;
+    }
+
+    // reply the old queue
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

