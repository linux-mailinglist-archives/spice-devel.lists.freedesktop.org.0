Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3BF21C7F6
	for <lists+spice-devel@lfdr.de>; Sun, 12 Jul 2020 10:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EE96E20F;
	Sun, 12 Jul 2020 08:01:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458576E20F
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jul 2020 08:01:27 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id q5so9851685wru.6
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jul 2020 01:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y1+oIIluRlcIbp+6ZK+Eb2t5bvTnWqBssaFtkK1I25Q=;
 b=bpU/co1mMknJdpsQyirB3rYAyX3W5vKKwTKqJTi5kpLaS3MSvDZJKMwip/tjWA6BM/
 /9Y0ywDHzIdxTmhNmKVu/AS2oxwZo0Tt8h6X3SkWHD8ZofJGfiF1f3DJpgFdxaFVsZVG
 bAExYjVc2WUgF3JcI3RjzasBRwrFyH/E/RrnwD9sWAu1Q2jjfxMhDgbykUe0riU4EHhm
 LoQIPezT/ceHPQQqcfheF2X31AJ/E+h1yR3dcsNSAAPWzS+dWueQkWHPdoJZmQfba/E+
 aK/vCAftVyQkEiExmqPHbi3AQnMuZhXeyJBpjFPoEm8PNQt2McCl7PhCKT4pfgIgP4ZC
 2OhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y1+oIIluRlcIbp+6ZK+Eb2t5bvTnWqBssaFtkK1I25Q=;
 b=C5EW5RFQtV9Qirawz47JzvTBmK5NWBpiVSC6klMe0uVvDbyNJ6j6RfoQby3mpPTkpI
 5h2qLRnYq0d07grcZYiSo56BjqceJ+RX58wrHgW4oav0adWqEKBOAxSoujMoWk6K0sVG
 H5d5/+iEDpIodunwdgeBYugmcr6UpGscqMU+7iz7ha0FnGvaY+ISqiVWp40dRRbZGZr4
 iQkcM+QGkpZlkpSL2ie36Mk9IFuX0E/WXiWWtyNXqyKXEAqt/oLHaejRaaHVJhmIiJ1Q
 hJ35WDCXJi1w0BOxtkg034ycXSRSG1u4HZop4X/K0tsq/XZgc6uTbiw5lI8K9tZjnCLO
 n0vQ==
X-Gm-Message-State: AOAM532rXSGusbEf4q63nwamKoHfD1nydm3WIsvIlzs+am/FDaGDAopk
 PnxGqAufgDSdDWPCOWvLS7opRWRS+Rg=
X-Google-Smtp-Source: ABdhPJww+LVKRVbs8R2NCqr2IDmWDZV0Cfvv8xDYI/ArNUFKMsZ23OGQ6AoSu5Zwb1n9jYU46fBhZQ==
X-Received: by 2002:adf:82f5:: with SMTP id 108mr73838819wrc.218.1594540885588; 
 Sun, 12 Jul 2020 01:01:25 -0700 (PDT)
Received: from localhost.localdomain (bzq-109-67-95-41.red.bezeqint.net.
 [109.67.95.41])
 by smtp.gmail.com with ESMTPSA id s15sm16466246wmj.41.2020.07.12.01.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Jul 2020 01:01:25 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 12 Jul 2020 11:01:06 +0300
Message-Id: <20200712080107.175-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 1/2] qxl-wddm-dod: fix behavior on v5 device
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
Cc: yan@daynix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

https://bugzilla.redhat.com/show_bug.cgi?id=1851845
v5 device requires explicit reset to switch to VGA mode.

Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
---
 qxldod/QxlDod.cpp | 4 +++-
 qxldod/QxlDod.h   | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
index 7f03ee1..341518e 100755
--- a/qxldod/QxlDod.cpp
+++ b/qxldod/QxlDod.cpp
@@ -134,6 +134,7 @@ NTSTATUS QxlDod::CheckHardware()
         Header.DeviceID == 0x0100 &&
         Header.RevisionID >= 4)
     {
+        m_Revision = Header.RevisionID;
         Status = STATUS_SUCCESS;
     }
 
@@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)
 {
     PAGED_CODE();
     QxlClose();
-    if (m_bUefiMode)
+    /* QXL device rev 5+ requires explicit reset to switch to VGA mode */
+    if (m_bUefiMode || m_pQxlDod->Revision() > 4)
     {
         DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the device\n", __FUNCTION__));
         WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET), 0);
diff --git a/qxldod/QxlDod.h b/qxldod/QxlDod.h
index 016b1aa..24cbd39 100755
--- a/qxldod/QxlDod.h
+++ b/qxldod/QxlDod.h
@@ -720,6 +720,7 @@ private:
     KTIMER m_VsyncTimer;
     KDPC   m_VsyncTimerDpc;
     BOOLEAN m_bVsyncEnabled;
+    UCHAR m_Revision = 0;
     LONG m_VsyncFiredCounter;
 public:
     QxlDod(_In_ DEVICE_OBJECT* pPhysicalDeviceObject);
@@ -819,6 +820,7 @@ public:
         return m_DxgkInterface.DxgkCbAcquirePostDisplayOwnership(m_DxgkInterface.DeviceHandle, &DispInfo);
     }
     VOID EnableVsync(BOOLEAN bEnable);
+    UCHAR Revision() const { return m_Revision; }
 private:
     VOID CleanUp(VOID);
     NTSTATUS CheckHardware();
-- 
2.22.0.windows.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
