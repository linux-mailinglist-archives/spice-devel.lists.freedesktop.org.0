Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A190CAA314
	for <lists+spice-devel@lfdr.de>; Sat, 06 Dec 2025 09:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4B389083;
	Sat,  6 Dec 2025 08:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yqp1FZ/7";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460F810EAC5
 for <spice-devel@lists.freedesktop.org>; Sat,  6 Dec 2025 02:27:02 +0000 (UTC)
Received: by mail-qv1-f46.google.com with SMTP id
 6a1803df08f44-880570bdef8so28450906d6.3
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Dec 2025 18:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764988021; x=1765592821; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/EIg0IpGdjjqylwDn/xnJBYDSxvIk039qnbxMc1mTnY=;
 b=Yqp1FZ/7EPxAqXuqoIqWCaKE/L/YG4VbtmrDORB2Du/zocXHrOaLhCJHIspujc8rdL
 HCgIJo5gw0wRXsKyyp28Z9eUebRi9sT2EUjvAdRRw/2jcRPfSMEMFNg14p3jJARWydoe
 bKtv8YoEsmaIUx3JD3NOTvzu6+hzLFBfqx6poiNT/7B0y5B/T7LJLwFDjeZ4RE8wyfsF
 cAPBtN12OyTej47BDlFjfWvGyh2RgquCUaAFD3wJWC9ivxVmnv/7KiqrzTUvA7+FW1Ye
 e5WuTJBW1z9eZg+ceFicM4tuoLGEdF1/6o1r9wkjwrM8/cbTHGA7JNkDSlo8KQCxgiVZ
 agIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764988021; x=1765592821;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/EIg0IpGdjjqylwDn/xnJBYDSxvIk039qnbxMc1mTnY=;
 b=RQATxogEjx43e5aQUZ0SQ+tCZBuWpGsmZaMzc5EMIYTzTNFJbPTcXMvqSPUSyYrmZs
 mHTFsckhYvFTTB/Yc3szN31EkgK8SvVdzFZxDu9v15reXl8fpfhn45ywLhbXgpvXQJ+K
 xkrJQ5xLuZNRubRt/jgUFndNhPZzIgByiiC9TDF/mDErDlU3sgOXSWLWJuELd+eBR7y3
 FkQFNntrl37nB7dBjP0rHFVbTqX/SsAx7u0VRTmrdtDwc0etkSoHX1b2ADNUPjFOLStd
 34a4zB3bCaY8l1bU7ahR/3uAwydlC67lbToMSsupIWWTVifbRrlucJ2v2uGIFau0ks8S
 0Ksw==
X-Gm-Message-State: AOJu0Yw4QL7+/ROKPe2hWjx2iUJ7Dsak8HBikQqcsNQuiibvv62TRWjx
 qaDko+XKYPRnx28+aBqR5u+kXAqDz2H+MIknLbAhm/WEoCGOecskteQwniAwQw==
X-Gm-Gg: ASbGncszJiWF4zrI7/3dPlglh7isai2UwdgHoCqiRpnTy0u6a9dcEGStJZJeMBQSJt0
 Uf72DQqagjmBxjijlivSkH06EDD8/95rV7VuQw8jc86MuE6gVlKu/IcYSQ+oV3i9SL0HO1Aj0AT
 mXX3zZRWzG3JOF7bVbxg+K2r6QKOVF8moz7zC2fN7ou3GFZrP8CWCK14PPskTKiDbbJJX2sOpV6
 RxJ57GfaoVXYrLEvvVqO6WZa23e2114FzcUg10/Frj0/yiofkimP/BcEGHskyqxwR2S7MOqqiP1
 TVrB96zYhWOeQAs9xN1b6FGK9NaPRUGErXY8KEIdYGoCVPeVaoNmLwFZCIwEU+Tf9pYtHUxrPZ3
 tMG2A9FOtBqkSPajNsj3TLDkfg98TNExxc4TJWfJAEuosWGJbCB71YaMMjDm/ypwuidPn/WM89Z
 D2OS1xfLa//cJ7ckRxQak3YbgRXhUvAQOqKw==
X-Google-Smtp-Source: AGHT+IHvlb2MS+RfEOeL33j7OZcKSupFS1qsh9G4UVIExkzhBFSWsnqO5VI8rcXN35puTSXYAM3Jxg==
X-Received: by 2002:a05:6214:21e8:b0:793:dce5:4540 with SMTP id
 6a1803df08f44-8883db61ba7mr21344126d6.2.1764988021078; 
 Fri, 05 Dec 2025 18:27:01 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-888327c0c40sm27454186d6.41.2025.12.05.18.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 18:27:00 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>,
	freddy77@gmail.com
Subject: [PATCH v2 0/2] Adjust dsignated initializer to be C++20 compliant
Date: Fri,  5 Dec 2025 21:26:35 -0500
Message-ID: <cover.1764987923.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
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

When building with g++-16, the build fails with the following error:

    server/tests/test-display-base.cpp:809:5: error: either all initializer
    clauses should be designated or none of them should be

This is because g++-16 defaults to c++20 and when using designated
initializers with c++20, you don't wrap anonymous union fields with braces.

Nicholas Vinson (2):
  test-display-base.cpp: adjust designated init.
  m4/spice-compile-warnings.m4: disable -Wmissing-braces

 m4/spice-compile-warnings.m4       | 1 +
 server/tests/test-display-base.cpp | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.52.0

