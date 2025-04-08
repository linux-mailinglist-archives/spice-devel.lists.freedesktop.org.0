Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F64A81765
	for <lists+spice-devel@lfdr.de>; Tue,  8 Apr 2025 23:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6773A10E05E;
	Tue,  8 Apr 2025 21:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=swemel.ru header.i=@swemel.ru header.b="ZZo5aa+f";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 326 seconds by postgrey-1.36 at gabe;
 Tue, 08 Apr 2025 13:11:31 UTC
Received: from mx.swemel.ru (mx.swemel.ru [95.143.211.150])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B554B10E012
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Apr 2025 13:11:31 +0000 (UTC)
From: Dmitry Frolov <frolov@swemel.ru>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=swemel.ru; s=mail;
 t=1744117562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Rys+Q4hdrMweb52SVsJPR0SoRVEZWR6MVEUcolW/znw=;
 b=ZZo5aa+fjFVAAY7RvLbySX39AN/tMrPy8s1i7Ltw9IyupUUeJPgJrGhwVC5Hj83BTVTLOs
 jCKO1BUYPcG4CLdMdMNK1IyKpdat0WEXA4rlBu8a2NQNpEMOi9HyQPYf5aYdWnmJU9sObW
 T6nh0Vk4ZpWD/5yMseCtzglBtfv9IB0=
To: spice-devel@lists.freedesktop.org
Cc: sdl.qemu@linuxtesting.org,
	Dmitry Frolov <frolov@swemel.ru>
Subject: [PATCH] usbredirhost: fix null dereference
Date: Tue,  8 Apr 2025 16:05:08 +0300
Message-Id: <20250408130506.522746-1-frolov@swemel.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 08 Apr 2025 21:06:40 +0000
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

In function usbredirhost_open_full(), when host->parser==NULL,
the call sequence:
"usbredirhost_close() --->
    usbredirhost_clear_device() --->
        usbredirhost_handle_disconnect()"
is called, where host->parser is being derefferenced without a check.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Dmitry Frolov <frolov@swemel.ru>
---
 usbredirhost/usbredirhost.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c
index 03c56e9..ad4c09b 100644
--- a/usbredirhost/usbredirhost.c
+++ b/usbredirhost/usbredirhost.c
@@ -269,6 +269,7 @@ static int usbredirhost_write(void *priv, uint8_t *data, int count)
    packet completion callbacks */
 static void usbredirhost_handle_disconnect(struct usbredirhost *host)
 {
+    if(!host->parser) return;
     /* Disconnect uses its own lock to avoid needing nesting capable locks */
     if (host->disconnect_lock) {
         host->parser->lock_func(host->disconnect_lock);
-- 
2.34.1

