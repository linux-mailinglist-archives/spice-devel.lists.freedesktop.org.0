Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7529B7DFFDE
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 09:59:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0815410E4F4;
	Fri,  3 Nov 2023 08:59:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3639310E4F4
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 08:59:38 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-32fb190bf9bso735916f8f.1
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 01:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699001976; x=1699606776; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=O4SPJPE0ptt18q/HFehNGerf4aZhJUHVgtlqHwZATuI=;
 b=a2dRGEedG7M4zlg7/2mmefiVYN/VbwbNmC2TVx3Qwq7gPCCR9T2ddnnzhKMJmJt3/I
 B+1/Sg+WbU32c2NGLAmvcTZNObz1eafxHVfjrlAeu7C02o3FB3r7x5C0cGh0KRXQ3Doz
 l8maKoVA3vnLnymEH+hZo4Y3/Yx45nYZfoYbXjUFbRsGIZikBqTDBD2zjAFHZR4lB4ih
 HBk9eaOrbh5EFKk7KM8bydOIeTRsAusXSz3BBLXDLgw3uZDIKwRIOt/eJre/jiglWfYE
 vLcMnN16e4V/tF8DXBVxgptZ9UBeAD3lqbjiN92mPPV2pe9LoyDcbTMm9XT5WNy7fsKZ
 AViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699001976; x=1699606776;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=O4SPJPE0ptt18q/HFehNGerf4aZhJUHVgtlqHwZATuI=;
 b=TDW96oLgVQbY89fJFeyfIhmB/K+WCJJVobs9mnhYoCcop9m7vE/c8dGbKUEVG7OpBE
 UkH4X8yA7O0TCxzpSakcdSoOzXyzHKAMfQfJ4GkSg3zoHgx1gaZQYQUf5fB58LUAW8p1
 QGfID4OfgSd5rkSmdeE9NS0RxXO0uNTsvzA5IvLe2U3SIYOCT8dMUIfrisoCKfLe0f1r
 TITgKbsNppld2++ic4Xf9CMxWfuwLWdsq/aOhHAdtAinW6MW1lYXU4uI0DoJPhEjJi3r
 RJftU21RmKUPbBlxJY5r/fhS22XeHkfDmhInWA8kULgbhlPceHs20by1Dx+w1l/eOo1Y
 oGLg==
X-Gm-Message-State: AOJu0Yx7PnSM1BnRYfMgbEjq+cSPvo2Fzq0qVgs6zDKdnz8t9MAumIoK
 rVgSfm+CBbf7bGgt/4m39FQyWyu0Nnw=
X-Google-Smtp-Source: AGHT+IFw1tAuQ/DabGNBPrSqxhKINeunW3LHzhPD5DPBI0P7dV9ydCsTLUiqy5+a8bvkzkjv85Mqjg==
X-Received: by 2002:a5d:6d06:0:b0:32f:8b51:3708 with SMTP id
 e6-20020a5d6d06000000b0032f8b513708mr2164287wrq.2.1699001976141; 
 Fri, 03 Nov 2023 01:59:36 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 q2-20020adff782000000b0032179c4a46dsm1312477wrp.100.2023.11.03.01.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 01:59:35 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 Nov 2023 08:59:33 +0000
Message-ID: <20231103085933.1873-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-common] build: Avoid Meson warning
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

WARNING: You should add the boolean check kwarg to the run_command call.
         It currently defaults to false,
         but it will default to true in future releases of meson.
         See also: https://github.com/mesonbuild/meson/issues/9300

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 meson.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meson.build b/meson.build
index 1018769..33f8f8a 100644
--- a/meson.build
+++ b/meson.build
@@ -132,7 +132,7 @@ if spice_common_generate_client_code or spice_common_generate_server_code
   if get_option('python-checks')
     foreach module : ['six', 'pyparsing']
       message('Checking for python module @0@'.format(module))
-      cmd = run_command(python, '-c', 'import @0@'.format(module))
+      cmd = run_command(python, '-c', 'import @0@'.format(module), check : false)
       if cmd.returncode() != 0
         error('Python module @0@ not found'.format(module))
       endif
-- 
2.41.0

