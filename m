Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D4F5F972
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 15:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151806E34E;
	Thu,  4 Jul 2019 13:56:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444B46E1B9
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:56:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD69759442
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:56:14 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDE751001B0E;
 Thu,  4 Jul 2019 13:56:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  4 Jul 2019 14:56:09 +0100
Message-Id: <20190704135610.15771-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 04 Jul 2019 13:56:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 1/2 v2] qxl_dev: Fix alignment
 for QXLReleaseInfo
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

RG8gbm90IGRlY2xhcmUgdGhlIHN0cnVjdHVyZSBhcyBhbGlnbmVkLgpUaGUgc3RhcnQvZW5kLXBh
Y2tlZC5oIGhlYWRlcnMgYWZmZWN0cyBzdHJ1Y3R1cmVzIHdpdGhvdXQKc3BlY2lmaWNhdGlvbiBv
bmx5IHVzaW5nIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21waWxlcnMuIEZvciBvdGhlcgpwbGF0Zm9y
bSBTUElDRV9BVFRSX1BBQ0tFRCBtYWNybyBzaG91bGQgYmUgdXNlZC4gIFRoaXMgd2F5IHRoZQpk
ZWZpbml0aW9uIGFyZSB0aGUgc2FtZSBmb3IgYWxsIGNvbXBpbGVyLgpUaGlzIHN0cnVjdHVyZSBp
cyB1c2VkIGluIGEgbG90IG9mIFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKYWxpZ25lZCBj
YXVzaW5nIHRvIGhhdmUgYW4gYWxpZ25lZCBzdHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKdW5h
bGlnbmVkLgpBcyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBu
b3QgbWFrZSBhbnkgc2l6ZQpjaGFuZ2UgdXNpbmcgYW55IGNvbXBpbGVyLgpUaGUgY2hhbmdlIHdp
bGwgb25seSBjaGFuZ2UgdGhlIGFsaWdubWVudCBmcm9tIDQvOCB0byAxLgpUaGlzIGNvdWxkIGFm
ZmVjdCBzdHJ1Y3R1cmVzIGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dldmVyIGJlc2lkZQpwYWNr
ZWQgc3RydWN0dXJlIGluIHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUg
YXJlIG5vCm90aGVyIHVzYWdlcyBhZmZlY3RpbmcgQUJJIGJ5IHNwaWNlLWd0aywgUWVtdSBvciBz
cGljZS1zZXJ2ZXIuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KLS0tCkNoYW5nZXMgc2luY2UgdjE6Ci0gdXBkYXRlIGNvbW1pdCBtZXNzYWdlCi0t
LQogc3BpY2UvcXhsX2Rldi5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3BpY2UvcXhs
X2Rldi5oCmluZGV4IGE5Y2M0ZjQuLjY1OWY5MzAgMTAwNjQ0Ci0tLSBhL3NwaWNlL3F4bF9kZXYu
aAorKysgYi9zcGljZS9xeGxfZGV2LmgKQEAgLTI3NSw3ICsyNzUsNyBAQCB0eXBlZGVmIHN0cnVj
dCBTUElDRV9BVFRSX0FMSUdORUQoNCkgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmFtIHsKIAogfSBR
WExSYW07CiAKLXR5cGVkZWYgdW5pb24gUVhMUmVsZWFzZUluZm8gewordHlwZWRlZiB1bmlvbiBT
UElDRV9BVFRSX1BBQ0tFRCBRWExSZWxlYXNlSW5mbyB7CiAgICAgdWludDY0X3QgaWQ7ICAgICAg
Ly8gaW4KICAgICB1aW50NjRfdCBuZXh0OyAgICAvLyBvdXQKIH0gUVhMUmVsZWFzZUluZm87Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
