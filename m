Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D79F362EA8
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 10:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160366E1F8;
	Sat, 17 Apr 2021 08:52:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4E36E06B
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 08:52:28 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id n8so48526413lfh.1
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 01:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BrtOEWMotFZBSotdJ8vwljYaHWSmuDc8oTLMawjCDBY=;
 b=FmE0ZC72TCZmzybEf8MfuFJRkptC8r+1WphVBIBznlsMTh1nKdeps57brHu8DBpHqP
 22iBiIrpEeXVuoE78Q4mIKl+PdHOdilr0kaffGiSI+ljWsCIlFY9qxXbp5gO5d5jpHnM
 ljii7nbnQoV6vt1RQGzIQsSEU5oGJdt6KlAbmyw9ZHqGnf24mTuwSyhe8OeYpX/49gXy
 lm7DZ18EIpGvsCgzlyyt3WeyTYAgtSoGbenuKhy/30iQhck2pDuL6LIQUaE8gp9MYfx4
 xZDWFMp8ECtxekfO/24RluCpppEco7Q9ekuYwBg85CVDUrTmj6KIbpZvuVfplsXhi4E4
 C8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BrtOEWMotFZBSotdJ8vwljYaHWSmuDc8oTLMawjCDBY=;
 b=KpAOdhH0mnKLcUHSV9EFuL2kLmWokQh30kJomP+6lyhoo83iJBu5kHZMeCl8nhP/48
 pqpaazS9nL5tx4b2tOb4tZFr/9U6Ss+0zpx+Whnhzzc3eeww364vGFPd+xlhr0Rr4iZJ
 bxvdZjECIxdcSqqcsU2rIETc1mmVECLfEXJAuSogRZifqofPf+57ZK2owaM4SRRieJ+y
 EtiyGtc0JWB5LEidGDbwRUubq+wrx3J+UgN1zGZ7AtbPFL06mDzhZazUMQDIs4zA5UCL
 HYR68Iu016HmDf0gUt34hT0Mp7HTVq8tFl6+dkMT5Cjpbo4U1ZQO5YOheHvb0p/FgRnw
 1Oew==
X-Gm-Message-State: AOAM533tJ2/cE9UxgcV0ityFT8FPT4z5Hyh2dBZpwxEv0TGFL1MVvpit
 I9qG7uWD0ckMgRHimT9gpX6qTqslb/fYm1le
X-Google-Smtp-Source: ABdhPJyAL5Z7hs/wvcMHdUmipZknrisrbuLGjvoHkljBc/QJZ7lrZOpnUslGdww0eRJLfL3BtbBZuw==
X-Received: by 2002:ac2:4908:: with SMTP id n8mr3913074lfi.576.1618649547083; 
 Sat, 17 Apr 2021 01:52:27 -0700 (PDT)
Received: from kloomba.my.domain ([31.29.254.98])
 by smtp.gmail.com with ESMTPSA id e18sm1165621ljl.92.2021.04.17.01.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 01:52:26 -0700 (PDT)
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 17 Apr 2021 12:52:10 +0400
Message-Id: <20210417085211.88977-3-bogorodskiy@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210417085211.88977-1-bogorodskiy@gmail.com>
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 2/3] red-stream: add missing include
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

On FreeBSD, netinet/in.h needs to be included to use IPPROTO_TCP.

Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
---
 server/red-stream.cpp | 1 +
 1 file changed, 1 insertion(+)

diff --git a/server/red-stream.cpp b/server/red-stream.cpp
index fee45f30..090883f3 100644
--- a/server/red-stream.cpp
+++ b/server/red-stream.cpp
@@ -24,6 +24,7 @@
 #include <netdb.h>
 #include <sys/socket.h>
 #include <netinet/tcp.h>
+#include <netinet/in.h>
 #else
 #include <ws2tcpip.h>
 #endif
-- 
2.30.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
