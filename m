Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC45FB048
	for <lists+spice-devel@lfdr.de>; Tue, 11 Oct 2022 12:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA2310E2DA;
	Tue, 11 Oct 2022 10:18:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAFE10E2DA
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Oct 2022 10:18:50 +0000 (UTC)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-1326637be6eso15285700fac.13
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Oct 2022 03:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MJ11Yz6JvhpuaRGez5g2+Hl65IUWD+3Lp4000Zg0E8o=;
 b=I2Uoe93dzcjSpH3ko2CR4ELj+YxOyDeiQcW0n/fReNme6n1toASBEumwIG+XFB2lzf
 pVGNq3fC5J1ivdNSSJYpGd+ETcY0ree6eDjWFAVnqex84WKpx6VsoT/Mwufzi9TbdouK
 YkGX5DbU67mebb+NOZiqurapcqDpwoDKjGJQYJBzBKHPZZr+8e55linWhveAvIozvX7s
 5KvJPDHbw/qpljeB/4Ypu8JM/v9sSrblv0zYp/BFQJEVhivF+slCNp4bvIpRkiHxfcRe
 pNr5Sn2sFWgTyqsuu3ybprKSWHHDgy7jILu1oQe43LmM/DNwo8wVzSTJBU/jvyDypOTH
 O8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MJ11Yz6JvhpuaRGez5g2+Hl65IUWD+3Lp4000Zg0E8o=;
 b=tstxb7oM+nFaqhXyVUEUfOMr4IdftHuYphFixJ0T25QXdYRfGcKSg1oWWRGHb+WuJs
 lOhgRcO9bTdhiF3MYpgd73oyL7QyuUqhgNZhOQwDN/q4QhpAtxm2RLD+CLe3O7Mqb8Fw
 DGxV35kszkfYNkw2HWpr5yVZXAZSh2iKc3QXX4zJawnnnrAy8A/pUY7jUXPumAiKoCi3
 uJiQ875jNtWSACk5KczeGT4857jEo6XVwSxji7+J9cYPtdt7HlOreIcj3pmxj0DkBB7T
 ejhCFbGVz+6qwhufgqoM0z3Zp1qGN2j0vzkUE5IK7AeTjVVnFpTujrVn9keHVHgnnfGY
 kY3g==
X-Gm-Message-State: ACrzQf0UiMIZnz4sTN+Af7zjBdNtrbIymBxyX4GowMbsvG2U2Xde5ooh
 F9nn7mAC5a2anxldVi8cu+GLzMkRlq0=
X-Google-Smtp-Source: AMsMyM5hBMqGHW2scAT0nSRwi2Dxd7OmmhqZmrs3UfyPVTAmr39N6+SQW3TFy5nnlppxl7R3Hpatjw==
X-Received: by 2002:a05:6870:538d:b0:136:3cc4:78fa with SMTP id
 h13-20020a056870538d00b001363cc478famr9698243oan.278.1665483529055; 
 Tue, 11 Oct 2022 03:18:49 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:fa0e:ff19:b78b:3630])
 by smtp.gmail.com with ESMTPSA id
 b37-20020a056870392500b0013297705e5dsm6222849oap.28.2022.10.11.03.18.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Oct 2022 03:18:48 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 11 Oct 2022 07:18:37 -0300
Message-Id: <20221011101837.2580079-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2] meson: Allow building on a Wayland-only
 environment
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
Cc: Fabio Estevam <festevam@denx.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Fabio Estevam <festevam@denx.de>

Currently, it is not possible to build spice-gtk on a Wayland-only
environment due to the x11 dependency in meson.

Since commit a7381b0864b7 ("Allow to build without X11 gdk backend)
it is possible to build spice-gtk without X11 GDK backend, so make
the x11 dependency in meson optional.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Make the x11 dependency optional instead of removing it (Frediano).

 meson.build | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meson.build b/meson.build
index dd46294085b0..c163a44f2d60 100644
--- a/meson.build
+++ b/meson.build
@@ -152,7 +152,10 @@ if d.found()
   spice_gtk_deps += d
   if host_machine.system() != 'windows'
     spice_gtk_deps += dependency('epoxy')
-    spice_gtk_deps += dependency('x11')
+    d = dependency('x11', required: false)
+    if d.found()
+      spice_gtk_deps += d
+    endif
     d = dependency('libva-x11', required: false)
     if d.found()
       spice_gtk_deps += d
-- 
2.25.1

