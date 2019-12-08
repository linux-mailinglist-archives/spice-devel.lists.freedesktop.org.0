Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0A3116220
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D115D6E138;
	Sun,  8 Dec 2019 13:57:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A00E6E0A2
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:57 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y11so13036490wrt.6
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TeoFJT4V/VyiGD4ocXP9UYVYIPXPM0lbk2C3av1aIe0=;
 b=fXGlaWi+Mf/tux49jw8HIBprjLuNN2ZjE9MAmT9dPT0Q/exzVgMu0htfzw9i7jE21X
 5SXbziRcHnegJj12OAiWg25F8JbQ8Xh/5uPuVOAH8vv75UNEjIXn7YGWJUhIOnJYloVm
 cAshBahGKmZwBK1mv2E3/CbuzAGx44d8s3rtxwjEkWpr8njt1PirSHcIChN8RMKpgZ9Z
 uNHsrKeb/QqFwrCSGyAEyfLtBuQB7jpULxauWTu1BeYqGn5r3DiKsLtMuy7ZwT8K5n0c
 uGheXQTrlOX7zlnizaTCcDPRuu7hpKvpg7RrARY/AZhPytM61xqjPCTeU2ZJHXSBwDAv
 lfuQ==
X-Gm-Message-State: APjAAAX72tq89IRcGJCjfed1xtDt7KdstRl0SL+2rx6wYlWqGcwRYa1g
 ohPiU25wv9PiznlTgcCOP7H6qhZO2DNNdQ==
X-Google-Smtp-Source: APXvYqzm9pEY3mYuWeSjTdQ3Kii4KDQAqSneZ1YiB8BI/FRZt9fMeI56Zc7VtvxHCEgYvZKMfsvN8g==
X-Received: by 2002:adf:c74f:: with SMTP id b15mr25819772wrh.272.1575813475859; 
 Sun, 08 Dec 2019 05:57:55 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:55 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:14 +0200
Message-Id: <20191208140319.22172-5-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TeoFJT4V/VyiGD4ocXP9UYVYIPXPM0lbk2C3av1aIe0=;
 b=ZhlQJuEBMFoMKHHhPSAPq7qTQ0EIcdc+1rVVsoay3q1j/dFfqF1qsIU384aa2SwFT0
 +ZtYgujKZnVbrH0c4DerlH7KXENQswOW6bKDc+boFrDqHJokxnp5/3BGAqW+Ci155qB0
 i2ISvohi7IJKXTIgwG91CPEjtIUiBWqhcN//qMMX6BE7lXIa+ZLVJ+8p5nkDAuuacNET
 alpPVA2KR409iCGpz5lRYmOZzoN4JBQ1bN+kc33GbfM5K4I/ye5DY67WFx+xlJVoDDvO
 YW6qREABMHVyHK2yfEh2bWzhnhFXnpmvgSrMTmFfedr1kul8j+oFvoApZe1dK9XPib23
 amiA==
Subject: [Spice-devel] [PATCH shared-cd v1 4/9] Factor out
 spice_usb_device_widget_add_err_msg() in usb-device-widget
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
Cc: Yan Vugenfirer <yan@daynix.com>, Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoaXMgaXMg
Y29tbW9uIGZ1bmN0aW9uIGZvciBhZGRpbmcgYW4gZXJyb3Igc3RhdHVzIG1lc3NhZ2UuCgpJZiBh
biBvbGQgbWVzc2FnZSBleGlzdHMsIGNoZWNrcyBpZiB0aGUgbmV3IG1lc3NhZ2UgaXMgbm90IGFs
cmVhZHkgY29udGFpbmVkCmluIHRoZSBvbGQgb25lLiBUaGUgbmV3IG1lc3NhZ2UgaXMgaWdub3Jl
ZCBpZiBpdCBpcywgYWRkZWQgaWYgaXQncyBub3QuCgpOZXcgbWVzc2FnZSBzdHJpbmcgc2hvdWxk
IGJlIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCwgaXQncyBhbHdheXMgZ19mcmVlLWVkLgoKU2lnbmVk
LW9mZi1ieTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KLS0tCiBz
cmMvdXNiLWRldmljZS13aWRnZXQuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS13aWRnZXQuYyBiL3NyYy91c2ItZGV2aWNlLXdp
ZGdldC5jCmluZGV4IDU1YTk2ODcuLjZlN2EyNjcgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNl
LXdpZGdldC5jCisrKyBiL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jCkBAIC0xMzEsNiArMTMxLDI1
IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X3NldF9wcm9wZXJ0eShHT2Jq
ZWN0ICAgICAgICpnb2JqZWN0LAogICAgIH0KIH0KIAorc3RhdGljIHZvaWQgc3BpY2VfdXNiX2Rl
dmljZV93aWRnZXRfYWRkX2Vycl9tc2coU3BpY2VVc2JEZXZpY2VXaWRnZXQgKnNlbGYsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnY2hhciAqbmV3X2Vy
cl9tc2cpCit7CisgICAgU3BpY2VVc2JEZXZpY2VXaWRnZXRQcml2YXRlICpwcml2ID0gc2VsZi0+
cHJpdjsKKworICAgIGlmIChwcml2LT5lcnJfbXNnKSB7CisgICAgICAgIC8qIEFwcGVuZCB0aGUg
bmV3IGVycm9yIG1lc3NhZ2UgdG8gZXJyX21zZywKKyAgICAgICAgICAgYnV0IG9ubHkgaWYgaXQn
cyAqbm90KiBhbHJlYWR5IHRoZXJlISAqLworICAgICAgICBpZiAoIXN0cnN0cihwcml2LT5lcnJf
bXNnLCBuZXdfZXJyX21zZykpIHsKKyAgICAgICAgICAgIGdjaGFyICpvbGRfZXJyX21zZyA9IHBy
aXYtPmVycl9tc2c7CisgICAgICAgICAgICBwcml2LT5lcnJfbXNnID0gZ19zdHJkdXBfcHJpbnRm
KCIlc1xuJXMiLCBvbGRfZXJyX21zZywgbmV3X2Vycl9tc2cpOworICAgICAgICAgICAgZ19mcmVl
KG9sZF9lcnJfbXNnKTsKKyAgICAgICAgICAgIGdfZnJlZShuZXdfZXJyX21zZyk7CisgICAgICAg
IH0KKyAgICB9IGVsc2UgeworICAgICAgICBwcml2LT5lcnJfbXNnID0gbmV3X2Vycl9tc2c7Cisg
ICAgfQorfQorCiBzdGF0aWMgdm9pZCBzcGljZV91c2JfZGV2aWNlX3dpZGdldF9oaWRlX2luZm9f
YmFyKFNwaWNlVXNiRGV2aWNlV2lkZ2V0ICpzZWxmKQogewogICAgIFNwaWNlVXNiRGV2aWNlV2lk
Z2V0UHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7CkBAIC0zNTksMTkgKzM3OCwxMCBAQCBzdGF0
aWMgdm9pZCBjaGVja19jYW5fcmVkaXJlY3QoR3RrV2lkZ2V0ICp3aWRnZXQsIGdwb2ludGVyIHVz
ZXJfZGF0YSkKICAgICB9IGVsc2UgewogICAgICAgICBjYW5fcmVkaXJlY3QgPSBzcGljZV91c2Jf
ZGV2aWNlX21hbmFnZXJfY2FuX3JlZGlyZWN0X2RldmljZShwcml2LT5tYW5hZ2VyLAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBkZXZpY2UsICZlcnIpOwotICAgICAgICAvKiBJZiB3ZSBjYW5ub3QgcmVkaXJlY3QgdGhp
cyBkZXZpY2UsIGFwcGVuZCB0aGUgZXJyb3IgbWVzc2FnZSB0bwotICAgICAgICAgICBlcnJfbXNn
LCBidXQgb25seSBpZiBpdCBpcyAqbm90KiBhbHJlYWR5IHRoZXJlISAqLworCiAgICAgICAgIGlm
ICghY2FuX3JlZGlyZWN0KSB7Ci0gICAgICAgICAgICBpZiAocHJpdi0+ZXJyX21zZykgewotICAg
ICAgICAgICAgICAgIGlmICghc3Ryc3RyKHByaXYtPmVycl9tc2csIGVyci0+bWVzc2FnZSkpIHsK
LSAgICAgICAgICAgICAgICAgICAgZ2NoYXIgKm9sZF9lcnJfbXNnID0gcHJpdi0+ZXJyX21zZzsK
LSAgICAgICAgICAgICAgICAgICAgcHJpdi0+ZXJyX21zZyA9IGdfc3RyZHVwX3ByaW50ZigiJXNc
biVzIiwgcHJpdi0+ZXJyX21zZywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBlcnItPm1lc3NhZ2UpOwotICAgICAgICAgICAgICAgICAgICBnX2Zy
ZWUob2xkX2Vycl9tc2cpOwotICAgICAgICAgICAgICAgIH0KLSAgICAgICAgICAgIH0gZWxzZSB7
Ci0gICAgICAgICAgICAgICAgcHJpdi0+ZXJyX21zZyA9IGdfc3RyZHVwKGVyci0+bWVzc2FnZSk7
Ci0gICAgICAgICAgICB9CisgICAgICAgICAgICBnY2hhciAqZXJyX21zZyA9IGdfc3RyZHVwX3By
aW50ZigiQ2FuJ3QgcmVkaXJlY3Q6ICVzIiwgZXJyLT5tZXNzYWdlKTsKKyAgICAgICAgICAgIHNw
aWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X2FkZF9lcnJfbXNnKHNlbGYsIGVycl9tc2cpOwogICAgICAg
ICB9CiAgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycik7CiAgICAgfQotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
