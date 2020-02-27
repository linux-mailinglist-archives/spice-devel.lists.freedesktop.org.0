Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE7A1714A2
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 11:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5FD6EC81;
	Thu, 27 Feb 2020 10:03:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9916EC81
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 10:03:03 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id v2so2474406wrp.12
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 02:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=401ovKC9nI2YioFx50Al8+NHXdFTa+z5ywdPrlFMeno=;
 b=xNFBBXPZ6SNhr+qoH1Si6w2VgUBwr6k1zlqYDOUGGp9qBdQdw6WFw/Gq9IggerHmmf
 ofR35zAEor2r78c3OB1tdU6Wle0F8JDUaq6BJeyQV7XC0RA68mbOHlNUb0W+YGyYkULm
 Jke2c4szXjoXN2zyku9th4l92PvV3acby/yGF7Qi0pwxz78KAmqvzGUbohvOmtlTQOYg
 C6O8q84gj9jiGKflNsTUXcVkhVlzdIlAqYkd62wn50PpAEiq22W2KF/j2jb9KwBo1aFa
 NTJV6VW3h+OFlYTZ6+4wow8DyLOKzJjs0xeRGwaEA/1MJNByNCYsKqsvT3PS0j/U9y9u
 8kGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=401ovKC9nI2YioFx50Al8+NHXdFTa+z5ywdPrlFMeno=;
 b=F//QXJ0NZ+X/1bd/VMeiSKBbrers6vnUkNT8vLdD2ftRfTzLtVOZFjBbldtM2deZYn
 DCj9kvT23XYkb5oY+9nnKK5SLT+jnHtIFWR+Axlo3K6faLFP0EpXdjcHJIQMiOF3iaGr
 ptxHpO7TzNbiZXLVaFwVOLtbnWr1QcpexM9U5K+zukNPE07mo8WAeXOqYbz8fKf+nzsD
 /DSUvHiMRM6fJOcaJT9BFdnFg0k5yG+tqS6QhZl7QQUIcHovXB6UPUu08X3pXan0h6kk
 BneZDj3S7qTeD6CEDVqS5DbBPwIEg6xdsM6rjivRPSjWjbX5P5JrteeqvEI+I8sJmdr0
 /42g==
X-Gm-Message-State: APjAAAXRZrrWvV2bYlpUSm1isGfrvahTtfIUAlzuYGG3nZXZymoGEV1X
 6HSpj0IG7TGWxIqgPOUAOdsU482LtkU=
X-Google-Smtp-Source: APXvYqwUgdPWO2+Evuv4bVeL44k6wzabtZkwyGBPMRjWGRNfWwvGoZBWV/J2niNvkK3cHLmx59cEmw==
X-Received: by 2002:adf:df90:: with SMTP id z16mr3825145wrl.273.1582797781750; 
 Thu, 27 Feb 2020 02:03:01 -0800 (PST)
Received: from f2.redhat.com (bzq-79-177-42-131.red.bezeqint.net.
 [79.177.42.131])
 by smtp.gmail.com with ESMTPSA id h13sm7466429wml.45.2020.02.27.02.03.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 02:03:01 -0800 (PST)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Feb 2020 12:02:53 +0200
Message-Id: <20200227100255.8066-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
Subject: [Spice-devel] [PATCH qxl-wddm-dod 1/3] qxl-wddm-dod: Allow
 additional low resolution
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

https://bugzilla.redhat.com/show_bug.cgi?id=1758524
Examples are displays 320*200 and 800*480

Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
---
 qxldod/QxlDod.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/qxldod/QxlDod.h b/qxldod/QxlDod.h
index d889b9d..016b1aa 100755
--- a/qxldod/QxlDod.h
+++ b/qxldod/QxlDod.h
@@ -19,8 +19,8 @@
 #define BITS_PER_BYTE              8
 
 #define POINTER_SIZE               64
-#define MIN_WIDTH_SIZE             800
-#define MIN_HEIGHT_SIZE            600
+#define MIN_WIDTH_SIZE             320
+#define MIN_HEIGHT_SIZE            200
 #define INITIAL_WIDTH              1024
 #define INITIAL_HEIGHT             768
 #define QXL_BPP                    32
-- 
2.17.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
