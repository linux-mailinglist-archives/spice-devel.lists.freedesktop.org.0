Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7421147C6
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F1A6F8E2;
	Thu,  5 Dec 2019 19:42:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636256F8D6
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:48 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w15so4690715wru.4
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=llhJ6BBFmllQJhk0Lo2ULXl2mz4PWh7IZN61OpwbF2M=;
 b=De8U5m9BkYxKVqgnJ86SYAovQBb3J8BtyrZCPthMtK/2n7J3nYGFxuBV1oevrGCH1m
 8IZKxwZwqj07qwGs2sgsHT3IpZUi5VJ0RUqSHdfuph0oGHfJj6ZS25Z7QUKF6EpmJ2RD
 EWGfRqmZNJm/ORZPIreCupKXA4twSdEbP3FB63zaiYiIqMnRcHxPUXHXaSA8H9KT6eJN
 z3W+Oos3Rixse46nmpCeZVk8Nc1FYJACyWdsicNxRdDfqHN57nI0UJ7qWBQVaNDybGaI
 fwAWWCryNt7hatyxbpPY9eqlZVffl/rc3Y0YywW48j13hAkWvW2QCcIFve+pdXQihkYT
 Enkw==
X-Gm-Message-State: APjAAAWx93G5Z02smmeV4oh4rCeD/L1F8zwML2R1N06rR/qpIPY2fAIk
 bft4Q2VOXoClFt8rKauAsC3CDAAovNEyig==
X-Google-Smtp-Source: APXvYqwHmzOXWIGh5MrVab0X3XM864lhnQufJ293wpZRmQyirokDWZpUhikQDsq/8Ul8Jzrbsa6BxA==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr11246065wrs.369.1575567826880; 
 Thu, 05 Dec 2019 09:43:46 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:46 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:10 +0200
Message-Id: <20191205174915.24546-5-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=llhJ6BBFmllQJhk0Lo2ULXl2mz4PWh7IZN61OpwbF2M=;
 b=jaEscXZdhH0p5uveuIF463nLVQwQe1QN5+R7RcuIQdYCM0IpRLeDhzbb/VrhGpFsGJ
 YwYL7ayuAI56VvD7Q73RhL59MZbkMthXV+hbUwvtDP7GyejjMriz0Y6gWDUEwgkNXecW
 T56OVSMIU+qHZUIIErEB8rLXKimthp+nMQdHBKtU5Zpwf5nJ5okHxzA8eUIIzxO2KZnD
 KQQVKKZj9U483BrEngYjY6Rb5QFdBGAmABtQ1fZeiMZVDbIOc5A0fIHMVYwxu6JJb6T4
 FXEExBSLUc7IaOfyrY2hJjkV85+Newa0luk8UX7C40n/27c0E76rBIuHL9FR57wrJ4Jr
 T8Dg==
Subject: [Spice-devel] [PATCH 4/9] Implement
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KCkNvbW1vbiBm
dW5jdGlvbiBmb3IgYWRkaW5nIGFuIGVycm9yIHN0YXR1cyBtZXNzYWdlLgoKSWYgYW4gb2xkIG1l
c3NhZ2UgZXhpc3RzLCBjaGVja3MgaWYgdGhlIG5ldyBtZXNzYWdlIGlzIG5vdCBhbHJlYWR5IGNv
bnRhaW5lZAppbiB0aGUgb2xkIG9uZS4gVGhlIG5ldyBtZXNzYWdlIGlzIGlnbm9yZWQgaWYgaXQg
aXMsIGFkZGVkIGlmIGl0J3Mgbm90LgoKTmV3IG1lc3NhZ2Ugc3RyaW5nIHNob3VsZCBiZSBkeW5h
bWljYWxseSBhbGxvY2F0ZWQsIGl0J3MgYWx3YXlzIGdfZnJlZS1lZC4KClNpZ25lZC1vZmYtYnk6
IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3JjL3VzYi1k
ZXZpY2Utd2lkZ2V0LmMgfCAzNCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMgYi9zcmMvdXNiLWRldmljZS13aWRnZXQuYwpp
bmRleCA1NWE5Njg3Li42ZTdhMjY3IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS13aWRnZXQu
YworKysgYi9zcmMvdXNiLWRldmljZS13aWRnZXQuYwpAQCAtMTMxLDYgKzEzMSwyNSBAQCBzdGF0
aWMgdm9pZCBzcGljZV91c2JfZGV2aWNlX3dpZGdldF9zZXRfcHJvcGVydHkoR09iamVjdCAgICAg
ICAqZ29iamVjdCwKICAgICB9CiB9CiAKK3N0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2Vfd2lk
Z2V0X2FkZF9lcnJfbXNnKFNwaWNlVXNiRGV2aWNlV2lkZ2V0ICpzZWxmLAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2NoYXIgKm5ld19lcnJfbXNnKQor
eworICAgIFNwaWNlVXNiRGV2aWNlV2lkZ2V0UHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7CisK
KyAgICBpZiAocHJpdi0+ZXJyX21zZykgeworICAgICAgICAvKiBBcHBlbmQgdGhlIG5ldyBlcnJv
ciBtZXNzYWdlIHRvIGVycl9tc2csCisgICAgICAgICAgIGJ1dCBvbmx5IGlmIGl0J3MgKm5vdCog
YWxyZWFkeSB0aGVyZSEgKi8KKyAgICAgICAgaWYgKCFzdHJzdHIocHJpdi0+ZXJyX21zZywgbmV3
X2Vycl9tc2cpKSB7CisgICAgICAgICAgICBnY2hhciAqb2xkX2Vycl9tc2cgPSBwcml2LT5lcnJf
bXNnOworICAgICAgICAgICAgcHJpdi0+ZXJyX21zZyA9IGdfc3RyZHVwX3ByaW50ZigiJXNcbiVz
Iiwgb2xkX2Vycl9tc2csIG5ld19lcnJfbXNnKTsKKyAgICAgICAgICAgIGdfZnJlZShvbGRfZXJy
X21zZyk7CisgICAgICAgICAgICBnX2ZyZWUobmV3X2Vycl9tc2cpOworICAgICAgICB9CisgICAg
fSBlbHNlIHsKKyAgICAgICAgcHJpdi0+ZXJyX21zZyA9IG5ld19lcnJfbXNnOworICAgIH0KK30K
Kwogc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfaGlkZV9pbmZvX2JhcihTcGlj
ZVVzYkRldmljZVdpZGdldCAqc2VsZikKIHsKICAgICBTcGljZVVzYkRldmljZVdpZGdldFByaXZh
dGUgKnByaXYgPSBzZWxmLT5wcml2OwpAQCAtMzU5LDE5ICszNzgsMTAgQEAgc3RhdGljIHZvaWQg
Y2hlY2tfY2FuX3JlZGlyZWN0KEd0a1dpZGdldCAqd2lkZ2V0LCBncG9pbnRlciB1c2VyX2RhdGEp
CiAgICAgfSBlbHNlIHsKICAgICAgICAgY2FuX3JlZGlyZWN0ID0gc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX2Nhbl9yZWRpcmVjdF9kZXZpY2UocHJpdi0+bWFuYWdlciwKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2
aWNlLCAmZXJyKTsKLSAgICAgICAgLyogSWYgd2UgY2Fubm90IHJlZGlyZWN0IHRoaXMgZGV2aWNl
LCBhcHBlbmQgdGhlIGVycm9yIG1lc3NhZ2UgdG8KLSAgICAgICAgICAgZXJyX21zZywgYnV0IG9u
bHkgaWYgaXQgaXMgKm5vdCogYWxyZWFkeSB0aGVyZSEgKi8KKwogICAgICAgICBpZiAoIWNhbl9y
ZWRpcmVjdCkgewotICAgICAgICAgICAgaWYgKHByaXYtPmVycl9tc2cpIHsKLSAgICAgICAgICAg
ICAgICBpZiAoIXN0cnN0cihwcml2LT5lcnJfbXNnLCBlcnItPm1lc3NhZ2UpKSB7Ci0gICAgICAg
ICAgICAgICAgICAgIGdjaGFyICpvbGRfZXJyX21zZyA9IHByaXYtPmVycl9tc2c7Ci0gICAgICAg
ICAgICAgICAgICAgIHByaXYtPmVycl9tc2cgPSBnX3N0cmR1cF9wcmludGYoIiVzXG4lcyIsIHBy
aXYtPmVycl9tc2csCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZXJyLT5tZXNzYWdlKTsKLSAgICAgICAgICAgICAgICAgICAgZ19mcmVlKG9sZF9l
cnJfbXNnKTsKLSAgICAgICAgICAgICAgICB9Ci0gICAgICAgICAgICB9IGVsc2UgewotICAgICAg
ICAgICAgICAgIHByaXYtPmVycl9tc2cgPSBnX3N0cmR1cChlcnItPm1lc3NhZ2UpOwotICAgICAg
ICAgICAgfQorICAgICAgICAgICAgZ2NoYXIgKmVycl9tc2cgPSBnX3N0cmR1cF9wcmludGYoIkNh
bid0IHJlZGlyZWN0OiAlcyIsIGVyci0+bWVzc2FnZSk7CisgICAgICAgICAgICBzcGljZV91c2Jf
ZGV2aWNlX3dpZGdldF9hZGRfZXJyX21zZyhzZWxmLCBlcnJfbXNnKTsKICAgICAgICAgfQogICAg
ICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOwogICAgIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
