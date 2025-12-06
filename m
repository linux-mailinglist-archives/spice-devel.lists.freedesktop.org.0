Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C6DCAA31D
	for <lists+spice-devel@lfdr.de>; Sat, 06 Dec 2025 09:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F234710E2A9;
	Sat,  6 Dec 2025 08:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bfGkPJ5o";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E3F10EAC5
 for <spice-devel@lists.freedesktop.org>; Sat,  6 Dec 2025 02:27:03 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id
 6a1803df08f44-882399d60baso23526666d6.0
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Dec 2025 18:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764988023; x=1765592823; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RGShbK9xQsr2NjS/qZuDJNtffOJ6jq/hb7bzFL9+MF4=;
 b=bfGkPJ5otj41BewmFWS5a8Rp4knFRW5jV9c+31CrgN6yPs0BfYbyERmSmM4l7661D8
 8jvcBZSYjktZ4iRbRwgmKFYPMa8vkR+nPxFCXtF7sLn7+Sy6lB02g3X+MNsdvGTMf8K/
 G28IhZlS3wnOE8xTO5Kk4qtPYVnUFwbUvtzq2ycO10b358toqY3JlJu4Nf7BaYpTgUZA
 3YyRWxRXemAvX9oi2ZIi4DhFYBVgNeRV0J+iIhQ4mpYgPp3LUfjzYuS07Fu8wps+aG8R
 PHbJx4GU+TwMxJT+Dts3bT+bgmINm3Jv+ieva6w5pAhRiU2WDsYBPxIfdQ7Z1PGZTUsP
 kDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764988023; x=1765592823;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RGShbK9xQsr2NjS/qZuDJNtffOJ6jq/hb7bzFL9+MF4=;
 b=iaDeRe5XztsE/MSyAhe5uEeBAnLNtqVV6uA9aTtUPTSkCyR1edeYGn35tn2VbZwl0v
 S6oMwdRNeEYigxlTHxqMnkB7noQvi3J6a4IJ63KQkBL/CnQktR+GnWLc01abyilk2Nc6
 oEiomoXE3Mbyw1QgTz1FJD5fZujpir/tB5wh+uuTO7yfue7zoUS+N9krSYpxGpTNjBpb
 nF4Kj86R8Ziwr4LR1T0mqGUaGMEEyzwjWxyDMdN8R1hlnuFqKAkrE+w0acJk17ilLDWB
 vEkBHIeTtFTaTPLUSujNzQnzKS4DimUdQ1LsTec6VuLSblktf9xpmNyBoIfFt/Fq+J3C
 X8HA==
X-Gm-Message-State: AOJu0YxFZl3WeRUWwN5+E3/fP95Blc9678GVVGKs37/CxUmNGjewWrlL
 OUYUrgdWQ7/OcLzDGKif7nqhmFgnR1lGdxAaUEYaLVN52rLP6q0qHZC9vOY84w==
X-Gm-Gg: ASbGncujf7ihHa58Cn7SoUbvcD4Qx4KJtsqlSVEKqek7HrQZ6tCFy327texC2a4+QEz
 xrCsy2jvbnhn2VeMkwPYbIa7ieS/61LMoklXrRAipPGtOnJvr31jgpHk3MK/EheLc2GwyggLa2H
 c/HPrefjV0n42k9wNIjllnfMij0A8dbzw+o3WazyC9ZNV33ZEr02tyfaKojOsRmcjz0dm8Ll9iN
 pTnwR/rgTpmpL3OS7oeXsUuuhPvOY2eKryZUVvU2d2z57285tisu+gVEYmmN/Wsv2IRmGvWwbrH
 IcbmqlgSPBmuWi/locily5/pMyuAG4DsaPSp0EgFstxGDVrdmUhM7v3rYjP2Arltfs7KlcXzNFC
 VGirNI1D7QdsnmzRc41/z5W5dzrNyh/i19Qiu4NiwjptALOOfpqqr1HzylNZcXldYq0pA9X+veg
 rOhDb6jt0e0koKdRf3rnsGVD4=
X-Google-Smtp-Source: AGHT+IFc32yUaku9+AgFtPb00ttqYGStVYnomUpQi6tSfh6p9Qhgpg2w4smAI54XXDbQIMhWiMVZdg==
X-Received: by 2002:a05:622a:2591:b0:4ed:67ea:1e5d with SMTP id
 d75a77b69052e-4f03feb209dmr19865411cf.53.1764988022607; 
 Fri, 05 Dec 2025 18:27:02 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-888327c0c40sm27454186d6.41.2025.12.05.18.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 18:27:02 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>,
	freddy77@gmail.com
Subject: [PATCH v2 2/2] m4/spice-compile-warnings.m4: disable -Wmissing-braces
Date: Fri,  5 Dec 2025 21:26:37 -0500
Message-ID: <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1764987923.git.nvinson234@gmail.com>
References: <cover.1764987923.git.nvinson234@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 06 Dec 2025 08:54:33 +0000
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

Disable the -Wmissing-braces warning as it suggests adding braces to
designated initializes in a manner that violates C++20 rules.

Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
---
 m4/spice-compile-warnings.m4 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
index abe4a912..d2e1acc8 100644
--- a/m4/spice-compile-warnings.m4
+++ b/m4/spice-compile-warnings.m4
@@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
     dontwarn="$dontwarn -Wstrict-prototypes"
     dontwarn="$dontwarn -Wsuggest-final-methods"
     dontwarn="$dontwarn -Wsuggest-final-types"
+    dontwarn="$dontwarn -Wmissing-braces"
 
     # Get all possible GCC warnings
     gl_MANYWARN_ALL_GCC([maybewarn])
-- 
2.52.0

