Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4511A81537
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 11:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682156E3B8;
	Mon,  5 Aug 2019 09:18:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5010A6E3B5;
 Mon,  5 Aug 2019 09:18:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7ECE881DEC;
 Mon,  5 Aug 2019 09:18:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BF560605;
 Mon,  5 Aug 2019 09:18:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45E964E589;
 Mon,  5 Aug 2019 09:18:15 +0000 (UTC)
Date: Mon, 5 Aug 2019 05:18:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <1869747233.4556840.1564996693878.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190805085355.12527-1-kraxel@redhat.com>
References: <20190805085355.12527-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.2]
Thread-Topic: drm/qxl: get vga ioports
Thread-Index: B+Egf2oktmkF6AuofBNvusT7r7gH4A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 05 Aug 2019 09:18:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] drm/qxl: get vga ioports
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dave Airlie <airlied@redhat.com>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBxeGwgaGFzIHR3byBtb2RlczogIm5hdGl2ZSIgKHVzZWQgYnkgdGhlIGRybSBkcml2ZXIp
IGFuZCAidmdhIiAodmdhCj4gY29tcGF0aWJpbGl0eSBtb2RlLCB0eXBpY2FsbHkgdXNlZCBmb3Ig
Ym9vdCBkaXNwbGF5IGFuZCBmaXJtd2FyZQo+IGZyYW1lYnVmZmVycykuCj4gCj4gQWNjZXNzaW5n
IGFueSB2Z2EgaW9wb3J0IHdpbGwgc3dpdGNoIHRoZSBxeGwgZGV2aWNlIGludG8gdmdhIG1vZGUu
Cj4gVGhlIHF4bCBkcml2ZXIgbmV2ZXIgZG9lcyB0aGF0LCBidXQgb3RoZXIgZHJpdmVycyBhY2Nl
c3NpbmcgdmdhIHBvcnRzCj4gY2FuIHRyaWdnZXIgdGhhdCB0b28gYW5kIHRoZXJlZm9yZSBkaXN0
dXJiIHF4bCBvcGVyYXRpb24uICBTbyBhcXVpcmUKPiB0aGUgbGVnYWN5IHZnYSBpb3BvcnRzIGZy
b20gdmdhYXJiIHRvIGF2b2lkIHRoYXQuCj4gCj4gUmVwb3JkdWNlcjogQm9vdCBrdm0gZ3Vlc3Qg
d2l0aCBib3RoIHF4bCBhbmQgaTkxNSB2Z3B1LCB3aXRoIHF4bCBiZWluZwoKdHlwbzogIlJlcG9y
ZHVjZXIiCgo+IGZpcnN0IGluIHBjaSBzY2FuIG9yZGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEdl
cmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
cXhsL3F4bF9kcnYuYyB8IDExICsrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9xeGwvcXhsX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZHJ2LmMKPiBpbmRleCBi
NTdhMzc1NDM2MTMuLjhhMmU4NmFkYzQyMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cXhsL3F4bF9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rydi5jCj4gQEAg
LTg3LDkgKzg3LDE1IEBAIHF4bF9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdAo+IHBjaV9kZXZpY2VfaWQgKmVudCkKPiAgCWlmIChyZXQpCj4gIAkJZ290byBkaXNh
YmxlX3BjaTsKPiAgCj4gKwlyZXQgPSB2Z2FfZ2V0X2ludGVycnVwdGlibGUocGRldiwgVkdBX1JT
UkNfTEVHQUNZX0lPKTsKPiArCWlmIChyZXQpIHsKPiArCQlEUk1fRVJST1IoImNhbid0IGdldCBs
ZWdhY3kgdmdhIHBvcnRzXG4iKTsKPiArCQlnb3RvIHB1dF92Z2E7CgpJIHN1cHBvc2UgdGhhdCBp
ZiB0aGlzIGZhaWxzIGl0J3Mgc2Vjb25kYXJ5IHNvIHNob3VsZCBjb250aW51ZS4KV2hhdCBoYXBw
ZW4gY29uZmlndXJpbmcgMiBRWEwgZGV2aWNlcz8KT25seSBhIGNhcmQgc2hvdWxkIHByb3ZpZGUg
VkdBIHJlZ2lzdGVycyBpbiB0aGUgc3lzdGVtIHNvCmlmIGFueSBvdGhlciBjYXJkIHByb3ZpZGUg
dGhlbSBRWEwgd29uJ3Qgd29yay4KCj4gKwl9Cj4gKwo+ICAJcmV0ID0gcXhsX2RldmljZV9pbml0
KHFkZXYsICZxeGxfZHJpdmVyLCBwZGV2KTsKPiAgCWlmIChyZXQpCj4gLQkJZ290byBkaXNhYmxl
X3BjaTsKPiArCQlnb3RvIHB1dF92Z2E7Cj4gIAo+ICAJcmV0ID0gcXhsX21vZGVzZXRfaW5pdChx
ZGV2KTsKPiAgCWlmIChyZXQpCj4gQEAgLTEwOSw2ICsxMTUsOCBAQCBxeGxfcGNpX3Byb2JlKHN0
cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QKPiBwY2lfZGV2aWNlX2lkICplbnQpCj4g
IAlxeGxfbW9kZXNldF9maW5pKHFkZXYpOwo+ICB1bmxvYWQ6Cj4gIAlxeGxfZGV2aWNlX2Zpbmko
cWRldik7Cj4gK3B1dF92Z2E6Cj4gKwl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7
CgpXaGF0IGhhcHBlbiBpZiB5b3UgZGlkbid0IGdldCB0aGUgSS9PPyBNYXliZSBpdCdzIHNhZmUg
dG8KanVzdCBjYWxsIHZnYV9wdXQgYW5kIGF2b2lkIGFkZGluZyBhbiBhZGRpdGlvbmFsIGxhYmVs
IGhlcmU/Cgo+ICBkaXNhYmxlX3BjaToKPiAgCXBjaV9kaXNhYmxlX2RldmljZShwZGV2KTsKPiAg
ZnJlZV9kZXY6Cj4gQEAgLTEyNiw2ICsxMzQsNyBAQCBxeGxfcGNpX3JlbW92ZShzdHJ1Y3QgcGNp
X2RldiAqcGRldikKPiAgCj4gIAlxeGxfbW9kZXNldF9maW5pKHFkZXYpOwo+ICAJcXhsX2Rldmlj
ZV9maW5pKHFkZXYpOwo+ICsJdmdhX3B1dChwZGV2LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOwo+ICAK
PiAgCWRldi0+ZGV2X3ByaXZhdGUgPSBOVUxMOwo+ICAJa2ZyZWUocWRldik7CgpGcmVkaWFubwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
