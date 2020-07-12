Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D27021C7F7
	for <lists+spice-devel@lfdr.de>; Sun, 12 Jul 2020 10:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDAC6E218;
	Sun, 12 Jul 2020 08:01:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1FA6E20F
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jul 2020 08:01:28 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id a6so9839752wrm.4
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jul 2020 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lQMofIeoufGYecKRyCbMZIEa+/Z8U/jjT1qRL7Vdvzo=;
 b=m3ED+cqYYeNCdceQWg49SaqmVH1/FRnVHu5Bxg48zzpCVXzplpoBeA2Cg5H4ZA+lq4
 DYXEvHVzC3hUCXz3JKwVmebWJ1d6Q0wCAwbl0mpRBiwCTk7GXsqe9gzx/trBfdA6elzn
 eoQEtLJgLngI3rv302jKT+IGOPuF6HyooT67SWMcKvYfLsYDPRmXYa9Icc7lxgM7DHVT
 9oDMdR8u1q8qL0CtP+uU6PVFqM2TGZgnDmFHyqEAbSDNoCdVuTRMuzkV83f2WIYTiXAS
 Z7jiyiJZEOgTWM3sY1jAy1ZCXckLhR03XJrFRuOCrk1i47N7nWRBr+67ba0gPO1+iYLE
 bvAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lQMofIeoufGYecKRyCbMZIEa+/Z8U/jjT1qRL7Vdvzo=;
 b=gf5Rz2uDBJPvsChQtYW7o1aaPYuUHARfY7k+U2s3v+k0Tqkl++DbJq0Ps82qN1xh9q
 ypfDfioiagXx9dTO8+v+4Gyl+YRZlkVYOHzvS9uaRwdWnLm5QutGy7aIQG7pUY3Dx4NN
 YpIA380BaxS1IJ3I8Yvlc6iVJ+iknLtlPF62+jZM9z/fexG6aNXqmQu2YU/xcXBZqKyr
 u9Mmq1JncvVNa+sRmGB7SQYXU8pNCWXnYI7LnzVONto0qrHh9E8W/dK5A9oY02lMEyTA
 +i52CPurkkEPv+rJErA9m3QRYgCVabHRczu0EFhBULB7f/38HmIiANB6+U6De5eeQlDD
 bA+Q==
X-Gm-Message-State: AOAM532yYj+ix8Fu2EkXJJNb02xLfSFsoCYQbioSL41tqHBHaNhkpOLs
 0QCWk5F7Y44vhA4ggtfWc4Tp1eyORVE=
X-Google-Smtp-Source: ABdhPJwHnNnZZ8wTevOKROjF4N6FISXPUBUS7VsjHT4HGUDe32t6ewyBPWODoHqbvpMv2eovrxzuiw==
X-Received: by 2002:a5d:4984:: with SMTP id r4mr73175693wrq.215.1594540886812; 
 Sun, 12 Jul 2020 01:01:26 -0700 (PDT)
Received: from localhost.localdomain (bzq-109-67-95-41.red.bezeqint.net.
 [109.67.95.41])
 by smtp.gmail.com with ESMTPSA id s15sm16466246wmj.41.2020.07.12.01.01.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Jul 2020 01:01:26 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 12 Jul 2020 11:01:07 +0300
Message-Id: <20200712080107.175-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200712080107.175-1-yuri.benditovich@daynix.com>
References: <20200712080107.175-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 2/2] qxl-wddm-dod: reduce verbosity of
 stampinf in build
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
Cc: yan@daynix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Suppress unneeded stampinf logs during driver build.

Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
---
 qxldod/qxldod.vcxproj | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/qxldod/qxldod.vcxproj b/qxldod/qxldod.vcxproj
index 15e36d9..0091b83 100755
--- a/qxldod/qxldod.vcxproj
+++ b/qxldod/qxldod.vcxproj
@@ -192,7 +192,7 @@
       <Command>Inf2Cat /driver:$(OutDir) /os:8_X86,6_3_X86</Command>
     </PostBuildEvent>
     <Inf>
-      <EnableVerbose>true</EnableVerbose>
+      <EnableVerbose>false</EnableVerbose>
       <KmdfVersionNumber>
       </KmdfVersionNumber>
       <UmdfVersionNumber>
@@ -264,7 +264,7 @@
       <Command>Inf2Cat /driver:$(OutDir) /os:8_X64,Server8_X64,Server6_3_X64,6_3_X64</Command>
     </PostBuildEvent>
     <Inf>
-      <EnableVerbose>true</EnableVerbose>
+      <EnableVerbose>false</EnableVerbose>
       <KmdfVersionNumber>
       </KmdfVersionNumber>
       <UmdfVersionNumber>
-- 
2.22.0.windows.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
