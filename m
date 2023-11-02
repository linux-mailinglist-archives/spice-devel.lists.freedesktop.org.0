Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F257DF86D
	for <lists+spice-devel@lfdr.de>; Thu,  2 Nov 2023 18:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32FD10E956;
	Thu,  2 Nov 2023 17:12:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com
 [IPv6:2607:f8b0:4864:20::a30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C52F10E956
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Nov 2023 17:12:22 +0000 (UTC)
Received: by mail-vk1-xa30.google.com with SMTP id
 71dfb90a1353d-49dd647a477so489326e0c.3
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Nov 2023 10:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698945141; x=1699549941; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jkn3QUnpll26Jo2eYNsVjp46WxYN+6S9PZACzYztCgc=;
 b=MN0GQ47qXw95PS6JPFarBUPeuqHhIQhd2d1b6SovSZj1i6nELKGQpKz80FfiMCQqXb
 b2pbtuL1o/9OT/Q8QU5KpYJqPI8vsI6rC/kVcJ+abphZ3ggl9MhCpWHbESlVZ5vigfpU
 zQytaZcSHSG+TW28fnJSYgSzw7HVUebPEbYmAYeflbZmIUh9djI2zN0naBI+NJb4qXoW
 p6j+PZZCgD90dYQ2kOLdNL383OOnCu2Qt9lYS8KCUDvSNBt7M5fpMljVcJC2zNVNcsYR
 GKEIX9dGIDAV25Yeo/Xm7NWGnnXPLRUyvsluCJC00xD9LVWxJVUb5T5LROk1CS0JZECd
 sN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698945141; x=1699549941;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jkn3QUnpll26Jo2eYNsVjp46WxYN+6S9PZACzYztCgc=;
 b=uMTwN69VJFX97qWh3NpbovkmOpJVWb6m0R9aA8JXxilYnst94pTdzgT87OxdlIZ6FQ
 TZj2B8uAJAyfLnXoE01GmtZbDEJYmYOkp1oB43CmwCQIh0pN7weP2J2BET/Qi0hpYtjB
 SUJVVb8tbxrojmuLDdMLfAlpRXMcXVmP8NPnYNeoJ2/G7ygKWaLT+hHcwkyG7KvgQx6w
 HIpHWkjEVLOWY1xXIqPJoyAsMC8FctNwCV/tiQBSHVXx7NkhaHLC6saAHIHIpc9DZU77
 n37RnuLKuUU6olKoauGb/ae/UMplJaTnjjDEhR2f7tsFrVxTczJrEfTqQlkhBXdJSiqd
 XRYA==
X-Gm-Message-State: AOJu0YylnEoc5B98/PvycMDY1dhFwyv3Oj79HBelOmY/Lkfw3Ztt8vUG
 9pexfghuis94R09nltdfORaTr5W1hFk=
X-Google-Smtp-Source: AGHT+IG9OJhno3XIlJkeQASwF3QUL6kjqUN0RFKGHz6xyccCo1EkKMse7bwgLiSyLDhQlREn+qN+cQ==
X-Received: by 2002:a1f:fe42:0:b0:48d:13e5:1376 with SMTP id
 l63-20020a1ffe42000000b0048d13e51376mr17577696vki.10.1698945140896; 
 Thu, 02 Nov 2023 10:12:20 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 u143-20020a1fab95000000b0049a9ad3336dsm17829vke.25.2023.11.02.10.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Nov 2023 10:12:20 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:11:37 +0000
Message-ID: <20231102171138.409-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk 1/2] Update spice-common submodule
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

This brings in the following changes:

Vivek Kasireddy (1):
      common: Add a udev helper to identify GPU Vendor

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 subprojects/spice-common | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/subprojects/spice-common b/subprojects/spice-common
index 58d375e5..bb8f6698 160000
--- a/subprojects/spice-common
+++ b/subprojects/spice-common
@@ -1 +1 @@
-Subproject commit 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6
+Subproject commit bb8f66983af6b7f38dc80efa6b6ca8f34c2ab85e
-- 
2.41.0

