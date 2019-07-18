Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDB66D072
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5DB6E3E7;
	Thu, 18 Jul 2019 14:51:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FA66E3E7
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:51:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD59CA3B74
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:51:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2D2461B6C
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:51:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id ABB4A149E0;
 Thu, 18 Jul 2019 14:51:51 +0000 (UTC)
Date: Thu, 18 Jul 2019 10:51:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1392117468.781754.1563461511661.JavaMail.zimbra@redhat.com>
In-Reply-To: <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
 <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.10]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: MTJ72TtbKdp0zSR2nNEBB0yWX0mb7g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 18 Jul 2019 14:51:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 1/2 v2] qxl_dev: Fix
 alignment for QXLReleaseInfo
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiAKPiBJSVJDIHRoaXMgd2FzIHJlbGF0ZWQgdG8gc29tZSBjb21waWxlciB3
YXJuaW5nLCBubz8KClllcywgcmVjZW50IGNvbXBpbGVycyBhcmUgcmVwb3J0aW5nIGl0LCBzZWUg
YmVsb3cuCgo+IElmIGl0IGlzIEknZCBtZW50aW9uaW5nIGl0ICwgb3RoZXJ3aXNlLCBhY2suCj4g
CgpKdXN0IHRoaXMgcGF0Y2ggb3IgdGhlIGVudGlyZSBzZXJpZXM/Cgo+IFNuaXIuCj4gCj4gCj4g
T24gNy80LzE5IDQ6NTYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IERvIG5vdCBkZWNs
YXJlIHRoZSBzdHJ1Y3R1cmUgYXMgYWxpZ25lZC4KPiA+IFRoZSBzdGFydC9lbmQtcGFja2VkLmgg
aGVhZGVycyBhZmZlY3RzIHN0cnVjdHVyZXMgd2l0aG91dAo+ID4gc3BlY2lmaWNhdGlvbiBvbmx5
IHVzaW5nIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21waWxlcnMuIEZvciBvdGhlcgo+ID4gcGxhdGZv
cm0gU1BJQ0VfQVRUUl9QQUNLRUQgbWFjcm8gc2hvdWxkIGJlIHVzZWQuICBUaGlzIHdheSB0aGUK
PiA+IGRlZmluaXRpb24gYXJlIHRoZSBzYW1lIGZvciBhbGwgY29tcGlsZXIuCj4gPiBUaGlzIHN0
cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9mIFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QK
PiA+IGFsaWduZWQgY2F1c2luZyB0byBoYXZlIGFuIGFsaWduZWQgc3RydWN0dXJlIHRvIGJlIHBv
dGVudGlhbGx5Cj4gPiB1bmFsaWduZWQuCgpXaGF0IGFib3V0IGNoYW5naW5nIHRoaXMgcGFyYWdy
YXBoIHRvOgoKIlRoaXMgc3RydWN0dXJlIGlzIHVzZWQgaW4gYSBsb3Qgb2YgUVhMIHN0cnVjdHVy
ZXMgd2hpY2ggYXJlIG5vdAogYWxpZ25lZCBjYXVzaW5nIHRvIGhhdmUgYW4gYWxpZ25lZCBzdHJ1
Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKIHVuYWxpZ25lZC4gU29tZSBjb21waWxlcnMgcmVwb3J0
IGEgd2FybmluZyBmb3Igc29tZSB1c2FnZS4iCgo+ID4gQXMgdGhpcyBzdHJ1Y3R1cmUgaGFzIG5v
IGhvbGVzIHRoaXMgY2hhbmdlIGRvZXMgbm90IG1ha2UgYW55IHNpemUKPiA+IGNoYW5nZSB1c2lu
ZyBhbnkgY29tcGlsZXIuCj4gPiBUaGUgY2hhbmdlIHdpbGwgb25seSBjaGFuZ2UgdGhlIGFsaWdu
bWVudCBmcm9tIDQvOCB0byAxLgo+ID4gVGhpcyBjb3VsZCBhZmZlY3Qgc3RydWN0dXJlcyBjb250
YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNpZGUKPiA+IHBhY2tlZCBzdHJ1Y3R1cmUgaW4g
cXhsX2Rldi5oICh3aGljaCBhcmUgbm90IGFmZmVjdGVkKSB0aGVyZSBhcmUgbm8KPiA+IG90aGVy
IHVzYWdlcyBhZmZlY3RpbmcgQUJJIGJ5IHNwaWNlLWd0aywgUWVtdSBvciBzcGljZS1zZXJ2ZXIu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gPiAtLS0KPiA+IENoYW5nZXMgc2luY2UgdjE6Cj4gPiAtIHVwZGF0ZSBjb21taXQgbWVz
c2FnZQo+ID4gLS0tCj4gPiAgIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAo+ID4gaW5kZXggYTljYzRmNC4uNjU5
ZjkzMCAxMDA2NDQKPiA+IC0tLSBhL3NwaWNlL3F4bF9kZXYuaAo+ID4gKysrIGIvc3BpY2UvcXhs
X2Rldi5oCj4gPiBAQCAtMjc1LDcgKzI3NSw3IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJf
QUxJR05FRCg0KSBTUElDRV9BVFRSX1BBQ0tFRAo+ID4gUVhMUmFtIHsKPiA+ICAgCj4gPiAgIH0g
UVhMUmFtOwo+ID4gICAKPiA+IC10eXBlZGVmIHVuaW9uIFFYTFJlbGVhc2VJbmZvIHsKPiA+ICt0
eXBlZGVmIHVuaW9uIFNQSUNFX0FUVFJfUEFDS0VEIFFYTFJlbGVhc2VJbmZvIHsKPiA+ICAgICAg
IHVpbnQ2NF90IGlkOyAgICAgIC8vIGluCj4gPiAgICAgICB1aW50NjRfdCBuZXh0OyAgICAvLyBv
dXQKPiA+ICAgfSBRWExSZWxlYXNlSW5mbzsKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
