Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCBE4B5E1
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 12:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A62F6E34D;
	Wed, 19 Jun 2019 10:05:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5AB06E34D
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 91CC481E05
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 881075D9C6
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80F0A1806B16
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:27 +0000 (UTC)
Date: Wed, 19 Jun 2019 06:05:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <450966702.23631627.1560938727478.JavaMail.zimbra@redhat.com>
In-Reply-To: <701010203.22408113.1560318869184.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
 <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
 <1708019240.20497733.1559121362503.JavaMail.zimbra@redhat.com>
 <701010203.22408113.1560318869184.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.27]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: PLj9rM9LIj7bcjiBJXa27vRLE5QkWuZGaN5Z6du95bzzCXrJJg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 19 Jun 2019 10:05:27 +0000 (UTC)
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

cGluZyA0Cgo+IAo+IHBpbmcgMwo+IAo+ID4gCj4gPiBwaW5nCj4gPiAKPiA+ID4gCj4gPiA+IHBp
bmcKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gRG8gbm90IGRlY2xhcmUgdGhlIHN0cnVjdHVyZSBh
cyBhbGlnbmVkLgo+ID4gPiA+IFRoZSBzdGFydC9lbmQtcGFja2VkLmggaGVhZGVycyBhZmZlY3Rz
IG9ubHkgTWluZ1cgb3IgTWljcm9zb2Z0Cj4gPiA+ID4gY29tcGlsZXJzLiBUbyBoYXZlIHVuYWxp
Z25lZCBzdHJ1Y3R1cmUgd2l0aCBHQ0MgY29tcGlsZXIgeW91IGhhdmUKPiA+ID4gPiB0byB1c2Ug
U1BJQ0VfQVRUUl9QQUNLRUQuIFRoaXMgd2F5IHRoZSBkZWZpbml0aW9uIGFyZSB0aGUgc2FtZSBm
b3IKPiA+ID4gPiBhbGwgY29tcGlsZXIuCj4gPiA+ID4gVGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCBp
biBhIGxvdCBvZiBRWEwgc3RydWN0dXJlcyB3aGljaCBhcmUgbm90Cj4gPiA+ID4gYWxpZ25lZCBj
YXVzaW5nIHRvIGhhdmUgYW4gYWxpZ25lZCBzdHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKPiA+
ID4gPiB1bmFsaWduZWQuCj4gPiA+ID4gQXMgdGhpcyBzdHJ1Y3R1cmUgaGFzIG5vIGhvbGVzIHRo
aXMgY2hhbmdlIGRvZXMgbm90IG1ha2UgYW55IHNpemUKPiA+ID4gPiBjaGFuZ2UgdXNpbmcgYW55
IGNvbXBpbGVyLgo+ID4gPiA+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5IGNoYW5nZSB0aGUgYWxpZ25t
ZW50IGZyb20gNC84IHRvIDEuCj4gPiA+ID4gVGhpcyBjb3VsZCBhZmZlY3Qgc3RydWN0dXJlcyBj
b250YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNpZGUKPiA+ID4gPiBwYWNrZWQgc3RydWN0
dXJlIGluIHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4g
PiA+ID4gb3RoZXIgdXNhZ2VzIGFzIHN1Y2ggYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNwaWNlLXNl
cnZlci4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgc3BpY2UvcXhsX2Rldi5oIHwg
MiArLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3BpY2Uv
cXhsX2Rldi5oCj4gPiA+ID4gaW5kZXggYTljYzRmNC4uNjU5ZjkzMCAxMDA2NDQKPiA+ID4gPiAt
LS0gYS9zcGljZS9xeGxfZGV2LmgKPiA+ID4gPiArKysgYi9zcGljZS9xeGxfZGV2LmgKPiA+ID4g
PiBAQCAtMjc1LDcgKzI3NSw3IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJfQUxJR05FRCg0
KQo+ID4gPiA+IFNQSUNFX0FUVFJfUEFDS0VECj4gPiA+ID4gUVhMUmFtIHsKPiA+ID4gPiAgCj4g
PiA+ID4gIH0gUVhMUmFtOwo+ID4gPiA+ICAKPiA+ID4gPiAtdHlwZWRlZiB1bmlvbiBRWExSZWxl
YXNlSW5mbyB7Cj4gPiA+ID4gK3R5cGVkZWYgdW5pb24gU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmVs
ZWFzZUluZm8gewo+ID4gPiA+ICAgICAgdWludDY0X3QgaWQ7ICAgICAgLy8gaW4KPiA+ID4gPiAg
ICAgIHVpbnQ2NF90IG5leHQ7ICAgIC8vIG91dAo+ID4gPiA+ICB9IFFYTFJlbGVhc2VJbmZvOwo+
ID4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
