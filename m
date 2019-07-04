Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F10D5F69C
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 12:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1960E6E2DA;
	Thu,  4 Jul 2019 10:29:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE2C6E2B4
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 10:29:26 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c27so6074726wrb.2
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Jul 2019 03:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WB9aeGV4uHmTon7VGavRye77+89VzwnvYlX92MQsl1g=;
 b=ERo6NDH/RgSOUTbJvY9WG3tj5yXGNotadkuUkADhWOuOtSvgUs/axiBgrJrcTlBnxU
 MNti5QzHhRfV4N28lWmmpUeJmYDAHUIMoaW2N95EmWIgNSG59zx4LuIwzqxpLRxSpI4r
 EUqi/+DZkoHfajDzikMkUioP1jLdjnXAySU1ApXlB9xR1SU2NVI4wefUfyWGku8b7Ir5
 5YKZyZqVaEPbBDlvNO0Fe+XJFt8/4eHgrZ7U7tYvmun6K/AkUslTShnAgKkKt7MpgEiD
 9r+HMtFgqkk1iFe9UJTQB5uqwmOQS83BG/5f5BIkX9UCGMyezK/RJQgdDWbjCV6c5jyf
 PygQ==
X-Gm-Message-State: APjAAAXg8RbokvJw/PayELGC08eJwqqLaePpU1wrBb7a/ATKkZlCvcOe
 loflP8vFvBKBuQpXozZPTrt62gM6wKA=
X-Google-Smtp-Source: APXvYqxwJrCpcJEgQtBY2McD+sGwihRvfdho2OHuyP+shBqihrQwgm2u+D5UWSnoEyykdUz/yTnHRg==
X-Received: by 2002:adf:f28a:: with SMTP id k10mr35117769wro.343.1562236165444; 
 Thu, 04 Jul 2019 03:29:25 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id y10sm2566592wmj.2.2019.07.04.03.29.24
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 03:29:24 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  4 Jul 2019 12:29:22 +0200
Message-Id: <20190704102922.17433-2-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190704102922.17433-1-kpouget@redhat.com>
References: <20190704102922.17433-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-gtk 2/2] spicy: send ordered list of
 preferred video codecs
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

SW5zdGVhZCBvZiBzZW5kaW5nIG9ubHkgdGhlIHByZWZlcnJlZCB2aWRlbyBjb2RlYyAoc2VsZWN0
ZWQpLCBzcGljeQpub3cgc2VuZHMgYW4gb3JkZXJlZCBsaXN0LiBXaGVuIGEgdmlkZW8gY29kZWMg
aXMgc2VsZWN0ZWQgaW4gdGhlIHJhZGlvCmJveCwgdGhpcyBjb2RlYyBpcyBtb3ZlZCB0byBiZWdp
bm5pbmcgb2YgdGhlIGxpc3QuCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRA
cmVkaGF0LmNvbT4KLS0tCiB0b29scy9zcGljeS5jIHwgMzEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvc3BpY3kuYyBiL3Rvb2xzL3NwaWN5LmMKaW5kZXggOGE2
ZDA3Ny4uNDAzYTY2ZCAxMDA2NDQKLS0tIGEvdG9vbHMvc3BpY3kuYworKysgYi90b29scy9zcGlj
eS5jCkBAIC0xMDE0LDggKzEwMTQsMzUgQEAgc3RhdGljIHZvaWQgdmlkZW9fY29kZWNfdHlwZV9j
YihHdGtSYWRpb0FjdGlvbiAqYWN0aW9uIEdfR05VQ19VTlVTRUQsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIEd0a1JhZGlvQWN0aW9uICpjdXJyZW50LAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBncG9pbnRlciB1c2VyX2RhdGEpCiB7Ci0gICAgc3BpY2VfZGlzcGxh
eV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZShTUElDRV9DSEFOTkVM
KHVzZXJfZGF0YSksCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBndGtfcmFkaW9fYWN0aW9uX2dldF9jdXJyZW50X3ZhbHVlKGN1cnJl
bnQpKTsKKyAgICBzdGF0aWMgR0FycmF5ICpwcmVmZXJyZWRfY29kZWNzID0gTlVMTDsKKyAgICBn
aW50IHNlbGVjdGVkX2NvZGVjID0gZ3RrX3JhZGlvX2FjdGlvbl9nZXRfY3VycmVudF92YWx1ZShj
dXJyZW50KTsKKyAgICBndWludCBpOworICAgIEdFcnJvciAqZXJyID0gTlVMTDsKKworICAgIGlm
ICghcHJlZmVycmVkX2NvZGVjcykgeworICAgICAgICBwcmVmZXJyZWRfY29kZWNzID0gZ19hcnJh
eV9zaXplZF9uZXcoRkFMU0UsIEZBTFNFLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc2l6ZW9mKGdpbnQpLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgR19OX0VMRU1FTlRTKHZpZGVvX2NvZGVjX3R5cGVfZW50cmllcykp
OworICAgICAgICAvKiBpbml0aWFsaXplIHdpdGggdGhlIG1lbnUgb3JkZXJpbmcgKi8KKyAgICAg
ICAgZm9yIChpID0gMDsgaSA8IEdfTl9FTEVNRU5UUyh2aWRlb19jb2RlY190eXBlX2VudHJpZXMp
OyBpKyspIHsKKyAgICAgICAgICAgIGdfYXJyYXlfYXBwZW5kX3ZhbChwcmVmZXJyZWRfY29kZWNz
LCB2aWRlb19jb2RlY190eXBlX2VudHJpZXNbaV0udmFsdWUpOworICAgICAgICB9CisgICAgfQor
CisgICAgLyogcmVtb3ZlIGNvZGVjIGZyb20gYXJyYXkgYW5kIGluc2VydCBhdCB0aGUgYmVnaW5u
aW5nICovCisgICAgZm9yIChpID0gMDsgaSA8IHByZWZlcnJlZF9jb2RlY3MtPmxlbiAmJgorICAg
ICAgICAgICAgICAgIGdfYXJyYXlfaW5kZXgocHJlZmVycmVkX2NvZGVjcywgZ2ludCwgaSkgIT0g
c2VsZWN0ZWRfY29kZWM7IGkrKyk7CisKKyAgICBnX2Fzc2VydChpIDwgcHJlZmVycmVkX2NvZGVj
cy0+bGVuKTsKKyAgICBnX2FycmF5X3JlbW92ZV9pbmRleChwcmVmZXJyZWRfY29kZWNzLCBpKTsK
KyAgICBnX2FycmF5X3ByZXBlbmRfdmFsKHByZWZlcnJlZF9jb2RlY3MsIHNlbGVjdGVkX2NvZGVj
KTsKKworICAgIGlmICghc3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlk
ZW9fY29kZWNfdHlwZXMoU1BJQ0VfQ0hBTk5FTCh1c2VyX2RhdGEpLAorICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGdpbnQg
KikgcHJlZmVycmVkX2NvZGVjcy0+ZGF0YSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByZWZlcnJlZF9jb2RlY3MtPmxl
biwgJmVycikpIHsKKyAgICAgICAgZ193YXJuaW5nKCJzZXR0aW5nIHByZWZlcnJlZCB2aWRlbyBj
b2RlY3MgZmFpbGVkOiAlcyIsIGVyci0+bWVzc2FnZSk7CisgICAgICAgIGdfZXJyb3JfZnJlZShl
cnIpOworICAgIH0KIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
