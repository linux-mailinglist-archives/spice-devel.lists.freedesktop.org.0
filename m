Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D490431DA8B
	for <lists+spice-devel@lfdr.de>; Wed, 17 Feb 2021 14:34:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398F889FD7;
	Wed, 17 Feb 2021 13:34:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A766E506
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Feb 2021 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613565143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wIgmEdcETYIvmhNMC9LU2v3VYZb5ENHPsx26BQXLWeo=;
 b=fwKaOiYNPCHv54JO2olb3HgWF/dbMj3VORUDkQQryJWaDB1RYKXVOYQodDyCy5LrPVpy7Y
 M8CD4OAGrK9zY3fq3AhpEp/Ol/6sIEo5/VolUJLL48wK/d6/5XsJysmPHWe9PFNh8CcI5X
 ZjK8+qoOPlpKtdc4n2L0Y8nUW1Wobxg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-gRnAcsj5P22VYwIevGInCQ-1; Wed, 17 Feb 2021 07:32:20 -0500
X-MC-Unique: gRnAcsj5P22VYwIevGInCQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88CCB195D56E;
 Wed, 17 Feb 2021 12:32:18 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-114-184.ams2.redhat.com
 [10.36.114.184])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4001860853;
 Wed, 17 Feb 2021 12:32:14 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 87D5918000B6; Wed, 17 Feb 2021 13:32:13 +0100 (CET)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 17 Feb 2021 13:32:03 +0100
Message-Id: <20210217123213.2199186-2-kraxel@redhat.com>
In-Reply-To: <20210217123213.2199186-1-kraxel@redhat.com>
References: <20210217123213.2199186-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Wed, 17 Feb 2021 13:34:48 +0000
Subject: [Spice-devel] [PATCH v2 01/11] drm/qxl: properly handle device init
 failures
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Tong Zhang <ztong0001@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Specifically do not try release resources which where
not allocated in the first place.

Cc: Tong Zhang <ztong0001@gmail.com>
Tested-by: Tong Zhang <ztong0001@gmail.com>
Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/qxl/qxl_display.c | 3 +++
 drivers/gpu/drm/qxl/qxl_kms.c     | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index c326412136c5..ec50d2cfd4e1 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -1183,6 +1183,9 @@ int qxl_destroy_monitors_object(struct qxl_device *qdev)
 {
 	int ret;
 
+	if (!qdev->monitors_config_bo)
+		return 0;
+
 	qdev->monitors_config = NULL;
 	qdev->ram_header->monitors_config = 0;
 
diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
index 66d74aaaee06..4dc5ad13f12c 100644
--- a/drivers/gpu/drm/qxl/qxl_kms.c
+++ b/drivers/gpu/drm/qxl/qxl_kms.c
@@ -288,6 +288,10 @@ void qxl_device_fini(struct qxl_device *qdev)
 {
 	int cur_idx;
 
+	/* check if qxl_device_init() was successful (gc_work is initialized last) */
+	if (!qdev->gc_work.func)
+		return;
+
 	for (cur_idx = 0; cur_idx < 3; cur_idx++) {
 		if (!qdev->current_release_bo[cur_idx])
 			continue;
-- 
2.29.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
