Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55649362EA6
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 10:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44566E06E;
	Sat, 17 Apr 2021 08:52:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE7536E06E
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 08:52:29 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id 12so48252445lfq.13
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 01:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8e/lXrQV4YI2fri5W2CqY00IGhQlJi6zJGMe9zT7zoE=;
 b=ma7eAwKTOy9hJiWibjidUaUyN4uUS+hrfoKXx9YrfnFsCTxXVZ+v3TWx9y0xjVPV/Q
 Db184GbFGNVLpesoJrHnWzs9F1ydhbSSojmj2A5TMndbhCMIjgUfPvqdC7ZKx1GSjVAq
 D/w+yCWsnSwRt15cPxG1uyXM0qShUtYV6z8/VkF2xJFZQS6mu9NjGxhsTfbtdZUoU1/H
 Lj1a6hWu+wVFmKR54hkh0kGmqThTs32S+IITgcpBMoEm6RuHG64U1Er5HxuhsXdxu+/8
 7QACLGpEtCflZmDakwn/lRwAE3Mmy1sNP6lLmhDgoDlPgj1YJ8XggUTeUbZ5rPfexuW4
 uxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8e/lXrQV4YI2fri5W2CqY00IGhQlJi6zJGMe9zT7zoE=;
 b=ZZrWT6TWuPG670D9nmw9m7S4SwucA91Uj89Gb+k1/h5ZTGgBaoaGlH5OHmZbUOFHdc
 CUFFojfhfMX1/wz70xmhZdLFqOAr2u+wJ5if35QZ+Bos6h0Vw273lLFHb8thpaMYwP2E
 jy9wOJlyP+q7uLPeSlTGYkcp+8peJIsGED3p2W0LWuGmI9nrbXn/3LRE/X9dAQQMiikS
 fhNKA9a8VZYcULXTWXVZuW8U7KF1mUfL+Pr+seb8tR68rWcyqDJfgSLvcym/7SwuTkGT
 P7XE4etdMVkAKWgVvKfSN9X9AuidiMclMBRzRNTW2EpThLKWH5Ax1+gtE65KH3vHUDca
 kfYQ==
X-Gm-Message-State: AOAM533vuyYn0SDVlpB2XjrYYpANeKRTvpkPooWAtUIFyDy33kUtb472
 oqangKJDM1c1QQ9zfHdauX3NzwdSdyJldgRJ
X-Google-Smtp-Source: ABdhPJwUCS+s61ew5irXtPjj8H2Ks2R9QVQZfd58bDTq/ntgcJMH92VmVPS6GLUne17TQlxKJURZgg==
X-Received: by 2002:a19:6b09:: with SMTP id d9mr6018867lfa.296.1618649548071; 
 Sat, 17 Apr 2021 01:52:28 -0700 (PDT)
Received: from kloomba.my.domain ([31.29.254.98])
 by smtp.gmail.com with ESMTPSA id e18sm1165621ljl.92.2021.04.17.01.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 01:52:27 -0700 (PDT)
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 17 Apr 2021 12:52:11 +0400
Message-Id: <20210417085211.88977-4-bogorodskiy@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210417085211.88977-1-bogorodskiy@gmail.com>
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 3/3] Fix setsockopt on FreeBSD
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

FreeBSD's setsockopt() behaves just like Dawrin, i.e. sets errno to
EINVAL instead of ENOTSUP, so extend the Darwin workaround to work for
FreeBSD as well.

Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
---
 server/net-utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/server/net-utils.c b/server/net-utils.c
index e9778e73..7cad5342 100644
--- a/server/net-utils.c
+++ b/server/net-utils.c
@@ -48,7 +48,7 @@
 static inline bool
 darwin_einval_on_unix_socket(int fd, int err)
 {
-#if defined(__APPLE__)
+#if defined(__APPLE__) || defined(__FreeBSD__)
     if (err == EINVAL) {
         union {
             struct sockaddr sa;
-- 
2.30.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
