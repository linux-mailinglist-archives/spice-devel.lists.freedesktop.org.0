Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BEF1B323
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 11:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC6489A14;
	Mon, 13 May 2019 09:46:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE0789A14
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 09:46:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 866E23082E24
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 09:46:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 593295D71F;
 Mon, 13 May 2019 09:46:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 13 May 2019 10:45:55 +0100
Message-Id: <20190513094556.14035-2-fziglio@redhat.com>
In-Reply-To: <20190513094556.14035-1-fziglio@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 13 May 2019 09:46:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 2/3] qxl_dev: Fix alignment for
 QXLReleaseInfo
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
Y2tlZC5oIGhlYWRlcnMgYWZmZWN0cyBvbmx5IE1pbmdXIG9yIE1pY3Jvc29mdApjb21waWxlcnMu
IFRvIGhhdmUgdW5hbGlnbmVkIHN0cnVjdHVyZSB3aXRoIEdDQyBjb21waWxlciB5b3UgaGF2ZQp0
byB1c2UgU1BJQ0VfQVRUUl9QQUNLRUQuIFRoaXMgd2F5IHRoZSBkZWZpbml0aW9uIGFyZSB0aGUg
c2FtZSBmb3IKYWxsIGNvbXBpbGVyLgpUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9m
IFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKYWxpZ25lZCBjYXVzaW5nIHRvIGhhdmUgYW4g
YWxpZ25lZCBzdHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKdW5hbGlnbmVkLgpBcyB0aGlzIHN0
cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3QgbWFrZSBhbnkgc2l6ZQpj
aGFuZ2UgdXNpbmcgYW55IGNvbXBpbGVyLgpUaGUgY2hhbmdlIHdpbGwgb25seSBjaGFuZ2UgdGhl
IGFsaWdubWVudCBmcm9tIDQvOCB0byAxLgpUaGlzIGNvdWxkIGFmZmVjdCBzdHJ1Y3R1cmVzIGNv
bnRhaW5pbmcgdGhpcyB1bmlvbiBob3dldmVyIGJlc2lkZQpwYWNrZWQgc3RydWN0dXJlIGluIHF4
bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCm90aGVyIHVzYWdl
cyBhcyBzdWNoIGJ5IHNwaWNlLWd0aywgUWVtdSBvciBzcGljZS1zZXJ2ZXIuCgpTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcGljZS9xeGxf
ZGV2LmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9zcGljZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKaW5kZXgg
YTljYzRmNC4uNjU5ZjkzMCAxMDA2NDQKLS0tIGEvc3BpY2UvcXhsX2Rldi5oCisrKyBiL3NwaWNl
L3F4bF9kZXYuaApAQCAtMjc1LDcgKzI3NSw3IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJf
QUxJR05FRCg0KSBTUElDRV9BVFRSX1BBQ0tFRCBRWExSYW0gewogCiB9IFFYTFJhbTsKIAotdHlw
ZWRlZiB1bmlvbiBRWExSZWxlYXNlSW5mbyB7Cit0eXBlZGVmIHVuaW9uIFNQSUNFX0FUVFJfUEFD
S0VEIFFYTFJlbGVhc2VJbmZvIHsKICAgICB1aW50NjRfdCBpZDsgICAgICAvLyBpbgogICAgIHVp
bnQ2NF90IG5leHQ7ICAgIC8vIG91dAogfSBRWExSZWxlYXNlSW5mbzsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
