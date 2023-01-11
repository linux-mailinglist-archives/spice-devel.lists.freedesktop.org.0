Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81716653EC
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 06:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6CDA10E6EB;
	Wed, 11 Jan 2023 05:42:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBF110E6E8
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 05:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415736; x=1704951736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vaTSSeLjwoAL1O1Em/kvuQRrZHXdSSOtFmQZ0HZNYSY=;
 b=TKcwP2Vql86j3t5MRu5PMY2ldT0h1EgBwanmRAFrZtxCFGIJV20JJVAa
 Dzq9ZU14j0SlVPKGh4A760UhdQifiqCDzaazys+IJgzvK3q5iKapsb0AA
 haIENwoC1gi8Ly1vP6NrbzSjJv3W78tI2lIm2H0HnV9W2nUKVuCJBlrxA
 ZLyRGQ8HQQ3/xZ/SM9ZiHsxO80tHw77BIs51q2BXObb/CUo/+uCUgf+AK
 B6t/h76jKrOLWleUg9YysfAO6EsxCyIYmLKwcj3duqjHlp052O4PcmcvH
 kxo9waexljbYXK4IeXgQAD0hyIzZb5siXG4NPB7BhEBNzwhgvxyHDLhXN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321027237"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321027237"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634832415"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634832415"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:15 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Jan 2023 21:22:36 -0800
Message-Id: <20230111052239.781285-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230111052239.781285-1-vivek.kasireddy@intel.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
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

If the scanout has a valid dmabuf fd, then it is extracted and a
copy (of the fd) is stored in the drawable.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/red-parse-qxl.cpp | 8 ++++++++
 server/red-parse-qxl.h   | 1 +
 2 files changed, 9 insertions(+)

diff --git a/server/red-parse-qxl.cpp b/server/red-parse-qxl.cpp
index 68b9759d..8d9b82fb 100644
--- a/server/red-parse-qxl.cpp
+++ b/server/red-parse-qxl.cpp
@@ -1038,6 +1038,7 @@ static bool red_get_native_drawable(QXLInstance *qxl_instance, RedMemSlotInfo *s
                                     RedDrawable *red, QXLPHYSICAL addr, uint32_t flags)
 {
     QXLDrawable *qxl;
+    SpiceMsgDisplayGlScanoutUnix *scanout;
     int i;
 
     qxl = static_cast<QXLDrawable *>(memslot_get_virt(slots, addr, sizeof(*qxl), group_id));
@@ -1059,6 +1060,13 @@ static bool red_get_native_drawable(QXLInstance *qxl_instance, RedMemSlotInfo *s
         red_get_rect_ptr(&red->surfaces_rects[i], &qxl->surfaces_rects[i]);
     }
 
+    red->dmabuf_fd = 0;
+    scanout = red_qxl_get_gl_scanout(qxl_instance);
+    if (scanout != nullptr) {
+        red->dmabuf_fd = scanout->drm_dma_buf_fd;
+    }
+    red_qxl_put_gl_scanout(qxl_instance, scanout);
+
     red->type = qxl->type;
     switch (red->type) {
     case QXL_DRAW_ALPHA_BLEND:
diff --git a/server/red-parse-qxl.h b/server/red-parse-qxl.h
index 8bf0e2e3..dee50743 100644
--- a/server/red-parse-qxl.h
+++ b/server/red-parse-qxl.h
@@ -67,6 +67,7 @@ struct RedDrawable final: public RedQXLResource<RedDrawable> {
         SpiceWhiteness whiteness;
         SpiceComposite composite;
     } u;
+    int32_t dmabuf_fd;
 };
 
 struct RedUpdateCmd final: public RedQXLResource<RedUpdateCmd> {
-- 
2.37.2

