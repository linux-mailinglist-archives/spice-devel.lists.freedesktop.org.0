Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD80386EE4C
	for <lists+spice-devel@lfdr.de>; Sat,  2 Mar 2024 04:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6AD710E8D6;
	Sat,  2 Mar 2024 03:21:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNdKejha";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F7C10EE6A
 for <spice-devel@lists.freedesktop.org>; Sat,  2 Mar 2024 03:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709349663; x=1740885663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MX5fblWh67yuHhD0hdJO59A8K/Xcd8+b9triVvQKa7M=;
 b=PNdKejhaqKrJqpigU8cv0zvBfWlqsuEXBzcf7k+Vr51zebt0h5bZgdHm
 0tnsdeLNQy8yiNrbtGCpWZVkAWwymyF8nh7FvW0L9OuFYBI4+jn2cP/dx
 H2Boxh4BzVORQan/wO5Ata+1YeZkBnd3Zfp/QYnUF2/3qmN7nWtWiBBLJ
 pMsYDKK/g3hXTYHZ2lP1Fw9TqpwhaNJzBqFpAta5hNIKUmu+9bxeRXJSd
 gvptALMlDGmaUfvezUZ6OuiXQ8rRAZMeMyBfXt4WqV54h8rhYAKcYWuGO
 A34t0GEq8J6y1KnP68CmZcq6HsZ7dG5wjCt5O2xtzP4U5dr4r2r5K4ivm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15050925"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="15050925"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 19:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="12909915"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 19:20:56 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v5 1/5] dcc: Check to see if the client supports multiple
 codecs (v2)
Date: Fri,  1 Mar 2024 18:54:36 -0800
Message-ID: <20240302025656.1385463-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240302025656.1385463-1-vivek.kasireddy@intel.com>
References: <20240302025656.1385463-1-vivek.kasireddy@intel.com>
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

