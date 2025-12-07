Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD9CCAC823
	for <lists+spice-devel@lfdr.de>; Mon, 08 Dec 2025 09:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FDC10E3D1;
	Mon,  8 Dec 2025 08:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D6/9v1m4";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F4810E34F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 12:20:17 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id
 6a1803df08f44-882475d8851so39609186d6.2
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 04:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765110016; x=1765714816; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=D6/9v1m4Khh7GYYxX6Ej9gZyDr3fbEq9T46+cMRSg3h9eHMnkHfJMkQ2SGxjazz6fy
 NhKX3BPL78Oh6uTZRSr/AXJ3Sfc6inYhHSKeQdSNCAt1AwDhoHRK5FP43lLZ9JnJV7M7
 clzGAYxLNmwykle1YOYEtrmUaxQv86M9bzY1tfcQLseEQZByzIQd4vbeBKCFq4/Tffe4
 pBeTScuCmeGEg9Kwa6jVzK5Z4/5wPEAbZKrqRICHc1F+47y24fWcb+Tsyh+MxvyNlSCr
 7keXamWQS0j8ct64wGZaijVT8KYhhyoEncFtObEb08VFkktxbgShire8gsv3vfKdlwsj
 XTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765110016; x=1765714816;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=ogTf+M8xHQZ1izNu8p7V9NStDVy4AL56fTmi0zi1Hs586xXvyUMphrcm4rBptmZmxF
 DPwgy59H1ELY2mfAsASNCPQMUUsfYnlofR54gTt+GxVJBWKYaAeSfNm8wuskKU0dvUGe
 d3oJirO5+SqXhf0yUhngZ+OubYp6MF17LVoq5MrIz8Bb7oOfbJjRdi0tB6aJKtWsDf9q
 x3+MYj6PnuD+XIxIGlVIVR88V8l8kD2s3asbbwfQhosc/sRQGErA/6li/hQZ3VEGgL9z
 ru4LbsmlQhykDuj19ufQzZ7RCe9/P+ZN6mQN00aWwkWyCZOjeFHic8c1LFhvOrpiL7Gx
 YIOA==
X-Gm-Message-State: AOJu0YwNvyKopcs5WTXcLhesEGMMFQNXbB9TSK6RH6dAKV2JcN7T2PLi
 ng1UdQATydt+0bBWyLWKOcKM+4AGR0DRqU5uOBbLkG86DSmQ1u21yHSsvPFp3Q==
X-Gm-Gg: ASbGnctNfsIdZDbUtIjYVUG85rIcz504b2Jik3di8klENmUtKMUqbRPvL105mEdPGId
 JPF/ISMGXNutm3SHtiuGANtqabiE64ZJ363IsTfri0ZaugGhkbJb+E06A0VGXSF+wjE6nQllipf
 xP8R9SDYwgi8KBnXGdeqle/Fk212KiHC8n8Vse3UoJoPFSfPX45ynM0T/33ccCk4lo3lEkCImrM
 Q8PWazGSvoUy/eiCPJpbYNGqjgtV6g6sjOcEyqC8FhhwuFsx/I2UoLaILcKP/f8q6tfK9UCVK9y
 9jjZyAE1+2sDKKqtiPF234+He0IhWsZ+vYzvf1H/OWbkND6Z2hbVsukoB8UUxgp5O8/kzqXdFqQ
 ut+lCYRYHXG/jz1X6eWM+xa3LxTbEBiNXCWB+uG2BQpJ7Uh1NJrGRiXEKP30Vf2PR5lDYFfJTo6
 dVn7231NOYEnB5SV+ZqCUP7uI=
X-Google-Smtp-Source: AGHT+IFtydywsz5ASRk25BpDAJ6gnlUW0dq5nX+cpGk4YjAVxTzrqt7SZB9Hs/OOLuAWCxA3jgzfrQ==
X-Received: by 2002:a05:6214:449f:b0:886:5054:6b84 with SMTP id
 6a1803df08f44-8883dc209aamr76257996d6.51.1765110016181; 
 Sun, 07 Dec 2025 04:20:16 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-88827f4d413sm78258766d6.18.2025.12.07.04.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Dec 2025 04:20:15 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>, Uri Lublin <uril@redhat.com>,
 Frediano Ziglio <freddy77@gmail.com>
Subject: [PATCH v3 2/2] test-display-base.cpp: adjust designated init.
Date: Sun,  7 Dec 2025 07:19:37 -0500
Message-ID: <9360c4a11c392a12e62985b382de60d8d4f5e571.1765109578.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1765109578.git.nvinson234@gmail.com>
References: <cover.1765109578.git.nvinson234@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Dec 2025 08:33:46 +0000
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

Adjust designated initializer to be C++20 compliant. Starting with
g++-16, GCC will default to the C++20 standard.

Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
---
 server/tests/test-display-base.cpp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
index b220b7fe..5d0404c9 100644
--- a/server/tests/test-display-base.cpp
+++ b/server/tests/test-display-base.cpp
@@ -806,7 +806,7 @@ static QXLInterface display_sif = {
         .major_version = SPICE_INTERFACE_QXL_MAJOR,
         .minor_version = SPICE_INTERFACE_QXL_MINOR
     },
-    { .attached_worker = attached_worker },
+    .attached_worker = attached_worker,
     .set_compression_level = set_compression_level,
     .set_mm_time = nullptr,
     .get_init_info = get_init_info,
-- 
2.52.0

