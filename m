Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 263794B5E2
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 12:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72BF89D7F;
	Wed, 19 Jun 2019 10:05:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC9C89D7F
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D7DD230970CF
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CE68B60634
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C1D8D54D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:40 +0000 (UTC)
Date: Wed, 19 Jun 2019 06:05:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1459263191.23631640.1560938740726.JavaMail.zimbra@redhat.com>
In-Reply-To: <1719022579.22408124.1560318882849.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-3-fziglio@redhat.com>
 <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
 <1112673652.20497835.1559121375693.JavaMail.zimbra@redhat.com>
 <1719022579.22408124.1560318882849.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.27]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: gALPBO8iB8Q2mCOMed+sUMVh+5f5zTDXMnUIgt9rpp19nyii4w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 19 Jun 2019 10:05:40 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 3/3] qxl_dev: Move
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

cGluZyA0Cgo+IAo+IHBpbmcgMwo+IAo+ID4gCj4gPiBwaW5nCj4gPiAKPiA+ID4gCj4gPiA+IHBp
bmcKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBzdHJ1Y3R1cmUgaXMgbm90IGRlY2xhcmVz
IGFzIFNQSUNFX0FUVFJfUEFDS0VEIHJlc3VsdGluZyBpdAo+ID4gPiA+IGFzIGFsaWduZWQgYW5k
IG5vIHBhY2tlZCB1c2luZyBHQ0MgKG5vIE1pbmdXKS4KPiA+ID4gPiBUaGlzIHN0cnVjdHVyZSBp
cyBvbmx5IHBhY2tlZCB1bmRlciBNaW5nVyBvciBNaWNyb3NvZnQgY29tcGlsZXJzLgo+ID4gPiA+
IFRoaXMgc3RydWN0dXJlIGlzIG5vdCB0ZWNobmljYWxseSBhIGRlZmluaXRpb24gZm9yIFFYTCBk
ZXZpY2UgYnV0Cj4gPiA+ID4gaXMgdXNlZCBvbmx5IGZvciBzcGljZS1zZXJ2ZXIgUVhMIGludGVy
ZmFjZS4KPiA+ID4gPiBBcyBzYWlkIGFib3ZlIHRoaXMgY2hhbmdlIGNvdWxkIGFmZmVjdCBvbmx5
IE1pbmdXL01pY3Jvc29mdCB0aGF0IGlzCj4gPiA+ID4gb25seSBXaW5kb3dzIEFCSSBvZiBzcGlj
ZS1zZXJ2ZXIgKHZlcnkgcmVjZW50bHkgYWRkZWQpIHNvCj4gPiA+ID4gZm9sbG93aW5nIGxpbmVz
IGFyZSByZWFsbHkgbm90IG11Y2ggaW1wb3J0YW50Lgo+ID4gPiA+IE5vdGUgdGhhdCBXaW5kb3dz
IGRvZXMgbm90IHN1cHBvcnQgYXJjaGl0ZWN0dXJlcyB3aXRoIENQVXMgbm90Cj4gPiA+ID4gc3Vw
cG9ydGluZyB1bmFsaWduZWQgYWNjZXNzLgo+ID4gPiA+IFVuZGVyIFdpbjMyIHRoaXMgY2hhbmdl
IGRvbid0IGFmZmVjdCBzaXplIHNvIG5vdGhpbmcgbXVjaCBjYW4gY2hhbmdlLgo+ID4gPiA+IFRo
aXMgc3RydWN0dXJlIGlzIGN1cnJlbnRseSBwYXNzZWQgYXMgdmFsdWUgdG8gcmVsZWFzZV9yZXNv
dXJjZQo+ID4gPiA+IGNhbGxiYWNrLiBVbmRlciBXaW42NCB0aGlzIHN0cnVjdHVyZSBpcyBwYXNz
ZWQgbGlrZSBhCj4gPiA+ID4gImNvbnN0IFFYTFJlbGVhc2VJbmZvRXh0ICoiIHNvIGV2ZW4gaWYg
dGhlIHN0cnVjdHVyZSBpcyAxNiBieXRlcwo+ID4gPiA+IGluc3RlYWQKPiA+ID4gPiBvZiAxMiB0
aGlzIGlzIHJlYWQgdGhlIHNhbWUgd2F5Lgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+
ICBzcGljZS9xeGxfZGV2LmggfCAxMCArKysrKy0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAo+ID4gPiA+IGluZGV4IDY1
OWY5MzAuLmM4NDRkN2IgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvc3BpY2UvcXhsX2Rldi5oCj4gPiA+
ID4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4gPiA+ID4gQEAgLTI4MCwxMSArMjgwLDYgQEAgdHlw
ZWRlZiB1bmlvbiBTUElDRV9BVFRSX1BBQ0tFRCBRWExSZWxlYXNlSW5mbyB7Cj4gPiA+ID4gICAg
ICB1aW50NjRfdCBuZXh0OyAgICAvLyBvdXQKPiA+ID4gPiAgfSBRWExSZWxlYXNlSW5mbzsKPiA+
ID4gPiAgCj4gPiA+ID4gLXR5cGVkZWYgc3RydWN0IFFYTFJlbGVhc2VJbmZvRXh0IHsKPiA+ID4g
PiAtICAgIFFYTFJlbGVhc2VJbmZvICppbmZvOwo+ID4gPiA+IC0gICAgdWludDMyX3QgZ3JvdXBf
aWQ7Cj4gPiA+ID4gLX0gUVhMUmVsZWFzZUluZm9FeHQ7Cj4gPiA+ID4gLQo+ID4gPiA+ICB0eXBl
ZGVmIHN0cnVjdCAgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMRGF0YUNodW5rIHsKPiA+ID4gPiAgICAg
IHVpbnQzMl90IGRhdGFfc2l6ZTsKPiA+ID4gPiAgICAgIFFYTFBIWVNJQ0FMIHByZXZfY2h1bms7
Cj4gPiA+ID4gQEAgLTc3OSw0ICs3NzQsOSBAQCB0eXBlZGVmIHN0cnVjdCBTUElDRV9BVFRSX1BB
Q0tFRCBRWExNb25pdG9yc0NvbmZpZwo+ID4gPiA+IHsKPiA+ID4gPiAgCj4gPiA+ID4gICNpbmNs
dWRlIDxzcGljZS9lbmQtcGFja2VkLmg+Cj4gPiA+ID4gIAo+ID4gPiA+ICt0eXBlZGVmIHN0cnVj
dCBRWExSZWxlYXNlSW5mb0V4dCB7Cj4gPiA+ID4gKyAgICBRWExSZWxlYXNlSW5mbyAqaW5mbzsK
PiA+ID4gPiArICAgIHVpbnQzMl90IGdyb3VwX2lkOwo+ID4gPiA+ICt9IFFYTFJlbGVhc2VJbmZv
RXh0Owo+ID4gPiA+ICsKPiA+ID4gPiAgI2VuZGlmIC8qIF9IX1FYTF9ERVYgKi8KPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKPiA+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
