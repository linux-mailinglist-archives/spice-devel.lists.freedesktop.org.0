Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED453292D
	for <lists+spice-devel@lfdr.de>; Mon,  3 Jun 2019 09:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA36D898BF;
	Mon,  3 Jun 2019 07:15:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FAB7898BF
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 07:15:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE7DF81E07
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 07:15:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D080648BD
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 07:15:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8748C1806B16;
 Mon,  3 Jun 2019 07:15:04 +0000 (UTC)
Date: Mon, 3 Jun 2019 03:15:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1323651753.20997023.1559546102283.JavaMail.zimbra@redhat.com>
In-Reply-To: <d929603e-a92d-a88d-e1e1-89c657935ce6@redhat.com>
References: <20190601121413.932-1-fziglio@redhat.com>
 <20190601121413.932-2-fziglio@redhat.com>
 <d929603e-a92d-a88d-e1e1-89c657935ce6@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.29]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: eBbDUlA7d3I5S3fEuaz8DDCqVIkTQQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 03 Jun 2019 07:15:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] spicevmc: Do not use
 RedCharDevice pipe items handling
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

PiAKPiBPbiA2LzEvMTkgMzoxNCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gQXMgd2Ug
ZG9uJ3QgdXNlIGFueSB0b2tlbiB0aGVyZSdzIG5vIHJlYXNvbiB0byBub3QgcXVldWUKPiA+IGRp
cmVjdGx5IGluc3RlYWQgb2YgcGFzc2luZyB0aHJvdWdoIFJlZENoYXJEZXZpY2UuCj4gPiBUaGlz
IHdpbGwgbWFrZSBlYXNpZXIgdG8gbGltaXQgdGhlIHF1ZXVlIHdoaWNoIGN1cnJlbnRseSBpcwo+
ID4gdW5saW1pdGVkLgo+IAo+IEhpLAo+IAo+IElmIHdlIG5lZWQgZmxvdyBjb250cm9sLCBob3cg
ZGlmZmljdWx0IHdvdWxkIGl0IGJlIHRvIGFkZCBzdXBwb3J0Cj4gZm9yIHRva2VucyA/Cj4gKCB0
aGVyZSBpcyBhICJ0b2RvOiBhZGQgZmxvdyBjb250cm9sIiBjb21tZW50IGluIHNwaWNldm1jICku
Cj4gCgpGbG93IGNvbnRyb2wgaXMgd2hhdCB0aGUgZm9sbG93aW5nIHBhdGNoIGFkZGVkLiBJIGNh
biByZW1vdmUKdGhlIGNvbW1lbnQuCgpUaGVyZSBhcmUgZGlmZmVyZW50IHRoaW5ncyBJIGRvbid0
IGxpa2Ugb24gUmVkQ2hhckRldmljZSB0b2tlbgpoYW5kbGluZzoKLSBpdCdzIHJlYWxseSBkZXNp
Z25lZCB3aXRoIFZESSBpbiBtaW5kOwotIGl0J3MgdXNpbmcgaXRlbXMgYXMgdW5pdCBub3QgYWxs
b3dpbmcgY291bnRpbmcgYnl0ZXMgKGFzIG15IHBhdGNoCiAgZG9lcyk7Ci0gaXQgZHVwbGljYXRl
cyBzb21lIHF1ZXVlIG1hbmFnZW1lbnQgYmV0d2VlbiBSZWRDaGFubmVsQ2xpZW50OwotIGl0IGZv
cmNlcyAiY2xpZW50cyIgdG8gYmVoYXZlIGluIHNvbWUgd2F5IG5vdCBhbHRlcmluZwogIGZvciBp
bnN0YW5jZSB0aGUgcXVldWVkIGl0ZW1zICh3aGljaCBpcyB2ZXJ5IHVzZWZ1bCBpZiBpdGVtcwog
IGNhbiBiZSBjb2xsYXBzZWQgdG9nZXRoZXIpOwotIGl0IHJlcGxpY2F0ZXMgdGhlIHRva2VuIGhh
bmRsaW5nIG9uIHRoZSBkZXZpY2UgcXVldWUgdG9vLiBUaGlzCiAgY291bGQgc2VlbXMgcmlnaHQg
YnV0IGlzIG5vdCB0aGF0IGlmIHlvdSBoYXZlIGEgbmV0d29yayBjYXJkIGdvaW5nCiAgQCAxIEdC
aXQvcyB5b3UgYXJlIGFibGUgdG8gdXBsb2FkIG1vcmUgdGhhbiAxIEdiaXQvcyBqdXN0IHVzaW5n
CiAgbXVsdGlwbGUgY29ubmVjdGlvbnMuIFRoZSBrZXJuZWwgd2lsbCB1c2UgYSBzaW5nbGUgcXVl
dWUgZm9yIHRoZQogIG5ldHdvcmsgaW50ZXJmYWNlIGxpbWl0aW5nIGFuZCBzaGFyaW5nIGRlIGZh
Y3RvIHRoZSB2YXJpb3VzCiAgYnVmZmVycyBiZXR3ZWVuIHRoZSBtdWx0aXBsZSBjb25uZWN0aW9u
cy4KTm90IHRha2luZyBpbnRvIGFjY291bnQgdGhhdCBpZiB5b3UgaGF2ZSBhdCBtYXhpbXVtIChs
aWtlIFZNQyBhbmQgc21hcnRjYXJkKQoxIGNsaWVudCBpdCdzIGp1c3QgYSBkdW1teSBsYXllciB0
aGF0IHlvdSBoYXZlIHRvIHNhdGlzZnkuCgo+IFVyaS4KPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICAgc2Vy
dmVyL3NwaWNldm1jLmMgfCAxNSArKysrKy0tLS0tLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiBpbmRleCA4NGJiYjczYzIu
LjhjNDE1NzNhZSAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9zcGljZXZtYy5jCj4gPiArKysgYi9z
ZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gQEAgLTM2MCwyOSArMzYwLDI0IEBAIHN0YXRpYyBSZWRQaXBl
SXRlbQo+ID4gKnNwaWNldm1jX2NoYXJkZXZfcmVhZF9tc2dfZnJvbV9kZXYoUmVkQ2hhckRldmlj
ZSAqc2VsZiwKPiA+ICAgCj4gPiAgICAgICAgICAgbXNnX2l0ZW1fY29tcHJlc3NlZCA9IHRyeV9j
b21wcmVzc19sejQoY2hhbm5lbCwgbiwgbXNnX2l0ZW0pOwo+ID4gICAgICAgICAgIGlmIChtc2df
aXRlbV9jb21wcmVzc2VkICE9IE5VTEwpIHsKPiA+IC0gICAgICAgICAgICByZXR1cm4gJm1zZ19p
dGVtX2NvbXByZXNzZWQtPmJhc2U7Cj4gPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50
X3BpcGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLAo+ID4gJm1zZ19pdGVtX2NvbXByZXNzZWQtPmJh
c2UpOwo+ID4gKyAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gICAgICAgICAgIH0KPiA+ICAg
I2VuZGlmCj4gPiAgICAgICAgICAgc3RhdF9pbmNfY291bnRlcihjaGFubmVsLT5vdXRfZGF0YSwg
bik7Cj4gPiAgICAgICAgICAgbXNnX2l0ZW0tPnVuY29tcHJlc3NlZF9kYXRhX3NpemUgPSBuOwo+
ID4gICAgICAgICAgIG1zZ19pdGVtLT5idWZfdXNlZCA9IG47Cj4gPiAtICAgICAgICByZXR1cm4g
Jm1zZ19pdGVtLT5iYXNlOwo+ID4gLSAgICB9IGVsc2Ugewo+ID4gLSAgICAgICAgY2hhbm5lbC0+
cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gPiArICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlw
ZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsICZtc2dfaXRlbS0+YmFzZSk7Cj4gPiAgICAgICAgICAg
cmV0dXJuIE5VTEw7Cj4gPiAgICAgICB9Cj4gPiArICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1z
Z19pdGVtOwo+ID4gKyAgICByZXR1cm4gTlVMTDsKPiA+ICAgfQo+ID4gICAKPiA+ICAgc3RhdGlj
IHZvaWQgc3BpY2V2bWNfY2hhcmRldl9zZW5kX21zZ190b19jbGllbnQoUmVkQ2hhckRldmljZSAq
c2VsZiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgUmVkUGlwZUl0ZW0gKm1zZywKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50ICpjbGllbnQpCj4gPiAgIHsKPiA+IC0gICAgUmVk
Q2hhckRldmljZVNwaWNlVm1jICp2bWMgPSBSRURfQ0hBUl9ERVZJQ0VfU1BJQ0VWTUMoc2VsZik7
Cj4gPiAtICAgIFJlZFZtY0NoYW5uZWwgKmNoYW5uZWwgPSBSRURfVk1DX0NIQU5ORUwodm1jLT5j
aGFubmVsKTsKPiA+IC0KPiA+IC0gICAgc3BpY2VfYXNzZXJ0KHJlZF9jaGFubmVsX2NsaWVudF9n
ZXRfY2xpZW50KGNoYW5uZWwtPnJjYykgPT0gY2xpZW50KTsKPiA+IC0gICAgcmVkX3BpcGVfaXRl
bV9yZWYobXNnKTsKPiA+IC0gICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hh
bm5lbC0+cmNjLCBtc2cpOwo+ID4gICB9Cj4gPiAgIAo+ID4gICBzdGF0aWMgdm9pZCByZWRfcG9y
dF9pbml0X2l0ZW1fZnJlZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJhc2UpCj4gPiAKPiAKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
