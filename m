Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5E4CA4A97
	for <lists+spice-devel@lfdr.de>; Thu, 04 Dec 2025 18:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86D110E99F;
	Thu,  4 Dec 2025 17:06:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VZVapJMV";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9586510E0AB
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Dec 2025 03:29:21 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id
 d75a77b69052e-4ee1939e70bso57144561cf.3
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Dec 2025 19:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764732560; x=1765337360; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=rpKz2yxjFt2Fsypb0rq//pgM2mCOasDai1KMZaO0YAs=;
 b=VZVapJMVlroJSP4VGvWdoUHhYhzOH6IV/kkvgZGYHerDtOqSyhtjN2rTdWphM70rIH
 CdPX09cyuqyq1+fmy1JAC2duYEsWyis67wDpGS/waEdT3MH7p4GONiiE1BZygAkkyI1d
 bL9AOp7NIM2prSSPhNMc2I94YJmjFBGC+cz1w5Xy9jAFHCSlXqA3WQIFA3ql2tplHiRC
 fMOQ68kcFc6IpQJidzBGdWCLDEUbNJi/VgD2gw6ErCCuY76gyRxWdqMuJXRRKLZct4U5
 gSSvEmseMEytanIRlEaK8o4hhdZr2AST6KxOgBovieQqiqGTG07JjxBK1JwRMifd+8iP
 aR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764732560; x=1765337360;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rpKz2yxjFt2Fsypb0rq//pgM2mCOasDai1KMZaO0YAs=;
 b=YJxQk3Wepl1Vnd9GzcsDsDQfRLkhsd4b620xhVbIAnYobidNPQY8u6DrMjMlSwctDc
 TdynHtT/nb7nTJXlmjlavcL30yme4TPsPLiczs3I2axzmtgWykMQGqzwvXo7tXaTu4xi
 304LFoieUHDdez8PP+GbtqCAlvoA/X8JYlSkhdQEjDjeCB5+tCRWTsklbZliSuSCih4x
 bm1VoMU/mn6SYrkNX1xSw1QTwXr8qpqWLpe5cU75gmru6XrSw1o2GprvP4Qgnkpun1xI
 InvFUs/1ydHDKolRQhnBLwvEcHK4mRFD5b6AT+EL6VYiZ8/Hii1DF9rZ0hlOZWpWDBYm
 Zgjw==
X-Gm-Message-State: AOJu0Ywkxrz+o6heFm7CHhhftGtWQx/YeeZQS4ilQy00syegnjLRam5m
 JbqcBYnxynmvgeLHrzonIIi6WcAb89AHaYP/lnKcUUchJfd9wbEtGSYA4n04Mw==
X-Gm-Gg: ASbGnctvP/+XLqHWPYLKEuo1a+ariXqJIveB1rIDoKrZwYs91lIMZl+eEgGkWvSMOc5
 RYbrtSIdQI9spJwyBOBLDHOnGVS8XK5yoHrwH/2W9+n/aziixR/rb9axNlVJirEcB0d3YYMLi6z
 JJcSMf+natqQstubtmBv/A57+1kfSpyGGk81qSrJZEO+1lawPuMLcpVaaMe6Jm8qSe+IA0MfRus
 YAfblYBN+jboAw1PgjerZMKcFVS8U8s3yJljLkzF24Ir/YstupcpRS+OFdGHyTpLkF/7aLDlRCP
 vlTXY9BDf1ugwXS4MFa4kScxkKWutq/eNsHShRXJz2G24gqHTqY9h6NXMp+ojqhKVCS410MiFdO
 NSS/hk9o9Pg/lYkiSyfMIKi05f5Rtylzpe9w3HvfyenlleNwRif0tS5pn64wQEdtcS85OqkCqVc
 JZwHE7ryLy5V5hZt1TaNygni0=
X-Google-Smtp-Source: AGHT+IEQUdfkkSXSVvwUdGmF611sX5F8JzL5hCyTfK/0QzDCBbuj+ecbjPV69M7ELpyxYpj1ls71fQ==
X-Received: by 2002:a05:622a:15c7:b0:4f0:1543:6762 with SMTP id
 d75a77b69052e-4f0174fe734mr15965871cf.2.1764732560304; 
 Tue, 02 Dec 2025 19:29:20 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-88652b4afe8sm117440216d6.29.2025.12.02.19.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Dec 2025 19:29:19 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>
Subject: [PATCH 0/1] Adjust dsignated initializer to be C++20 compliant
Date: Tue,  2 Dec 2025 22:29:02 -0500
Message-ID: <cover.1764732184.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
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

When building with g++-16, the build fails with the following error:

    server/tests/test-display-base.cpp:809:5: error: either all initializer
    clauses should be designated or none of them should be

This is because g++-16 defaults to c++20 and when using designated
initializers with c++20, you don't wrap anonymous union fields with braces.

Nicholas Vinson (1):
  test-display-base.cpp: adjust designated init.

 server/tests/test-display-base.cpp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.52.0

