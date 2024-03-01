Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E6D86E87F
	for <lists+spice-devel@lfdr.de>; Fri,  1 Mar 2024 19:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4820410E8E3;
	Fri,  1 Mar 2024 18:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=rosalinux.ru header.i=@rosalinux.ru header.b="PdctvGqO";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.rosalinux.ru (mail.rosalinux.ru [195.19.76.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD72210ECB2
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Mar 2024 12:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.rosalinux.ru (Postfix) with ESMTP id AE28ECFF46BCC;
 Fri,  1 Mar 2024 15:26:42 +0300 (MSK)
Received: from mail.rosalinux.ru ([127.0.0.1])
 by localhost (mail.rosalinux.ru [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id fqAs-W5z0ecx; Fri,  1 Mar 2024 15:26:42 +0300 (MSK)
Received: from localhost (localhost [127.0.0.1])
 by mail.rosalinux.ru (Postfix) with ESMTP id 84DBFCFF46BD3;
 Fri,  1 Mar 2024 15:26:42 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rosalinux.ru 84DBFCFF46BD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosalinux.ru;
 s=1D4BB666-A0F1-11EB-A1A2-F53579C7F503; t=1709296002;
 bh=GPmQWvjQuc1pVJSK54+GnJ6cGFBHUxKlE2p3TVblCUs=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=PdctvGqOjq3p2Zi7u3eZmpT/nGJf2zXfxbj9ZZS/6BvPa9WdbccuaQU/a1buAlzaC
 lVQ12ZpwmWjDVedZ0smgilBF8Z9Pe6XTnpIJ6krCG8aId80PRbrOGaVlptqYNZB+Yr
 wSAiQLLqn61BPdFa6L2VO57xPNZseHWfXUpCL19ZXoz4/zXVNFK7qBaSHTzKgPkFoy
 4wwsxFNmCIXStxhnrXXpp3Vh9fwJDbH6AgIYKG8bDv7Mhw/uP6sQ5KgvDZZJyCZkqW
 farm3lc+/N43U0R7OhXA7dtka1vlBlx1I68xZq6QYF8bhRJ69UMWEhvPE3fOR9L9Wv
 fmVWP3Fdhrk7w==
X-Virus-Scanned: amavisd-new at rosalinux.ru
Received: from mail.rosalinux.ru ([127.0.0.1])
 by localhost (mail.rosalinux.ru [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IDqMVs1C3EXX; Fri,  1 Mar 2024 15:26:42 +0300 (MSK)
Received: from ubuntu.localdomain (unknown [144.206.93.23])
 by mail.rosalinux.ru (Postfix) with ESMTPSA id 48574CFF46BCC;
 Fri,  1 Mar 2024 15:26:42 +0300 (MSK)
From: Aleksandr Burakov <a.burakov@rosalinux.ru>
To: Dave Airlie <airlied@redhat.com>,
	Gerd Hoffmann <kraxel@redhat.com>
Cc: Aleksandr Burakov <a.burakov@rosalinux.ru>,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: [PATCH v2] drm/qxl: fix NULL dereference in qxl_add_mode
Date: Fri,  1 Mar 2024 15:26:35 +0300
Message-Id: <20240301122635.25058-1-a.burakov@rosalinux.ru>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <oprbqmdpjzhjwuqypqfdnirl44drvrhlaiounos44ywdbiustm@myk6llv5chlv>
References: 
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
v2: case with false value of 'preferred' is now taken into account
 drivers/gpu/drm/qxl/qxl_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_=
display.c
index a152a7c6db21..d6dece7a0ed2 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -236,6 +236,9 @@ static int qxl_add_mode(struct drm_connector *connect=
or,
 		return 0;
=20
 	mode =3D drm_cvt_mode(dev, width, height, 60, false, false, false);
+	if (!mode)
+		return 0;
+
 	if (preferred)
 		mode->type |=3D DRM_MODE_TYPE_PREFERRED;
 	mode->hdisplay =3D width;
--=20
2.25.1

