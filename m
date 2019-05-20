Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E6922F88
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 10:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD50289286;
	Mon, 20 May 2019 08:57:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC84389286
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 94508C066811
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BBFA17D29
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8594B1833001
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:29 +0000 (UTC)
Date: Mon, 20 May 2019 04:57:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190513094556.14035-3-fziglio@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-3-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.25]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: gALPBO8iB8Q2mCOMed+sUMVh+5f5zQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 20 May 2019 08:57:29 +0000 (UTC)
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

cGluZwoKPiAKPiBUaGlzIHN0cnVjdHVyZSBpcyBub3QgZGVjbGFyZXMgYXMgU1BJQ0VfQVRUUl9Q
QUNLRUQgcmVzdWx0aW5nIGl0Cj4gYXMgYWxpZ25lZCBhbmQgbm8gcGFja2VkIHVzaW5nIEdDQyAo
bm8gTWluZ1cpLgo+IFRoaXMgc3RydWN0dXJlIGlzIG9ubHkgcGFja2VkIHVuZGVyIE1pbmdXIG9y
IE1pY3Jvc29mdCBjb21waWxlcnMuCj4gVGhpcyBzdHJ1Y3R1cmUgaXMgbm90IHRlY2huaWNhbGx5
IGEgZGVmaW5pdGlvbiBmb3IgUVhMIGRldmljZSBidXQKPiBpcyB1c2VkIG9ubHkgZm9yIHNwaWNl
LXNlcnZlciBRWEwgaW50ZXJmYWNlLgo+IEFzIHNhaWQgYWJvdmUgdGhpcyBjaGFuZ2UgY291bGQg
YWZmZWN0IG9ubHkgTWluZ1cvTWljcm9zb2Z0IHRoYXQgaXMKPiBvbmx5IFdpbmRvd3MgQUJJIG9m
IHNwaWNlLXNlcnZlciAodmVyeSByZWNlbnRseSBhZGRlZCkgc28KPiBmb2xsb3dpbmcgbGluZXMg
YXJlIHJlYWxseSBub3QgbXVjaCBpbXBvcnRhbnQuCj4gTm90ZSB0aGF0IFdpbmRvd3MgZG9lcyBu
b3Qgc3VwcG9ydCBhcmNoaXRlY3R1cmVzIHdpdGggQ1BVcyBub3QKPiBzdXBwb3J0aW5nIHVuYWxp
Z25lZCBhY2Nlc3MuCj4gVW5kZXIgV2luMzIgdGhpcyBjaGFuZ2UgZG9uJ3QgYWZmZWN0IHNpemUg
c28gbm90aGluZyBtdWNoIGNhbiBjaGFuZ2UuCj4gVGhpcyBzdHJ1Y3R1cmUgaXMgY3VycmVudGx5
IHBhc3NlZCBhcyB2YWx1ZSB0byByZWxlYXNlX3Jlc291cmNlCj4gY2FsbGJhY2suIFVuZGVyIFdp
bjY0IHRoaXMgc3RydWN0dXJlIGlzIHBhc3NlZCBsaWtlIGEKPiAiY29uc3QgUVhMUmVsZWFzZUlu
Zm9FeHQgKiIgc28gZXZlbiBpZiB0aGUgc3RydWN0dXJlIGlzIDE2IGJ5dGVzIGluc3RlYWQKPiBv
ZiAxMiB0aGlzIGlzIHJlYWQgdGhlIHNhbWUgd2F5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRp
YW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzcGljZS9xeGxfZGV2Lmgg
fCAxMCArKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9k
ZXYuaAo+IGluZGV4IDY1OWY5MzAuLmM4NDRkN2IgMTAwNjQ0Cj4gLS0tIGEvc3BpY2UvcXhsX2Rl
di5oCj4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4gQEAgLTI4MCwxMSArMjgwLDYgQEAgdHlwZWRl
ZiB1bmlvbiBTUElDRV9BVFRSX1BBQ0tFRCBRWExSZWxlYXNlSW5mbyB7Cj4gICAgICB1aW50NjRf
dCBuZXh0OyAgICAvLyBvdXQKPiAgfSBRWExSZWxlYXNlSW5mbzsKPiAgCj4gLXR5cGVkZWYgc3Ry
dWN0IFFYTFJlbGVhc2VJbmZvRXh0IHsKPiAtICAgIFFYTFJlbGVhc2VJbmZvICppbmZvOwo+IC0g
ICAgdWludDMyX3QgZ3JvdXBfaWQ7Cj4gLX0gUVhMUmVsZWFzZUluZm9FeHQ7Cj4gLQo+ICB0eXBl
ZGVmIHN0cnVjdCAgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMRGF0YUNodW5rIHsKPiAgICAgIHVpbnQz
Ml90IGRhdGFfc2l6ZTsKPiAgICAgIFFYTFBIWVNJQ0FMIHByZXZfY2h1bms7Cj4gQEAgLTc3OSw0
ICs3NzQsOSBAQCB0eXBlZGVmIHN0cnVjdCBTUElDRV9BVFRSX1BBQ0tFRCBRWExNb25pdG9yc0Nv
bmZpZyB7Cj4gIAo+ICAjaW5jbHVkZSA8c3BpY2UvZW5kLXBhY2tlZC5oPgo+ICAKPiArdHlwZWRl
ZiBzdHJ1Y3QgUVhMUmVsZWFzZUluZm9FeHQgewo+ICsgICAgUVhMUmVsZWFzZUluZm8gKmluZm87
Cj4gKyAgICB1aW50MzJfdCBncm91cF9pZDsKPiArfSBRWExSZWxlYXNlSW5mb0V4dDsKPiArCj4g
ICNlbmRpZiAvKiBfSF9RWExfREVWICovCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
