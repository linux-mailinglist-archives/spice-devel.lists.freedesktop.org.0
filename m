Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B9B3806
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928376E905;
	Mon, 16 Sep 2019 10:21:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E556E905
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 34FFC18C8938
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:21 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B35365D6B2
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:20 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:21:03 +0200
Message-Id: <20190916102104.20943-21-victortoso@redhat.com>
In-Reply-To: <20190916102104.20943-1-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Mon, 16 Sep 2019 10:21:21 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 20/20] test-cd-emu: Test no libusb context
 support
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBbHRob3VnaCBjdXJy
ZW50bHkgbm90IHN1cHBvcnRlZCBieSB0aGUgY29kZSAobGlidXNiX2NvbnRleHQgaW4KU3BpY2VV
c2JCYWNrZW5kIGlzIG5ldmVyIE5VTEwpLCB0cnkgdG8gc3VwcG9ydCBpdCBpbiBvcmRlciB0byBi
ZSBhYmxlIHRvCmhhdmUgb25seSBlbXVsYXRlZCBkZXZpY2VzIGlmIHRoZSBsaWJ1c2IgbGF5ZXIg
aXMgZmFpbGluZy4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgotLS0KIHRlc3RzL2NkLWVtdS5jIHwgMTYgKysrKysrKysrKysrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMvY2QtZW11LmMgYi90ZXN0cy9jZC1lbXUuYwppbmRleCA2OTA0MjNiLi5jOTZjMGJhIDEw
MDY0NAotLS0gYS90ZXN0cy9jZC1lbXUuYworKysgYi90ZXN0cy9jZC1lbXUuYwpAQCAtMTkzLDcg
KzE5Myw4IEBAIGRldmljZV9pdGVyYXRpb24oY29uc3QgaW50IGxvb3AsIGNvbnN0IGJvb2wgYXR0
YWNoX29uX2Nvbm5lY3QpCiAKIHN0YXRpYyB2b2lkIGF0dGFjaChjb25zdCB2b2lkICpwYXJhbSkK
IHsKLSAgICBjb25zdCBib29sIGF0dGFjaF9vbl9jb25uZWN0ID0gISFHUE9JTlRFUl9UT19VSU5U
KHBhcmFtKTsKKyAgICBjb25zdCBib29sIGF0dGFjaF9vbl9jb25uZWN0ID0gISEoR1BPSU5URVJf
VE9fVUlOVChwYXJhbSkgJiAxKTsKKyAgICBjb25zdCBib29sIGxpYnVzYl9lbmFibGVkID0gISEo
R1BPSU5URVJfVE9fVUlOVChwYXJhbSkgJiAyKTsKIAogICAgIGhlbGxvc19zZW50ID0gMDsKICAg
ICBtZXNzYWdlc19zZW50ID0gMDsKQEAgLTIzNiw3ICsyMzcsMTIgQEAgc3RhdGljIHZvaWQgYXR0
YWNoKGNvbnN0IHZvaWQgKnBhcmFtKQogICAgIGdfYXNzZXJ0X25vbm51bGwoZGV2aWNlKTsKICAg
ICBnX2Fzc2VydF9mYWxzZShkZXZpY2UtPmVkZXZfY29uZmlndXJlZCk7CiAKKyAgICB2b2lkICps
aWJ1c2JfY29udGV4dF9zYXZlZCA9IGJlLT5saWJ1c2JfY29udGV4dDsKKyAgICBpZiAoIWxpYnVz
Yl9lbmFibGVkKSB7CisgICAgICAgIGJlLT5saWJ1c2JfY29udGV4dCA9IE5VTEw7CisgICAgfQog
ICAgIHVzYl9jaCA9IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfbmV3KGJlLCBTUElDRV9VU0JS
RURJUl9DSEFOTkVMKGNoKSk7CisgICAgYmUtPmxpYnVzYl9jb250ZXh0ID0gbGlidXNiX2NvbnRl
eHRfc2F2ZWQ7CiAgICAgZ19hc3NlcnRfbm9ubnVsbCh1c2JfY2gpOwogCiAgICAgZm9yIChpbnQg
bG9vcCA9IDA7IGxvb3AgPCAyOyBsb29wKyspIHsKQEAgLTMwMCw4ICszMDYsMTIgQEAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKIAogICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIv
Y2QtZW11L3NpbXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMSksIG11bHRpcGxlKTsKICAgICBnX3Rl
c3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9tdWx0aXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMTI4
KSwgbXVsdGlwbGUpOwotICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11L2F0dGFjaF9u
b19hdXRvIiwgR1VJTlRfVE9fUE9JTlRFUigwKSwgYXR0YWNoKTsKLSAgICBnX3Rlc3RfYWRkX2Rh
dGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfYXV0byIsIEdVSU5UX1RPX1BPSU5URVIoMSksIGF0dGFj
aCk7CisjZGVmaW5lIEFUVEFDSF9QQVJBTShhdXRvX2F0dGFjaCwgbGlidXNiKSBcCisgICAgR1VJ
TlRfVE9fUE9JTlRFUighIShhdXRvX2F0dGFjaCkgKyAyICogISEobGlidXNiKSkKKyAgICBnX3Rl
c3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9fYXV0byIsIEFUVEFDSF9QQVJBTSgw
LCAxKSwgYXR0YWNoKTsKKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hf
YXV0byIsIEFUVEFDSF9QQVJBTSgxLCAxKSwgYXR0YWNoKTsKKyAgICBnX3Rlc3RfYWRkX2RhdGFf
ZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9fYXV0b19ub19saWJ1c2IiLCBBVFRBQ0hfUEFSQU0oMCwg
MCksIGF0dGFjaCk7CisgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX2F1
dG9fbm9fbGlidXNiIiwgQVRUQUNIX1BBUkFNKDEsIDApLCBhdHRhY2gpOwogCiAgICAgaW50IHJl
dCA9ICBnX3Rlc3RfcnVuKCk7CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
