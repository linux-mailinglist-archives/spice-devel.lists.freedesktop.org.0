Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD8B6BC5EE
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D0610E0A0;
	Thu, 16 Mar 2023 06:05:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB9110E06F
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tG49CDRQ7HDCl/iLlaL8hESida4Dd/gTFqkzQxRri6w=;
 b=abpGRqiCmTpN0ihj0AUm/GTOug8fduyFkqBRkper28RJR2jGCsMQVnSN
 43qMHdfYG3kdybtKIetPfHedsIozeEEvn7jUplxf2vawziHu4oB59VHGK
 qjAtd7dNXgjyf8w0yO6Ign8V9C3oujSXSEsMmG0miDv093QLamspbkJbr
 iHpaGXw3TZSSt6WxqYIsADMRJ9nXuc+ufHxJmqU3xwvV3yim47IJU5NN0
 vRWAhLDVZ37HVvftsc2Fc1AbHYf59e3kzDHw2DLArTyUQrJGflyqAgYKI
 XGtNO2iypz5RiPylEAJ6D0hDnNtz6qC+glFN/L4zqQKwxWi0xFojMGJjA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588950"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588950"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141475"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141475"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:54 -0700
Message-Id: <20230316054458.1546085-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 1/5] dcc: Check to see if the client
 supports multiple codecs
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

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/dcc-private.h             |  2 ++
 server/dcc.cpp                   | 22 +++++++++++-----------
 server/display-channel-private.h |  6 ++++++
 3 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/server/dcc-private.h b/server/dcc-private.h
index 842c14b2..bf485aec 100644
--- a/server/dcc-private.h
+++ b/server/dcc-private.h
@@ -27,6 +27,8 @@
 
 #include "push-visibility.h"
 
+XXX_CAST(RedChannelClient, DisplayChannelClient, DISPLAY_CHANNEL_CLIENT);
+
 struct DisplayChannelClientPrivate
 {
     SPICE_CXX_GLIB_ALLOCATOR
diff --git a/server/dcc.cpp b/server/dcc.cpp
index 01c16ab7..f0b355ca 100644
--- a/server/dcc.cpp
+++ b/server/dcc.cpp
@@ -494,29 +494,29 @@ RedSurfaceDestroyItem::RedSurfaceDestroyItem(uint32_t surface_id)
 
 RedPipeItemPtr dcc_gl_scanout_item_new(RedChannelClient *rcc, void *data, int num)
 {
-    /* FIXME: on !unix peer, start streaming with a video codec */
-    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
-        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
+    DisplayChannelClient *dcc = DISPLAY_CHANNEL_CLIENT(rcc);
+
+    if (dcc_is_gl_client(dcc)) {
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
 
-XXX_CAST(RedChannelClient, DisplayChannelClient, DISPLAY_CHANNEL_CLIENT);
-
 RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient *rcc, void *data, int num)
 {
     DisplayChannelClient *dcc = DISPLAY_CHANNEL_CLIENT(rcc);
     auto draw = static_cast<const SpiceMsgDisplayGlDraw *>(data);
 
-    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
-        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
+    if (!dcc_is_gl_client(dcc) &&
+        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
         red_channel_warning(rcc->get_channel(),
-                            "FIXME: client does not support GL scanout");
+                            "Client does not support GL scanout or multiple codecs");
         rcc->disconnect();
         return RedPipeItemPtr();
     }
diff --git a/server/display-channel-private.h b/server/display-channel-private.h
index 04ac2c0d..7600f213 100644
--- a/server/display-channel-private.h
+++ b/server/display-channel-private.h
@@ -346,4 +346,10 @@ static inline void region_add_clip_rects(QRegion *rgn, SpiceClipRects *data)
     }
 }
 
+static inline bool dcc_is_gl_client(DisplayChannelClient *dcc)
+{
+    return red_stream_is_plain_unix(dcc->get_stream()) &&
+           dcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT);
+}
+
 #endif /* DISPLAY_CHANNEL_PRIVATE_H_ */
-- 
2.37.2

