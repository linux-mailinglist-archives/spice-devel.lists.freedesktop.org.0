Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09709A0475
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 16:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6453D89C59;
	Wed, 28 Aug 2019 14:15:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EC089258
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:15:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 35ED2315C010
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:15:02 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AFB2860F82;
 Wed, 28 Aug 2019 14:14:59 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 15:14:21 +0100
Message-Id: <20190828141421.18902-19-fziglio@redhat.com>
In-Reply-To: <20190828141421.18902-1-fziglio@redhat.com>
References: <20190828141421.18902-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 28 Aug 2019 14:15:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v5 18/18] test-cd-emu: Test no
 libusb context support
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

QWx0aG91Z2ggY3VycmVudGx5IG5vdCBzdXBwb3J0ZWQgYnkgdGhlIGNvZGUgKGxpYnVzYl9jb250
ZXh0IGluClNwaWNlVXNiQmFja2VuZCBpcyBuZXZlciBOVUxMKSwgdHJ5IHRvIHN1cHBvcnQgaXQg
aW4gb3JkZXIgdG8gYmUgYWJsZSB0bwpoYXZlIG9ubHkgZW11bGF0ZWQgZGV2aWNlcyBpZiB0aGUg
bGlidXNiIGxheWVyIGlzIGZhaWxpbmcuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9jZC1lbXUuYyB8IDE2ICsrKysrKysrKysr
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL2NkLWVtdS5jIGIvdGVzdHMvY2QtZW11LmMKaW5kZXggMjdhZDhl
ZjYuLjgwOWUwYjNlIDEwMDY0NAotLS0gYS90ZXN0cy9jZC1lbXUuYworKysgYi90ZXN0cy9jZC1l
bXUuYwpAQCAtMTkzLDcgKzE5Myw4IEBAIGRldmljZV9pdGVyYXRpb24oY29uc3QgaW50IGxvb3As
IGNvbnN0IGJvb2wgYXR0YWNoX29uX2Nvbm5lY3QpCiAKIHN0YXRpYyB2b2lkIGF0dGFjaChjb25z
dCB2b2lkICpwYXJhbSkKIHsKLSAgICBjb25zdCBib29sIGF0dGFjaF9vbl9jb25uZWN0ID0gISFH
UE9JTlRFUl9UT19VSU5UKHBhcmFtKTsKKyAgICBjb25zdCBib29sIGF0dGFjaF9vbl9jb25uZWN0
ID0gISEoR1BPSU5URVJfVE9fVUlOVChwYXJhbSkgJiAxKTsKKyAgICBjb25zdCBib29sIGxpYnVz
Yl9lbmFibGVkID0gISEoR1BPSU5URVJfVE9fVUlOVChwYXJhbSkgJiAyKTsKIAogICAgIGhlbGxv
c19zZW50ID0gMDsKICAgICBtZXNzYWdlc19zZW50ID0gMDsKQEAgLTIzNiw3ICsyMzcsMTIgQEAg
c3RhdGljIHZvaWQgYXR0YWNoKGNvbnN0IHZvaWQgKnBhcmFtKQogICAgIGdfYXNzZXJ0X25vbm51
bGwoZGV2aWNlKTsKICAgICBnX2Fzc2VydF9mYWxzZShkZXZpY2UtPmVkZXZfY29uZmlndXJlZCk7
CiAKKyAgICB2b2lkICpsaWJ1c2JfY29udGV4dF9zYXZlZCA9IGJlLT5saWJ1c2JfY29udGV4dDsK
KyAgICBpZiAoIWxpYnVzYl9lbmFibGVkKSB7CisgICAgICAgIGJlLT5saWJ1c2JfY29udGV4dCA9
IE5VTEw7CisgICAgfQogICAgIHVzYl9jaCA9IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfbmV3
KGJlLCBTUElDRV9VU0JSRURJUl9DSEFOTkVMKGNoKSk7CisgICAgYmUtPmxpYnVzYl9jb250ZXh0
ID0gbGlidXNiX2NvbnRleHRfc2F2ZWQ7CiAgICAgZ19hc3NlcnRfbm9ubnVsbCh1c2JfY2gpOwog
CiAgICAgZm9yIChpbnQgbG9vcCA9IDA7IGxvb3AgPCAyOyBsb29wKyspIHsKQEAgLTMwMCw4ICsz
MDYsMTIgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKIAogICAgIGdfdGVzdF9h
ZGRfZGF0YV9mdW5jKCIvY2QtZW11L3NpbXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMSksIG11bHRp
cGxlKTsKICAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9tdWx0aXBsZSIsIEdVSU5U
X1RPX1BPSU5URVIoMTI4KSwgbXVsdGlwbGUpOwotICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIv
Y2QtZW11L2F0dGFjaF9ub19hdXRvIiwgR1VJTlRfVE9fUE9JTlRFUigwKSwgYXR0YWNoKTsKLSAg
ICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfYXV0byIsIEdVSU5UX1RPX1BP
SU5URVIoMSksIGF0dGFjaCk7CisjZGVmaW5lIEFUVEFDSF9QQVJBTShhdXRvX2F0dGFjaCwgbGli
dXNiKSBcCisgICAgR1VJTlRfVE9fUE9JTlRFUighIShhdXRvX2F0dGFjaCkgKyAyICogISEobGli
dXNiKSkKKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9fYXV0byIs
IEFUVEFDSF9QQVJBTSgwLCAxKSwgYXR0YWNoKTsKKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygi
L2NkLWVtdS9hdHRhY2hfYXV0byIsIEFUVEFDSF9QQVJBTSgxLCAxKSwgYXR0YWNoKTsKKyAgICBn
X3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9fYXV0b19ub19saWJ1c2IiLCBB
VFRBQ0hfUEFSQU0oMCwgMCksIGF0dGFjaCk7CisgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9j
ZC1lbXUvYXR0YWNoX2F1dG9fbm9fbGlidXNiIiwgQVRUQUNIX1BBUkFNKDEsIDApLCBhdHRhY2gp
OwogCiAgICAgaW50IHJldCA9ICBnX3Rlc3RfcnVuKCk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
