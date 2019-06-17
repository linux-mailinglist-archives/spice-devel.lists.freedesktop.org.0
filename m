Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB8248911
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 18:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F2089157;
	Mon, 17 Jun 2019 16:35:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6146389157
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 16:35:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F01A77FDF6
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 16:35:05 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 43F3F6A248;
 Mon, 17 Jun 2019 16:35:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 17:34:56 +0100
Message-Id: <20190617163456.12359-1-fziglio@redhat.com>
In-Reply-To: <1321EDAF-9A69-490E-955D-2FD0AF7EB8FF@redhat.com>
References: <1321EDAF-9A69-490E-955D-2FD0AF7EB8FF@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 17 Jun 2019 16:35:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2] spice-char: Add some
 documentation to SpiceCharDeviceInterface
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3NwaWNlLWNoYXIuaCB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQoKQ2hhbmdlcyBzaW5jZSB2MToKLSB1cGRhdGVk
IGNvbW1lbnRzCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3NwaWNlLWNoYXIuaCBiL3NlcnZlci9zcGlj
ZS1jaGFyLmgKaW5kZXggMWE4YTAzMWQyLi5hM2I5ZDI2YmYgMTAwNjQ0Ci0tLSBhL3NlcnZlci9z
cGljZS1jaGFyLmgKKysrIGIvc2VydmVyL3NwaWNlLWNoYXIuaApAQCAtNDAsOSArNDAsMzUgQEAg
dHlwZWRlZiBlbnVtIHsKIHN0cnVjdCBTcGljZUNoYXJEZXZpY2VJbnRlcmZhY2UgewogICAgIFNw
aWNlQmFzZUludGVyZmFjZSBiYXNlOwogCisgICAgLyogU2V0IHRoZSBzdGF0ZSBvZiB0aGUgZGV2
aWNlLgorICAgICAqIGNvbm5lY3RlZCBzaG91bGQgYmUgMCBvciAxLgorICAgICAqIFNldHRpbmcg
c3RhdGUgdG8gMCBjYXVzZXMgdGhlIGRldmljZSB0byBiZSBkaXNhYmxlZC4KKyAgICAgKiBUaGlz
IGNhbiBiZSB1c2VkIGJ5IFNQSUNFIHNlcnZlciB0byB0ZWxsIGd1ZXN0IHRoYXQgZGV2aWNlIGlz
IG5vdAorICAgICAqIHdvcmtpbmcgYW55bW9yZSAoZm9yIGluc3RhbmNlIGJlY2F1c2UgdGhlIGd1
ZXN0IGl0c2VsZiBzZW50IHNvbWUKKyAgICAgKiB3cm9uZyByZXF1ZXN0KS4KKyAgICAgKi8KICAg
ICB2b2lkICgqc3RhdGUpKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIGludCBjb25uZWN0
ZWQpOworCisgICAgLyogV3JpdGUgc29tZSBieXRlcyB0byB0aGUgY2hhcmFjdGVyIGRldmljZS4K
KyAgICAgKiBSZXR1cm5zIGJ5dGVzIGNvcGllZCBmcm9tIGJ1ZiBvciBhIHZhbHVlIDwgMCBvbiBl
cnJvcnMuCisgICAgICogSWYgYWJsZSB0byB3cml0ZSBzb21lIGJ5dGVzIHRoZSBmdW5jdGlvbiBz
aG91bGQgcmV0dXJuIHRoZSBhbW91bnQgb2YKKyAgICAgKiBieXRlcyBzdWNjZXNzZnVsbHkgd3Jp
dHRlbi4KKyAgICAgKiBGdW5jdGlvbiBjYW4gcmV0dXJuIGEgdmFsdWUgPCBsZW4sIGV2ZW4gMC4K
KyAgICAgKiBlcnJubyBpcyBub3QgZGV0ZXJtaW5lZCBhZnRlciBjYWxsaW5nIHRoaXMgZnVuY3Rp
b24uCisgICAgICogRnVuY3Rpb24gc2hvdWxkIGJlIGltcGxlbWVudGVkIGFzIG5vLWJsb2NraW5n
LgorICAgICAqIEEgbGVuIDwgMCBjYXVzZXMgaW5kZXRlcm1pbmF0ZSByZXN1bHRzLgorICAgICAq
LwogICAgIGludCAoKndyaXRlKShTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqc2luLCBjb25zdCB1
aW50OF90ICpidWYsIGludCBsZW4pOworCisgICAgLyogUmVhZCBzb21lIGJ5dGVzIGZyb20gdGhl
IGNoYXJhY3RlciBkZXZpY2UuCisgICAgICogUmV0dXJucyBieXRlcyBjb3BpZWQgaW50byBidWYg
b3IgYSB2YWx1ZSA8IDAgb24gZXJyb3JzLgorICAgICAqIEZ1bmN0aW9uIGNhbiByZXR1cm4gMCBp
ZiBubyBkYXRhIGlzIGF2YWlsYWJsZSBvciBsZW4gaXMgMC4KKyAgICAgKiBlcnJubyBpcyBub3Qg
ZGV0ZXJtaW5lZCBhZnRlciBjYWxsaW5nIHRoaXMgZnVuY3Rpb24uCisgICAgICogRnVuY3Rpb24g
c2hvdWxkIGJlIGltcGxlbWVudGVkIGFzIG5vLWJsb2NraW5nLgorICAgICAqIEEgbGVuIDwgMCBj
YXVzZXMgaW5kZXRlcm1pbmF0ZSByZXN1bHRzLgorICAgICAqLwogICAgIGludCAoKnJlYWQpKFNw
aWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIHVpbnQ4X3QgKmJ1ZiwgaW50IGxlbik7CisKICAg
ICB2b2lkICgqZXZlbnQpKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIHVpbnQ4X3QgZXZl
bnQpOwogICAgIHNwaWNlX2NoYXJfZGV2aWNlX2ZsYWdzIGZsYWdzOwogfTsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
