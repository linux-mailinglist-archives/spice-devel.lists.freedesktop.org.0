Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0A39E40E
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1478489949;
	Tue, 27 Aug 2019 09:24:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88C5899B3
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 769DC8A004
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:16 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E33D75DC1B;
 Tue, 27 Aug 2019 09:24:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:46 +0100
Message-Id: <20190827092246.10276-30-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 27 Aug 2019 09:24:16 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 29/29] test-cd-emu: Test no
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

QWx0aG91Z2ggY3VycmVudGx5IG5vdCBzdXBwb3J0ZWQgdGhlIGNvZGUgdHJ5IHRvIHN1cHBvcnQg
aXQKaW4gb3JkZXIgdG8gYmUgYWJsZSB0byBoYXZlIG9ubHkgZW11bGF0ZWQgZGV2aWNlcyBpZiB0
aGUKbGlidXNiIGxheWVyIGlzIGZhaWxpbmcuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9jZC1lbXUuYyB8IDE2ICsrKysrKysr
KysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2NkLWVtdS5jIGIvdGVzdHMvY2QtZW11LmMKaW5kZXggZGE2
ZTNjM2YuLmNjNWNmOGZkIDEwMDY0NAotLS0gYS90ZXN0cy9jZC1lbXUuYworKysgYi90ZXN0cy9j
ZC1lbXUuYwpAQCAtMTgwLDcgKzE4MCw4IEBAIHByaW50ZigiTE9PUCAlZFxuIiwgbG9vcCk7CiAK
IHN0YXRpYyB2b2lkIGF0dGFjaChjb25zdCB2b2lkICpwYXJhbSkKIHsKLSAgICBjb25zdCBib29s
IGF0dGFjaF9vbl9jb25uZWN0ID0gISFHUE9JTlRFUl9UT19VSU5UKHBhcmFtKTsKKyAgICBjb25z
dCBib29sIGF0dGFjaF9vbl9jb25uZWN0ID0gISEoR1BPSU5URVJfVE9fVUlOVChwYXJhbSkgJiAx
KTsKKyAgICBjb25zdCBib29sIGxpYnVzYl9lbmFibGVkID0gISEoR1BPSU5URVJfVE9fVUlOVChw
YXJhbSkgJiAyKTsKIAogICAgIGhlbGxvc19zZW50ID0gMDsKICAgICBtZXNzYWdlc19zZW50ID0g
MDsKQEAgLTIyMyw3ICsyMjQsMTIgQEAgc3RhdGljIHZvaWQgYXR0YWNoKGNvbnN0IHZvaWQgKnBh
cmFtKQogICAgIGdfYXNzZXJ0X25vbm51bGwoZGV2aWNlKTsKICAgICBnX2Fzc2VydF9mYWxzZShk
ZXZpY2UtPmVkZXZfY29uZmlndXJlZCk7CiAKKyAgICB2b2lkICpsaWJ1c2JfY29udGV4dF9zYXZl
ZCA9IGJlLT5saWJ1c2JfY29udGV4dDsKKyAgICBpZiAoIWxpYnVzYl9lbmFibGVkKSB7CisgICAg
ICAgIGJlLT5saWJ1c2JfY29udGV4dCA9IE5VTEw7CisgICAgfQogICAgIHVzYl9jaCA9IHNwaWNl
X3VzYl9iYWNrZW5kX2NoYW5uZWxfbmV3KGJlLCBTUElDRV9VU0JSRURJUl9DSEFOTkVMKGNoKSk7
CisgICAgYmUtPmxpYnVzYl9jb250ZXh0ID0gbGlidXNiX2NvbnRleHRfc2F2ZWQ7CiAgICAgZ19h
c3NlcnRfbm9ubnVsbCh1c2JfY2gpOwogCiAgICAgZm9yIChpbnQgbG9vcCA9IDA7IGxvb3AgPCAy
OyArK2xvb3ApIHsKQEAgLTI4NSw4ICsyOTEsMTIgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIq
IGFyZ3ZbXSkKIAogICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11L3NpbXBsZSIsIEdV
SU5UX1RPX1BPSU5URVIoMSksIG11bHRpcGxlKTsKICAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygi
L2NkLWVtdS9tdWx0aXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMTI4KSwgbXVsdGlwbGUpOwotICAg
IGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11L2F0dGFjaF9ub19hdXRvIiwgR1VJTlRfVE9f
UE9JTlRFUigwKSwgYXR0YWNoKTsKLSAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9h
dHRhY2hfYXV0byIsIEdVSU5UX1RPX1BPSU5URVIoMSksIGF0dGFjaCk7CisjZGVmaW5lIEFUVEFD
SF9QQVJBTShhdXRvX2F0dGFjaCwgbGlidXNiKSBcCisgICAgR1VJTlRfVE9fUE9JTlRFUighIShh
dXRvX2F0dGFjaCkgKyAyICogISEobGlidXNiKSkKKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygi
L2NkLWVtdS9hdHRhY2hfbm9fYXV0byIsIEFUVEFDSF9QQVJBTSgwLCAxKSwgYXR0YWNoKTsKKyAg
ICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfYXV0byIsIEFUVEFDSF9QQVJB
TSgxLCAxKSwgYXR0YWNoKTsKKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRh
Y2hfbm9fYXV0b19ub19saWJ1c2IiLCBBVFRBQ0hfUEFSQU0oMCwgMCksIGF0dGFjaCk7CisgICAg
Z190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX2F1dG9fbm9fbGlidXNiIiwgQVRU
QUNIX1BBUkFNKDEsIDApLCBhdHRhY2gpOwogCiAgICAgcmV0dXJuIGdfdGVzdF9ydW4oKTsKIH0K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
