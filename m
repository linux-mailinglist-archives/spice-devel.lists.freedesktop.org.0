Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D471048790
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 17:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5890789135;
	Mon, 17 Jun 2019 15:40:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D45A89135
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 15:40:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C43CC2F8BDF
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 15:40:20 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DBF217E5B1;
 Mon, 17 Jun 2019 15:40:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 16:40:08 +0100
Message-Id: <20190617154011.20310-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 17 Jun 2019 15:40:20 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
 RedCharDevice pipe items handling
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

QXMgd2UgZG9uJ3QgdXNlIGFueSB0b2tlbiB0aGVyZSdzIG5vIHJlYXNvbiB0byBub3QgcXVldWUg
ZGlyZWN0bHkgaW5zdGVhZApvZiBwYXNzaW5nIHRocm91Z2ggUmVkQ2hhckRldmljZS4KVGhpcyB3
aWxsIG1ha2UgZWFzaWVyIHRvIGxpbWl0IHRoZSBxdWV1ZSB3aGljaCBjdXJyZW50bHkgaXMgdW5s
aW1pdGVkLgoKUmVkQ2hhckRldmljZSBmbG93IGNvbnRyb2wgaGFzIHNvbWUgcHJvYmxlbXM6Ci0g
aXQncyByZWFsbHkgZGVzaWduZWQgd2l0aCBWREkgaW4gbWluZC4gVGhpcyBmb3IgU3BpY2VWTUMg
d291bGQgY2F1c2UKICBjb2RlIGltcGxlbWVudGF0aW9uIHRvIGJlIGNvbmZ1c2luZyBoYXZpbmcg
dG8gc2F0aXNmeSB0aGUgYWdlbnQgdG9rZW4KICBoYW5kbGluZzsKLSBpdCdzIHVzaW5nIGl0ZW1z
IGFzIHVuaXQgbm90IGFsbG93aW5nIGNvdW50aW5nIGJ5dGVzOwotIGl0IGR1cGxpY2F0ZXMgc29t
ZSBxdWV1ZSBtYW5hZ2VtZW50IGJldHdlZW4gUmVkQ2hhbm5lbENsaWVudDsKLSBpdCdzIGJyb2tl
biAoc2VlIGNvbW1lbnRzIGluIGNoYXItZGV2aWNlLmgpOwotIGl0IGZvcmNlcyAiY2xpZW50cyIg
dG8gYmVoYXZlIGluIHNvbWUgd2F5IG5vdCBhbHRlcmluZyBmb3IgaW5zdGFuY2UgdGhlCiAgcXVl
dWVkIGl0ZW1zICh3aGljaCBpcyB2ZXJ5IHVzZWZ1bCBpZiBpdGVtcyBjYW4gYmUgY29sbGFwc2Vk
IHRvZ2V0aGVyKTsKLSBpdCByZXBsaWNhdGVzIHRoZSB0b2tlbiBoYW5kbGluZyBvbiB0aGUgZGV2
aWNlIHF1ZXVlIHRvby4gVGhpcyBjb3VsZAogIHNlZW1zIHJpZ2h0IGJ1dCBpcyBub3QgdGhhdCBp
ZiB5b3UgaGF2ZSBhIG5ldHdvcmsgY2FyZCBnb2luZyBAIDEgR0JpdC9zCiAgeW91IGFyZSBhYmxl
IHRvIHVwbG9hZCBtb3JlIHRoYW4gMSBHYml0L3MganVzdCB1c2luZyBtdWx0aXBsZQogIGNvbm5l
Y3Rpb25zLiBUaGUga2VybmVsIHdpbGwgdXNlIGEgc2luZ2xlIHF1ZXVlIGZvciB0aGUgbmV0d29y
ayBpbnRlcmZhY2UKICBsaW1pdGluZyBhbmQgc2hhcmluZyBkZSBmYWN0byB0aGUgdmFyaW91cyBi
dWZmZXJzIGJldHdlZW4gdGhlIG11bHRpcGxlCiAgY29ubmVjdGlvbnMuCgpTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6
Ci0gbW9yZSBjb21taXQgbWVzc2FnZSBjb21tZW50cwotLS0KIHNlcnZlci9zcGljZXZtYy5jIHwg
MTUgKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9zcGlj
ZXZtYy5jCmluZGV4IDg0YmJiNzNjMi4uOGM0MTU3M2FlIDEwMDY0NAotLS0gYS9zZXJ2ZXIvc3Bp
Y2V2bWMuYworKysgYi9zZXJ2ZXIvc3BpY2V2bWMuYwpAQCAtMzYwLDI5ICszNjAsMjQgQEAgc3Rh
dGljIFJlZFBpcGVJdGVtICpzcGljZXZtY19jaGFyZGV2X3JlYWRfbXNnX2Zyb21fZGV2KFJlZENo
YXJEZXZpY2UgKnNlbGYsCiAKICAgICAgICAgbXNnX2l0ZW1fY29tcHJlc3NlZCA9IHRyeV9jb21w
cmVzc19sejQoY2hhbm5lbCwgbiwgbXNnX2l0ZW0pOwogICAgICAgICBpZiAobXNnX2l0ZW1fY29t
cHJlc3NlZCAhPSBOVUxMKSB7Ci0gICAgICAgICAgICByZXR1cm4gJm1zZ19pdGVtX2NvbXByZXNz
ZWQtPmJhc2U7CisgICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChj
aGFubmVsLT5yY2MsICZtc2dfaXRlbV9jb21wcmVzc2VkLT5iYXNlKTsKKyAgICAgICAgICAgIHJl
dHVybiBOVUxMOwogICAgICAgICB9CiAjZW5kaWYKICAgICAgICAgc3RhdF9pbmNfY291bnRlcihj
aGFubmVsLT5vdXRfZGF0YSwgbik7CiAgICAgICAgIG1zZ19pdGVtLT51bmNvbXByZXNzZWRfZGF0
YV9zaXplID0gbjsKICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91c2VkID0gbjsKLSAgICAgICAgcmV0
dXJuICZtc2dfaXRlbS0+YmFzZTsKLSAgICB9IGVsc2UgewotICAgICAgICBjaGFubmVsLT5waXBl
X2l0ZW0gPSBtc2dfaXRlbTsKKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1
c2goY2hhbm5lbC0+cmNjLCAmbXNnX2l0ZW0tPmJhc2UpOwogICAgICAgICByZXR1cm4gTlVMTDsK
ICAgICB9CisgICAgY2hhbm5lbC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07CisgICAgcmV0dXJuIE5V
TEw7CiB9CiAKIHN0YXRpYyB2b2lkIHNwaWNldm1jX2NoYXJkZXZfc2VuZF9tc2dfdG9fY2xpZW50
KFJlZENoYXJEZXZpY2UgKnNlbGYsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBSZWRQaXBlSXRlbSAqbXNnLAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50ICpjbGllbnQpCiB7Ci0gICAgUmVkQ2hh
ckRldmljZVNwaWNlVm1jICp2bWMgPSBSRURfQ0hBUl9ERVZJQ0VfU1BJQ0VWTUMoc2VsZik7Ci0g
ICAgUmVkVm1jQ2hhbm5lbCAqY2hhbm5lbCA9IFJFRF9WTUNfQ0hBTk5FTCh2bWMtPmNoYW5uZWwp
OwotCi0gICAgc3BpY2VfYXNzZXJ0KHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2xpZW50KGNoYW5u
ZWwtPnJjYykgPT0gY2xpZW50KTsKLSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwotICAgIHJl
ZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywgbXNnKTsKIH0KIAog
c3RhdGljIHZvaWQgcmVkX3BvcnRfaW5pdF9pdGVtX2ZyZWUoc3RydWN0IFJlZFBpcGVJdGVtICpi
YXNlKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
