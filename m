Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E077D71B28
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 17:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCECB89C96;
	Tue, 23 Jul 2019 15:13:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB9C89C96
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 15:13:59 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id p74so38924668wme.4
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:13:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OLoqhOCJXuWFpBeugxA/rB5PJWGDAlSFFVbA6hkdSp8=;
 b=dY0g7HjzGvRvBLyJaEr7SE8MVIZKmkh8CwB+z+TFk0JezMIkIlOTVHqQI4F+Bo+TrC
 PyJ4Y4fkw9Bfi6Kb7ZnV/I/Zue4v5+grdyTKOfS+NdJDOn6p+2wX0yaD1d1OVDVE7OpS
 mUkUkaVumMQoFKxWSQKlHli4YfheA7wHV89TJktkkmryc3d2WeQ/dZs0tiGtbhhkElx0
 VlbrizxulOp4jZbEyyMdwEwV2B0me9IcW9uyFLmLkQ562X+cgcAPxgsupWP3ybDCczYM
 XU0pbVrDsvwv0jwYM7ijmcnPU2PwS+VRtbI0yXxMyszFQbcHMs3GUE6Qndq3bo3dv8dN
 phUQ==
X-Gm-Message-State: APjAAAV3/UGIp+fkOfsQ+/VFbkJXfPVUbm0dNhWSX2V7WBjd+5yMwu+n
 ucys1Ve4j7gLCowSQhmyrxQuri1X
X-Google-Smtp-Source: APXvYqx0zHZdINvuJeddK0Q8quF5T3sVlmPh2iAZoC+HFEl2IK/L+v1WpXl5XZtKZk2mIhBpNtWyCQ==
X-Received: by 2002:a1c:f018:: with SMTP id a24mr67564069wmb.66.1563894837505; 
 Tue, 23 Jul 2019 08:13:57 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id t6sm46633438wmb.29.2019.07.23.08.13.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 08:13:56 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 18:13:45 +0300
Message-Id: <20190723151349.6490-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=OLoqhOCJXuWFpBeugxA/rB5PJWGDAlSFFVbA6hkdSp8=;
 b=AhOYvoUBSntS03akHu7X2juPa6yUysXgGg3rveR66mX2UAHzRPjXz+que24GrnGO6d
 g68uojPteJezPhqakCuoxABqlXEdvutIkoCpsLI2vBFubfMUN3kqZ5XAGW6iqm4Wjndr
 L7dvDkY9Pgg3rvpNeaUS3OKSZmVx8XOF0Pc66c1FYl6cVckXXeyja//yXxPS0TxSnyoV
 NHylO/cPzgtutaGIUYi51sFdagl+0qjmN/KJg7CG+65Y45NXZm1aiPb2qBilrC4v/ytr
 P3BsNwZ4A12WED0sZwW+EwatMyvmvVXbYUSPfJ7vUuorCkk6QQgYwqvoIlkLFRZwPopH
 yHoQ==
Subject: [Spice-devel] [spice-gtk v3 0/4] usb-redir: unification of Linux
 and Windows code
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

VGhpcyBzZXJpZXMgaXMgZGVkaWNhdGVkIHRvIHVuaWZpY2F0aW9uIG9mIExpbnV4IFdpbmRvd3Mg
Zmxvd3MKaW4gdXNiLWRldmljZS1tYW5hZ2VyLiBJdCBtb3ZlcyBkaWZmZXJlbmNlcyByZWxhdGVk
IHRvIGxpYnVzYgp0byBVU0IgYmFja2VuZCBtb2R1bGUgYW5kIHNpbXBsaWZpZXMgaW1wbGVtZW50
YXRpb24gb2YgcHJvY2VkdXJlcwpyZWxhdGVkIHRvIFVTQiByZWRpcmVjdGlvbi4KCkNoYW5nZXMg
ZnJvbSB2MjogY29zbWV0aWMgY2hhbmdlcwoKWXVyaSBCZW5kaXRvdmljaCAoNCk6CiAgdXNiLXJl
ZGlyOiB1bmlmeSBkZXZpY2UgaG90cGx1Zy91bnBsdWcgZm9yIFdpbmRvd3MgYW5kIExpbnV4CiAg
dXNiLXJlZGlyOiBwYXNzIEdFcnJvciB0byBob3RwbHVnIHJlZ2lzdHJhdGlvbiBwcm9jZWR1cmUK
ICB1c2ItcmVkaXI6IG1vdmUgVVNCIGV2ZW50cyBoYW5kbGluZyB0byBVU0IgYmFja2VuZAogIHVz
Yi1yZWRpcjogdXNlIGdfdGhyZWFkX3RyeV9uZXcgaW5zdGVhZCBvZiBnX3RocmVhZF9uZXcKCiBt
ZXNvbi5idWlsZCAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogc3JjL2NoYW5uZWwtdXNicmVk
aXIuYyAgICAgICAgfCAgMjggLS0tCiBzcmMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICB8ICAg
NCArLQogc3JjL3VzYi1iYWNrZW5kLmMgICAgICAgICAgICAgfCAzMDkgKysrKysrKysrKysrKysr
KysrLS0tLS0tCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgICAgICB8ICAxMyArLQogc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci1wcml2LmggfCAgIDYgLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
ICAgICAgfCAxMzkgKy0tLS0tLS0tLS0KIHNyYy93aW4tdXNiLWRldi5jICAgICAgICAgICAgIHwg
NDM2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIHNyYy93aW4tdXNiLWRldi5o
ICAgICAgICAgICAgIHwgIDg0IC0tLS0tLS0KIDkgZmlsZXMgY2hhbmdlZCwgMjQ1IGluc2VydGlv
bnMoKyksIDc3NiBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvd2luLXVzYi1k
ZXYuYwogZGVsZXRlIG1vZGUgMTAwNjQ0IHNyYy93aW4tdXNiLWRldi5oCgotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
