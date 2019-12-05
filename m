Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD331147C4
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7366A6F880;
	Thu,  5 Dec 2019 19:42:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E82C6F8DB
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:54 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id p17so4609609wmi.3
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQHLHlLFlwmr+dqJuY48MK9h18u6dK7KFaj5aeygJCY=;
 b=RRRkBTz9f0FtzR6O1Sa09A0I5/gy/Tftphxn1j98jJKosj0H1snhd/VvsEFsgrqj5W
 owUQdLFYtDGqiHJe6eprr8nBOFBsxoCQGFnE5mSHOsOYGDQtxrcDb+jOvPK5/XICAxOW
 XDyQI6h0n1n8cGRBjfzJuCZIMDcaQqtmYhlAvx0gKZxuo/Spy4XdBuaYDU2od3wyWzup
 puXMxhgiORUm+HwHDwzgFlLmJZQnn30Ote8jpbzGtjN7mKbVCIG3YaxOGsQFoeNvt2RB
 9SW8Ac0etJ89KG2Ugs+LNht4oAsyCb6X2g0Gdf/eqjmB+HWdbPm2CRdS8l4zNhXAD5d+
 +QFg==
X-Gm-Message-State: APjAAAX1GCroyGiKQxX2J1FGAcOQiax5zZez31TfCk5pfxCDLEVcSJWO
 2p8Z9F3/d3VjqhjmYcJf91U5zb1J3dYQ+A==
X-Google-Smtp-Source: APXvYqzby5Rb7rX6ZYGTjZtiq5JVDsfooTavX5iG1KQIDnH3P3iQ7VsjxxftWFWk9LZWeaRLUw6uFw==
X-Received: by 2002:a7b:c85a:: with SMTP id c26mr6479098wml.107.1575567832757; 
 Thu, 05 Dec 2019 09:43:52 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:52 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:15 +0200
Message-Id: <20191205174915.24546-10-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQHLHlLFlwmr+dqJuY48MK9h18u6dK7KFaj5aeygJCY=;
 b=sU/zHSwKxLdRjClphLe+4AtfYrb89y+IuEC3CDgp1VVY7W0uzS3GDQ75WTc0jA1bSN
 vXPQj4vDcp1OtoPCylMnCEFPKEXDor9eWImxDZZZbeIX0UKtCvzfJlpdJ7d3RbkwjW/b
 K5qm7ZXMuwt7AY7xyAH5aGYf71SsrI2T7pGFU6NC6SL7Ixv2m6jzbKm4fAmp6yYJW/8U
 3p2KfhcpQ4mA1ILUjuU/QbcTr82gwbcWUuC5pAS5gmIPHLSInO0rzgUw4ynQyyLxOzli
 qt6DVgtNUCXdvFNlOnAw/gUu1cEWf5cc3z4mgJs+Ty5DmrTxfl4boMH6GlDWxex7DAgw
 necg==
Subject: [Spice-devel] [PATCH 9/9] remove un-connected shared CD devices
 upon usb-device-widget construction
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNvbWUgY29y
bmVyIGVycm9yIHNjZW5hcmlvcyBtYXkgbGVhdmUgZGFuZ2xpbmcgbm90IGNvbm5lY3RlZCBzaGFy
ZWQgQ0QgZGV2aWNlcy4KQXMgdGhlIGN1cnJlbnQgZmxvdyBwcmVjbHVkZXMgbWFpbnRlbmFuY2Ug
b2Ygc3VjaCBkZXZpY2VzLCBpdCBtYXkgYmUgcHJ1ZGVudAp0byBpZGVudGlmeSBhbmQgcmVtb3Zl
IHRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRo
YXQuY29tPgotLS0KIHNyYy91c2ItZGV2aWNlLXdpZGdldC5jIHwgMTIgKysrKysrKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKaW5k
ZXggNzI0YjdiNS4uNmU4MTUwYyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMK
KysrIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKQEAgLTI5NSw5ICsyOTUsMTkgQEAgc3RhdGlj
IHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfY29uc3RydWN0ZWQoR09iamVjdCAqZ29iamVj
dCkKIAogICAgIGRldmljZXMgPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0X2RldmljZXMo
cHJpdi0+bWFuYWdlcik7CiAgICAgaWYgKGRldmljZXMgIT0gTlVMTCkgeworICAgICAgICBTcGlj
ZVVzYkRldmljZSAqZGV2aWNlOwogICAgICAgICBpbnQgaTsKKwogICAgICAgICBmb3IgKGkgPSAw
OyBpIDwgZGV2aWNlcy0+bGVuOyBpKyspIHsKLSAgICAgICAgICAgIGRldmljZV9hZGRlZF9jYihO
VUxMLCBnX3B0cl9hcnJheV9pbmRleChkZXZpY2VzLCBpKSwgc2VsZik7CisgICAgICAgICAgICBk
ZXZpY2UgPSBnX3B0cl9hcnJheV9pbmRleChkZXZpY2VzLCBpKTsKKworICAgICAgICAgICAgaWYg
KHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9pc19kZXZpY2Vfc2hhcmVkX2NkKHByaXYtPm1hbmFn
ZXIsIGRldmljZSkgJiYKKyAgICAgICAgICAgICAgICAhc3BpY2VfdXNiX2RldmljZV9tYW5hZ2Vy
X2lzX2RldmljZV9jb25uZWN0ZWQocHJpdi0+bWFuYWdlciwgZGV2aWNlKSkgeworICAgICAgICAg
ICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9yZW1vdmVfc2hhcmVkX2NkX2RldmljZShw
cml2LT5tYW5hZ2VyLCBkZXZpY2UsIE5VTEwpOworICAgICAgICAgICAgICAgIGNvbnRpbnVlOwor
ICAgICAgICAgICAgfQorCisgICAgICAgICAgICBkZXZpY2VfYWRkZWRfY2IoTlVMTCwgZGV2aWNl
LCBzZWxmKTsKICAgICAgICAgfQogCiAgICAgICAgIGdfcHRyX2FycmF5X3VucmVmKGRldmljZXMp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
