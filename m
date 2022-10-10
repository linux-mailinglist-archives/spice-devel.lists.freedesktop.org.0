Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7D05FA453
	for <lists+spice-devel@lfdr.de>; Mon, 10 Oct 2022 21:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1527E10E32E;
	Mon, 10 Oct 2022 19:49:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com
 [IPv6:2001:4860:4864:20::30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8289110E719
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Oct 2022 19:48:56 +0000 (UTC)
Received: by mail-oa1-x30.google.com with SMTP id
 586e51a60fabf-1322fa1cf6fso13583086fac.6
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Oct 2022 12:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=pOdRLq7nb/W2oC1Q8jY6UxGUu7o5ldBe7N8TPtlJRmI=;
 b=OGZhu3rKKwsFbkirqz1y2bY0C8WefBUPnAFLaR0fYnV9xNalBXBcCNnPgiaP41fQ3r
 w6nQXFCrcPTqOoSoVk3ZEcHbDIlswnqkzWtvydyL25L0coCnbJFI5uHCrrMTfOcCXwlc
 v+mWkyfkutf7fAxbW1UUF6ELce99p57HNQrM0B1S+WXZhT4UYSe0JWYCkuiop51KhlEa
 VIhkWfMhxUsgK5doDDq5rhXwOba7y00r46VBMynGJDPoHAAkdBNQRe5+vCXLmfE3S4XP
 iYsia/P02KWIbligoPWkPV9RNnCTikH8l3rwHEe7veF87++fMqRhRCOT2w2nt4Tn1E9z
 b+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pOdRLq7nb/W2oC1Q8jY6UxGUu7o5ldBe7N8TPtlJRmI=;
 b=w8CNDShhjUao9gYd7/MNFGCl7Y4zklHKaTB8I/NtV92ffW5P8jB3DElb7QQWv/lDsJ
 IRw1m0aBOYh3YvRMvSRCTqwrM2U4GbO5SxgKb/E0Q/vOYeWC5JWZfj7E/OZLnoHJBZak
 BzORaaF+fzbddiT/ZN9fjKIbv0gEDbnO23I6iTf5xuiwtOp09ZaoO/Gm+qni3KuCTlQk
 XSm2Wb9e4nYfX9TSpCqTzAAEUMijZqeIRggJzy7TxDYnWOy46Xj5N3e3rlVWPTEYl69m
 cjGdJTYLdvMsjoODs0jkvuDhepavZMfLWYaRiJ1a5ZaGCZ5Mcx5IBq2WAua7jFRxGGdW
 8pTw==
X-Gm-Message-State: ACrzQf1WdxpazobRoAmLxs7Y+jzKhcBLatQwpRv7W7RLpqEzQlErgHpd
 D1dRfuOa02RIMOFGyuCrtnfzWSHfOhw=
X-Google-Smtp-Source: AMsMyM6FeaUFcOslXgJeDKOHCLbuRSUu7S4gD7ful7B/RAxN3ymXw/issZetOXSF0r8f1EOTnLfEKQ==
X-Received: by 2002:a05:6870:3284:b0:136:7f6a:1de0 with SMTP id
 q4-20020a056870328400b001367f6a1de0mr4673152oac.71.1665431335136; 
 Mon, 10 Oct 2022 12:48:55 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:3cd6:908a:6ce1:5bc8])
 by smtp.gmail.com with ESMTPSA id
 g187-20020acab6c4000000b0035468f2d410sm2550082oif.55.2022.10.10.12.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Oct 2022 12:48:54 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 10 Oct 2022 16:48:46 -0300
Message-Id: <20221010194846.2466528-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH] meson: Allow building on a Wayland-only
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
it is possible to build spice-gtk without X11 GDK backend, so remove
x11 dependency in meson as well.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 meson.build | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meson.build b/meson.build
index dd46294..c63467d 100644
--- a/meson.build
+++ b/meson.build
@@ -152,7 +152,6 @@ if d.found()
   spice_gtk_deps += d
   if host_machine.system() != 'windows'
     spice_gtk_deps += dependency('epoxy')
-    spice_gtk_deps += dependency('x11')
     d = dependency('libva-x11', required: false)
     if d.found()
       spice_gtk_deps += d
-- 
2.25.1

