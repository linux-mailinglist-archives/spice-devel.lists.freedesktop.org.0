Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F6DCDF75
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5C16E52C;
	Mon,  7 Oct 2019 10:39:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440386E52C
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E3175883854
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:16 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D07975D6D0;
 Mon,  7 Oct 2019 10:39:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:02 +0100
Message-Id: <20191007103906.30517-5-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 07 Oct 2019 10:39:16 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 4/8] Update spice-common submodule
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

VGhpcyBicmluZ3MgaW4gdGhlIGZvbGxvd2luZyBjaGFuZ2VzOgoKRnJlZGlhbm8gWmlnbGlvICgx
KToKICAgICAgcHJvdG86IERlbWFyc2hhbCBTbWFydGNhcmQgZGF0YSBmaWVsZAoKS2V2aW4gUG91
Z2V0ICgxKToKICAgICAgY29tbW9uL3JlY29yZGVyLmg6IGRvIG5vdCBjb21wbGFpbiBvbiB1bnVz
ZWQgKGR1bW15KSByZWNvcmRlcnMKClRoaXMgaXMgaW4gcHJlcGFyYXRpb24gdG8gdXNlIHRoZSBn
ZW5lcmF0ZWQgY29kZSBmb3IgU21hcnRjYXJkCihjdXJyZW50bHkgbm90IHVzZWQgc28gd29uJ3Qg
Y3JlYXRlIHJlZ3Jlc3Npb25zKS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbiB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbiBiL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbgppbmRl
eCA0NzI3YzE5ZC4uODY1MDFhZDcgMTYwMDAwCi0tLSBhL3N1YnByb2plY3RzL3NwaWNlLWNvbW1v
bgorKysgYi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KQEAgLTEgKzEgQEAKLVN1YnByb2plY3Qg
Y29tbWl0IDQ3MjdjMTlkMzZiMzMwNzE5Mjg1MDBhZGFhODMyZWNlZjZiZGQ5NDIKK1N1YnByb2pl
Y3QgY29tbWl0IDg2NTAxYWQ3ZTFjYmJkMWNjOWY2OGYzYTU2YzE4MTQ5ZjUxNzhjNDYKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
