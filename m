Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D78CA4A94
	for <lists+spice-devel@lfdr.de>; Thu, 04 Dec 2025 18:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5869510E997;
	Thu,  4 Dec 2025 17:06:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XXvrrAq6";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8431110E0AB
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Dec 2025 03:29:23 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-4ed82ee9e57so76591841cf.0
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Dec 2025 19:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764732562; x=1765337362; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=XXvrrAq6se5/cZNhD/dm62rZDZKP/B9frUAAqpvxGo5/hK8g8U/GadBLJBVK2EfoHx
 BkCVFAXZdeMgKiO2gvdyTdNJ6HJW631FEMuRDmwHleciXsQQxN3Dr71URWzdaLyvcdYh
 U/FRMMMNQB8pMby773bMnxu8akZ/WKeg8cmi7gkkCeSiVy9urrMhB7tK+veGw7RRZFj/
 mPyevC1E8gGNlXvmPm/mHoUpUaAvlLuXuLHVXTG0fVc3FsxfwDFl7BdGTAEWsnVjiPM0
 1YUZPaZMoDKMQnhir2aMvlE3ma4ERPToTJrR9fQr3Ad4bLOFNgOo4a7qQudt74Dyyl6k
 bExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764732562; x=1765337362;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ELfUggUXyxFr+NtPKtCcoTverRJFiNiBkxkDtPC+APE=;
 b=KCkF9rAt7KiU4V4lZYnwwNWwPcPUAH4Sv/Yb0MUqPnmP8avGDTdvWy0W0zJxgOs5mx
 VSKU26QFLNJnDGWJYCCrwl3Hj/tXT4fDMERSMYNCAxSnimh/mPeRRVKX8LJfV1DPa0Tl
 QQ3GfwJgAKYDnLTWh5CmZuEednM72eT6/fZt2XBX8Xy3gvHmWLqTav4OcMGtNRAf6HuO
 k+asn2C+ER9B5Y5Kq28EPrqr3F2vugV1JffXlG2uK/Ez8xlO9i3oRw3zBfFmuQnBjPaO
 AzVTjjI5tBaVfGrcnDKdTpjOc7w2z3vrnuplSd9xpJLd04ub6z6kG/idwNMuut2U+YG+
 mKww==
X-Gm-Message-State: AOJu0YyKKjSUoVB7nrIrIcNt2XAPT1UeL1wTXNR9Yin3tRly4iczR4F0
 KRQnbgE6HAPtreoB6pk7Y1JG8sXpPcYdefkVSpJXTqTNWchl04EKwvafIhm/Tg==
X-Gm-Gg: ASbGncsvcSt5dO3K6perM6Dh9wXl2Zkr5ETxL6CitS3hiTcJiHX6IaWjFUkrunn8xUT
 E9D4HaRIQFHKPrVr+wpOrHgVcgiOGxmn1Dzqvfdibgq1480CtNQ9kOdImfbcqCgWRJFFcfkXWG1
 kA8ydxJIw7sxECOyE1IXHvF2nA79GX00jMovmMOBIMrz8+NC7c9pRyKEiJHabL25+/7IbPSGYYP
 oOqbmyOc39BEpBk28YBm8s0tUFXu4LAshe1acbYe7774iy22b7yq3I4u29bwpOLsmvyISbduAXn
 MTRlCDFL/PocPcSf7BwZXVmPr95kCAQAApIzU0J1zkRpR3Qa1C1jtjOHvjibwB7WXLEj4EUbHot
 2uM50uz+O0SnzcFAp5Z+/b9F2M5PCTOEzncindHkNdQllkKOTfFuFMh3rX1kH9I8caE4QyWsPIq
 y3+qbf8Yf0jPt0Trv10DFCbh42LHzD/f70VQ==
X-Google-Smtp-Source: AGHT+IGfBmRPzCz2ROoOBRaYNbq1JCeX1X6Nq3JW18gxaQbgfius244AkbvkTCl5nmGD8dLcv1SeAQ==
X-Received: by 2002:a05:6214:401a:b0:873:af59:fafa with SMTP id
 6a1803df08f44-8881958b47emr12051986d6.45.1764732562363; 
 Tue, 02 Dec 2025 19:29:22 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-88652b4afe8sm117440216d6.29.2025.12.02.19.29.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Dec 2025 19:29:22 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>
Subject: [PATCH 1/1] test-display-base.cpp: adjust designated init.
Date: Tue,  2 Dec 2025 22:29:03 -0500
Message-ID: <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1764732184.git.nvinson234@gmail.com>
References: <cover.1764732184.git.nvinson234@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 04 Dec 2025 17:06:13 +0000
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

