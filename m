Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41376776EC
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84CC10E32F;
	Mon, 23 Jan 2023 09:01:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8B910E32F
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464476; x=1706000476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MCColf+Z7FdbCiqR203D9pT2YV3C5anlVEAdW00E/qE=;
 b=MAR+e+1qdx8HOP20Rd4IDkE0S8dqUmcofslevrvL7tJ/YFc3psSFDDKR
 oKI/OfIsypNU0Qk+rPLmSH6pcNAAvhPL1q20SklHn3cROBatGbuiPaDPa
 hCpLuqMnna7eutU8CVhilw9A8DplcHif06tQc6DoE/trNmuZBPdhsOp8o
 6HAhmfvikr3uI/KtcjLJQiW3CQG9XLZfjvcnNbKxvHpFL5Q+d/N/tYynJ
 7y52sVBeJq/E/VVGgfuXWIl3oxlp8cgHM1SqP9Sv1rPxF/92VhBx1ishB
 Uoe+n5WyR7+H17bqn5fUI2xgkTX2dspgJUiuuSnDQGXaqjN6yJyxVZ09L g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352326"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352326"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340360"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340360"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:20 -0800
Message-Id: <20230123084123.1038341-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 2/5] display-channel: Extract the dmabuf fd
 from the scanout
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

If the scanout has a valid dmabuf fd, then store a copy of it
in the drawable. This is one of the first steps needed to
share the dmabuf fd with the encoder.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/display-channel.cpp | 9 +++++++++
 server/display-channel.h   | 1 +
 2 files changed, 10 insertions(+)

diff --git a/server/display-channel.cpp b/server/display-channel.cpp
index 4bd0cf41..9534bbf2 100644
--- a/server/display-channel.cpp
+++ b/server/display-channel.cpp
@@ -1273,6 +1273,8 @@ static Drawable *display_channel_get_drawable(DisplayChannel *display, uint8_t e
                                               red::shared_ptr<RedDrawable> &&red_drawable,
                                               uint32_t process_commands_generation)
 {
+    QXLInstance* qxl_instance = display->priv->qxl;
+    SpiceMsgDisplayGlScanoutUnix *scanout;
     Drawable *drawable;
 
     /* Validate all surface ids before updating counters
@@ -1299,6 +1301,13 @@ static Drawable *display_channel_get_drawable(DisplayChannel *display, uint8_t e
 
     drawable->red_drawable = red_drawable;
 
+    drawable->dmabuf_fd = -1;
+    scanout = red_qxl_get_gl_scanout(qxl_instance);
+    if (scanout != nullptr) {
+        drawable->dmabuf_fd = scanout->drm_dma_buf_fd;
+    }
+    red_qxl_put_gl_scanout(qxl_instance, scanout);
+
     /*
         surface->refs is affected by a drawable (that is
         dependent on the surface) as long as the drawable is alive.
diff --git a/server/display-channel.h b/server/display-channel.h
index c54df25c..276d015a 100644
--- a/server/display-channel.h
+++ b/server/display-channel.h
@@ -85,6 +85,7 @@ struct Drawable {
     std::array<RedSurface *, 3> surface_deps;
 
     uint32_t process_commands_generation;
+    int dmabuf_fd;
     DisplayChannel *display;
 };
 
-- 
2.37.2

