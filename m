Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6547E0008
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 10:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6032D10E538;
	Fri,  3 Nov 2023 09:31:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6C510E538
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 09:31:34 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-5b383b4184fso22371357b3.1
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 02:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699003893; x=1699608693; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5fMTbNREWXZBHE450+xtDU2KZEWTUPDED/HIofGTyok=;
 b=Th7O1jYb9d0c9NqjsNLNgL6rpm+T1aRXLifnaoaA9PLeH/WRdt+0b4tlHe6Zdjrtfy
 439XSRcI1oFllDxcHZ4GDNQbiEQ9gg+hAoOxIqBn0igh7wgE4SZ0AUKyFbvsO+JCdjq6
 IJWCX6BQfCm8eZPkkNl1srsG2SPgGEswLRl+W/K/XMhPZMkomcu9EPnFX7Ri4jEmr3fB
 FvSY2dCqX19zf+U1yyvWo79WcUuWADIPcSFtuMqD09P6BgSPWy8OuE0iRtMkeBY13rY/
 RKsvu9voeQcIV8X9ArmbF8tq3kGITdzN4+jnr5g7vF2J48WO+EkUr6TiOIQcr2D9uJ63
 KMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699003893; x=1699608693;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5fMTbNREWXZBHE450+xtDU2KZEWTUPDED/HIofGTyok=;
 b=E8yGBYOxp4z8bF6hG/QspY5in47+j5wDTO6z4jCFhC+K43DaGsbbDXGpsc55D96nK6
 p4/wzMl6Oy0KwJ9t6Mo+yFPgruadefR1tvyKREEzfX0vBKG9JB4+qgkzV0RgFPLdJxgw
 s57eOaCuv8RDQNwhonyr5O/gTrv9EQJx/+wqm2ghnsiW19Lz6X7Fn+HP4ELf9npupQzr
 Lguay23KnL3UKAwEPXVtU2KGb9chXExontqggTFCT0NulDvdee5BSxkBwOCmtwAj0B+c
 VkK681tlf+L3S5VvLTwTEoQpSHyiez1GRIG0tYo9A8LipAE3fVrSXwpbZbrQzO+pV9JP
 KM2g==
X-Gm-Message-State: AOJu0YwVMCZBG7cxvT09TtFZLUGqdWB5PT0sKBk/079UV+8/8HbB0jKX
 QQ2xkpJVOIxjYIiPq3I2fSfWy0ryjWQ=
X-Google-Smtp-Source: AGHT+IH65JCm7ct+/K9YrSnotOFbzFNkL2JOiVjfmUyDNaJcoYw0Dk2vYkCpU57FCaleXnQ12FIcSg==
X-Received: by 2002:a81:48d5:0:b0:5a7:c8f3:de4b with SMTP id
 v204-20020a8148d5000000b005a7c8f3de4bmr2366131ywa.8.1699003893373; 
 Fri, 03 Nov 2023 02:31:33 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 v133-20020a81488b000000b005a7cfc61ed9sm717841ywa.87.2023.11.03.02.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 02:31:33 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 Nov 2023 09:31:29 +0000
Message-ID: <20231103093129.3158-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk] ci: Avoid Meson warning during CI
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

Avoids:

WARNING: Running the setup command as `meson [options]` instead of `meson setup [options]` is ambiguous and deprecated.

Note that due to a problem with mingw64-meson script is not possible
to remove that warning for Windows builds.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 .gitlab-ci.yml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 71c7bab2..cbf4319c 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -32,11 +32,11 @@ fedora:
   before_script:
     - dnf install -y $DEPS_COMMON $DEPS_FEDORA
     - git clone ${CI_REPOSITORY_URL/spice-gtk/spice-protocol}
-    - meson --buildtype=release spice-protocol build-spice-protocol --prefix=/usr --werror
+    - meson setup --buildtype=release spice-protocol build-spice-protocol --prefix=/usr --werror
     - ninja -C build-spice-protocol install
 
   script:
-    - meson --buildtype=release build-default --werror
+    - meson setup --buildtype=release build-default --werror
     # Meson does not update submodules recursively
     - git submodule update --init --recursive
     # this fix an issue with Meson dist
@@ -46,7 +46,7 @@ fedora:
     - ninja -C build-default
     - ninja -C build-default test
 
-    - meson --buildtype=release build-feat-disabled -Dauto_features=disabled --werror
+    - meson setup --buildtype=release build-feat-disabled -Dauto_features=disabled --werror
     - ninja -C build-feat-disabled
     - ninja -C build-feat-disabled test
 
-- 
2.41.0

