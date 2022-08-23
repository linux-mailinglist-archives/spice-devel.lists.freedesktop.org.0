Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0D159D6C4
	for <lists+spice-devel@lfdr.de>; Tue, 23 Aug 2022 11:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2E6B2B2F;
	Tue, 23 Aug 2022 09:57:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1060 seconds by postgrey-1.36 at gabe;
 Tue, 23 Aug 2022 09:57:35 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [65.103.31.132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D08B12A0FA
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 09:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=299UDbRJQMwc188cjR3KD7aPHG13Vhpmu6b1jzRn5Gk=; b=x7C8KPr8+PouOUF9rlhac+7QCa
 RQSsacXpZPrwMEgEpIs48p5KFS4oQ3Y/gpTPIaZlXjeXz8SnPUVCy7ejFTBQ3cImCkU4zx5I4POqM
 QzksrMqQxwfvqDJuPcCG8N4dCyzk8PHzsGnmzqp6PD9OHTbIlTkHffdwPUyLl3wqZV8E=;
Received: from foghorn.codeweavers.com ([65.103.31.130]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtp (Exim 4.92)
 (envelope-from <hverbeet@codeweavers.com>) id 1oQQO0-00087T-P4
 for spice-devel@lists.freedesktop.org; Tue, 23 Aug 2022 04:39:53 -0500
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Aug 2022 11:39:52 +0200
Message-Id: <20220823093952.19560-1-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH x11spice] Call xf86SetDesiredModes() in
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Otherwise, we may end up with no mode (and thus no refresh rate) set if
nothing else (like e.g. .xinitrc) sets a mode for us.

Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 spice-video-dummy/src/spicedummy_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
index 8d8ba48..0ed7f8c 100644
--- a/spice-video-dummy/src/spicedummy_driver.c
+++ b/spice-video-dummy/src/spicedummy_driver.c
@@ -632,6 +632,8 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
 
     if (!xf86CrtcScreenInit(pScreen))
         return FALSE;
+    if (!xf86SetDesiredModes(pScrn))
+        return FALSE;
 
     xf86DPMSInit(pScreen, xf86DPMSSet, 0);
 
-- 
2.20.1

