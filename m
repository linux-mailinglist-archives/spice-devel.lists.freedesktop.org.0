Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228F386B182
	for <lists+spice-devel@lfdr.de>; Wed, 28 Feb 2024 15:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3AA10E2BE;
	Wed, 28 Feb 2024 14:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="lvczucGs";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 305 seconds by postgrey-1.36 at gabe;
 Mon, 26 Feb 2024 04:04:55 UTC
Received: from out199-9.us.a.mail.aliyun.com (out199-9.us.a.mail.aliyun.com
 [47.90.199.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E5410EDA7
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Feb 2024 04:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1708920291; h=From:To:Subject:Date:Message-Id:MIME-Version;
 bh=UXXJovU2AesrIYqdlrvFTpqhm0SaeJKemqLy2O2LCkE=;
 b=lvczucGsSCA2e4PIW7eIBKrHlLwB6mwJsJyHQfS713AruV4lnn4vDakS8dcGaelA6yEg6T1zEckqBwdspYiuNCSpE1btrQjB2K5FY7uqUNgciDIohSCwD6RyyW9Zr1rqUT4jo5j3vgr2jbdHhC2HhlZlzv2R7TmvldPLIyhIk/U=
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R711e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018045170;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=13; SR=0;
 TI=SMTPD_---0W1AMyXd_1708919967; 
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0W1AMyXd_1708919967) by smtp.aliyun-inc.com;
 Mon, 26 Feb 2024 11:59:40 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: airlied@redhat.com
Cc: kraxel@redhat.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] drm/qxl: remove redundant code
Date: Mon, 26 Feb 2024 11:59:26 +0800
Message-Id: <20240226035926.102859-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 28 Feb 2024 14:19:14 +0000
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Variable num_relocs is not effectively used, so delete it. Having two
labels seems somewhat redundant; the 'out_free_release' can be removed,
leaving 'out_free_bos'.

drivers/gpu/drm/qxl/qxl_ioctl.c:148:14: warning: variable 'num_relocs' set but not used.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=8316
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/qxl/qxl_ioctl.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_ioctl.c b/drivers/gpu/drm/qxl/qxl_ioctl.c
index dd0f834d881c..c1dd5709d37a 100644
--- a/drivers/gpu/drm/qxl/qxl_ioctl.c
+++ b/drivers/gpu/drm/qxl/qxl_ioctl.c
@@ -145,7 +145,7 @@ static int qxl_process_single_command(struct qxl_device *qdev,
 	struct qxl_release *release;
 	struct qxl_bo *cmd_bo;
 	void *fb_cmd;
-	int i, ret, num_relocs;
+	int i, ret;
 	int unwritten;
 
 	switch (cmd->type) {
@@ -196,11 +196,10 @@ static int qxl_process_single_command(struct qxl_device *qdev,
 	if (unwritten) {
 		DRM_ERROR("got unwritten %d\n", unwritten);
 		ret = -EFAULT;
-		goto out_free_release;
+		goto out_free_bos;
 	}
 
 	/* fill out reloc info structs */
-	num_relocs = 0;
 	for (i = 0; i < cmd->relocs_num; ++i) {
 		struct drm_qxl_reloc reloc;
 		struct drm_qxl_reloc __user *u = u64_to_user_ptr(cmd->relocs);
@@ -230,7 +229,6 @@ static int qxl_process_single_command(struct qxl_device *qdev,
 			reloc_info[i].dst_bo = cmd_bo;
 			reloc_info[i].dst_offset = reloc.dst_offset + release->release_offset;
 		}
-		num_relocs++;
 
 		/* reserve and validate the reloc dst bo */
 		if (reloc.reloc_type == QXL_RELOC_TYPE_BO || reloc.src_handle) {
@@ -261,7 +259,6 @@ static int qxl_process_single_command(struct qxl_device *qdev,
 	ret = qxl_push_command_ring_release(qdev, release, cmd->type, true);
 
 out_free_bos:
-out_free_release:
 	if (ret)
 		qxl_release_free(qdev, release);
 out_free_reloc:
-- 
2.20.1.7.g153144c

