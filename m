Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAFC86E880
	for <lists+spice-devel@lfdr.de>; Fri,  1 Mar 2024 19:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798A310E930;
	Fri,  1 Mar 2024 18:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=rosalinux.ru header.i=@rosalinux.ru header.b="P8auQz5C";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 605 seconds by postgrey-1.36 at gabe;
 Fri, 01 Mar 2024 09:05:42 UTC
Received: from mail.rosalinux.ru (mail.rosalinux.ru [195.19.76.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3D310EC2A
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Mar 2024 09:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.rosalinux.ru (Postfix) with ESMTP id 20489D998EC3B;
 Fri,  1 Mar 2024 11:55:33 +0300 (MSK)
Received: from mail.rosalinux.ru ([127.0.0.1])
 by localhost (mail.rosalinux.ru [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z6G6-abwn9Qu; Fri,  1 Mar 2024 11:55:33 +0300 (MSK)
Received: from localhost (localhost [127.0.0.1])
 by mail.rosalinux.ru (Postfix) with ESMTP id E0C91D99A42FF;
 Fri,  1 Mar 2024 11:55:32 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rosalinux.ru E0C91D99A42FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosalinux.ru;
 s=1D4BB666-A0F1-11EB-A1A2-F53579C7F503; t=1709283332;
 bh=f2qKsIAGkUNEVelOg7DTK/0b4IF/e+zG6QgMW3olvD4=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=P8auQz5C6OaEzL92Wd4UVkrC0+agep5xnkw9WQbAvEflW8hYcBiV0bOPGTvWixe7R
 5gxvNYDmZDMIDT39UZNaUeriACLVOP+LYwBzNwp2rfCUbIjLGIV4y+Gn9PkkJH1Er2
 JUF5lJQmT3mMEr+/Q+tD7LNg94RH6EhR51r9IvJ99jPoMVABIFcQizUSbngm4T9xos
 YOlMDOS/3uc9mLjR6mQOjQb3qWpyRgPOrUpRCM0lhwhsDpkcZH8FPO5fhQU+YqsFOp
 sZn27iVdF2fI7cmW584/cJT+Vz4OzY87Bc1BK5LaXVEkH+8L44a/1Ao+xDCGi3r66n
 9aqkPUQvTnBAg==
X-Virus-Scanned: amavisd-new at rosalinux.ru
Received: from mail.rosalinux.ru ([127.0.0.1])
 by localhost (mail.rosalinux.ru [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id I9d5Qmb4AYe6; Fri,  1 Mar 2024 11:55:32 +0300 (MSK)
Received: from ubuntu.localdomain (unknown [144.206.93.23])
 by mail.rosalinux.ru (Postfix) with ESMTPSA id 97E4FD998EC3B;
 Fri,  1 Mar 2024 11:55:32 +0300 (MSK)
From: Aleksandr Burakov <a.burakov@rosalinux.ru>
To: Dave Airlie <airlied@redhat.com>,
	Gerd Hoffmann <kraxel@redhat.com>
Cc: Aleksandr Burakov <a.burakov@rosalinux.ru>,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: [PATCH] drm/qxl: fix NULL dereference in qxl_add_mode
Date: Fri,  1 Mar 2024 11:55:11 +0300
Message-Id: <20240301085511.23298-1-a.burakov@rosalinux.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 01 Mar 2024 18:33:39 +0000
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

Return value of a function 'drm_cvt_mode' is dereferenced without
checking for NULL but drm_mode_create() in drm_cvt_mode() may
return NULL value in case of memory allocation error.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 1b043677d4be ("drm/qxl: add qxl_add_mode helper function")
Signed-off-by: Aleksandr Burakov <a.burakov@rosalinux.ru>
---
 drivers/gpu/drm/qxl/qxl_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_=
display.c
index a152a7c6db21..447532c29e02 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -236,8 +236,10 @@ static int qxl_add_mode(struct drm_connector *connec=
tor,
 		return 0;
=20
 	mode =3D drm_cvt_mode(dev, width, height, 60, false, false, false);
-	if (preferred)
+	if (preferred && mode)
 		mode->type |=3D DRM_MODE_TYPE_PREFERRED;
+	else
+		return 0;
 	mode->hdisplay =3D width;
 	mode->vdisplay =3D height;
 	drm_mode_set_name(mode);
--=20
2.25.1

