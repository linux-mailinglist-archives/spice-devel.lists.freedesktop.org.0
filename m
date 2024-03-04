Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDCE86FFEB
	for <lists+spice-devel@lfdr.de>; Mon,  4 Mar 2024 12:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330F910FFDE;
	Mon,  4 Mar 2024 11:10:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NryKkg+5";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF10710FFDC
 for <spice-devel@lists.freedesktop.org>; Mon,  4 Mar 2024 11:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709550635; x=1741086635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MX5fblWh67yuHhD0hdJO59A8K/Xcd8+b9triVvQKa7M=;
 b=NryKkg+5+/yk8NxvnWjOI9t1AN57SCK+ZBlMscsNSQtfbRzwFvu31GV1
 Ta1jd0IKDjqT6VoEc4DeGPTsAGAEHhmBuZJxkK1kqo/butV1OWv3FePG9
 WNj1DYDlAfT/8l848a7HhAqjuSPFTwzQRcaWbgYpzv2hLyYfPVvI5me83
 ieetd84RI7u3kDyoaLVXCAhdACufzf2tGK11GxxBp7Dg39YjW8wozdEK3
 RftSVQMtEUmXqACxAyR3irR2CADb/Uvsoh6aZHBelSJ5SW7+ItYrwIa3U
 iDGj+k9iEgTR575uROGbnwPzOiMmDkAYxhCU7KmDx9epvTcsAyzlje2Of A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="21572100"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="21572100"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13530808"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:10:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v6 1/5] dcc: Check to see if the client supports multiple
 codecs (v2)
Date: Mon,  4 Mar 2024 02:45:43 -0800
Message-ID: <20240304104643.1462676-2-vivek.kasireddy@intel.com>
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

We need to determine if the client is new enough to support multiple
codecs -- which might include any of the Gstreamer based ones.

v2: (suggestions and fixups from Frediano)
- Add is_gl_client() method to DisplayChannelClient instead of a
  dcc_is_gl_client() function.
- Avoid the usage of XXX_CAST macro.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Acked-by: Frediano Ziglio <freddy77@gmail.com>
---
 server/dcc.cpp | 22 ++++++++++++----------
 server/dcc.h   |  6 ++++++
 2 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/server/dcc.cpp b/server/dcc.cpp
index 01c16ab7..ca73470a 100644
--- a/server/dcc.cpp
+++ b/server/dcc.cpp
@@ -494,29 +494,31 @@ RedSurfaceDestroyItem::RedSurfaceDestroyItem(uint32_t surface_id)
 
 RedPipeItemPtr dcc_gl_scanout_item_new(RedChannelClient *rcc, void *data, int num)
 {
-    /* FIXME: on !unix peer, start streaming with a video codec */
-    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
-        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
+    auto dcc = static_cast<DisplayChannelClient *>(rcc);
+
+    if (dcc->is_gl_client()) {
+        return red::make_shared<RedGlScanoutUnixItem>();
+    } else if (rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
+        return RedPipeItemPtr();
+    } else {
         red_channel_warning(rcc->get_channel(),
-                            "FIXME: client does not support GL scanout");
+                            "Client does not support GL scanout or multiple codecs");
         rcc->disconnect();
         return RedPipeItemPtr();
     }
-
-    return red::make_shared<RedGlScanoutUnixItem>();
 }
 
 XXX_CAST(RedChannelClient, DisplayChannelClient, DISPLAY_CHANNEL_CLIENT);
 
 RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient *rcc, void *data, int num)
 {
-    DisplayChannelClient *dcc = DISPLAY_CHANNEL_CLIENT(rcc);
+    auto dcc = static_cast<DisplayChannelClient *>(rcc);
     auto draw = static_cast<const SpiceMsgDisplayGlDraw *>(data);
 
-    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
-        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
+    if (!dcc->is_gl_client() &&
+        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
         red_channel_warning(rcc->get_channel(),
-                            "FIXME: client does not support GL scanout");
+                            "Client does not support GL scanout or multiple codecs");
         rcc->disconnect();
         return RedPipeItemPtr();
     }
diff --git a/server/dcc.h b/server/dcc.h
index a8dd3bef..47f082fe 100644
--- a/server/dcc.h
+++ b/server/dcc.h
@@ -47,6 +47,12 @@ public:
                          spice_wan_compression_t zlib_glz_state);
     virtual void disconnect() override;
 
+    bool is_gl_client()
+    {
+        return red_stream_is_plain_unix(get_stream()) &&
+           test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT);
+    }
+
 protected:
     virtual bool handle_message(uint16_t type, uint32_t size, void *msg) override;
     virtual bool config_socket() override;
-- 
2.43.0

