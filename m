Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2305362EA7
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 10:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF5B6E147;
	Sat, 17 Apr 2021 08:52:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0B46E06B
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 08:52:27 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id j4so8927753lfp.0
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 01:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5or7lXVgCNuoEO6aawBLrGYMq3O+SspJxybJ9rcsdgU=;
 b=Bw1x7K9wUS3/2VgNqRwaNcqQhC7ozZOvASUcrgnepNi9cvaihT0DX0A0a/uL8+SXmV
 uZNXXbdWaAW0YKT3ZssLGI5pkNUik02OTfxNGfzC9KTfmbIx8Wxd5O/Z5Y2spVtUUH/+
 YnRAknPVJt4+saIasBYMqvhKMwTJYRHRzDywlfteyqwfkG8gRw/6AA4IZq23G882cZTT
 a+I/LR6GV9mDbEiTj6rXo1+nxB3ZrvICwuolr6xox/L2RruM35bPVnn0xxTnvqQo2OdE
 5ig6uV+D9HN5/A7bmYLPAqfL94P1/TchpLHqsm+Ol2JjNq/sQVW3XMxaRVjaRp1gXwTs
 54oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5or7lXVgCNuoEO6aawBLrGYMq3O+SspJxybJ9rcsdgU=;
 b=BvC1jXKskZmXUrQVCuf9opBiehaeDI5+Avh8g1ac7f/m72Mie7Jy4FeFbsRijJQ0I1
 NANLHthQ5l/JTQT8O1vp5YrnSLr+IIMseJJ2nAUUb8dCFjToaHgPaTDnyj6rM2KlnE60
 QEJOJNZBDZ1CEZLBMhUZkWpOHH+HHXfqTYluMaiOXdVtgSmxiZefNWBIbzme7Sy3SMFy
 kW40mG6ZUwgzL8BqmNHVw68n+m5qcqEmr9g59U7w9C9WF+KUuPDOqNA7TR5O6E7knLxG
 fIVOiGbdo0uofM2jyYxmG0Q7Mu8atTeDJlBeyk+ScrL+XD8oXWf4rdVS6+wQyK0GiXjJ
 koQw==
X-Gm-Message-State: AOAM5312SoeaoRCYLnlN3y/uZ2Nae4vWv7w4CQW311vfSZ7n6mUaluA5
 P47SiaPoJRmcqmA2Zjqk5vb2sV2o3AXOYGk6
X-Google-Smtp-Source: ABdhPJxZaP+k0PnoMjADH8tE7543lmr7Q9/0vm2dT1un/IsuwkfSg3UEoiwpjU+rVBbj3nDeZfeK5Q==
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr5696020lfo.543.1618649546151; 
 Sat, 17 Apr 2021 01:52:26 -0700 (PDT)
Received: from kloomba.my.domain ([31.29.254.98])
 by smtp.gmail.com with ESMTPSA id e18sm1165621ljl.92.2021.04.17.01.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 01:52:25 -0700 (PDT)
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 17 Apr 2021 12:52:09 +0400
Message-Id: <20210417085211.88977-2-bogorodskiy@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210417085211.88977-1-bogorodskiy@gmail.com>
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 1/3] build-sys: more version related fixups
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

- Drop "-dirty" suffix before processing version info
- Don't fail on versions without 'minor' specified (e.g. v0.15)

Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
---
 server/meson.build | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/server/meson.build b/server/meson.build
index 4a670635..4fadb6e4 100644
--- a/server/meson.build
+++ b/server/meson.build
@@ -8,10 +8,15 @@ if meson.project_version().startswith('UNKNOWN')
   minor = '0'
   micro = '1'
 else
-  version_info = meson.project_version().split('.')
+  version_str = meson.project_version()
+  # drop "-dirty" suffix
+  if version_str.contains('-')
+    version_str = version_str.split('-')[0]
+  endif
+  version_info = version_str.split('.')
   major = '@0@'.format(version_info[0])
   minor = '@0@'.format(version_info[1])
-  micro = version_info[2].to_int()
+  micro = version_info.get(2, '0').to_int()
   if version_info.length() >= 4
     micro += 1
   endif
-- 
2.30.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
