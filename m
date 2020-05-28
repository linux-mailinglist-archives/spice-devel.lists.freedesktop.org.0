Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 691BB1E60E0
	for <lists+spice-devel@lfdr.de>; Thu, 28 May 2020 14:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6156E511;
	Thu, 28 May 2020 12:31:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A776E511
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 12:31:12 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id l11so27760278wru.0
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 05:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=16TdObJ6t2uzckMSkoknIfmmESS5IWUO3ucX62yXkvY=;
 b=ddZXdr1djadlRgsIT17ifUjX9t7ZhkaGOyYFCOsrchMedZGysI4tEMbdxb6E7dPYbq
 vHXvIuPWSXY/wm5dZc39pGmwvP8DlLaE5mZAz00241hdlw7e4pM3JyVywO+5u6CoQ+KY
 J9YeBn11WsjBxkniMiLgnxtzf6ajMOT4TqMoXPRX9ejbhgH0syTiT2ygtOvj/QZZkU3O
 XTnLOyJPE2EusJSi5ZVm6EFV+WDhi/bZSiOL+XAhD/XgJ3TzLux7gfLRenIwRHuxtL6h
 JTYQZV4POcAkASRLjVEgLr8JFFno7pfuTtBXmd6p40ZJJvZlojUx98ozZqfddzhAsd5t
 HdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=16TdObJ6t2uzckMSkoknIfmmESS5IWUO3ucX62yXkvY=;
 b=Y1F9awNEazPgSk3B4Om8pfyX2GMbiPbXAQ44lm54HqSRQbkoBY52HWtN11HUN6CWTW
 tATQvy4K+VOmISS+N0ffqkBJVuGDAXn7gyCmTb1AElOLfQRplW36CLlxMepTcSARmb+3
 J0Gei54Ad2bZVhr6NiFbZ+wyujnn7JIroGOYz/Ui/hajlqQcObiX5bc5pACCKiIeyUTa
 qMY1u6T7ZwgKiJ4pdoVu4D4fGYUrnnoKGV8Eq9ROc+AnrTamBklbnQzuhO4o89i+Z6hD
 fC6JIzeznrk48UcZOK50xe4lMoXDDsgliyx5b1fRMmw/r5hUrQcqaqqOzrr+wvPaAIrq
 I+kA==
X-Gm-Message-State: AOAM531k6Qy3Ue38chQY3z0+nkJZ5aTtPRgMkRX1UbPlEJoWCCBC7jgq
 +3WeOndlNCBYI70OAVrzCVUxB770bjI=
X-Google-Smtp-Source: ABdhPJzak4teRxuI5Uoa3ccw8BxcK5HMmuXxfX8NOpr59TZ96WfnqYV2ZJsSeqUa8ShFggzmaP270g==
X-Received: by 2002:a5d:4801:: with SMTP id l1mr3176710wrq.235.1590669070849; 
 Thu, 28 May 2020 05:31:10 -0700 (PDT)
Received: from localhost (125.red-176-84-222.dynamicip.rima-tde.net.
 [176.84.222.125])
 by smtp.gmail.com with ESMTPSA id q1sm6560103wmj.9.2020.05.28.05.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 05:31:10 -0700 (PDT)
Received: by localhost (sSMTP sendmail emulation);
 Thu, 28 May 2020 13:31:08 +0100
From: Oliver Gutierrez <ogutsua@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 28 May 2020 13:31:06 +0100
Message-Id: <20200528123106.846919-1-ogutsua@gmail.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] Added needed import of function
 arraybuffer_to_str
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

---
 src/port.js | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/port.js b/src/port.js
index 74523ae..b254131 100644
--- a/src/port.js
+++ b/src/port.js
@@ -20,7 +20,7 @@
 */
 
 import { Constants } from './enums.js';
-import { DEBUG } from './utils.js';
+import { DEBUG, arraybuffer_to_str } from './utils.js';
 import { SpiceConn } from './spiceconn.js';
 import { SpiceMsgPortInit } from './spicemsg.js';
 
-- 
2.25.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
