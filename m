Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1CE5FADF4
	for <lists+spice-devel@lfdr.de>; Tue, 11 Oct 2022 10:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94FDF10E7DE;
	Tue, 11 Oct 2022 08:02:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 300 seconds by postgrey-1.36 at gabe;
 Mon, 10 Oct 2022 19:42:55 UTC
Received: from phobos.denx.de (phobos.denx.de
 [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655A710E2FF
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Oct 2022 19:42:55 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2804:14c:485:4b69:3cd6:908a:6ce1:5bc8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: festevam@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id 24B198493F;
 Mon, 10 Oct 2022 21:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1665430671;
 bh=79Y9BLWiVHnDaGF51PEXgb+8gPd8lVJLsV8u/DOiJ1w=;
 h=From:To:Cc:Subject:Date:From;
 b=hWZqElwDc68Ie88ih1dh+iMlQgifHy1GnmH5FJaw+IAu6R+l69Sl9GmbewRkiUDVN
 +KkmCavNqcRpcODXRlU4XNu4Gk/oOURSco3NR6D8yslYC8lZwmwKEhxBV+0vDxb9gh
 rim38A4xuAopSDLxlur3mKHmtVD4VyXNK/765EpPpTcoL4eAg8HRhcz8cyl4w4owr5
 TX6TFm0i9slHccmxIL/cCkgOcmeOVsTKjpzlokKA3fy6/ouj6s8ZIJBFyZo7zcVfn5
 u+JD/QrViRcumGCQvqHQYPTJgHtscQPQd8e+Wvy7GPoR3X8qoG6Z3gXuwhQgvzvAtm
 kClH13XEbkNyQ==
From: Fabio Estevam <festevam@denx.de>
To: spice-devel@lists.freedesktop.org
Date: Mon, 10 Oct 2022 16:37:09 -0300
Message-Id: <20221010193709.2463170-1-festevam@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Mailman-Approved-At: Tue, 11 Oct 2022 08:02:31 +0000
Subject: [Spice-devel] [PATCH spice-gtk] meson: Allow building on a
 Wayland-only environment
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
Cc: Fabio Estevam <festevam@denx.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Currently, it is not possible to build spice-gtk on a Wayland-only
environment due to the x11 dependency in meson.

Since commit a7381b0864b7 ("Allow to build without X11 gdk backend)
it is possible to build spice-gtk without X11 GDK backend, so remove
x11 dependency in meson as well.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 meson.build | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meson.build b/meson.build
index dd46294..c63467d 100644
--- a/meson.build
+++ b/meson.build
@@ -152,7 +152,6 @@ if d.found()
   spice_gtk_deps += d
   if host_machine.system() != 'windows'
     spice_gtk_deps += dependency('epoxy')
-    spice_gtk_deps += dependency('x11')
     d = dependency('libva-x11', required: false)
     if d.found()
       spice_gtk_deps += d
-- 
2.25.1

