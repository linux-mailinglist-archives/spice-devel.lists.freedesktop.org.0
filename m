Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4179B6444B
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 11:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D11E89CD5;
	Wed, 10 Jul 2019 09:24:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F53989CD5
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 09:24:00 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id n9so1673984wru.0
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 02:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bOXZPqILXy5Vfs99+cp8XXo9jE7pPIZRG4HUiHtxzLQ=;
 b=MP2+Xym6EyqXhV0aEPgHw66vEj8Zaa8Mtvn8OUvEcP7+B8jVNodcKtC+01a4aYEWOp
 sSVeLCjwvVX93iL7JdiZMDk4iob79YbeoribJ/Y8hYtQ7hdVgY7+z19iyiZce6D0BsIG
 IMM1oZAwjy/89JmFoph213z/TIjMntWkohcPiXgV78XaFtvvAF0phnLs7IqTnn00JRkb
 9jwIRpoN8OtKFAwx/pi/QtZFulHMMR+ydgFSib+K+FjUqoZ6K94p4hLgyTaPF1e2w9+y
 cqYQqYtu0Eg8rKyxQGinC3NGoDAYLMwSZ9LkQ+Oy4SpOULzdcrWnAvZg4DtPauGxUnvV
 fYcA==
X-Gm-Message-State: APjAAAWBioW22P9Hg8cnolmbSamVKmR5umq2NDBT5XLDNLozNOKSZeqF
 NgnkRidgOxK8SfV2INfJgsj80OsacWw=
X-Google-Smtp-Source: APXvYqwftsefk6SQqvw5ZrD2NWOx6DBnmKv4lXccF8PdQvtNBB2WIIraGcrkgvbsTjKAaWlihonAGw==
X-Received: by 2002:adf:fe4f:: with SMTP id m15mr30043572wrs.36.1562750638757; 
 Wed, 10 Jul 2019 02:23:58 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id a12sm1577151wrt.46.2019.07.10.02.23.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jul 2019 02:23:58 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 12:23:42 +0300
Message-Id: <20190710092345.5750-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=bOXZPqILXy5Vfs99+cp8XXo9jE7pPIZRG4HUiHtxzLQ=;
 b=ncXkEPMCcewWQ9Sza4Sa8IPGo8f4CVb2JsEGyctEwDeBr/0vIWy+/5FNZim7x+TOt2
 VrX/pzFryC9r/EhhkWsNpUUH8DxEYqPsOvClMqRpVRYZUDdG8aVeFMGP8Eh0mhcwJxbZ
 U+/3bqO/rzfTwIhx7Pbe8jQehU65IMFUGI/+CSIrM6qHay4ySFB77gaz4GEWbPr8zaIu
 gaSxO4tQ/2dgVbtLo6bfilx8E+Berz6c1++qLpDHnMQY4GJsyfCcsbVZyCeni6NmxidL
 /KGNhV/320Pi3gL5o1PtIJFNRdwP2PFDgvGedTI0N7TP/yU4vGthUE8wrE8lx4ubFztR
 n7Ug==
Subject: [Spice-devel] [spice-gtk v2 0/3] Implementation of USB backend layer
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhpcyBsYXllciBjb21tdW5pY2F0ZXMgd2l0aCBsaWJ1c2IgYW5kIGxpYnVzYnJlZGlyIGFuZApw
cm92aWRlcyB0aGUgQVBJIGZvciBhbGwgdGhlIG9wZXJhdGlvbnMgcmVsYXRlZCB0byBVU0IKcmVk
aXJlY3Rpb24uIEFsbCBvdGhlciBtb2R1bGVzIG9mIHNwaWNlLWd0ayBjb21tdW5pY2F0ZQpvbmx5
IHdpdGggdXNiIGJhY2tlbmQgaW5zdGVhZCBvZiBjYWxsaW5nIGxpYnVzYiBhbmQKdXNicmVkaXJo
b3N0IGRpcmVjdGx5LgpUaGlzIGlzIHByZXJlcXVpc2l0ZSBvZiBmdXJ0aGVyIGltcGxlbWVudGF0
aW9uIG9mCmNkLXNoYXJpbmcgdmlhIFVTQiByZWRpcmVjdGlvbgoKQ2hhbmdlcyBmcm9tIHYxOiBj
b3NtZXRpYyBjaGFuZ2VzIHBlciB2MSByZXZpZXcKQWRkZWQgYSByZWJhc2VkIHBhdGNoICgzKSBm
cm9tIEZyZWRpYW5vIFppZ2xpbwpGb3IgdGhlIGluY3JlbWVudCBzZWUKaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL3l1cmlfYmVuZGl0b3ZpY2gvc3BpY2UtZ3RrL2NvbW1pdHMvYmFja2Vu
ZDItaW5jcmVtZW50CgoKWXVyaSBCZW5kaXRvdmljaCAoMyk6CiAgdXNiLXJlZGlyOiBpc29sYXRl
IHVzYWdlIG9mIGxpYnVzYiBhbmQgdXNicmVkaXJob3N0CiAgdXNiLXJlZGlyZWN0aW9uOiBkbyBu
b3QgZHVwbGljYXRlIFVTQiBkZXZpY2UgcHJvcGVydGllcwogIHVzYi1kZXZpY2UtbWFuYWdlcjog
RGVmaW5lIF9TcGljZVVzYkRldmljZSBpbnN0ZWFkIG9mCiAgICBTcGljZVVzYkRldmljZUluZm8K
CiBzcmMvTWFrZWZpbGUuYW0gICAgICAgICAgICAgICB8ICAgMiArCiBzcmMvY2hhbm5lbC11c2Jy
ZWRpci1wcml2LmggICB8ICAxMiArLQogc3JjL2NoYW5uZWwtdXNicmVkaXIuYyAgICAgICAgfCAy
MzYgKystLS0tLS0tLS0tCiBzcmMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICB8ICAgMiArCiBz
cmMvdXNiLWJhY2tlbmQuYyAgICAgICAgICAgICB8IDY1NyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgICAgICB8IDEwMiArKysrKysK
IHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oIHwgICAxIC0KIHNyYy91c2ItZGV2aWNlLW1h
bmFnZXIuYyAgICAgIHwgMzk3ICsrKysrKystLS0tLS0tLS0tLS0tCiBzcmMvd2luLXVzYi1kZXYu
YyAgICAgICAgICAgICB8IDEwMyArKy0tLS0KIHNyYy93aW4tdXNiLWRldi5oICAgICAgICAgICAg
IHwgICA1ICstCiAxMCBmaWxlcyBjaGFuZ2VkLCA5NjkgaW5zZXJ0aW9ucygrKSwgNTQ4IGRlbGV0
aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy91c2ItYmFja2VuZC5jCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgc3JjL3VzYi1iYWNrZW5kLmgKCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
