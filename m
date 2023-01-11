Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 658476653EA
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 06:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F7B10E6E8;
	Wed, 11 Jan 2023 05:42:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E73510E6E9
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 05:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415736; x=1704951736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Te3HBg/3vk6Y05kFkA3r3OcjXYNg4iCDARis/zUKK30=;
 b=Md7Or9nG7IMLaTOtcJJahb/O2V4RORqAedvE2flDoS1RbVrggDmFAp1l
 uamu4D/33iIKP259UI1ZB+OUlWzPi0tCv8p65ylh8VYj86AbbmZQ4pHo2
 ElF7HkJwhUeTCh3pwmpIc+HvhXwhlsfmoC1JA0vjiDVsytADdQAv672bf
 8yFiBk3K9tlgnnRIcflnrg6I46xlF39xIB4Opx+H55xbZPQWxjIAF4NI0
 7uZerxSt2zATEEKWIF72idTl/aKmXqLOpGD79HaDiCzKqg8FkBDgdZi9X
 i9+L0gizH1rrdLdsneUyqwCoiZp7XnUFx4xkbuDXDo1Ttbv1m/nIEflSl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321027241"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321027241"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634832418"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634832418"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Jan 2023 21:22:37 -0800
Message-Id: <20230111052239.781285-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230111052239.781285-1-vivek.kasireddy@intel.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v1 2/4] display-channel: Add the asyncs
 associated with dmabuf encode
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

This async is triggered by the encoder indicating that the
encoding process is completed.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/display-channel.cpp |  9 +++++++++
 server/display-channel.h   |  2 ++
 server/red-qxl.cpp         | 26 ++++++++++++++++++++++++++
 server/red-qxl.h           |  1 +
 server/spice-qxl.h         |  2 ++
 server/spice-server.syms   |  1 +
 6 files changed, 41 insertions(+)

diff --git a/server/display-channel.cpp b/server/display-channel.cpp
index 4bd0cf41..81df5420 100644
--- a/server/display-channel.cpp
+++ b/server/display-channel.cpp
@@ -2334,6 +2334,15 @@ void display_channel_gl_draw_done(DisplayChannel *display)
     set_gl_draw_async_count(display, display->priv->gl_draw_async_count - 1);
 }
 
+void display_channel_encode_done(DisplayChannel *display,
+                                 RedDrawable *red_drawable)
+{
+    if (red_drawable->dmabuf_fd > 0) {
+        red_qxl_dmabuf_encode_async_complete(display->priv->qxl);
+        red_drawable->dmabuf_fd = 0;
+    }
+}
+
 int display_channel_get_video_stream_id(DisplayChannel *display, VideoStream *stream)
 {
     return static_cast<int>(stream - display->priv->streams_buf.data());
diff --git a/server/display-channel.h b/server/display-channel.h
index c54df25c..0a1e520c 100644
--- a/server/display-channel.h
+++ b/server/display-channel.h
@@ -127,6 +127,8 @@ void                       display_channel_gl_scanout                (DisplayCha
 void                       display_channel_gl_draw                   (DisplayChannel *display,
                                                                       SpiceMsgDisplayGlDraw *draw);
 void                       display_channel_gl_draw_done              (DisplayChannel *display);
+void                       display_channel_encode_done               (DisplayChannel *display,
+                                                                      RedDrawable *drawable);
 
 void display_channel_process_draw(DisplayChannel *display,
                                   red::shared_ptr<RedDrawable> &&red_drawable,
diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
index 48c293ae..42a4029b 100644
--- a/server/red-qxl.cpp
+++ b/server/red-qxl.cpp
@@ -493,6 +493,32 @@ void red_qxl_gl_draw_async_complete(QXLInstance *qxl)
     red_qxl_async_complete(qxl, cookie);
 }
 
+SPICE_GNUC_VISIBLE
+void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
+                                   int fd, uint64_t cookie)
+{
+    QXLState *qxl_state;
+
+    spice_return_if_fail(qxl != nullptr);
+    qxl_state = qxl->st;
+
+    qxl_state->scanout.drm_dma_buf_fd = fd;
+    qxl_state->gl_draw_cookie = cookie;
+}
+
+void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl)
+{
+    QXLState *qxl_state = qxl->st;
+    uint64_t cookie = qxl->st->gl_draw_cookie;
+
+    if (cookie == GL_DRAW_COOKIE_INVALID) {
+        return;
+    }
+    qxl_state->scanout.drm_dma_buf_fd = 0;
+    qxl->st->gl_draw_cookie = GL_DRAW_COOKIE_INVALID;
+    red_qxl_async_complete(qxl, cookie);
+}
+
 SPICE_GNUC_VISIBLE
 void spice_qxl_set_device_info(QXLInstance *instance,
                                const char *device_address,
diff --git a/server/red-qxl.h b/server/red-qxl.h
index 2084acb1..e8e7c373 100644
--- a/server/red-qxl.h
+++ b/server/red-qxl.h
@@ -40,6 +40,7 @@ bool red_qxl_get_allow_client_mouse(QXLInstance *qxl, int *x_res, int *y_res, in
 SpiceMsgDisplayGlScanoutUnix *red_qxl_get_gl_scanout(QXLInstance *qxl);
 void red_qxl_put_gl_scanout(QXLInstance *qxl, SpiceMsgDisplayGlScanoutUnix *scanout);
 void red_qxl_gl_draw_async_complete(QXLInstance *qxl);
+void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl);
 int red_qxl_check_qxl_version(QXLInstance *qxl, int major, int minor);
 SpiceServer* red_qxl_get_server(QXLState *qxl);
 uint32_t red_qxl_marshall_device_display_info(const QXLInstance *qxl, SpiceMarshaller *m);
diff --git a/server/spice-qxl.h b/server/spice-qxl.h
index bf17476b..ca9816ec 100644
--- a/server/spice-qxl.h
+++ b/server/spice-qxl.h
@@ -92,6 +92,8 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
                              uint32_t x, uint32_t y,
                              uint32_t w, uint32_t h,
                              uint64_t cookie);
+void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
+                                   int fd, uint64_t cookie);
 
 /* since spice 0.14.2 */
 
diff --git a/server/spice-server.syms b/server/spice-server.syms
index 8da46c20..9748cc24 100644
--- a/server/spice-server.syms
+++ b/server/spice-server.syms
@@ -182,4 +182,5 @@ SPICE_SERVER_0.14.3 {
 global:
     spice_server_get_video_codecs;
     spice_server_free_video_codecs;
+    spice_qxl_dmabuf_encode_async;
 } SPICE_SERVER_0.14.2;
-- 
2.37.2

