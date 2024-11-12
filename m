Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA069C59EE
	for <lists+spice-devel@lfdr.de>; Tue, 12 Nov 2024 15:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F027210E31B;
	Tue, 12 Nov 2024 14:08:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 526 seconds by postgrey-1.36 at gabe;
 Tue, 12 Nov 2024 14:08:33 UTC
Received: from mail-gw01.astralinux.ru (mail-gw01.astralinux.ru
 [37.230.196.243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 668D210E31B
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Nov 2024 14:08:33 +0000 (UTC)
Received: from gca-sc-a-srv-ksmg01.astralinux.ru (localhost [127.0.0.1])
 by mail-gw01.astralinux.ru (Postfix) with ESMTP id C8AE324C31
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Nov 2024 16:59:43 +0300 (MSK)
Received: from new-mail.astralinux.ru (gca-yc-ruca-srv-mail05.astralinux.ru
 [10.177.185.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail-gw01.astralinux.ru (Postfix) with ESMTPS
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Nov 2024 16:59:42 +0300 (MSK)
Received: from rbta-msk-lt-106062.astralinux.ru (unknown [10.177.20.58])
 by new-mail.astralinux.ru (Postfix) with ESMTPA id 4Xnp261gk5z1c0sV;
 Tue, 12 Nov 2024 16:59:42 +0300 (MSK)
From: Anastasia Belova <abelova@astralinux.ru>
To: spice-devel@lists.freedesktop.org
Cc: Anastasia Belova <abelova@astralinux.ru>
Subject: [PATCH] usbredirtestclient: fix memory leak
Date: Tue, 12 Nov 2024 16:59:00 +0300
Message-Id: <20241112135900.29365-1-abelova@astralinux.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-KSMG-AntiPhishing: NotDetected
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Envelope-From: abelova@astralinux.ru
X-KSMG-AntiSpam-Info: LuaCore: 41 0.3.41
 623e98d5198769c015c72f45fabbb9f77bdb702b, {Tracking_internal2},
 {Tracking_from_domain_doesnt_match_to}, astralinux.ru:7.1.1;
 new-mail.astralinux.ru:7.1.1; d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;
 127.0.0.199:7.1.2, FromAlignment: s
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiSpam-Lua-Profiles: 189118 [Nov 12 2024]
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Version: 6.1.1.7
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.1.0.7854,
 bases: 2024/11/12 13:08:00 #26848145
X-KSMG-AntiVirus-Status: NotDetected, skipped
X-KSMG-LinksScanning: NotDetected
X-KSMG-Message-Action: skipped
X-KSMG-Rule-ID: 1
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

free dynamic memory pointed by data before returning
from function.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Anastasia Belova <abelova@astralinux.ru>
---
 usbredirtestclient/usbredirtestclient.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/usbredirtestclient/usbredirtestclient.c b/usbredirtestclient/usbredirtestclient.c
index 62b72e8..6da87ec 100644
--- a/usbredirtestclient/usbredirtestclient.c
+++ b/usbredirtestclient/usbredirtestclient.c
@@ -409,6 +409,7 @@ static int usbredirtestclient_cmdline_ctrl(void)
             }
             if (!arg || *endptr != '\0') {
                 printf("Missing or invalid data byte(s)\n");
+                free(data);
                 return 0;
             }
         }
-- 
2.30.2

