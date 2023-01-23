Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004996776EB
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3300D10E32E;
	Mon, 23 Jan 2023 09:01:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9948510E32E
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464474; x=1706000474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L87vVsj25dGjEpaTIoihoVwL6GCAQ64pS7priSsFDxw=;
 b=V4u3rI9NlhWIpqCJaNNmNmY046XZQAzxgi4AXK/J3uaj7YKbZNeK4iIh
 TZ5N+5zMTMg2S0RhTmYwra1/wh7ERaU/yIYpMSEK1RPoTHVtKSCGWyybk
 Ayqnu3FR/l54DjCkimf+r4e5ccQEqQ4kXK8M9NeyyquNuBafZZpkvultH
 u/LK267WDwfhzOym3u7Uc9E+CktmYMfbQ0AobUrTTF8LRcDE0IJgosoGJ
 /wbrP09yraGp+nJSRm5FipqESSV0o+MQn/PZzpwj6Rjc8/gn+tmjZZGfe
 sY54g87IFejVNijZNofy4FuLYAjpLZn0T+/2reMid8s9tsjGqFrYl/0hd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352313"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352313"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340369"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340369"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:23 -0800
Message-Id: <20230123084123.1038341-6-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 5/5] red-qxl: Add a new parameter to
 gl_scanout and gl_draw_async
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

This new parameter (named local_display) can be used by applications
to indicate whether they are dealing with a local or remote client.
This can be useful to ensure that gl_draw or other associated
messages are only sent to local clients.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/red-qxl.cpp | 14 ++++++++++----
 server/spice-qxl.h |  4 ++--
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
index 48c293ae..14380a60 100644
--- a/server/red-qxl.cpp
+++ b/server/red-qxl.cpp
@@ -426,7 +426,8 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
                           int fd,
                           uint32_t width, uint32_t height,
                           uint32_t stride, uint32_t format,
-                          int y_0_top)
+                          int y_0_top,
+                          uint32_t local_display)
 {
     RedWorkerMessageGlScanout payload = { /* empty */ };
     spice_return_if_fail(qxl != nullptr);
@@ -452,7 +453,9 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
     pthread_mutex_unlock(&qxl_state->scanout_mutex);
 
     /* FIXME: find a way to coallesce all pending SCANOUTs */
-    qxl_state->send_message(payload);
+    if (local_display) {
+        qxl_state->send_message(payload);
+    }
     reds_update_client_mouse_allowed(qxl_state->reds);
 }
 
@@ -460,7 +463,8 @@ SPICE_GNUC_VISIBLE
 void spice_qxl_gl_draw_async(QXLInstance *qxl,
                              uint32_t x, uint32_t y,
                              uint32_t w, uint32_t h,
-                             uint64_t cookie)
+                             uint64_t cookie,
+                             uint32_t local_display)
 {
     QXLState *qxl_state;
     RedWorkerMessageGlDraw draw = {
@@ -482,7 +486,9 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
     spice_return_if_fail(qxl_state->gl_draw_cookie == GL_DRAW_COOKIE_INVALID);
 
     qxl_state->gl_draw_cookie = cookie;
-    qxl_state->send_message(draw);
+    if (local_display) {
+        qxl_state->send_message(draw);
+    }
 }
 
 void red_qxl_gl_draw_async_complete(QXLInstance *qxl)
diff --git a/server/spice-qxl.h b/server/spice-qxl.h
index bf17476b..2749f1c9 100644
--- a/server/spice-qxl.h
+++ b/server/spice-qxl.h
@@ -87,11 +87,11 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
                           int fd,
                           uint32_t width, uint32_t height,
                           uint32_t stride, uint32_t format,
-                          int y_0_top);
+                          int y_0_top, uint32_t local_display);
 void spice_qxl_gl_draw_async(QXLInstance *qxl,
                              uint32_t x, uint32_t y,
                              uint32_t w, uint32_t h,
-                             uint64_t cookie);
+                             uint64_t cookie, uint32_t local_display);
 
 /* since spice 0.14.2 */
 
-- 
2.37.2

