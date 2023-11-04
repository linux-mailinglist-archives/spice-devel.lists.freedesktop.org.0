Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D81C17E10F1
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 21:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7101E10E045;
	Sat,  4 Nov 2023 20:45:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA56810E045
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 20:45:18 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id
 d75a77b69052e-41cd6e1d4fbso18530401cf.1
 for <spice-devel@lists.freedesktop.org>; Sat, 04 Nov 2023 13:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699130717; x=1699735517; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=8bsRVZ3Vdqstf27q6d0byayi09M/iO/dmvdXY6oRAbY=;
 b=H5TUXv86IFBSLRKMEGliQmnxA1r4UiX4nHNyme6xAByeSB33iU9BFl7a0s0Omuggo3
 SWKCRymDagZOsItujYAboGms7Qy3+bWSAjdBrFGr8IF+6EdO8YswvutywmhJ+XAG1ne/
 TfzWCU17qZ0zXsmXNvarjBwrlO1BJFXQ6oQMzlWhn9Yyx54fAj+g2b0DJ1JXIj5GTKfM
 PJ/ll/Nec69Zmw2R8HPotaO/7hQkaL+V7YSG//PNH0Eivm1xgfqZ4cl08rj6glmoBdMi
 fwIZY8P2DLPdTMLiROPAhgVHoMDOQOc35w3ZhA2Bux4M8q8cfHZxAfP7kyAhzbxSv4zu
 78xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699130717; x=1699735517;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8bsRVZ3Vdqstf27q6d0byayi09M/iO/dmvdXY6oRAbY=;
 b=L6sSZb2KP/txNKNm2VZJ0rLuhb8LrrBXibmAvGEPLwqPnZEmDRq1lphxzzCcBRUclM
 lfIEp66JhXvoAZcU/giWc6TdF2Gc96VGyaavj+7jMfdDq4Nj18XEqdsUCfRheegyqTCq
 /un3nw0llhOZdilVkYcXsqhYF2072AH2+x1itcMwWlEPRBiPCa5rg6qoswUuz9SUccVm
 4ZZQ13wITrbBKfe7rP2bZ3qRvRwMcSr4IBivwuiVXQei+U621tJ+f3z+pRaAI+DlIyZh
 nD2gU6iif4Afm121BIeGOqeRSOcpmYQIYTbOBhD5Pyg07M472j43MQbGxYWhJCSDc1IF
 FL+A==
X-Gm-Message-State: AOJu0Yx7cz7h/1sZmPpiNV7d84C9HWfIhqyZlg49MRKnQS+zs8N6K1RP
 T7iBb65JOhSE1rOl2PC86zmxSi3pMQI=
X-Google-Smtp-Source: AGHT+IEnlCp6dcr2KrZZ2w/whbFMq3/G8tf/GitRCdpFGcw57ni+juoxboVi9xfqGuB+XsPLIdTs1A==
X-Received: by 2002:a05:622a:1047:b0:419:4c70:c54e with SMTP id
 f7-20020a05622a104700b004194c70c54emr25425140qte.52.1699130717499; 
 Sat, 04 Nov 2023 13:45:17 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 o24-20020ac86998000000b004166905aa2asm1889037qtq.28.2023.11.04.13.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Nov 2023 13:45:17 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  4 Nov 2023 20:45:12 +0000
Message-ID: <20231104204512.232-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk] gstreamer: Fix leak using GstBus
 watch (v2)
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

This patch fixes a leak due to not freeing GstBus watch.
The watch is attached (as GSource) to the main loop and retains
a pointer to the bus so we need to remove it to release the bus
when we release the pipeline.
This was detected forcibly creating and destroying lot of streams.
After a while the client program consumed all file descriptors
and stopped working. This as GstBus retains a GPoll which,
under Unix, uses 2 file descriptors.
For some reasons using gst_pipeline_get_bus again in free_pipeline
do not fix entirely the leak so keep a pointer to the exact
bus we set our watch on.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
Changes since v1:
- added comment.
---
 src/channel-display-gst.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)


diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 3b372dc0..2734a546 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -47,6 +47,7 @@ typedef struct SpiceGstDecoder {
     GstAppSink *appsink;
     GstElement *pipeline;
     GstClock *clock;
+    GstBus *bus;
 
     /* ---------- Decoding and display queues ---------- */
 
@@ -352,6 +353,13 @@ static void free_pipeline(SpiceGstDecoder *decoder)
         return;
     }
 
+    GstBus *bus = decoder->bus;
+    if (bus) {
+        gst_bus_remove_watch(bus);
+        gst_object_unref(bus);
+        decoder->bus = NULL;
+    }
+
     gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
     gst_object_unref(decoder->appsrc);
     decoder->appsrc = NULL;
@@ -534,7 +542,9 @@ static bool launch_pipeline(SpiceGstDecoder *decoder)
     }
     bus = gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
     gst_bus_add_watch(bus, handle_pipeline_message, decoder);
-    gst_object_unref(bus);
+    // Retains the bus object to be able to release the watch.
+    // We keep the reference to avoid a dangling pointer.
+    decoder->bus = bus;
 
     decoder->clock = gst_pipeline_get_clock(GST_PIPELINE(decoder->pipeline));
 
-- 
2.41.0

