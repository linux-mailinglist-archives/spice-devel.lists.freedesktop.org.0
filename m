Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457CE7EBD43
	for <lists+spice-devel@lfdr.de>; Wed, 15 Nov 2023 07:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E8D10E4EA;
	Wed, 15 Nov 2023 06:57:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E19C10E4A9;
 Wed, 15 Nov 2023 03:40:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EC27E61516;
 Wed, 15 Nov 2023 03:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3832EC433C7;
 Wed, 15 Nov 2023 03:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1700019655;
 bh=tVgL1iVBYEHLvnBl1jIyCmnRPWjf5BlC0AfaKk93HBc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HiTcSslF8Bo8X70rFCFtJvBQjAjFLjWq4XHd2i+3kFRaSVhZS8fY9P1TTGpKuryF7
 ufF9AYFe70zkQtSmX5MPOvjeRRE0XN3lZVgzRY62zJPcnsQx5jP66rWFjydxrwjk5i
 +X0Su1rmciYFwCCHpLJbvXW3mB+8eKcFe6ihJGhmabMTGgIgaUe6ZhDXLdjI60Dsrt
 lkvb/Il4xbLnc/VN20jE1v1dwLSvTmsJU5+BXwTy/szpi9vJFquI1rX/LQqD/g+tmM
 rf30B2JzDS10azJ5uW2FQccZbgivWuJngRREn7Bgfn82Q0w8Mh12A1ir0INQ/IVL+2
 YguGA0o/BmMWQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 14 Nov 2023 22:40:12 -0500
Message-ID: <20231115034024.1236659-2-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231115034024.1236659-1-sashal@kernel.org>
References: <20231115034024.1236659-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.138
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 15 Nov 2023 06:57:20 +0000
Subject: [Spice-devel] [PATCH AUTOSEL 5.15 2/4] drm/qxl: prevent memory leak
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
Cc: Sasha Levin <sashal@kernel.org>, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 virtualization@lists.linux.dev, Maxime Ripard <mripard@kernel.org>,
 Zongmin Zhou <zhouzongmin@kylinos.cn>, kraxel@redhat.com, tzimmermann@suse.de,
 spice-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Zongmin Zhou <zhouzongmin@kylinos.cn>

[ Upstream commit 0e8b9f258baed25f1c5672613699247c76b007b5 ]

The allocated memory for qdev->dumb_heads should be released
in qxl_destroy_monitors_object before qxl suspend.
otherwise,qxl_create_monitors_object will be called to
reallocate memory for qdev->dumb_heads after qxl resume,
it will cause memory leak.

Signed-off-by: Zongmin Zhou <zhouzongmin@kylinos.cn>
Link: https://lore.kernel.org/r/20230801025309.4049813-1-zhouzongmin@kylinos.cn
Reviewed-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/qxl/qxl_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 9e0a1e8360117..dc04412784a0d 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -1221,6 +1221,9 @@ int qxl_destroy_monitors_object(struct qxl_device *qdev)
 	if (!qdev->monitors_config_bo)
 		return 0;
 
+	kfree(qdev->dumb_heads);
+	qdev->dumb_heads = NULL;
+
 	qdev->monitors_config = NULL;
 	qdev->ram_header->monitors_config = 0;
 
-- 
2.42.0

