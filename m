Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8AF7DF86F
	for <lists+spice-devel@lfdr.de>; Thu,  2 Nov 2023 18:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E4310E957;
	Thu,  2 Nov 2023 17:12:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com
 [IPv6:2607:f8b0:4864:20::a2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C2110E956
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Nov 2023 17:12:23 +0000 (UTC)
Received: by mail-vk1-xa2e.google.com with SMTP id
 71dfb90a1353d-49dd3bb5348so521296e0c.0
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Nov 2023 10:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698945142; x=1699549942; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uNusWOXLSdgsGj9X5piJl0DX1soNaQEXvy+J053xoAU=;
 b=LpiTNEkOtyiQc0sjFfjYsz3UZZTn4PE6nuqaoRHn8n8LVIjRdpV0ngb0tHuOBJGxKW
 /2huErE81mgZW+RFhxbsQ9E3F3/iY0U5gybChtnEo43pAE3FY/AkM86Tj0WgBdPXjWIJ
 Eg/nP+9CO4QrUceqYJd1u17skirs4KMoSBtm54+QNtuN2CP3g7qpScPyrimpJsy2+0IQ
 1JcdRiDwyybtQYlfq8X5vudWJAacSr7iyzDZLxtaCHm0bCxOq9dQdbSFrvSEWW104ZY9
 r4fIw6ZETaK9Kw4nkbXn0ICLu/g35XSBq6tHeQtrRa+DkXBtVF+srLC1lIbwn4hXDifn
 faiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698945142; x=1699549942;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uNusWOXLSdgsGj9X5piJl0DX1soNaQEXvy+J053xoAU=;
 b=VEIfmcUBT+9/cDvluPlKheBzNCkuuK67E3CS7+ns794JYFeUd1f2zKE3U2iQhdILfs
 FwpmKsO2dEOk41jNUIFllEeUzwHBJSDyCObNFyj0kVeEh9Lz9QpjK0bMvh5mSKZW/oR5
 uvsGYLN7YYq4sIn/NvAdpIpWy7jUkSSHmC1IvSVCN1AM7gd4MVdgaNinXbAKvHB5xCEd
 Mt5iMtQR4wnPYeL6iSF6BLOHDg8nAnHbMNCxJ+O0AUJLoV6G2xf+uJmbmbpNgs5RCyqw
 a9spOsZLDSmA7jin8TnH8wh3CzPDVfyw+m8ohzRTy4rAh8CBD0xRPlqhrj7/gcNVgYd1
 F/7w==
X-Gm-Message-State: AOJu0YwucrR1b74cP4COw6KJyg6o5+qFKYCUE8bj97el2NKR3llAXFRO
 aSVXdj9yE70bamCU54ydMs59eisJYtk=
X-Google-Smtp-Source: AGHT+IGYwFDZkEfPPLjVcJwturQtojitpaXf0nHbpiFC+DKyxS0a0MhZUh+NcglfgFyz4gcwidzVQg==
X-Received: by 2002:a1f:9c11:0:b0:49a:b6c7:ddfc with SMTP id
 f17-20020a1f9c11000000b0049ab6c7ddfcmr17528943vke.1.1698945142374; 
 Thu, 02 Nov 2023 10:12:22 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 u143-20020a1fab95000000b0049a9ad3336dsm17829vke.25.2023.11.02.10.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Nov 2023 10:12:21 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:11:38 +0000
Message-ID: <20231102171138.409-2-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231102171138.409-1-freddy77@gmail.com>
References: <20231102171138.409-1-freddy77@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Avoid dangling
 pointers in free_pipeline
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

Although currently after free_pipeline we free the entire structure
the name and the function suggests that we only free the pipeline.
Also this is fixing a future possible problem with the series
from Vivek Kasireddy reusing the SpiceGstDecoder for another
pipeline if H/W encoder pipeline creation fails.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 src/channel-display-gst.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 3bd948d2..ffc2edbf 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -361,11 +361,14 @@ static void free_pipeline(SpiceGstDecoder *decoder)
 
     gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
     gst_object_unref(decoder->appsrc);
+    decoder->appsrc = NULL;
     if (decoder->appsink) {
         gst_object_unref(decoder->appsink);
+        decoder->appsink = NULL;
     }
-    gst_object_unref(decoder->pipeline);
     gst_object_unref(decoder->clock);
+    decoder->clock = NULL;
+    gst_object_unref(decoder->pipeline);
     decoder->pipeline = NULL;
 }
 
-- 
2.41.0

