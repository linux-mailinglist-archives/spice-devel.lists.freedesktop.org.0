Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3904494E0A5
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2024 11:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EABA10E180;
	Sun, 11 Aug 2024 09:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=swemel.ru header.i=@swemel.ru header.b="YlPeYD1e";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 530 seconds by postgrey-1.36 at gabe;
 Thu, 08 Aug 2024 14:05:38 UTC
Received: from mx.swemel.ru (mx.swemel.ru [95.143.211.150])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0514F10E749
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2024 14:05:38 +0000 (UTC)
From: Dmitry Frolov <frolov@swemel.ru>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=swemel.ru; s=mail;
 t=1723125404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hi2P+NbPbHC2/ux5B29gx7ekI/7rHdP7WgozLed4+Oo=;
 b=YlPeYD1ef3V7KQHbs+8yrYTHqvUV7fAbm3tAaDdQxSTFHp46II09FRHK3F2wH+YNzPUMM3
 tReLN83wfyX0gD128GM9NB87fJDaneLHjz5Ooy0O1wgMJGnW17unEZ+DE6cdXkZeQc5QwO
 MaZVeZG9p+fO5rriTHSfMihMisv4410=
To: spice-devel@lists.freedesktop.org
Cc: sdl.qemu@linuxtesting.org,
	Dmitry Frolov <frolov@swemel.ru>
Subject: [PATCH] server/tests/:fix free nonheap memmory attempt
Date: Thu,  8 Aug 2024 16:55:38 +0300
Message-Id: <20240808135537.1659119-1-frolov@swemel.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 11 Aug 2024 09:22:08 +0000
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

test_destroy() is trying to g_free(test->commands), which
was declared as global array.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Dmitry Frolov <frolov@swemel.ru>
---
 server/tests/test-display-resolution-changes.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/server/tests/test-display-resolution-changes.c b/server/tests/test-display-resolution-changes.c
index ac8c959d..c1dbdca9 100644
--- a/server/tests/test-display-resolution-changes.c
+++ b/server/tests/test-display-resolution-changes.c
@@ -77,7 +77,9 @@ int main(void)
     core->timer_start(ping_timer, ping_ms);
 
     basic_event_loop_mainloop();
-    test_destroy(test);
 
+    spice_server_destroy(test->server);
+    test->core->timer_remove(test->wakeup_timer);
+    g_free(test);
     return 0;
 }
-- 
2.34.1

