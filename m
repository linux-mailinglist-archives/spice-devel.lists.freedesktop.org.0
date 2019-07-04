Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2EA5F971
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 15:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073666E1B9;
	Thu,  4 Jul 2019 13:56:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389176E1B9
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:56:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DA1F459441
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:56:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0E5B41001B0E;
 Thu,  4 Jul 2019 13:56:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  4 Jul 2019 14:56:10 +0100
Message-Id: <20190704135610.15771-2-fziglio@redhat.com>
In-Reply-To: <20190704135610.15771-1-fziglio@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 04 Jul 2019 13:56:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 2/2] qxl_dev: Move
 QXLReleaseInfoExt out of start/end-packed.h
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

VGhpcyBzdHJ1Y3R1cmUgaXMgbm90IGRlY2xhcmVzIGFzIFNQSUNFX0FUVFJfUEFDS0VEIHJlc3Vs
dGluZyBpdAphcyBhbGlnbmVkIGFuZCBubyBwYWNrZWQgdXNpbmcgR0NDIChubyBNaW5nVykuClRo
aXMgc3RydWN0dXJlIGlzIG9ubHkgcGFja2VkIHVuZGVyIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21w
aWxlcnMuClRoaXMgc3RydWN0dXJlIGlzIG5vdCB0ZWNobmljYWxseSBhIGRlZmluaXRpb24gZm9y
IFFYTCBkZXZpY2UgYnV0CmlzIHVzZWQgb25seSBmb3Igc3BpY2Utc2VydmVyIFFYTCBpbnRlcmZh
Y2UuCkFzIHNhaWQgYWJvdmUgdGhpcyBjaGFuZ2UgY291bGQgYWZmZWN0IG9ubHkgTWluZ1cvTWlj
cm9zb2Z0IHRoYXQgaXMKb25seSBXaW5kb3dzIEFCSSBvZiBzcGljZS1zZXJ2ZXIgKHZlcnkgcmVj
ZW50bHkgYWRkZWQpIHNvCmZvbGxvd2luZyBsaW5lcyBhcmUgcmVhbGx5IG5vdCBtdWNoIGltcG9y
dGFudC4KTm90ZSB0aGF0IFdpbmRvd3MgZG9lcyBub3Qgc3VwcG9ydCBhcmNoaXRlY3R1cmVzIHdp
dGggQ1BVcyBub3QKc3VwcG9ydGluZyB1bmFsaWduZWQgYWNjZXNzLgpVbmRlciBXaW4zMiB0aGlz
IGNoYW5nZSBkb24ndCBhZmZlY3Qgc2l6ZSBzbyBub3RoaW5nIG11Y2ggY2FuIGNoYW5nZS4KVGhp
cyBzdHJ1Y3R1cmUgaXMgY3VycmVudGx5IHBhc3NlZCBhcyB2YWx1ZSB0byByZWxlYXNlX3Jlc291
cmNlCmNhbGxiYWNrLiBVbmRlciBXaW42NCB0aGlzIHN0cnVjdHVyZSBpcyBwYXNzZWQgbGlrZSBh
CiJjb25zdCBRWExSZWxlYXNlSW5mb0V4dCAqIiBzbyBldmVuIGlmIHRoZSBzdHJ1Y3R1cmUgaXMg
MTYgYnl0ZXMgaW5zdGVhZApvZiAxMiB0aGlzIGlzIHJlYWQgdGhlIHNhbWUgd2F5LgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3BpY2Uv
cXhsX2Rldi5oIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcGljZS9xeGxfZGV2LmggYi9zcGljZS9x
eGxfZGV2LmgKaW5kZXggNjU5ZjkzMC4uYzg0NGQ3YiAxMDA2NDQKLS0tIGEvc3BpY2UvcXhsX2Rl
di5oCisrKyBiL3NwaWNlL3F4bF9kZXYuaApAQCAtMjgwLDExICsyODAsNiBAQCB0eXBlZGVmIHVu
aW9uIFNQSUNFX0FUVFJfUEFDS0VEIFFYTFJlbGVhc2VJbmZvIHsKICAgICB1aW50NjRfdCBuZXh0
OyAgICAvLyBvdXQKIH0gUVhMUmVsZWFzZUluZm87CiAKLXR5cGVkZWYgc3RydWN0IFFYTFJlbGVh
c2VJbmZvRXh0IHsKLSAgICBRWExSZWxlYXNlSW5mbyAqaW5mbzsKLSAgICB1aW50MzJfdCBncm91
cF9pZDsKLX0gUVhMUmVsZWFzZUluZm9FeHQ7Ci0KIHR5cGVkZWYgc3RydWN0ICBTUElDRV9BVFRS
X1BBQ0tFRCBRWExEYXRhQ2h1bmsgewogICAgIHVpbnQzMl90IGRhdGFfc2l6ZTsKICAgICBRWExQ
SFlTSUNBTCBwcmV2X2NodW5rOwpAQCAtNzc5LDQgKzc3NCw5IEBAIHR5cGVkZWYgc3RydWN0IFNQ
SUNFX0FUVFJfUEFDS0VEIFFYTE1vbml0b3JzQ29uZmlnIHsKIAogI2luY2x1ZGUgPHNwaWNlL2Vu
ZC1wYWNrZWQuaD4KIAordHlwZWRlZiBzdHJ1Y3QgUVhMUmVsZWFzZUluZm9FeHQgeworICAgIFFY
TFJlbGVhc2VJbmZvICppbmZvOworICAgIHVpbnQzMl90IGdyb3VwX2lkOworfSBRWExSZWxlYXNl
SW5mb0V4dDsKKwogI2VuZGlmIC8qIF9IX1FYTF9ERVYgKi8KLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
