Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5061B998E
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 10:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59ACE89A9A;
	Mon, 27 Apr 2020 08:16:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay.sw.ru (relay.sw.ru [185.231.240.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B7989D89;
 Mon, 27 Apr 2020 07:55:43 +0000 (UTC)
Received: from vvs-ws.sw.ru ([172.16.24.21])
 by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <vvs@virtuozzo.com>)
 id 1jSybv-00024J-Os; Mon, 27 Apr 2020 10:55:27 +0300
From: Vasily Averin <vvs@virtuozzo.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <d0d96600-b147-0c44-f551-97a66083518d@virtuozzo.com>
Date: Mon, 27 Apr 2020 10:55:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Mon, 27 Apr 2020 08:16:35 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: lost qxl_bo_kunmap_atomic_page in
 qxl_image_init_helper()
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
Cc: David Airlie <airlied@linux.ie>, spice-devel@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Signed-off-by: Vasily Averin <vvs@virtuozzo.com>
---
 drivers/gpu/drm/qxl/qxl_image.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/qxl/qxl_image.c b/drivers/gpu/drm/qxl/qxl_image.c
index 43688ecdd8a0..7270da62fc29 100644
--- a/drivers/gpu/drm/qxl/qxl_image.c
+++ b/drivers/gpu/drm/qxl/qxl_image.c
@@ -212,6 +212,7 @@ qxl_image_init_helper(struct qxl_device *qdev,
 		break;
 	default:
 		DRM_ERROR("unsupported image bit depth\n");
+		qxl_bo_kunmap_atomic_page(qdev, image_bo, ptr);
 		return -EINVAL; /* TODO: cleanup */
 	}
 	image->u.bitmap.flags = QXL_BITMAP_TOP_DOWN;
-- 
2.17.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
