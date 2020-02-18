Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A5C1632AA
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445796EA79;
	Tue, 18 Feb 2020 20:10:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71916E3F5
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BPCUBUbZwuGwLLeNmpZ+E+hrS16GWw9tmsZl7UTlciw=; b=rQleVSERM6zx4YLHyu4Sa1tzKW
 XBPgGUp3422dHWdXo3dO2wGKXhIlQFAYpLX53VDZSaTGNafLUeYtTJn6gNhTltb/3BPwvU5NuXNIF
 QrYq1GkNWSeP8sEExpTFA1CLKmGtYiJ2fw89L6w6PrZpDkk/IUqUQ3ubMRmO7dhl2FV4=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48wC-0000F4-Ab
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:44 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:36 -0600
Message-Id: <20200218195337.4080-7-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 7/8] Call xf86DPMSInit() in
 DUMMYScreenInit().
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is probably not strictly needed, but it's easy and gets rid of the
"Xlib:  extension "DPMS" missing on display ":2"." message.

Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 spice-video-dummy/src/spicedummy_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
index 18e96ce..543a3b4 100644
--- a/spice-video-dummy/src/spicedummy_driver.c
+++ b/spice-video-dummy/src/spicedummy_driver.c
@@ -623,6 +623,8 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
     if (!xf86CrtcScreenInit(pScreen))
         return FALSE;
 
+    xf86DPMSInit(pScreen, xf86DPMSSet, 0);
+
     if (dPtr->glamor && !glamor_init(pScreen, glamor_flags)) {
         xf86DrvMsg(pScrn->scrnIndex, X_ERROR,
                    "Failed to initialise glamor at ScreenInit() time.\n");
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
