Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A06C37A50C
	for <lists+spice-devel@lfdr.de>; Tue, 11 May 2021 12:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CA06EA19;
	Tue, 11 May 2021 10:52:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1EA96EA17
 for <spice-devel@lists.freedesktop.org>; Tue, 11 May 2021 10:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620729934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fz6APZgVVSzyZ2NvuvgdrfUOBc1EEiPUznfJ8AorQ6Y=;
 b=P1IyKn2kq6O4SYE9rvB/v9k7toqO+g5gtnaNC6srUHipr87TovfFarZXfhTXdX/xrfAKgH
 dTAcxd/dv1VUDtsQswILCQFylVd1YuVkqz01vWEoFgfgqhW1bbU+adO9e+0ljP8J80tUU0
 omJDtp2MnfFbFef5kvUVTibe6ik0SvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-_56KFLUAMf2Yly7CyqlIag-1; Tue, 11 May 2021 06:45:33 -0400
X-MC-Unique: _56KFLUAMf2Yly7CyqlIag-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C0F5100670E;
 Tue, 11 May 2021 10:45:31 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-11.ams2.redhat.com
 [10.36.112.11])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BA3462499;
 Tue, 11 May 2021 10:45:29 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 577201800904; Tue, 11 May 2021 12:45:22 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 11 May 2021 12:45:22 +0200
Message-Id: <20210511104522.2694803-3-kraxel@redhat.com>
In-Reply-To: <20210511104522.2694803-1-kraxel@redhat.com>
References: <20210511104522.2694803-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mailman-Approved-At: Tue, 11 May 2021 10:52:05 +0000
Subject: [Spice-devel] [PATCH 2/2] drm/qxl: balance dumb_shadow_bo pin
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The shadow bo is created in pinned state, so we have to unpin it when
dropping the reference.  Otherwise ttm is unhappy and throws a WARN()
on release.

Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index be5183733c1b..9e0a1e836011 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -801,6 +801,7 @@ static void qxl_prepare_shadow(struct qxl_device *qdev, struct qxl_bo *user_bo,
 	    qdev->dumb_shadow_bo->surf.width  != surf.width ||
 	    qdev->dumb_shadow_bo->surf.height != surf.height) {
 		if (qdev->dumb_shadow_bo) {
+			qxl_bo_unpin(qdev->dumb_shadow_bo);
 			drm_gem_object_put
 				(&qdev->dumb_shadow_bo->tbo.base);
 			qdev->dumb_shadow_bo = NULL;
-- 
2.31.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
