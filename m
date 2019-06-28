Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132A959560
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973E86E89C;
	Fri, 28 Jun 2019 07:52:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4386E89C
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 96F655AFE9
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D2F66012D
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:16 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 82E7E1806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:16 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:52:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <725326257.25084562.1561708336479.JavaMail.zimbra@redhat.com>
In-Reply-To: <1459263191.23631640.1560938740726.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-3-fziglio@redhat.com>
 <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
 <1112673652.20497835.1559121375693.JavaMail.zimbra@redhat.com>
 <1719022579.22408124.1560318882849.JavaMail.zimbra@redhat.com>
 <1459263191.23631640.1560938740726.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: gALPBO8iB8Q2mCOMed+sUMVh+5f5zTDXMnUIgt9rpp19nyii45anFQcS
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 28 Jun 2019 07:52:16 +0000 (UTC)
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

cGluZyA1Cgo+IAo+IHBpbmcgNAo+IAo+ID4gCj4gPiBwaW5nIDMKPiA+IAo+ID4gPiAKPiA+ID4g
cGluZwo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IFRoaXMgc3RydWN0dXJlIGlzIG5vdCBkZWNsYXJlcyBhcyBTUElDRV9BVFRSX1BBQ0tF
RCByZXN1bHRpbmcgaXQKPiA+ID4gPiA+IGFzIGFsaWduZWQgYW5kIG5vIHBhY2tlZCB1c2luZyBH
Q0MgKG5vIE1pbmdXKS4KPiA+ID4gPiA+IFRoaXMgc3RydWN0dXJlIGlzIG9ubHkgcGFja2VkIHVu
ZGVyIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21waWxlcnMuCj4gPiA+ID4gPiBUaGlzIHN0cnVjdHVy
ZSBpcyBub3QgdGVjaG5pY2FsbHkgYSBkZWZpbml0aW9uIGZvciBRWEwgZGV2aWNlIGJ1dAo+ID4g
PiA+ID4gaXMgdXNlZCBvbmx5IGZvciBzcGljZS1zZXJ2ZXIgUVhMIGludGVyZmFjZS4KPiA+ID4g
PiA+IEFzIHNhaWQgYWJvdmUgdGhpcyBjaGFuZ2UgY291bGQgYWZmZWN0IG9ubHkgTWluZ1cvTWlj
cm9zb2Z0IHRoYXQgaXMKPiA+ID4gPiA+IG9ubHkgV2luZG93cyBBQkkgb2Ygc3BpY2Utc2VydmVy
ICh2ZXJ5IHJlY2VudGx5IGFkZGVkKSBzbwo+ID4gPiA+ID4gZm9sbG93aW5nIGxpbmVzIGFyZSBy
ZWFsbHkgbm90IG11Y2ggaW1wb3J0YW50Lgo+ID4gPiA+ID4gTm90ZSB0aGF0IFdpbmRvd3MgZG9l
cyBub3Qgc3VwcG9ydCBhcmNoaXRlY3R1cmVzIHdpdGggQ1BVcyBub3QKPiA+ID4gPiA+IHN1cHBv
cnRpbmcgdW5hbGlnbmVkIGFjY2Vzcy4KPiA+ID4gPiA+IFVuZGVyIFdpbjMyIHRoaXMgY2hhbmdl
IGRvbid0IGFmZmVjdCBzaXplIHNvIG5vdGhpbmcgbXVjaCBjYW4gY2hhbmdlLgo+ID4gPiA+ID4g
VGhpcyBzdHJ1Y3R1cmUgaXMgY3VycmVudGx5IHBhc3NlZCBhcyB2YWx1ZSB0byByZWxlYXNlX3Jl
c291cmNlCj4gPiA+ID4gPiBjYWxsYmFjay4gVW5kZXIgV2luNjQgdGhpcyBzdHJ1Y3R1cmUgaXMg
cGFzc2VkIGxpa2UgYQo+ID4gPiA+ID4gImNvbnN0IFFYTFJlbGVhc2VJbmZvRXh0ICoiIHNvIGV2
ZW4gaWYgdGhlIHN0cnVjdHVyZSBpcyAxNiBieXRlcwo+ID4gPiA+ID4gaW5zdGVhZAo+ID4gPiA+
ID4gb2YgMTIgdGhpcyBpcyByZWFkIHRoZSBzYW1lIHdheS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+
ID4gPiAtLS0KPiA+ID4gPiA+ICBzcGljZS9xeGxfZGV2LmggfCAxMCArKysrKy0tLS0tCj4gPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4
bF9kZXYuaAo+ID4gPiA+ID4gaW5kZXggNjU5ZjkzMC4uYzg0NGQ3YiAxMDA2NDQKPiA+ID4gPiA+
IC0tLSBhL3NwaWNlL3F4bF9kZXYuaAo+ID4gPiA+ID4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4g
PiA+ID4gPiBAQCAtMjgwLDExICsyODAsNiBAQCB0eXBlZGVmIHVuaW9uIFNQSUNFX0FUVFJfUEFD
S0VEIFFYTFJlbGVhc2VJbmZvIHsKPiA+ID4gPiA+ICAgICAgdWludDY0X3QgbmV4dDsgICAgLy8g
b3V0Cj4gPiA+ID4gPiAgfSBRWExSZWxlYXNlSW5mbzsKPiA+ID4gPiA+ICAKPiA+ID4gPiA+IC10
eXBlZGVmIHN0cnVjdCBRWExSZWxlYXNlSW5mb0V4dCB7Cj4gPiA+ID4gPiAtICAgIFFYTFJlbGVh
c2VJbmZvICppbmZvOwo+ID4gPiA+ID4gLSAgICB1aW50MzJfdCBncm91cF9pZDsKPiA+ID4gPiA+
IC19IFFYTFJlbGVhc2VJbmZvRXh0Owo+ID4gPiA+ID4gLQo+ID4gPiA+ID4gIHR5cGVkZWYgc3Ry
dWN0ICBTUElDRV9BVFRSX1BBQ0tFRCBRWExEYXRhQ2h1bmsgewo+ID4gPiA+ID4gICAgICB1aW50
MzJfdCBkYXRhX3NpemU7Cj4gPiA+ID4gPiAgICAgIFFYTFBIWVNJQ0FMIHByZXZfY2h1bms7Cj4g
PiA+ID4gPiBAQCAtNzc5LDQgKzc3NCw5IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJfUEFD
S0VECj4gPiA+ID4gPiBRWExNb25pdG9yc0NvbmZpZwo+ID4gPiA+ID4gewo+ID4gPiA+ID4gIAo+
ID4gPiA+ID4gICNpbmNsdWRlIDxzcGljZS9lbmQtcGFja2VkLmg+Cj4gPiA+ID4gPiAgCj4gPiA+
ID4gPiArdHlwZWRlZiBzdHJ1Y3QgUVhMUmVsZWFzZUluZm9FeHQgewo+ID4gPiA+ID4gKyAgICBR
WExSZWxlYXNlSW5mbyAqaW5mbzsKPiA+ID4gPiA+ICsgICAgdWludDMyX3QgZ3JvdXBfaWQ7Cj4g
PiA+ID4gPiArfSBRWExSZWxlYXNlSW5mb0V4dDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAjZW5k
aWYgLyogX0hfUVhMX0RFViAqLwo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKPiA+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
