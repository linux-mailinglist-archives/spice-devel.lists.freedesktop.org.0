Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 948A617326F
	for <lists+spice-devel@lfdr.de>; Fri, 28 Feb 2020 09:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05BB26EE41;
	Fri, 28 Feb 2020 08:06:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920276EC48
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:39 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id e8so4638852wrm.5
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jGkQy6GARMrTdcko1Rer3WUnvLpzhV0C66wlxAxhWNE=;
 b=UGjp3j2m8tSpVtgqlVsaT55NLPaJ+bCVZNIyBF9xRUhtONMNz9C25aIe4AKs+mpAuI
 fPMK5fZkOxdJBP1TkttHVjsFqD+3P/nq/HjaSFpRwkSmPeNftrevjNHz9YaqdM+rUxyq
 EdjgWR4GUIZHrdJ5QqimuB/ajA7WfCZI5Ptjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jGkQy6GARMrTdcko1Rer3WUnvLpzhV0C66wlxAxhWNE=;
 b=TB2yIQoIPXmTpySP/UL2RcfIt9Vf1REeRQHMuFQPvBnTk/BKmgx0lzDmjmfz0wnulQ
 wsHMGL98W3zSSsApkZ6g/poxgH0fLUBrVmriukgmfqywM4UrdSRUIhdmQWz/vXRwjCMz
 0TSR2wMDHUEcFcdceCWYbt2LusMfeHlb6Al4SlyP1i6GUOWjwzKyBwltWDJsPOL8GO7B
 oJoSvBYRt0Q2cZlAZ5qYiUrUJAH2NZI5TOQZmEFNnOdqbrT9wEXla4ug58cyqOpmBzEt
 5aSnN65WcnK6QyggXWIf/WB9qW5UJtRUP/WVAcYcG/58rbCIJHrkiiQsRMQfwIHI8IgB
 tz/Q==
X-Gm-Message-State: APjAAAVUwHVaoiAfeQ/yjRUzLQINLK3+WgxV0xJcZ1d31ZrzBwPpbMgi
 KKrUAKIbOtpINLUP8uUXud4aIw==
X-Google-Smtp-Source: APXvYqzi6pnLYSD8cXiyxKS8GvQP4s+u1dCT+w1GY+i7lVlNGRL1AhMKB3TARM9gKM0sDr2ZmPcmHQ==
X-Received: by 2002:adf:cc8b:: with SMTP id p11mr155186wrj.8.1582827338247;
 Thu, 27 Feb 2020 10:15:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:37 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:38 +0100
Message-Id: <20200227181522.2711142-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 08:06:13 +0000
Subject: [Spice-devel] [PATCH 07/51] drm/qxl: Use drmm_add_final_kfree
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_drv.c | 2 --
 drivers/gpu/drm/qxl/qxl_kms.c | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
index 4fda3f9b29f4..09102e2efabc 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.c
+++ b/drivers/gpu/drm/qxl/qxl_drv.c
@@ -144,8 +144,6 @@ static void qxl_drm_release(struct drm_device *dev)
 	 */
 	qxl_modeset_fini(qdev);
 	qxl_device_fini(qdev);
-	dev->dev_private = NULL;
-	kfree(qdev);
 }
 
 static void
diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
index 70b20ee4741a..09d7b5f6d172 100644
--- a/drivers/gpu/drm/qxl/qxl_kms.c
+++ b/drivers/gpu/drm/qxl/qxl_kms.c
@@ -27,6 +27,7 @@
 #include <linux/pci.h>
 
 #include <drm/drm_drv.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "qxl_drv.h"
@@ -121,6 +122,7 @@ int qxl_device_init(struct qxl_device *qdev,
 	qdev->ddev.pdev = pdev;
 	pci_set_drvdata(pdev, &qdev->ddev);
 	qdev->ddev.dev_private = qdev;
+	drmm_add_final_kfree(&qdev->ddev, qdev);
 
 	mutex_init(&qdev->gem.mutex);
 	mutex_init(&qdev->update_area_mutex);
-- 
2.24.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
