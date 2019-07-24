Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670C972CA9
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55566E508;
	Wed, 24 Jul 2019 10:54:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D41F6E501
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:54:02 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id u25so30825509wmc.4
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:54:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=04xa43nPd4TVt3i/2UQBX6qbuUbG7EPTTRmbiOenCZ0=;
 b=bqIl8yWsBsw3iCUURyOw6DRRP4P45FPrQtgV0xG07T323Y7iEULeW8/2u60VuFMh2r
 tRFioljrllralPpi/O9T4nkDdUMEYBjHsXA+7jW4vRdFzRj8IdQHG0f8rQvBFC84zV9Y
 g8wHphBsjj3aGMsfOxIeSnLmiPo3j2MLb02rimDPHs6ff8kqag5YV/qiGljjk5KM0yJP
 5yhygA2EEBJS+MPo3x9Z4OUlyQ+quF+3T2NN9GWubXoEJsSbQrjVUdFZCwEoWbtN/in0
 6hmv+T/tDjQlaXxaSkZmfkMGn1PUbDKC0njv7mERJnw/56PFq8Ot0DWwo9wGZIEOu0xg
 ClFA==
X-Gm-Message-State: APjAAAUD3FI9eEIvXHRqy+AqjjB23S5PciY99+G2tlhCuQ9D+nZfRYG6
 BEtdXoaQww3XTgWzVnZU0+OMdJ5E
X-Google-Smtp-Source: APXvYqy8ASzd8RmH9HT12gmk7dpfts/YAc82Vc6FD5oFFX+21FQ4Og9eOa+GoE0mZZmKIKF3EqKy8A==
X-Received: by 2002:a1c:5f09:: with SMTP id t9mr77741002wmb.112.1563965640432; 
 Wed, 24 Jul 2019 03:54:00 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.53.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:54:00 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:44 +0300
Message-Id: <20190724105351.13753-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724105351.13753-1-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=04xa43nPd4TVt3i/2UQBX6qbuUbG7EPTTRmbiOenCZ0=;
 b=G67HpKf7Ex8iVHQ2EmdeYwuz5DoB9eUf3TOr7foj/jCqP3d6BFhHfR4PTVl8m/+edu
 q6t9L1+7SaAZ9TuH4BjLvDSMRosFFeR3TqlgH2NJvLsgHvWiDW3im88HvMfucTNowCNY
 WYn+kex49Iu9R6gKgAp53GH853Ods+e57yIo2VmmMkZQJVEVSfkJYXQi0AUOElFh9u7N
 ns7qiBwZoEimQLeYQNho1nW2lfkEaLe5DH0F74edt2WDMz/eY1vQtrMjBvEXcmwH0sqI
 5Zi85ouitPAJTzS76RsIZt95aY6Xta+pUJKlFGwZKw5zRVxp+T21I92iP8GoyItgKYsm
 Y2IA==
Subject: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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

QWRkIGFiaWxpdHkgdG8gaW5kaWNhdGUgZXJyb3IgdG8gZXh0ZXJuYWwgbW9kdWxlcyB2aWEKJ2Rl
dmljZSBlcnJvcicgc2lnbmFsIHdoZW4gcmVhbCBTcGljZVVzYkRldmljZSBpcyBub3QgcGFzc2Vk
LgpUaGlzIGlzIG5lZWRlZCB0byBpbmRpY2F0ZSBlcnJvciBkdXJpbmcgY3JlYXRpb24gb2YgZW11
bGF0ZWQKZGV2aWNlLCB3aGVuIHRoZSBkZXZpY2UgaXMgbm90IGNyZWF0ZWQgeWV0LiBGb3IgdGhh
dCB3ZQphbGxvY2F0ZSB0ZW1wb3JhcnkgU3BpY2VVc2JEZXZpY2Ugc3RydWN0dXJlIHdpdGggYmFj
a2VuZApkZXZpY2UgZmllbGRzIHNldCB0byBOVUxMIGFuZCB1c2UgaXQgZm9yIGluZGljYXRpb24u
IERldmljZQpkZXNjcmlwdGlvbiBmb3Igc3VjaCBkZXZpY2Ugd2lsbCBiZSAnVVNCIFJlZGlyZWN0
aW9uJy4KVW5yZWZlcmVuY2luZyBvZiBzdWNoIGRldmljZSB3aWxsIGJlICdubyBvcGVyYXRpb24n
LgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXlu
aXguY29tPgotLS0KIHNyYy91c2ItYmFja2VuZC5jICAgICAgICB8ICAzICsrKwogc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jIHwgMTQgKysrKysrKysrKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tl
bmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDBiZjJlY2MuLmMxNzkxODggMTAwNjQ0Ci0t
LSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC01MjgsNiAr
NTI4LDkgQEAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
cmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogCiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV91bnJlZihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKIHsKKyAgICBpZiAoIWRl
dikgeworICAgICAgICByZXR1cm47CisgICAgfQogICAgIExPVURfREVCVUcoIiVzID4+ICVwKCVk
KSIsIF9fRlVOQ1RJT05fXywgZGV2LCBkZXYtPnJlZl9jb3VudCk7CiAgICAgaWYgKGdfYXRvbWlj
X2ludF9kZWNfYW5kX3Rlc3QoJmRldi0+cmVmX2NvdW50KSkgewogICAgICAgICBpZiAoZGV2LT5s
aWJ1c2JfZGV2aWNlKSB7CmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9z
cmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggYTUzMGJlOS4uMDk2MWQxNiAxMDA2NDQKLS0t
IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIu
YwpAQCAtOTM1LDEwICs5MzUsMTYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5h
Z2VyX2NoZWNrX3JlZGlyX29uX2Nvbm5lY3QoCiB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9kZXZpY2VfZXJyb3IoCiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmLCBTcGljZVVz
YkRldmljZSAqZGV2aWNlLCBHRXJyb3IgKmVycikKIHsKKyAgICBTcGljZVVzYkRldmljZSAqZGV2
ID0gZGV2aWNlOwogICAgIGdfcmV0dXJuX2lmX2ZhaWwoU1BJQ0VfSVNfVVNCX0RFVklDRV9NQU5B
R0VSKHNlbGYpKTsKLSAgICBnX3JldHVybl9pZl9mYWlsKGRldmljZSAhPSBOVUxMKTsKLQorICAg
IGlmIChkZXZpY2UgPT0gTlVMTCkgeworICAgICAgICBkZXYgPSBnX25ldzAoU3BpY2VVc2JEZXZp
Y2UsIDEpOworICAgICAgICBkZXYtPnJlZiA9IDE7CisgICAgfQogICAgIGdfc2lnbmFsX2VtaXQo
c2VsZiwgc2lnbmFsc1tERVZJQ0VfRVJST1JdLCAwLCBkZXZpY2UsIGVycik7CisgICAgaWYgKGRl
dmljZSA9PSBOVUxMKSB7CisgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfdW5yZWYoZGV2KTsKKyAg
ICB9CiB9CiAjZW5kaWYKIApAQCAtMTQ0MCw2ICsxNDQ2LDEwIEBAIGdjaGFyICpzcGljZV91c2Jf
ZGV2aWNlX2dldF9kZXNjcmlwdGlvbihTcGljZVVzYkRldmljZSAqZGV2aWNlLCBjb25zdCBnY2hh
ciAqZm9yCiAKICAgICBnX3JldHVybl92YWxfaWZfZmFpbChkZXZpY2UgIT0gTlVMTCwgTlVMTCk7
CiAKKyAgICBpZiAoIWRldmljZS0+YmRldikgeworICAgICAgICByZXR1cm4gZ19zdHJkdXAoXygi
VVNCIHJlZGlyZWN0aW9uIikpOworICAgIH0KKwogICAgIGJ1cyAgICAgPSBzcGljZV91c2JfZGV2
aWNlX2dldF9idXNudW0oZGV2aWNlKTsKICAgICBhZGRyZXNzID0gc3BpY2VfdXNiX2RldmljZV9n
ZXRfZGV2YWRkcihkZXZpY2UpOwogICAgIHZpZCAgICAgPSBzcGljZV91c2JfZGV2aWNlX2dldF92
aWQoZGV2aWNlKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
