Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663F91714A3
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 11:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87046EC83;
	Thu, 27 Feb 2020 10:03:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB736EC82
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 10:03:04 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e8so2524085wrm.5
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 02:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VCHZ3QzuWYjTX3wKBgq8rgWOTpcGo0VAro2L7TwhSPU=;
 b=whCIK15ndLET9WkVsOrffOS8cTTc14dW8HdA8abNoFfma2u93tWcNPLoh1b8ei/IXk
 9/UzXyhIH2spRSPjueu6Sk6a0rdyfu6aiDGm8Di9kROh564e3wLC5XyXvHEl4YbdtYQw
 4qUlDHk0PekzPEn5kC/pIPtFoT9xSE9HShdbY7WuyLIqwD0ZW97aTyYkkGD0E4c91I6C
 mxuQqmLgGkfdFo6l5FSHV+5zt0G4BU+M42QePRoA05tBRWp6QlcrfN/seMjpopaO8Wvk
 6z7Nxw01q8rTz8Ug+ub300ydCycUtzJINoAjbWO4yHRR1S0DenwdXCjxhiNjgWz9CGqz
 vR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VCHZ3QzuWYjTX3wKBgq8rgWOTpcGo0VAro2L7TwhSPU=;
 b=fMR2ujUiuhhgqXaeuW3zwws41NVATNH+nItqvyTqxok6PabAkUH6VK2ExYJ4xiDU3L
 3zsen0v7Q6Oc5/KmK0YEQLe3Z/NMNBM9c2ytLNaSGdLjvoJJDZxMNpuRji2VupgPhcTo
 TwxyDSqpjMjvLPY6bOR/4xlz1FU0fdpweGvqlGR6uwGXsQHM5n38VtCI/WlV8VLOLaOX
 P+QgzNnHfXJj7XwZjGTGC//TGkgAj5M4dpl1sZF5gCyQ+Z2PGQqCZ9WEiEdin6NptAlO
 Pj3x3C+0W+a3wOOna1lgvGGwGVhLDOZ0HJre7+26Hum60vcN80fKbuyf46atkFIiYglw
 OIzw==
X-Gm-Message-State: APjAAAVgYvrf7a4wxOT1m/SgH4YJKFVs7GgBDozHEWSB31ZDd0HsFsEt
 B2+qBr/rlUmESLN/7GAqaWsRu+tj8/w=
X-Google-Smtp-Source: APXvYqwaxQywGrDWMgttOKmU0rct1DmBVmLSPj4Ua7vJVDKTxJG6zF/8Q/Cr+b9JCFiMFQooA6aOlQ==
X-Received: by 2002:a5d:608e:: with SMTP id w14mr3484654wrt.201.1582797782743; 
 Thu, 27 Feb 2020 02:03:02 -0800 (PST)
Received: from f2.redhat.com (bzq-79-177-42-131.red.bezeqint.net.
 [79.177.42.131])
 by smtp.gmail.com with ESMTPSA id h13sm7466429wml.45.2020.02.27.02.03.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 02:03:02 -0800 (PST)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Feb 2020 12:02:54 +0200
Message-Id: <20200227100255.8066-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227100255.8066-1-yuri.benditovich@daynix.com>
References: <20200227100255.8066-1-yuri.benditovich@daynix.com>
Subject: [Spice-devel] [PATCH qxl-wddm-dod 2/3] Enable screen rotation of
 180 and 270 degrees
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
Currently the screen can be shown as Landscape and
Portrait (90 deg. rotation). Allowing also Flipped
Portrait (270 deg. rotation) and Flipped Landscape
(180 deg).

Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
---
 qxldod/QxlDod.cpp | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
index 95c0e97..6e97360 100755
--- a/qxldod/QxlDod.cpp
+++ b/qxldod/QxlDod.cpp
@@ -1299,8 +1299,8 @@ NTSTATUS QxlDod::EnumVidPnCofuncModality(_In_ CONST DXGKARG_ENUMVIDPNCOFUNCMODAL
                 LocalVidPnPresentPath.ContentTransformation.RotationSupport.Identity = 1;
                 // Sample supports only Rotate90
                 LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate90 = 1;
-                LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate180 = 0;
-                LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate270 = 0;
+                LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate180 = 1;
+                LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate270 = 1;
                 SupportFieldsModified = TRUE;
             }
         } // End: ROTATION
@@ -1639,6 +1639,8 @@ NTSTATUS QxlDod::SetSourceModeAndPath(CONST D3DKMDT_VIDPN_SOURCE_MODE* pSourceMo
              if (pCurrentBddMode->DispInfo.Width == pModeInfo->VisScreenWidth &&
                  pCurrentBddMode->DispInfo.Height == pModeInfo->VisScreenHeight )
              {
+                 DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: %dx%d, rotation %d\n", __FUNCTION__,
+                     pCurrentBddMode->SrcModeHeight, pCurrentBddMode->SrcModeWidth, pCurrentBddMode->Rotation));
                  Status = m_pHWDevice->SetCurrentMode(m_pHWDevice->GetModeNumber(ModeIndex));
                  if (NT_SUCCESS(Status))
                  {
@@ -1684,6 +1686,8 @@ NTSTATUS QxlDod::IsVidPnPathFieldsValid(CONST D3DKMDT_VIDPN_PRESENT_PATH* pPath)
     }
     else if ((pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_IDENTITY) &&
              (pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_ROTATE90) &&
+             (pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_ROTATE180) &&
+             (pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_ROTATE270) &&
              (pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_NOTSPECIFIED) &&
              (pPath->ContentTransformation.Rotation != D3DKMDT_VPPR_UNINITIALIZED))
     {
-- 
2.17.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
