Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAAC9988E
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 17:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332076E528;
	Thu, 22 Aug 2019 15:53:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8096E52A
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 15:53:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E18754FCC9
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 15:53:15 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5184260F9F
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 15:53:15 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 22 Aug 2019 18:53:12 +0300
Message-Id: <20190822155312.17926-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 22 Aug 2019 15:53:15 +0000 (UTC)
Subject: [Spice-devel] [server patch v2] test-loop: increment a variable
 outside of spice_assert
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

c3BpY2VfYXNzZXJ0IGlzIGEgbWFjcm8gYW5kIGNvdnNjYW4gcmVwb3J0cyB0aGF0OgogIEFyZ3Vt
ZW50ICIrK3R3aWNlX3JlbW92ZV9jYWxsZWQiIG9mIHNwaWNlX2Fzc2VydCgpIGhhcyBhIHNpZGUg
ZWZmZWN0LgoKRG9lc24ndCBtYXR0ZXIgaWYgdGhlcmUgaXMgYSBzaWRlIGVmZmVjdHMgb3Igbm90
LAppdCdzIGEgZ29vZCBwcmFjdGljZSBhbmQgaXQgbWFrZXMgY292c2NhbiBoYXBweSwgc28KaW5j
cmVtZW50IHRoZSB2YXJpYWJsZSBvbmUgbGluZSBhYm92ZS4KClNpZ25lZC1vZmYtYnk6IFVyaSBM
dWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCgp2MS0+djI6IGNoYW5nZSBjb21taXQgbG9nIChG
cmVkaWFubykKCi0tLQogc2VydmVyL3Rlc3RzL3Rlc3QtbG9vcC5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvdGVzdHMvdGVzdC1sb29wLmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKaW5kZXggODJh
ZjgwYWIzLi40ZGYzYTdkMjAgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYwor
KysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKQEAgLTc4LDcgKzc4LDggQEAgc3RhdGljIFNw
aWNlVGltZXIgKnR3aWNlX3RpbWVyc19yZW1vdmVbMl0gPSB7IE5VTEwsIE5VTEwgfTsKIHN0YXRp
YyBpbnQgdHdpY2VfcmVtb3ZlX2NhbGxlZCA9IDA7CiBzdGF0aWMgdm9pZCB0aW1lcl9ub3RfdHdp
Y2VfcmVtb3ZlKHZvaWQgKm9wYXF1ZSkKIHsKLSAgICBzcGljZV9hc3NlcnQoKyt0d2ljZV9yZW1v
dmVfY2FsbGVkID09IDEpOworICAgICsrdHdpY2VfcmVtb3ZlX2NhbGxlZDsKKyAgICBzcGljZV9h
c3NlcnQodHdpY2VfcmVtb3ZlX2NhbGxlZCA9PSAxKTsKIAogICAgIC8qIGRlbGV0ZSB0aW1lcnMs
IHNob3VsZCBub3QgaGF2ZSBhbm90aGVyIGNhbGwgKi8KICAgICBjb3JlLT50aW1lcl9yZW1vdmUo
dHdpY2VfdGltZXJzX3JlbW92ZVswXSk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
