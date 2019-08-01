Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCB47E005
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A966E71F;
	Thu,  1 Aug 2019 16:21:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399376E726
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D7B9630C2E8C
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CEB6060BEC
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C599219722
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:53 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:21:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
In-Reply-To: <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jEKa1YIoA=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 01 Aug 2019 16:21:53 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcgdGhlIHNlcmllcwo+ID4gCj4gPiA+IAo+
ID4gPiBBcyB3ZSBkb24ndCB1c2UgYW55IHRva2VuIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIG5vdCBx
dWV1ZSBkaXJlY3RseSBpbnN0ZWFkCj4gPiA+IG9mIHBhc3NpbmcgdGhyb3VnaCBSZWRDaGFyRGV2
aWNlLgo+ID4gPiBUaGlzIHdpbGwgbWFrZSBlYXNpZXIgdG8gbGltaXQgdGhlIHF1ZXVlIHdoaWNo
IGN1cnJlbnRseSBpcyB1bmxpbWl0ZWQuCj4gPiA+IAo+ID4gPiBSZWRDaGFyRGV2aWNlIGZsb3cg
Y29udHJvbCBoYXMgc29tZSBwcm9ibGVtczoKPiA+ID4gLSBpdCdzIHJlYWxseSBkZXNpZ25lZCB3
aXRoIFZESSBpbiBtaW5kLiBUaGlzIGZvciBTcGljZVZNQyB3b3VsZCBjYXVzZQo+ID4gPiAgIGNv
ZGUgaW1wbGVtZW50YXRpb24gdG8gYmUgY29uZnVzaW5nIGhhdmluZyB0byBzYXRpc2Z5IHRoZSBh
Z2VudCB0b2tlbgo+ID4gPiAgIGhhbmRsaW5nOwo+ID4gPiAtIGl0J3MgdXNpbmcgaXRlbXMgYXMg
dW5pdCBub3QgYWxsb3dpbmcgY291bnRpbmcgYnl0ZXM7Cj4gPiA+IC0gaXQgZHVwbGljYXRlcyBz
b21lIHF1ZXVlIG1hbmFnZW1lbnQgYmV0d2VlbiBSZWRDaGFubmVsQ2xpZW50Owo+ID4gPiAtIGl0
J3MgYnJva2VuIChzZWUgY29tbWVudHMgaW4gY2hhci1kZXZpY2UuaCk7Cj4gPiA+IC0gaXQgZm9y
Y2VzICJjbGllbnRzIiB0byBiZWhhdmUgaW4gc29tZSB3YXkgbm90IGFsdGVyaW5nIGZvciBpbnN0
YW5jZSB0aGUKPiA+ID4gICBxdWV1ZWQgaXRlbXMgKHdoaWNoIGlzIHZlcnkgdXNlZnVsIGlmIGl0
ZW1zIGNhbiBiZSBjb2xsYXBzZWQgdG9nZXRoZXIpOwo+ID4gPiAtIGl0IHJlcGxpY2F0ZXMgdGhl
IHRva2VuIGhhbmRsaW5nIG9uIHRoZSBkZXZpY2UgcXVldWUgdG9vLiBUaGlzIGNvdWxkCj4gPiA+
ICAgc2VlbXMgcmlnaHQgYnV0IGlzIG5vdCB0aGF0IGlmIHlvdSBoYXZlIGEgbmV0d29yayBjYXJk
IGdvaW5nIEAgMSBHQml0L3MKPiA+ID4gICB5b3UgYXJlIGFibGUgdG8gdXBsb2FkIG1vcmUgdGhh
biAxIEdiaXQvcyBqdXN0IHVzaW5nIG11bHRpcGxlCj4gPiA+ICAgY29ubmVjdGlvbnMuIFRoZSBr
ZXJuZWwgd2lsbCB1c2UgYSBzaW5nbGUgcXVldWUgZm9yIHRoZSBuZXR3b3JrCj4gPiA+ICAgaW50
ZXJmYWNlCj4gPiA+ICAgbGltaXRpbmcgYW5kIHNoYXJpbmcgZGUgZmFjdG8gdGhlIHZhcmlvdXMg
YnVmZmVycyBiZXR3ZWVuIHRoZSBtdWx0aXBsZQo+ID4gPiAgIGNvbm5lY3Rpb25zLgo+ID4gPiAK
PiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gPiAtIG1vcmUgY29tbWl0IG1lc3Nh
Z2UgY29tbWVudHMKPiA+ID4gLS0tCj4gPiA+ICBzZXJ2ZXIvc3BpY2V2bWMuYyB8IDE1ICsrKysr
LS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3NwaWNldm1jLmMgYi9z
ZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiBpbmRleCA4NGJiYjczYzIuLjhjNDE1NzNhZSAxMDA2NDQK
PiA+ID4gLS0tIGEvc2VydmVyL3NwaWNldm1jLmMKPiA+ID4gKysrIGIvc2VydmVyL3NwaWNldm1j
LmMKPiA+ID4gQEAgLTM2MCwyOSArMzYwLDI0IEBAIHN0YXRpYyBSZWRQaXBlSXRlbQo+ID4gPiAq
c3BpY2V2bWNfY2hhcmRldl9yZWFkX21zZ19mcm9tX2RldihSZWRDaGFyRGV2aWNlICpzZWxmLAo+
ID4gPiAgCj4gPiA+ICAgICAgICAgIG1zZ19pdGVtX2NvbXByZXNzZWQgPSB0cnlfY29tcHJlc3Nf
bHo0KGNoYW5uZWwsIG4sIG1zZ19pdGVtKTsKPiA+ID4gICAgICAgICAgaWYgKG1zZ19pdGVtX2Nv
bXByZXNzZWQgIT0gTlVMTCkgewo+ID4gPiAtICAgICAgICAgICAgcmV0dXJuICZtc2dfaXRlbV9j
b21wcmVzc2VkLT5iYXNlOwo+ID4gPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3Bp
cGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLAo+ID4gPiAmbXNnX2l0ZW1fY29tcHJlc3NlZC0+YmFz
ZSk7Cj4gPiA+ICsgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gICAgICAgICAgfQo+ID4g
PiAgI2VuZGlmCj4gPiA+ICAgICAgICAgIHN0YXRfaW5jX2NvdW50ZXIoY2hhbm5lbC0+b3V0X2Rh
dGEsIG4pOwo+ID4gPiAgICAgICAgICBtc2dfaXRlbS0+dW5jb21wcmVzc2VkX2RhdGFfc2l6ZSA9
IG47Cj4gPiA+ICAgICAgICAgIG1zZ19pdGVtLT5idWZfdXNlZCA9IG47Cj4gPiA+IC0gICAgICAg
IHJldHVybiAmbXNnX2l0ZW0tPmJhc2U7Cj4gPiA+IC0gICAgfSBlbHNlIHsKPiA+ID4gLSAgICAg
ICAgY2hhbm5lbC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gPiA+ICsgICAgICAgIHJlZF9jaGFu
bmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywgJm1zZ19pdGVtLT5iYXNlKTsK
PiA+ID4gICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ICAgICAgfQo+ID4gPiArICAgIGNoYW5u
ZWwtPnBpcGVfaXRlbSA9IG1zZ19pdGVtOwo+ID4gPiArICAgIHJldHVybiBOVUxMOwo+ID4gPiAg
fQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgdm9pZCBzcGljZXZtY19jaGFyZGV2X3NlbmRfbXNnX3Rv
X2NsaWVudChSZWRDaGFyRGV2aWNlICpzZWxmLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlwZUl0ZW0gKm1zZywKPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xp
ZW50KQo+ID4gPiAgewo+ID4gPiAtICAgIFJlZENoYXJEZXZpY2VTcGljZVZtYyAqdm1jID0gUkVE
X0NIQVJfREVWSUNFX1NQSUNFVk1DKHNlbGYpOwo+ID4gPiAtICAgIFJlZFZtY0NoYW5uZWwgKmNo
YW5uZWwgPSBSRURfVk1DX0NIQU5ORUwodm1jLT5jaGFubmVsKTsKPiA+ID4gLQo+ID4gPiAtICAg
IHNwaWNlX2Fzc2VydChyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NsaWVudChjaGFubmVsLT5yY2Mp
ID09IGNsaWVudCk7Cj4gPiA+IC0gICAgcmVkX3BpcGVfaXRlbV9yZWYobXNnKTsKPiA+ID4gLSAg
ICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsIG1zZyk7Cj4g
PiA+ICB9Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyB2b2lkIHJlZF9wb3J0X2luaXRfaXRlbV9mcmVl
KHN0cnVjdCBSZWRQaXBlSXRlbSAqYmFzZSkKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
