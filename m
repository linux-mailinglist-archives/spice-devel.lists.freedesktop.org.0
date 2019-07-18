Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 415586D170
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863786E426;
	Thu, 18 Jul 2019 15:56:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352BF6E426
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:56:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF29C307D85E
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:56:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C6D4053C67
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:56:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD0D841F53
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:56:37 +0000 (UTC)
Date: Thu, 18 Jul 2019 11:56:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <50245231.808909.1563465397581.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190704135610.15771-2-fziglio@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
 <20190704135610.15771-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.15]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: zgqYmlKFyXbFsfOO4BZ4HMPjM9uYFA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 18 Jul 2019 15:56:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 2/2] qxl_dev: Move
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
