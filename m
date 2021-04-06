Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06277355990
	for <lists+spice-devel@lfdr.de>; Tue,  6 Apr 2021 18:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96226E864;
	Tue,  6 Apr 2021 16:50:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1056E12D
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Apr 2021 16:50:00 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1617727799; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=2r/Lh31HLe0wM6IH+CYYoU4LL8N7Hn5GGEoChFPQX+k=;
 b=V1LoqlkRxSUySOHbqX/P0kxm7eeNUmxm6mst7OQ3asgPOMGmBS6YW+VmMD4SHHNh5M8bou
 1GAZ/uw0miOAb6/DdkAX4mlU45QGIsU6NJeWJRqlk9RUIQf+1T++zCnw/cVBBIZInbbNbH
 uARmaC4LBkeFmp5reQmo45kgEZuPEOg=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 607A6B316;
 Tue,  6 Apr 2021 16:49:59 +0000 (UTC)
From: Bruce Rogers <brogers@suse.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Apr 2021 10:49:47 -0600
Message-Id: <20210406164947.447488-1-brogers@suse.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] meson: Fix pkgconfig required library name
 reference
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Signed-off-by: Bruce Rogers <brogers@suse.com>
---
 usbredirhost/meson.build | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/usbredirhost/meson.build b/usbredirhost/meson.build
index 28dc688..a09188c 100644
--- a/usbredirhost/meson.build
+++ b/usbredirhost/meson.build
@@ -51,5 +51,6 @@ pkgconfig = import('pkgconfig')
 pkgconfig.generate(usbredir_host_lib,
                    name : 'libusbredirhost',
                    description : 'usbredirhost library',
-                   requires : [libusb_required_version, 'usbredirparser-0.5'],
+                   requires : [libusb_required_version, 'libusbredirparser-0.5'],
                    variables : 'exec_prefix=${prefix}')
+
-- 
2.30.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
