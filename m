Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 981C57DFFE5
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 10:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3986610E4F9;
	Fri,  3 Nov 2023 09:06:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com
 [IPv6:2607:f8b0:4864:20::e2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66E710E4F9
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 09:06:09 +0000 (UTC)
Received: by mail-vs1-xe2f.google.com with SMTP id
 ada2fe7eead31-45d6d97af38so996026137.1
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 02:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699002368; x=1699607168; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=cIX7HwS5cx7nMdKMQavCoXjRkOsV/zAmOk+gu3WXFuI=;
 b=cyRD2YaTRGlptKitzYqK4T5yie3EHg/17tzoiSPhGE8LUYc5IRvImszo+i/TMTm5QZ
 DOzxKBqFKt/MXOMD2wQVqwrnbeT8MondJwwPP894V60r8U2cjNHQEyqoEjJBMk78i6Dz
 GfwBcgZvZ4RuA62RlcBRiAOSFaT8+U2uIufall6OJodgGzIt34en37EpyU7wqLqLDEjw
 is0dM0hNdTqpbU1ODm/P2AgSC/FRPT7OKeja+Vw+5p4Bs2JKvEZgojsQEEMqQqwfhsNX
 782TDkueUBKKXTg21quy163sDwaZQghZvwsCC0sugnfrwYoQJPLBB2jE5FVL7XQfKxWs
 uE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699002368; x=1699607168;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cIX7HwS5cx7nMdKMQavCoXjRkOsV/zAmOk+gu3WXFuI=;
 b=IaBFkaWMgxm45Gmvug24fd0oLd0YCrNP3ewmCgjCjyFRlyvBeHvuJ7NuyEWFNMBbWB
 Dx0pFDs8B1TpeVhQMuPUpB27+ThLowysDTBMtRB3+1HOPjEFjIEoH7zVQMKktEuhi77C
 RrchDDhHacpBRYuS5QGRQ1hiDSK0w1bwvAtfMPNt0XZc29QMSyqKxZy65TpCZRasot93
 mxUvkwGfV/Axx2HPbi4m+4FCjBF5EkyMQjmoY31ZebGmsBlaZDFK65hrxKvnkjZqAYeI
 +A/3uTgltlcQ9VtJZFEoeCo8rJzOeeA8VMmnO4piaDNffOfE4zgC5LXaof0/cC30aZPb
 GGug==
X-Gm-Message-State: AOJu0YyllAF+LewnNDSk0P6gxygnZObLin2Zl92NZVWVwghv34gbzU+s
 vUaR6GFYNFItMxFkY/v8MwYqYyO3Lqk=
X-Google-Smtp-Source: AGHT+IFbpIi97irfTJYdwlmF7Y+GGPb33zvGM6QaUVOGFXW8vuXSzhlW1yjYQjK1qq/5TezwK+5+0w==
X-Received: by 2002:a05:6102:313c:b0:45d:8726:343 with SMTP id
 f28-20020a056102313c00b0045d87260343mr1086583vsh.4.1699002368481; 
 Fri, 03 Nov 2023 02:06:08 -0700 (PDT)
Received: from freddy-fedora.redhat.com ([195.213.141.23])
 by smtp.gmail.com with ESMTPSA id
 q33-20020a9f3864000000b007abb8cbcda0sm246625uad.11.2023.11.03.02.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 02:06:08 -0700 (PDT)
From: Frediano Ziglio <freddy77@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 Nov 2023 09:06:04 +0000
Message-ID: <20231103090604.2883-1-freddy77@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH spice-gtk] build: Avoids a Meson warning
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

Avoids:

WARNING: Project specifies a minimum meson_version '>= 0.56' but uses features which were added in newer versions:
 * 0.58.0: {'str.replace'}

This was a regression introduced by commit 3892983edab7d9d1bcb808f6bdc4fdcfb3914683
(cfr "Use visibility instead of just filtering using version script").

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 meson.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meson.build b/meson.build
index 44017e55..55c0a893 100644
--- a/meson.build
+++ b/meson.build
@@ -4,7 +4,7 @@
 project('spice-gtk', 'c',
          version : run_command('build-aux/git-version-gen', '@0@/.tarball-version'.format(meson.project_source_root()), check : true).stdout().strip(),
          license : 'LGPLv2.1',
-         meson_version : '>= 0.56',
+         meson_version : '>= 0.58',
          default_options : ['buildtype=debugoptimized',
                             'warning_level=2'])
 
-- 
2.41.0

