Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9067995E9
	for <lists+spice-devel@lfdr.de>; Sat,  9 Sep 2023 04:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E67F10E24D;
	Sat,  9 Sep 2023 02:09:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630B910E0DB
 for <spice-devel@lists.freedesktop.org>; Sat,  9 Sep 2023 02:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694225379; x=1725761379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cFtsG8/xPUpklQyKiHX+U4P/Xun9kZxXmGvF9lXNbyY=;
 b=RC6xqK9NMSlcvQSO0IWZ7qu+e7Kpr/nUlxSgmb3K/izwpndlLG7kMCbV
 fOCZ+VklZSz1mts07dUA+UAbinUSO71C+dHoMskI/tMl8vXrAixO7rPZY
 CvxW/7wm2Xfv+o4el5N5j4teveetBDU3ioGgsjt2YDv920oX7B6+f7LEM
 ygalQixYLDyLSXPaqQCis1wDkyMjRKr4/2tkpmd/o5e7AAACDTGv2e7S/
 0HXtz3fUbcpABSBpWdo04WZNL+IjTl0Pzse5KvR/vhNblz/AirWDSFZHC
 tQwt4ZOLBAnfK+HC6FPjyxGuDXJ7JmkhPHOtBhxhl+7L5nCDvMIrELD6y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358090414"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358090414"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832857053"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832857053"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:48:39 -0700
Message-Id: <20230909014843.260583-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230909014843.260583-1-vivek.kasireddy@intel.com>
References: <20230909014843.260583-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2 1/5] dcc: Check to see if the client
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

