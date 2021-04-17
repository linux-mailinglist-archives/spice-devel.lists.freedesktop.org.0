Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C75362EA5
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 10:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C954E6E06B;
	Sat, 17 Apr 2021 08:52:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516496E06B
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 08:52:28 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id u4so33628181ljo.6
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 01:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZyG1xrPbyt1IZfPC6kqVQzMN9iRCaLbkgKS4lCLvE7w=;
 b=fn9A4ZVzvvtX/TSsoFMFooibTDUquPjZ3/iKU9KRKkLBRgNQPnF96R96jAbEqJo6/E
 r5UM7BPMPaM9ATYsPZWd9Onev+OSMslh6EoZk212z/MdmRoYpM0IrjgmgbcSKd6r1bxU
 UzUJ9/NAK62aybxFxAoZgDpFEW/ArjIYLFk9cGTTwxyqsA0WneTOndSdoOSSn9fdbL6R
 DAdCWEijsBm9iuV4th9jvuW6bZEPWNpMMyOAJEAFVTM1J46nRi7kuuxooxIFPxXhw+Wl
 zj6eWBujJ7WHpwXsZIVJNtxqRv+X5dBHJFrtZFFTup7YB5UTYtI6/Jg6EB0XYV8Js8Yw
 +27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZyG1xrPbyt1IZfPC6kqVQzMN9iRCaLbkgKS4lCLvE7w=;
 b=gA9cvWESOyBuWxBpd9dpNPGY0l8nPPB8yYAbQq056FipiAl1BI+XkI/o1w89gQrUhP
 yEiBGm+4B9jp8U/RgxGTpzh9G2VcvdIvVfpJuy/moZ68/r89kSofE6KE2Jlr/y/YL5Lc
 w8qiDFJEJE7Jn2t/A2WeoDGsajNSSL3n23Wh/5eMXWPbXSMPbEaLia5v8/FwapwMet/8
 RPVOPHdtO8I5jZPbo0U3D69iLE8HyRvXa+N44MhVQVrmCKsYiX68/ow3nXnAhKeHYn8i
 /9wKycId1z9yBwqGByy16ThVLE+GazkQ5rl0pzubWbLHR6i+3gwFFG/xp11gm8ru2RqZ
 aAoQ==
X-Gm-Message-State: AOAM533K7qcU3ZXHWxyO1KcuJBVfirXorQe7VGea3qcgRWJEaFUJC+MF
 1LuIu2zGUZ7aDqnGQ3ux+RgsxHwulnRUEzVq
X-Google-Smtp-Source: ABdhPJxu2OGYmxWUU73JABmI9RcwosL4FfthRBGm108rrePzE2t992rVPYRzpzL2yOiA9+22WPIfxQ==
X-Received: by 2002:a05:651c:2005:: with SMTP id
 s5mr5168285ljo.491.1618649545239; 
 Sat, 17 Apr 2021 01:52:25 -0700 (PDT)
Received: from kloomba.my.domain ([31.29.254.98])
 by smtp.gmail.com with ESMTPSA id e18sm1165621ljl.92.2021.04.17.01.52.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 01:52:24 -0700 (PDT)
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 17 Apr 2021 12:52:08 +0400
Message-Id: <20210417085211.88977-1-bogorodskiy@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 0/3] Assorted FreeBSD fixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Roman Bogorodskiy (3):
  build-sys: more version related fixups
  red-stream: add missing include
  Fix setsockopt on FreeBSD

 server/meson.build    | 9 +++++++--
 server/net-utils.c    | 2 +-
 server/red-stream.cpp | 1 +
 3 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.30.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
