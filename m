Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD7F804C6D
	for <lists+spice-devel@lfdr.de>; Tue,  5 Dec 2023 09:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD40510E4B7;
	Tue,  5 Dec 2023 08:32:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759E510E4BD
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Dec 2023 08:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701765156; x=1733301156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cFtsG8/xPUpklQyKiHX+U4P/Xun9kZxXmGvF9lXNbyY=;
 b=Zgqqe1gk3+qswq74ndUqcOayhH4oH5ywwo/hmT0iQ+fdAa3P8ws6Gc5r
 qdzpuwUw0bpeiGVPfXCNw2VDYVkVmJDrUjAHD1LKRrHzvJFi5kSl13lNF
 dP1vRcBUTwOq1zmpuKgUathxfgIjzwIX7oowEinb6/2of5S7vTNKgS0WA
 AL8IBeiDb/MDr1fbD2MM4J8rD3F+/H+/ddXr3fYP50ux1ApJGesB+bKlo
 TIX1STUZIzx8cCeRMwX+Yf2UHudW0UUviFtubhAvjQTikPr3HirGUArTi
 a555rajMsTjLWxXKqAOS17C02kF2evMj7NV/7MXtnWjpx0eGl5vXZ6Xwt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="397758882"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="397758882"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="841371989"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="841371989"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  5 Dec 2023 00:07:55 -0800
Message-Id: <20231205080759.2347381-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205080759.2347381-1-vivek.kasireddy@intel.com>
References: <20231205080759.2347381-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v3 1/5] dcc: Check to see if the client
 supports multiple codecs (v2)
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
2.39.2

