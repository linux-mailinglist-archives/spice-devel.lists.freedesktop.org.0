Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F247CAA31A
	for <lists+spice-devel@lfdr.de>; Sat, 06 Dec 2025 09:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A2F10E2A7;
	Sat,  6 Dec 2025 08:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J/PfXZlE";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DDA10EAC5
 for <spice-devel@lists.freedesktop.org>; Sat,  6 Dec 2025 02:27:03 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id
 d75a77b69052e-4ee0084fd98so24031521cf.3
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Dec 2025 18:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764988022; x=1765592822; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=J/PfXZlEt0U5nrN3hCNDcQcdK+Z4HJKhzWvvtZpjiYyZ1ggduzhDyJI7Yp9ZgfuyMF
 mxg8+JDvSY3UdDUrG56zt9O0/GvmTK7Z/O3GVAgCdMlak3RGeQQHnI3bVtyI/Pv05Nxo
 EGLeQA8cyOvKHmjH1PGk/ZMEWxyPzauGxohzcppzwtT6B5cnDoQdYXuCkJLlFJb/d6mX
 gLFwms0IUUQeKfvTcvRu8QbZ7cMpKM1FUsijIR0FlYSEa/c8RJJ3znBovD8SvPYasAt7
 zrp7Pye274zI7JcDZgcrvti9mIxSVEHqaTLPTtDcN6Tzx+jaiNDeLFJDcN0k2WbbGsdX
 FGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764988022; x=1765592822;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=QgOHxTq0CEl9zRw1Ebx7a7lsf9BHzKJMQYZBKul2S0Dcau0jRIQuNKEr6pO7lPIvlT
 e4LwN9ZwTVK8NOEpJ7LG8gDW+tW8tUbLsZBuHs2MAaGxxpBq66hlyMuLDsWIhkb5bVtb
 w8WBzXt9f8eMcqbEdDKvZACabOeK/xK+LyTF1Sn9lDcLuHkmAhLQ82ne6g6LlFzS8y5B
 rH5NX651GwMMaNtddeHELMjciZdbToYvh+wp5OO6PLdF7PGyhI/iVurhH2mN5s6oxc1B
 9FPmEWD7QD1n9Q4p3LZUkcZ4jmn5oPEEFZyjtMtryESWRPVfe1KxWrS5hweiTa8Z+1OY
 h6Uw==
X-Gm-Message-State: AOJu0Yxc5Zk89te2Rem8yATqCycVjpGd/pRAmjpaad2IIqe5LyRL6DLT
 gfdAQjB/wsIuokkzN4mEuXdK1pzmoJNBaQ8Gfz3FXdS6tQBKqoztXBCLoyIVkw==
X-Gm-Gg: ASbGncvBt0JyEc30YXRw8mzuYEBsJgAMmzpTMQ7m2jGHdGF2iKUdMeGTdWksn1valMG
 DHV2anp9g9+OXGSG2Q3/Svp13xWUURXEK334Vb+vajBm5U6vNFYooLcbRVZII3eQDIJ5BagWqaD
 MsLGaUHwLBPUz9oznWqyyKo6WVyUzE9KG7dgh/Oft1yM9I+RZA/85sZiVoELRRQC/VEkKggzq3A
 W7CpTxsNj51Eoo2FZfV34DwrOTsPJwkNGbimL+WOk80StP4vVuW2BthYhKxUPeXpv6Qr8q9wiqy
 anDIPGKgnbuaX4fLaK/2lzJhZ2tmCHBQt6FdVEF765fgiJUL7RRmNM2X2O0o50/ARReww2C7ABG
 lYVgT4xfBdULgIfU7N1Dn/+3BzA4OtPm8RoMckXt+OMLTwpY87oC6ed8Jxqjgs6hFhK2JYrkV3R
 FLx0VMa2jr6YfmycMz3ZWcyqE=
X-Google-Smtp-Source: AGHT+IGjOxoD4Olton3b/q/m4y9Tx2Us32synxRncw4sySbp6YGoC/TDeUnmBPFJsYoexGAFM5HrRQ==
X-Received: by 2002:a05:622a:1390:b0:4ed:1948:a8a2 with SMTP id
 d75a77b69052e-4f03fee767dmr17983011cf.40.1764988021851; 
 Fri, 05 Dec 2025 18:27:01 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-888327c0c40sm27454186d6.41.2025.12.05.18.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 18:27:01 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>,
	freddy77@gmail.com
Subject: [PATCH v2 1/2] test-display-base.cpp: adjust designated init.
Date: Fri,  5 Dec 2025 21:26:36 -0500
Message-ID: <0ddfe49e2e8a954278f3d5229284c59c52c118a4.1764987923.git.nvinson234@gmail.com>
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

