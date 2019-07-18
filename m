Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB16D139
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F336E406;
	Thu, 18 Jul 2019 15:37:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7203E6E406
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:37:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 03B2030A7C5D
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:37:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF0605ED49
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:37:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E61A041F40;
 Thu, 18 Jul 2019 15:37:11 +0000 (UTC)
Date: Thu, 18 Jul 2019 11:37:11 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1856377649.803441.1563464231763.JavaMail.zimbra@redhat.com>
In-Reply-To: <5e1f0a8e-93cf-cdb9-e37e-0c7b755058f0@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
 <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
 <1392117468.781754.1563461511661.JavaMail.zimbra@redhat.com>
 <5e1f0a8e-93cf-cdb9-e37e-0c7b755058f0@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.27]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: 3/tSLRUmrAg0b8nYHqf37ES5Iqrq2g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 18 Jul 2019 15:37:12 +0000 (UTC)
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

PiAKPiAKPiBPbiA3LzE4LzE5IDU6NTEgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+PiBI
aSwKPiA+Pgo+ID4+Cj4gPj4gSUlSQyB0aGlzIHdhcyByZWxhdGVkIHRvIHNvbWUgY29tcGlsZXIg
d2FybmluZywgbm8/Cj4gPiBZZXMsIHJlY2VudCBjb21waWxlcnMgYXJlIHJlcG9ydGluZyBpdCwg
c2VlIGJlbG93Lgo+ID4KPiA+PiBJZiBpdCBpcyBJJ2QgbWVudGlvbmluZyBpdCAsIG90aGVyd2lz
ZSwgYWNrLgo+ID4+Cj4gPiBKdXN0IHRoaXMgcGF0Y2ggb3IgdGhlIGVudGlyZSBzZXJpZXM/Cj4g
Cj4gCj4gTm8sIGFjdHVhbGx5IGkgc3RhcnRlZCBsb29raW5nIGF0IHRoZSBzZWNvbmQgb25lIGFu
ZCB3b25kZXJlZCB3aHkKPiB3ZSBhcmUgdXNpbmcgI2luY2x1ZGUgZW5kL3N0YXJ0LXBhY2tlZC5o
Cj4gCj4gSXQgaXMgbWVudGlvbmVkIGluIHN0YXJ0LXBhY2tlZC5oIGl0J3MgYmVjYXVzZSAiaXRz
IG5vdCBwb3NzaWJsZSB0byBwdXQKPiBwcmFnbWFzIGludG8gaGVhZGVyIGZpbGVzIgoKSSB0aGlu
ayBpbnN0ZWFkIG9mCgovKiBJZGVhbGx5IHRoaXMgc2hvdWxkIGFsbCBoYXZlIGJlZW4gbWFjcm9z
IGluIGEgY29tbW9uIGhlYWRlcnMsIGJ1dAogKiBpdHMgbm90IHBvc3NpYmxlIHRvIHB1dCBwcmFn
bWFzIGludG8gaGVhZGVyIGZpbGVzLCBzbyB3ZSBoYXZlCiAqIHRvIHVzZSBpbmNsdWRlIG1hZ2lj
LgoKc2hvdWxkIGJlCgovKiBJZGVhbGx5IHRoaXMgc2hvdWxkIGFsbCBoYXZlIGJlZW4gbWFjcm9z
IGluIGEgY29tbW9uIGhlYWRlcnMsIGJ1dAogKiBpdHMgbm90IHBvc3NpYmxlIHRvIHB1dCBwcmFn
bWFzIGludG8gTUFDUk9TLCBzbyB3ZSBoYXZlCiAqIHRvIHVzZSBpbmNsdWRlIG1hZ2ljLgoKYW5k
IHdpdGggQzk5IHlvdSBjYW4gdXNlIF9QcmFnbWEgaW5zdGVhZCwgYnV0IGZvciBjb2hlcmVuY2Ug
dGhpcwptZXRob2QgaXMgc3RpbGwgZmluZS4KCj4gYW5kIGp1c3QgYWZ0ZXIgdGhhdCB3ZSBwdXQg
cHJhZ21hLCBpbnRvIHRoaXMgaGVhZGVyIGZpbGUuCj4gV2hhdCBhbSBpIG1pc3Npbmc/IG9yIHRo
ZSBjb21tZW50IGlzIHdyb25nPwo+IAoKSGVhZGVyIGNvZGUgaXMgZmluZSwgY29tbWVudCBpcyBz
dXJlbHkgbWlzbGVhZGluZy4KCj4gCj4gPgo+ID4+IFNuaXIuCj4gPj4KPiA+Pgo+ID4+IE9uIDcv
NC8xOSA0OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPj4+IERvIG5vdCBkZWNsYXJl
IHRoZSBzdHJ1Y3R1cmUgYXMgYWxpZ25lZC4KPiA+Pj4gVGhlIHN0YXJ0L2VuZC1wYWNrZWQuaCBo
ZWFkZXJzIGFmZmVjdHMgc3RydWN0dXJlcyB3aXRob3V0Cj4gPj4+IHNwZWNpZmljYXRpb24gb25s
eSB1c2luZyBNaW5nVyBvciBNaWNyb3NvZnQgY29tcGlsZXJzLiBGb3Igb3RoZXIKPiA+Pj4gcGxh
dGZvcm0gU1BJQ0VfQVRUUl9QQUNLRUQgbWFjcm8gc2hvdWxkIGJlIHVzZWQuICBUaGlzIHdheSB0
aGUKPiA+Pj4gZGVmaW5pdGlvbiBhcmUgdGhlIHNhbWUgZm9yIGFsbCBjb21waWxlci4KPiA+Pj4g
VGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCBpbiBhIGxvdCBvZiBRWEwgc3RydWN0dXJlcyB3aGljaCBh
cmUgbm90Cj4gPj4+IGFsaWduZWQgY2F1c2luZyB0byBoYXZlIGFuIGFsaWduZWQgc3RydWN0dXJl
IHRvIGJlIHBvdGVudGlhbGx5Cj4gPj4+IHVuYWxpZ25lZC4KPiA+IFdoYXQgYWJvdXQgY2hhbmdp
bmcgdGhpcyBwYXJhZ3JhcGggdG86Cj4gPgo+ID4gIlRoaXMgc3RydWN0dXJlIGlzIHVzZWQgaW4g
YSBsb3Qgb2YgUVhMIHN0cnVjdHVyZXMgd2hpY2ggYXJlIG5vdAo+ID4gICBhbGlnbmVkIGNhdXNp
bmcgdG8gaGF2ZSBhbiBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRpYWxseQo+ID4gICB1
bmFsaWduZWQuIFNvbWUgY29tcGlsZXJzIHJlcG9ydCBhIHdhcm5pbmcgZm9yIHNvbWUgdXNhZ2Uu
Igo+IAo+IAo+IE5vdCBhIGJpZyBkZWFsIGJ1dCBtYXliZSAiU29tZSBjb21waWxlcnMgbWF5IHJl
cG9ydCBhIHdhcm5pbmciPwo+IAo+IEFueXdheSwgYWNrIGZvciB0aGUgY2hhbmdlLgo+IAoKVGhh
bmtzLgoKSnVzdCB0aGlzIHBhdGNoIG9yIGFsc28gdGhlIG90aGVyIG9uZT8KCj4gPgo+ID4+PiBB
cyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3QgbWFrZSBh
bnkgc2l6ZQo+ID4+PiBjaGFuZ2UgdXNpbmcgYW55IGNvbXBpbGVyLgo+ID4+PiBUaGUgY2hhbmdl
IHdpbGwgb25seSBjaGFuZ2UgdGhlIGFsaWdubWVudCBmcm9tIDQvOCB0byAxLgo+ID4+PiBUaGlz
IGNvdWxkIGFmZmVjdCBzdHJ1Y3R1cmVzIGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dldmVyIGJl
c2lkZQo+ID4+PiBwYWNrZWQgc3RydWN0dXJlIGluIHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBh
ZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4gPj4+IG90aGVyIHVzYWdlcyBhZmZlY3RpbmcgQUJJIGJ5
IHNwaWNlLWd0aywgUWVtdSBvciBzcGljZS1zZXJ2ZXIuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4+PiAtLS0KPiA+Pj4g
Q2hhbmdlcyBzaW5jZSB2MToKPiA+Pj4gLSB1cGRhdGUgY29tbWl0IG1lc3NhZ2UKPiA+Pj4gLS0t
Cj4gPj4+ICAgIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiA+Pj4gICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9z
cGljZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKPiA+Pj4gaW5kZXggYTljYzRmNC4uNjU5
ZjkzMCAxMDA2NDQKPiA+Pj4gLS0tIGEvc3BpY2UvcXhsX2Rldi5oCj4gPj4+ICsrKyBiL3NwaWNl
L3F4bF9kZXYuaAo+ID4+PiBAQCAtMjc1LDcgKzI3NSw3IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNF
X0FUVFJfQUxJR05FRCg0KQo+ID4+PiBTUElDRV9BVFRSX1BBQ0tFRAo+ID4+PiBRWExSYW0gewo+
ID4+PiAgICAKPiA+Pj4gICAgfSBRWExSYW07Cj4gPj4+ICAgIAo+ID4+PiAtdHlwZWRlZiB1bmlv
biBRWExSZWxlYXNlSW5mbyB7Cj4gPj4+ICt0eXBlZGVmIHVuaW9uIFNQSUNFX0FUVFJfUEFDS0VE
IFFYTFJlbGVhc2VJbmZvIHsKPiA+Pj4gICAgICAgIHVpbnQ2NF90IGlkOyAgICAgIC8vIGluCj4g
Pj4+ICAgICAgICB1aW50NjRfdCBuZXh0OyAgICAvLyBvdXQKPiA+Pj4gICAgfSBRWExSZWxlYXNl
SW5mbzsKPiA+IEZyZWRpYW5vCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
