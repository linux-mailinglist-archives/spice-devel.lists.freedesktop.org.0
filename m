Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C948C1714A4
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 11:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323586EC82;
	Thu, 27 Feb 2020 10:03:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1136EC82
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 10:03:05 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id m16so2482797wrx.11
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 02:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Xnqakn4m7sAJszLk+ooK7KiW/gVSZcOf0S4nKIB1FWk=;
 b=TEZy9R0g11xKAlwXbwiPAUIrkfv9+U1XWrM8/iLmsJwOeGG+y/pWYFx4Jj8tSVi3kR
 wiNQjnUg1io7KSY0wmlrJ1tweAZPjDDLk4kibhF2KZXWrFWhep1ReMUe9oUQTZuS82MV
 qgJM6ZuHaff3oG6bivme+T2RTfbbtsbKR/5EnOQjFzCOJf7J/QJH0cC+KhKqmhJkytUB
 BP3BmLBjv968kBztckIkXjEUjEmmquyG3UMNpMMxyftcufxNSTVkz3ftRbKZVWO6u+JQ
 ctwjnoaDh+KsH7bOTyCtbaOT9zXnISimDkyP5BjSM8+Ja48yRHtge9PdYtJ+JzCparaG
 7kcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Xnqakn4m7sAJszLk+ooK7KiW/gVSZcOf0S4nKIB1FWk=;
 b=RkMAoEpAlfMB76gLYrDEYDx1U2CCXFI6BLW5HeQePwxtUadQTOygfXxIgQM0iHXnsY
 ca8NtPKX0hwOwf4VQNSicgjem8iTRMFdZ5wPZ8ssybizZPV8a4gOLYPI4GkSRs9Icd+j
 E5gwr0HNw3pTvV6qlwMNnc211ygO1g/TQvMldk2K1o+F2AF6yJXW59I+8EwkeGtMP4+b
 I2UyUoI14dV1KgmbCrMPyWk8t7gcpb5MOCGDUuoumy+5MYcIiaSsOKjTeJbKYfH3ojfU
 QRM1OzillWqPpy8NWCA1md9k2mjxwlvyv8mDHfvj9Mf+QPMFALv965bGP4vr3KiMdDI+
 dlCw==
X-Gm-Message-State: APjAAAWLHvNe5pnBpmPRq1pXaNJ1aATK/7p5xzDMBOzyRi5q06FHc6MP
 r0PSRYAObwzL5+CQd7qG1rr24w7XFqM=
X-Google-Smtp-Source: APXvYqx5tMJLoi+BjYeW8cRp7O3xc7kDJrUob5iLxHrZta1RfE/e6DiPfXQRGQA34MgHLxnEmfUh/Q==
X-Received: by 2002:a5d:4443:: with SMTP id x3mr3816976wrr.379.1582797783637; 
 Thu, 27 Feb 2020 02:03:03 -0800 (PST)
Received: from f2.redhat.com (bzq-79-177-42-131.red.bezeqint.net.
 [79.177.42.131])
 by smtp.gmail.com with ESMTPSA id h13sm7466429wml.45.2020.02.27.02.03.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 02:03:03 -0800 (PST)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Feb 2020 12:02:55 +0200
Message-Id: <20200227100255.8066-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227100255.8066-1-yuri.benditovich@daynix.com>
References: <20200227100255.8066-1-yuri.benditovich@daynix.com>
Subject: [Spice-devel] [PATCH qxl-wddm-dod 3/3] Remap the pointer in case of
 rotated screen
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

https://bugzilla.redhat.com/show_bug.cgi?id=1791804
The remapping will work only when the driver controls
the placement of drawn pointer, i.e. when the input
device in VM is usb-mouse and the Spice Agent is not
active.

Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
---
 qxldod/QxlDod.cpp | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
index 6e97360..7f03ee1 100755
--- a/qxldod/QxlDod.cpp
+++ b/qxldod/QxlDod.cpp
@@ -557,7 +557,31 @@ NTSTATUS QxlDod::SetPointerPosition(_In_ CONST DXGKARG_SETPOINTERPOSITION* pSetP
 
     QXL_ASSERT(pSetPointerPosition != NULL);
     QXL_ASSERT(pSetPointerPosition->VidPnSourceId < MAX_VIEWS);
-
+    DXGKARG_SETPOINTERPOSITION adjusted;
+    if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation == D3DKMDT_VPPR_ROTATE90)
+    {
+        adjusted = *pSetPointerPosition;
+        adjusted.Y = m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeHeight - pSetPointerPosition->X;
+        adjusted.X = pSetPointerPosition->Y;
+        DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: src %d,%d -> %d,%d\n", __FUNCTION__,
+            pSetPointerPosition->X, pSetPointerPosition->Y,
+            adjusted.X, adjusted.Y));
+        pSetPointerPosition = &adjusted;
+    }
+    else if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation == D3DKMDT_VPPR_ROTATE180)
+    {
+        adjusted = *pSetPointerPosition;
+        adjusted.Y = m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeHeight - pSetPointerPosition->Y;
+        adjusted.X = m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeWidth - pSetPointerPosition->X;
+        pSetPointerPosition = &adjusted;
+    }
+    else if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation == D3DKMDT_VPPR_ROTATE270)
+    {
+        adjusted = *pSetPointerPosition;
+        adjusted.Y = pSetPointerPosition->X;
+        adjusted.X = m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeWidth - pSetPointerPosition->Y;
+        pSetPointerPosition = &adjusted;
+    }
     return m_pHWDevice->SetPointerPosition(pSetPointerPosition);
 }
 
-- 
2.17.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
