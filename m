Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3EF41BAC
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9868389232;
	Wed, 12 Jun 2019 05:54:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D8289232
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 462888830E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D09A39B9
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35A1754D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:29 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:54:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <701010203.22408113.1560318869184.JavaMail.zimbra@redhat.com>
In-Reply-To: <1708019240.20497733.1559121362503.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
 <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
 <1708019240.20497733.1559121362503.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: PLj9rM9LIj7bcjiBJXa27vRLE5QkWuZGaN5Z6du95bw=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 12 Jun 2019 05:54:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 2/3] qxl_dev: Fix alignment
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

cGluZyAzCgo+IAo+IHBpbmcKPiAKPiA+IAo+ID4gcGluZwo+ID4gCj4gPiA+IAo+ID4gPiBEbyBu
b3QgZGVjbGFyZSB0aGUgc3RydWN0dXJlIGFzIGFsaWduZWQuCj4gPiA+IFRoZSBzdGFydC9lbmQt
cGFja2VkLmggaGVhZGVycyBhZmZlY3RzIG9ubHkgTWluZ1cgb3IgTWljcm9zb2Z0Cj4gPiA+IGNv
bXBpbGVycy4gVG8gaGF2ZSB1bmFsaWduZWQgc3RydWN0dXJlIHdpdGggR0NDIGNvbXBpbGVyIHlv
dSBoYXZlCj4gPiA+IHRvIHVzZSBTUElDRV9BVFRSX1BBQ0tFRC4gVGhpcyB3YXkgdGhlIGRlZmlu
aXRpb24gYXJlIHRoZSBzYW1lIGZvcgo+ID4gPiBhbGwgY29tcGlsZXIuCj4gPiA+IFRoaXMgc3Ry
dWN0dXJlIGlzIHVzZWQgaW4gYSBsb3Qgb2YgUVhMIHN0cnVjdHVyZXMgd2hpY2ggYXJlIG5vdAo+
ID4gPiBhbGlnbmVkIGNhdXNpbmcgdG8gaGF2ZSBhbiBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBw
b3RlbnRpYWxseQo+ID4gPiB1bmFsaWduZWQuCj4gPiA+IEFzIHRoaXMgc3RydWN0dXJlIGhhcyBu
byBob2xlcyB0aGlzIGNoYW5nZSBkb2VzIG5vdCBtYWtlIGFueSBzaXplCj4gPiA+IGNoYW5nZSB1
c2luZyBhbnkgY29tcGlsZXIuCj4gPiA+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5IGNoYW5nZSB0aGUg
YWxpZ25tZW50IGZyb20gNC84IHRvIDEuCj4gPiA+IFRoaXMgY291bGQgYWZmZWN0IHN0cnVjdHVy
ZXMgY29udGFpbmluZyB0aGlzIHVuaW9uIGhvd2V2ZXIgYmVzaWRlCj4gPiA+IHBhY2tlZCBzdHJ1
Y3R1cmUgaW4gcXhsX2Rldi5oICh3aGljaCBhcmUgbm90IGFmZmVjdGVkKSB0aGVyZSBhcmUgbm8K
PiA+ID4gb3RoZXIgdXNhZ2VzIGFzIHN1Y2ggYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNwaWNlLXNl
cnZlci4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAo+ID4g
PiBpbmRleCBhOWNjNGY0Li42NTlmOTMwIDEwMDY0NAo+ID4gPiAtLS0gYS9zcGljZS9xeGxfZGV2
LmgKPiA+ID4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4gPiA+IEBAIC0yNzUsNyArMjc1LDcgQEAg
dHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9BTElHTkVEKDQpCj4gPiA+IFNQSUNFX0FUVFJfUEFD
S0VECj4gPiA+IFFYTFJhbSB7Cj4gPiA+ICAKPiA+ID4gIH0gUVhMUmFtOwo+ID4gPiAgCj4gPiA+
IC10eXBlZGVmIHVuaW9uIFFYTFJlbGVhc2VJbmZvIHsKPiA+ID4gK3R5cGVkZWYgdW5pb24gU1BJ
Q0VfQVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ID4gPiAgICAgIHVpbnQ2NF90IGlkOyAg
ICAgIC8vIGluCj4gPiA+ICAgICAgdWludDY0X3QgbmV4dDsgICAgLy8gb3V0Cj4gPiA+ICB9IFFY
TFJlbGVhc2VJbmZvOwo+ID4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
