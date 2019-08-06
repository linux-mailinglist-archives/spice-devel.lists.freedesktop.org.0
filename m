Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE383564
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 17:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A2F6E3FC;
	Tue,  6 Aug 2019 15:35:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB1D89F99
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 15:35:06 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n1so2062955wrw.12
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Aug 2019 08:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nQCnGRDN+EtsZ8xxrU1aB3AOjR56nNj15aA40dRGQrM=;
 b=h6pkonoYXmCNBvmEx2HdcjEcx4x2tHST0Zxprh/NptBz4sqr3GwnpBNMcG9cJqBiUd
 Y3CuSPxbyeZiNn86AdLaOEt5Tpm2qLAyDVBTgUYWY1oTxHA6O3tCRFinPmAt65LjHHvl
 Mg0CfGz2gYdYnm7IyZNleY0GjLeYCO+38ynPIdRUB+lpWp4VOIjVT5gLVCqrPuoqypk2
 ogRj9qK/4R3Qr9LyPL3NDzT6F5bDvlYU2AB7J+hoW5HM9N4xNZ4UzBqh0ZEPIH7PJJLa
 mKLTPuChx4yjTKjnxqGC5azHF/8g3fPO04+e1SCA4HJDXzhlbZ9x3NHpXq9mtW2pTxil
 4shA==
X-Gm-Message-State: APjAAAUNprOYnntyja3W1NEhQCbI96QqWHOwRwXKVfaGp1Xz871cwZqK
 kBiIEQDPVB5AP9yyf57/0BaK7KiNqSF/2Q==
X-Google-Smtp-Source: APXvYqxZd8+K5t9Gpkcc6VZqKI7wEp+x1x6ao3pifORbDZYAOa/tbqAJT6bYbWdgiOMspFa1nHTmEA==
X-Received: by 2002:adf:e941:: with SMTP id m1mr5500500wrn.279.1565105704845; 
 Tue, 06 Aug 2019 08:35:04 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id y18sm84860282wmi.23.2019.08.06.08.35.03
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:35:04 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 17:34:52 +0200
Message-Id: <20190806153453.20616-9-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806153453.20616-1-kpouget@redhat.com>
References: <20190806153453.20616-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-gtk 1/2] spice-widget: make draw-area
 visible on update_image
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2hlbiBzd2l0Y2hpbmcgZnJvbSBhIEdzdHJlYW1lciB2aWRlbyBzdHJlYW0gKG9uIHRoZSBnc3Qt
YXJlYSkgdG8gYW4KbWpwZWcgc3RyZWFtLCB0aGUgImRyYXctYXJlYSIgd2FzIG5vdCBzZXQgYXMg
dmlzaWJsZS4gRHVyaW5nIHRoZQptanBlZy0+Z3N0IHN3aXRjaCwgdGhlIHByb2JsZW0gZG9lcyBu
b3QgaGFwcGVuLCBhcyB0aGUgZ3N0cmVhbWVyCm92ZXJsYXkgaXMgYWxyZWFkeSByZS1jcmVhdGVk
IGFuZCBtYWRlIHZpc2libGUuCgpUaGlzIHBhdGNoIG1ha2VzIHRoZSBkcmF3LWFyZWEgYWx3YXlz
IHZpc2libGUgb24gdXBkYXRlX2ltYWdlLiBBcwpHc3RyZWFtZXIgb3ZlcmxheSBpcyBjcmVhdGVk
IGFmdGVyd2FyZHMgKGlmIGl0J3MgYSBnc3RyZWFtZXIgc3RyZWFtKSwKd2UgYXJlIHN1cmUgdGhh
dCB0aGUgcmlnaHQgYXJlYSB3aWxsIGJlIHZpc2libGUuCgpUaGlzIG1heSBub3QgYmUgdGhlIGJl
c3QgcGxhY2UgZm9yIHRoaXMgbGluZS4uLgoKU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxr
cG91Z2V0QHJlZGhhdC5jb20+Ci0tLQogc3JjL3NwaWNlLXdpZGdldC5jIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRnZXQu
YyBiL3NyYy9zcGljZS13aWRnZXQuYwppbmRleCBhOWJhMWYxLi43Mzk5YTY5IDEwMDY0NAotLS0g
YS9zcmMvc3BpY2Utd2lkZ2V0LmMKKysrIGIvc3JjL3NwaWNlLXdpZGdldC5jCkBAIC0yMjEwLDYg
KzIyMTAsOCBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfaW1hZ2UoU3BpY2VEaXNwbGF5ICpkaXNwbGF5
KQogICAgIFNwaWNlRGlzcGxheVByaXZhdGUgKmQgPSBkaXNwbGF5LT5wcml2OwogCiAgICAgc3Bp
Y2VfY2Fpcm9faW1hZ2VfY3JlYXRlKGRpc3BsYXkpOworICAgIGd0a19zdGFja19zZXRfdmlzaWJs
ZV9jaGlsZF9uYW1lKGQtPnN0YWNrLCAiZHJhdy1hcmVhIik7CisKICAgICBpZiAoZC0+Y2FudmFz
LmNvbnZlcnQpCiAgICAgICAgIGRvX2NvbG9yX2NvbnZlcnQoZGlzcGxheSwgJmQtPmFyZWEpOwog
fQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
