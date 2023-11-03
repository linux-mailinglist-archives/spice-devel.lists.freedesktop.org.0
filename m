Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 319CE7DFFD5
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 09:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9BE10E53F;
	Fri,  3 Nov 2023 08:51:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF24F10E4F3
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 08:51:25 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-d9a518d66a1so1867509276.0
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 01:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699001485; x=1699606285; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bAiEO+0cetybF3oRW8VgGcdjwtQdqfQg2S+iv+Sov1Y=;
 b=J/ExmpBqPzE3C4B1TE6s/rzaSUtfxOBtwstFa5jY1gCkuHq3ajdC7w5W9bUwuZiGf2
 XCppdw2E4lLzqhjMl3fugzu84rHnWglnuTj8Kmf2vq+kDjmAX6cg+SjOcQRb+g3yO7aI
 MgCDU2WCzjgo0+AibAg2e3On3K3zbuUtpuUV+oMMQkfA5lQlO9F3lv0QCbS4LVCwOV44
 0Z/e+1QigyQ7KyjOw0ts7yX2+GT4JK+pEglhAqqjOk9MjVdqhnUYGgIlbNkHNV5tkNhT
 I+B80kzKoBOr6gZtDd2Wd1iRF2VqHDvkScviCC8sPn0vzWN+63WBlgrafHHRPnOTAMRh
 u68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699001485; x=1699606285;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bAiEO+0cetybF3oRW8VgGcdjwtQdqfQg2S+iv+Sov1Y=;
 b=ckSS3oW1cyJXqu7pZkhnoX44H4OFl1FweHtKBK+CGggznnVUfgPZzBb2pBDGQUuyRy
 O8qlb3BpwECFetdOqbScVuGLSgnS1+zHAEcBYSF9smV2V3G0ka9FQCAaOuUFmrgj6x4A
 x5Y0tu5BntzvOsckhUtYCgvIDUyyZeLlTjPaIYFnDTiqiBfuZIdGbIr5QgPpemXXUqNy
 svwxbxFpXqoS6EIx8nOEfCN2qRFL+Kh/Rrw14uNA2Fcth1fSfRCThxXeaKEWwhOkQyle
 YrOLiirrlEvxQCjWfpn47lSBXYH+dV4Pw6o1crPM3BMI3lQh7Si63Syt/SZyRr6BXat2
 jk3Q==
X-Gm-Message-State: AOJu0YxP5ya0YXDlwgd29JkXkoodXQaM+ccH3bjiH27RtF1EPQtgYzix
 ruNLFcWYAc3DLTnyzP8EcYACtI+P+7M=
X-Google-Smtp-Source: AGHT+IEQ0SNQqFIkjkDtDahlNGW7ZZNoMZJezvrJMxu56x8Y4/IRkZjl7qdwY+a65LG7AVYpcYGNFA==
X-Received: by 2002:a25:d107:0:b0:da3:b87b:5b7c with SMTP id
 i7-20020a25d107000000b00da3b87b5b7cmr7452116ybg.38.1699001484694; 
 Fri, 03 Nov 2023 01:51:24 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 j10-20020a25550a000000b00d9ca5709f27sm627984ybb.37.2023.11.03.01.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 01:51:24 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 Nov 2023 08:51:19 +0000
Message-ID: <20231103085120.1339-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Fix leak using
 GstBus watch
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
 src/channel-display-gst.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 3b372dc0..6e126000 100644
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
@@ -534,7 +542,7 @@ static bool launch_pipeline(SpiceGstDecoder *decoder)
     }
     bus = gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
     gst_bus_add_watch(bus, handle_pipeline_message, decoder);
-    gst_object_unref(bus);
+    decoder->bus = bus;
 
     decoder->clock = gst_pipeline_get_clock(GST_PIPELINE(decoder->pipeline));
 
-- 
2.41.0

