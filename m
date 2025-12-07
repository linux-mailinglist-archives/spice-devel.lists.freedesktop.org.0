Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707C9CAC820
	for <lists+spice-devel@lfdr.de>; Mon, 08 Dec 2025 09:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C82610E111;
	Mon,  8 Dec 2025 08:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FBRyW7jH";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A0910E34F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 12:20:08 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id
 6a1803df08f44-8824a756771so42966536d6.0
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 04:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765110007; x=1765714807; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=CuY+hcvgdUrDUVsNdV1tzpOaQgnBZ7MP+aaJB+A2FPo=;
 b=FBRyW7jHMm0w4JeCYaUmNpSiw6GpqWpwFW0bEuZ3ISKA9RoOk4sGgTjF0Seh3oNphM
 t3/ihXqRtzd1czBq92Pg17ynuzUxeJVolcWy4IzzDRf4fk4xzc1uKmtLOZCUfIS4v0G3
 l6v8CHeWiAFK+/cy7eTrG0Y38RsOCthV7RilKEJih/IOHQ5rpuC0FUL+CoN5TE7JBug1
 9ttIvHavUcYNBB/2UukdpR3RgTnV4c6ufdDo5BeQnLxFz/xyJlyd0CceYc3/ru22MCHB
 VJeefcxz3QrOczothdOB7qjYjxEKtAwk0PQMVSGbXzd46/mKQZviLIcnzMEy3actYVOP
 hETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765110007; x=1765714807;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CuY+hcvgdUrDUVsNdV1tzpOaQgnBZ7MP+aaJB+A2FPo=;
 b=qoEBvke/KPP8dtJndoXVhChOowQ2d7KbKWM0w3ze/txv0DkpA1lOA58ef2oqGNQYIH
 cOgW84V9tTgyTqW+uLOeoUuqZtWOXr+OKLzlr2ycetGNx6uGKHMwGxNkPEM4F/dVoVGY
 AATsV3NCl4ti/XurPKOo7RqGC/8xm7XfgUVbAdcAXTIKBCqVIsLr0v+8CN/AMYkSIAZJ
 aPQgJ9dkPHlaYbccaNkAp1yYLsn20NFNWIQXI71txBZh9EeHhUFrRsZ9wBO3AG/mNNmJ
 sweYRSELy/K2WSZlCZUEPlayEKx2BtxosX04Mk8vUFSWAkzjLGHTx4WRsIS2CKqWnXgn
 ysCQ==
X-Gm-Message-State: AOJu0YwZw1bS0dzqvUqOqdXIRyeJjl8h+OZ6+mjL1OeWFVq9R6sYVVQ6
 pkiVVqwM3X3V1ULZ5XHkMLi6GepGKJEeWx3DyyQG4WV6v+bho/Y9yd17I4lDDA==
X-Gm-Gg: ASbGncs+I5hitXhtgGDLf3fxRJt0Vc5FoiJgXj73BufM5UWiT34l9o/LCZGgKWITPJo
 c8Q6QvbtgX6KmwGVFiNLskI+s+x/jx7r5doj2WtFGfXW1zhMG08kvplC6rmLHX3nuTD3xhMEwY9
 ioVmAsywX4cT+sP2V2/qogmmkeoxRU0u0uOzUNzKZBZBPNSNHRrCGfBKyNFYLXmioYJvK+l0elP
 ChqsimlZmI8acFYVhzYQ7UWl6pa9DFYxUBXLP2R7Mk9DGBMv8RBV5X7/pu4u6RjEzuy30e1OsZY
 jkmtHNCzAcJIicL/yYWUpAj3v1VWHu6AQOPls6N3871OFE9W12vXJ+2F95fRwXUActYPwJCHCCK
 Z+XdCrCb+S8j3RpP78hLxLRxo2lAJI+L0yy5u9htP/gcNenFpkQmmAOoEK1RB78vTANAEbh2h70
 BiFZyNYdb6Io/tVCxzrxEIbYw=
X-Google-Smtp-Source: AGHT+IHn41gG/be2ML3OIYuHdBUJw3Pb1miPkvUo5yRHpegAcNmQxzYgjwJ3pJFsVV6Uctiu5JU8Aw==
X-Received: by 2002:a05:6214:27c7:b0:884:6f86:e09a with SMTP id
 6a1803df08f44-8883ce9fd96mr93447326d6.6.1765110006722; 
 Sun, 07 Dec 2025 04:20:06 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-88827f4d413sm78258766d6.18.2025.12.07.04.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Dec 2025 04:20:06 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>, Uri Lublin <uril@redhat.com>,
 Frediano Ziglio <freddy77@gmail.com>
Subject: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
Date: Sun,  7 Dec 2025 07:19:35 -0500
Message-ID: <cover.1765109578.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
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

When building with g++-16, the build fails with the following error:

    server/tests/test-display-base.cpp:809:5: error: either all initializer
    clauses should be designated or none of them should be

This is because g++-16 defaults to c++20 and when using designated
initializers with c++20, you don't wrap anonymous union fields with braces.

Nicholas Vinson (2):
  m4/spice-compile-warnings.m4: disable -Wmissing-braces
  test-display-base.cpp: adjust designated init.

 m4/spice-compile-warnings.m4       | 1 +
 server/tests/test-display-base.cpp | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.52.0

