Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A02D7C7C59
	for <lists+spice-devel@lfdr.de>; Fri, 13 Oct 2023 05:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FD510E080;
	Fri, 13 Oct 2023 03:53:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 917 seconds by postgrey-1.36 at gabe;
 Fri, 13 Oct 2023 02:19:44 UTC
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
 by gabe.freedesktop.org (Postfix) with ESMTP id 313B310E586
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Oct 2023 02:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=9r32H
 Jr+aZCW8hq5PA5ylkFRQQicXVfPBRAd4cEZX70=; b=OOdAW49H3evvBjINGia5r
 GEGSXFjjNA//Gb8AlS1uaq85j2IUVn9DoWGOcCqND6S9Bdu6akoOyYqw+e+GqxCm
 pKucz41MI9rGpPJqewSw5nsLP5S5/BCSs2wnMw8BXqidefqNUCof9IxguuEcvQ4C
 QNgAbm/xF1j770l2oE0QtU=
Received: from icess-ProLiant-DL380-Gen10.. (unknown [183.174.60.14])
 by zwqz-smtp-mta-g1-4 (Coremail) with SMTP id _____wDn74yHpShl9zKfAQ--.16988S4;
 Fri, 13 Oct 2023 10:04:00 +0800 (CST)
From: Ma Ke <make_ruc2021@163.com>
To: airlied@redhat.com, kraxel@redhat.com, airlied@gmail.com, daniel@ffwll.ch
Date: Fri, 13 Oct 2023 10:03:50 +0800
Message-Id: <20231013020350.344576-1-make_ruc2021@163.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wDn74yHpShl9zKfAQ--.16988S4
X-Coremail-Antispam: 1Uf129KBjvdXoWruF13Kr4Uur47Xw43AFW8JFb_yoW3KFg_WF
 y8ZwsrXryDu3Wvkr47Z34fZr1SvF1kZFWxZr1xt34Sqr48W3Z8Xry7Zwn5Z3y7Z340yFyD
 Aw4UGFnxAFs7GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRKfOzJUUUUU==
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: 5pdnvshuxfjiisr6il2tof0z/1tbivg4IC1ZcjGVeaQABsm
X-Mailman-Approved-At: Fri, 13 Oct 2023 03:53:06 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: fix a possible null pointer
 dereference
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
Cc: spice-devel@lists.freedesktop.org, Ma Ke <make_ruc2021@163.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

In qxl_add_mode(), the return value of drm_cvt_mode() is assigned
to mode, which will lead to a NULL pointer dereference on failure
of drm_cvt_mode(). Add a check to avoid null pointer dereference.

Signed-off-by: Ma Ke <make_ruc2021@163.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 6492a70e3c39..8a14edaa4aa3 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -236,6 +236,8 @@ static int qxl_add_mode(struct drm_connector *connector,
 		return 0;
 
 	mode = drm_cvt_mode(dev, width, height, 60, false, false, false);
+	if (!mode)
+		return 0;
 	if (preferred)
 		mode->type |= DRM_MODE_TYPE_PREFERRED;
 	mode->hdisplay = width;
-- 
2.37.2

