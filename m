Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7B41BAD
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8157A89241;
	Wed, 12 Jun 2019 05:54:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC6689241
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EAC873082E6A
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E12B87BE70
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DAE5A1806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:42 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:54:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1719022579.22408124.1560318882849.JavaMail.zimbra@redhat.com>
In-Reply-To: <1112673652.20497835.1559121375693.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-3-fziglio@redhat.com>
 <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
 <1112673652.20497835.1559121375693.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: gALPBO8iB8Q2mCOMed+sUMVh+5f5zTDXMnUIgt9rpp0=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 12 Jun 2019 05:54:42 +0000 (UTC)
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

cGluZyAzCgo+IAo+IHBpbmcKPiAKPiA+IAo+ID4gcGluZwo+ID4gCj4gPiA+IAo+ID4gPiBUaGlz
IHN0cnVjdHVyZSBpcyBub3QgZGVjbGFyZXMgYXMgU1BJQ0VfQVRUUl9QQUNLRUQgcmVzdWx0aW5n
IGl0Cj4gPiA+IGFzIGFsaWduZWQgYW5kIG5vIHBhY2tlZCB1c2luZyBHQ0MgKG5vIE1pbmdXKS4K
PiA+ID4gVGhpcyBzdHJ1Y3R1cmUgaXMgb25seSBwYWNrZWQgdW5kZXIgTWluZ1cgb3IgTWljcm9z
b2Z0IGNvbXBpbGVycy4KPiA+ID4gVGhpcyBzdHJ1Y3R1cmUgaXMgbm90IHRlY2huaWNhbGx5IGEg
ZGVmaW5pdGlvbiBmb3IgUVhMIGRldmljZSBidXQKPiA+ID4gaXMgdXNlZCBvbmx5IGZvciBzcGlj
ZS1zZXJ2ZXIgUVhMIGludGVyZmFjZS4KPiA+ID4gQXMgc2FpZCBhYm92ZSB0aGlzIGNoYW5nZSBj
b3VsZCBhZmZlY3Qgb25seSBNaW5nVy9NaWNyb3NvZnQgdGhhdCBpcwo+ID4gPiBvbmx5IFdpbmRv
d3MgQUJJIG9mIHNwaWNlLXNlcnZlciAodmVyeSByZWNlbnRseSBhZGRlZCkgc28KPiA+ID4gZm9s
bG93aW5nIGxpbmVzIGFyZSByZWFsbHkgbm90IG11Y2ggaW1wb3J0YW50Lgo+ID4gPiBOb3RlIHRo
YXQgV2luZG93cyBkb2VzIG5vdCBzdXBwb3J0IGFyY2hpdGVjdHVyZXMgd2l0aCBDUFVzIG5vdAo+
ID4gPiBzdXBwb3J0aW5nIHVuYWxpZ25lZCBhY2Nlc3MuCj4gPiA+IFVuZGVyIFdpbjMyIHRoaXMg
Y2hhbmdlIGRvbid0IGFmZmVjdCBzaXplIHNvIG5vdGhpbmcgbXVjaCBjYW4gY2hhbmdlLgo+ID4g
PiBUaGlzIHN0cnVjdHVyZSBpcyBjdXJyZW50bHkgcGFzc2VkIGFzIHZhbHVlIHRvIHJlbGVhc2Vf
cmVzb3VyY2UKPiA+ID4gY2FsbGJhY2suIFVuZGVyIFdpbjY0IHRoaXMgc3RydWN0dXJlIGlzIHBh
c3NlZCBsaWtlIGEKPiA+ID4gImNvbnN0IFFYTFJlbGVhc2VJbmZvRXh0ICoiIHNvIGV2ZW4gaWYg
dGhlIHN0cnVjdHVyZSBpcyAxNiBieXRlcyBpbnN0ZWFkCj4gPiA+IG9mIDEyIHRoaXMgaXMgcmVh
ZCB0aGUgc2FtZSB3YXkuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBzcGljZS9xeGxfZGV2Lmgg
fCAxMCArKysrKy0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBi
L3NwaWNlL3F4bF9kZXYuaAo+ID4gPiBpbmRleCA2NTlmOTMwLi5jODQ0ZDdiIDEwMDY0NAo+ID4g
PiAtLS0gYS9zcGljZS9xeGxfZGV2LmgKPiA+ID4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4gPiA+
IEBAIC0yODAsMTEgKzI4MCw2IEBAIHR5cGVkZWYgdW5pb24gU1BJQ0VfQVRUUl9QQUNLRUQgUVhM
UmVsZWFzZUluZm8gewo+ID4gPiAgICAgIHVpbnQ2NF90IG5leHQ7ICAgIC8vIG91dAo+ID4gPiAg
fSBRWExSZWxlYXNlSW5mbzsKPiA+ID4gIAo+ID4gPiAtdHlwZWRlZiBzdHJ1Y3QgUVhMUmVsZWFz
ZUluZm9FeHQgewo+ID4gPiAtICAgIFFYTFJlbGVhc2VJbmZvICppbmZvOwo+ID4gPiAtICAgIHVp
bnQzMl90IGdyb3VwX2lkOwo+ID4gPiAtfSBRWExSZWxlYXNlSW5mb0V4dDsKPiA+ID4gLQo+ID4g
PiAgdHlwZWRlZiBzdHJ1Y3QgIFNQSUNFX0FUVFJfUEFDS0VEIFFYTERhdGFDaHVuayB7Cj4gPiA+
ICAgICAgdWludDMyX3QgZGF0YV9zaXplOwo+ID4gPiAgICAgIFFYTFBIWVNJQ0FMIHByZXZfY2h1
bms7Cj4gPiA+IEBAIC03NzksNCArNzc0LDkgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9Q
QUNLRUQgUVhMTW9uaXRvcnNDb25maWcgewo+ID4gPiAgCj4gPiA+ICAjaW5jbHVkZSA8c3BpY2Uv
ZW5kLXBhY2tlZC5oPgo+ID4gPiAgCj4gPiA+ICt0eXBlZGVmIHN0cnVjdCBRWExSZWxlYXNlSW5m
b0V4dCB7Cj4gPiA+ICsgICAgUVhMUmVsZWFzZUluZm8gKmluZm87Cj4gPiA+ICsgICAgdWludDMy
X3QgZ3JvdXBfaWQ7Cj4gPiA+ICt9IFFYTFJlbGVhc2VJbmZvRXh0Owo+ID4gPiArCj4gPiA+ICAj
ZW5kaWYgLyogX0hfUVhMX0RFViAqLwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
