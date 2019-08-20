Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A228958D2
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 09:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C196E61F;
	Tue, 20 Aug 2019 07:40:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19DD66E61F
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BE5583001836
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B44DA13836
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC24124F2F
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:21 +0000 (UTC)
Date: Tue, 20 Aug 2019 03:40:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1964755682.7680572.1566286821676.JavaMail.zimbra@redhat.com>
In-Reply-To: <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
 <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
 <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.142, 10.4.195.29]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jEKa1YIoBfwCK9gaV3Mce9
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 20 Aug 2019 07:40:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nIHRoZSBzZXJpZXMKPiA+ID4gPiAKPiA+ID4gPiA+
IAo+ID4gPiA+ID4gQXMgd2UgZG9uJ3QgdXNlIGFueSB0b2tlbiB0aGVyZSdzIG5vIHJlYXNvbiB0
byBub3QgcXVldWUgZGlyZWN0bHkKPiA+ID4gPiA+IGluc3RlYWQKPiA+ID4gPiA+IG9mIHBhc3Np
bmcgdGhyb3VnaCBSZWRDaGFyRGV2aWNlLgo+ID4gPiA+ID4gVGhpcyB3aWxsIG1ha2UgZWFzaWVy
IHRvIGxpbWl0IHRoZSBxdWV1ZSB3aGljaCBjdXJyZW50bHkgaXMKPiA+ID4gPiA+IHVubGltaXRl
ZC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gUmVkQ2hhckRldmljZSBmbG93IGNvbnRyb2wgaGFzIHNv
bWUgcHJvYmxlbXM6Cj4gPiA+ID4gPiAtIGl0J3MgcmVhbGx5IGRlc2lnbmVkIHdpdGggVkRJIGlu
IG1pbmQuIFRoaXMgZm9yIFNwaWNlVk1DIHdvdWxkCj4gPiA+ID4gPiBjYXVzZQo+ID4gPiA+ID4g
ICBjb2RlIGltcGxlbWVudGF0aW9uIHRvIGJlIGNvbmZ1c2luZyBoYXZpbmcgdG8gc2F0aXNmeSB0
aGUgYWdlbnQKPiA+ID4gPiA+ICAgdG9rZW4KPiA+ID4gPiA+ICAgaGFuZGxpbmc7Cj4gPiA+ID4g
PiAtIGl0J3MgdXNpbmcgaXRlbXMgYXMgdW5pdCBub3QgYWxsb3dpbmcgY291bnRpbmcgYnl0ZXM7
Cj4gPiA+ID4gPiAtIGl0IGR1cGxpY2F0ZXMgc29tZSBxdWV1ZSBtYW5hZ2VtZW50IGJldHdlZW4g
UmVkQ2hhbm5lbENsaWVudDsKPiA+ID4gPiA+IC0gaXQncyBicm9rZW4gKHNlZSBjb21tZW50cyBp
biBjaGFyLWRldmljZS5oKTsKPiA+ID4gPiA+IC0gaXQgZm9yY2VzICJjbGllbnRzIiB0byBiZWhh
dmUgaW4gc29tZSB3YXkgbm90IGFsdGVyaW5nIGZvciBpbnN0YW5jZQo+ID4gPiA+ID4gdGhlCj4g
PiA+ID4gPiAgIHF1ZXVlZCBpdGVtcyAod2hpY2ggaXMgdmVyeSB1c2VmdWwgaWYgaXRlbXMgY2Fu
IGJlIGNvbGxhcHNlZAo+ID4gPiA+ID4gICB0b2dldGhlcik7Cj4gPiA+ID4gPiAtIGl0IHJlcGxp
Y2F0ZXMgdGhlIHRva2VuIGhhbmRsaW5nIG9uIHRoZSBkZXZpY2UgcXVldWUgdG9vLiBUaGlzCj4g
PiA+ID4gPiBjb3VsZAo+ID4gPiA+ID4gICBzZWVtcyByaWdodCBidXQgaXMgbm90IHRoYXQgaWYg
eW91IGhhdmUgYSBuZXR3b3JrIGNhcmQgZ29pbmcgQCAxCj4gPiA+ID4gPiAgIEdCaXQvcwo+ID4g
PiA+ID4gICB5b3UgYXJlIGFibGUgdG8gdXBsb2FkIG1vcmUgdGhhbiAxIEdiaXQvcyBqdXN0IHVz
aW5nIG11bHRpcGxlCj4gPiA+ID4gPiAgIGNvbm5lY3Rpb25zLiBUaGUga2VybmVsIHdpbGwgdXNl
IGEgc2luZ2xlIHF1ZXVlIGZvciB0aGUgbmV0d29yawo+ID4gPiA+ID4gICBpbnRlcmZhY2UKPiA+
ID4gPiA+ICAgbGltaXRpbmcgYW5kIHNoYXJpbmcgZGUgZmFjdG8gdGhlIHZhcmlvdXMgYnVmZmVy
cyBiZXR3ZWVuIHRoZQo+ID4gPiA+ID4gICBtdWx0aXBsZQo+ID4gPiA+ID4gICBjb25uZWN0aW9u
cy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IENoYW5nZXMgaW4gdjI6
Cj4gPiA+ID4gPiAtIG1vcmUgY29tbWl0IG1lc3NhZ2UgY29tbWVudHMKPiA+ID4gPiA+IC0tLQo+
ID4gPiA+ID4gIHNlcnZlci9zcGljZXZtYy5jIHwgMTUgKysrKystLS0tLS0tLS0tCj4gPiA+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9z
cGljZXZtYy5jCj4gPiA+ID4gPiBpbmRleCA4NGJiYjczYzIuLjhjNDE1NzNhZSAxMDA2NDQKPiA+
ID4gPiA+IC0tLSBhL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvc3Bp
Y2V2bWMuYwo+ID4gPiA+ID4gQEAgLTM2MCwyOSArMzYwLDI0IEBAIHN0YXRpYyBSZWRQaXBlSXRl
bQo+ID4gPiA+ID4gKnNwaWNldm1jX2NoYXJkZXZfcmVhZF9tc2dfZnJvbV9kZXYoUmVkQ2hhckRl
dmljZSAqc2VsZiwKPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICAgICAgICAgIG1zZ19pdGVtX2NvbXBy
ZXNzZWQgPSB0cnlfY29tcHJlc3NfbHo0KGNoYW5uZWwsIG4sCj4gPiA+ID4gPiAgICAgICAgICBt
c2dfaXRlbSk7Cj4gPiA+ID4gPiAgICAgICAgICBpZiAobXNnX2l0ZW1fY29tcHJlc3NlZCAhPSBO
VUxMKSB7Cj4gPiA+ID4gPiAtICAgICAgICAgICAgcmV0dXJuICZtc2dfaXRlbV9jb21wcmVzc2Vk
LT5iYXNlOwo+ID4gPiA+ID4gKyAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2Fk
ZF9wdXNoKGNoYW5uZWwtPnJjYywKPiA+ID4gPiA+ICZtc2dfaXRlbV9jb21wcmVzc2VkLT5iYXNl
KTsKPiA+ID4gPiA+ICsgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiA+ICAgICAgICAg
IH0KPiA+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiA+ICAgICAgICAgIHN0YXRfaW5jX2NvdW50ZXIo
Y2hhbm5lbC0+b3V0X2RhdGEsIG4pOwo+ID4gPiA+ID4gICAgICAgICAgbXNnX2l0ZW0tPnVuY29t
cHJlc3NlZF9kYXRhX3NpemUgPSBuOwo+ID4gPiA+ID4gICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91
c2VkID0gbjsKPiA+ID4gPiA+IC0gICAgICAgIHJldHVybiAmbXNnX2l0ZW0tPmJhc2U7Cj4gPiA+
ID4gPiAtICAgIH0gZWxzZSB7Cj4gPiA+ID4gPiAtICAgICAgICBjaGFubmVsLT5waXBlX2l0ZW0g
PSBtc2dfaXRlbTsKPiA+ID4gPiA+ICsgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2Fk
ZF9wdXNoKGNoYW5uZWwtPnJjYywKPiA+ID4gPiA+ICZtc2dfaXRlbS0+YmFzZSk7Cj4gPiA+ID4g
PiAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiA+ICAgICAgfQo+ID4gPiA+ID4gKyAgICBj
aGFubmVsLT5waXBlX2l0ZW0gPSBtc2dfaXRlbTsKPiA+ID4gPiA+ICsgICAgcmV0dXJuIE5VTEw7
Cj4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIHNwaWNldm1j
X2NoYXJkZXZfc2VuZF9tc2dfdG9fY2xpZW50KFJlZENoYXJEZXZpY2UgKnNlbGYsCj4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlw
ZUl0ZW0gKm1zZywKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCkKPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiAt
ICAgIFJlZENoYXJEZXZpY2VTcGljZVZtYyAqdm1jID0gUkVEX0NIQVJfREVWSUNFX1NQSUNFVk1D
KHNlbGYpOwo+ID4gPiA+ID4gLSAgICBSZWRWbWNDaGFubmVsICpjaGFubmVsID0gUkVEX1ZNQ19D
SEFOTkVMKHZtYy0+Y2hhbm5lbCk7Cj4gPiA+ID4gPiAtCj4gPiA+ID4gPiAtICAgIHNwaWNlX2Fz
c2VydChyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NsaWVudChjaGFubmVsLT5yY2MpID09Cj4gPiA+
ID4gPiBjbGllbnQpOwo+ID4gPiA+ID4gLSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwo+ID4g
PiA+ID4gLSAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2Ms
IG1zZyk7Cj4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIHJl
ZF9wb3J0X2luaXRfaXRlbV9mcmVlKHN0cnVjdCBSZWRQaXBlSXRlbSAqYmFzZSkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
