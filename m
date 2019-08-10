Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CC2888BD
	for <lists+spice-devel@lfdr.de>; Sat, 10 Aug 2019 08:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E206EF45;
	Sat, 10 Aug 2019 06:02:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5B46EF43
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0302FC05FBC0
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EBE9F5D6A0
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:58 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E385746F4A
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:58 +0000 (UTC)
Date: Sat, 10 Aug 2019 02:01:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
In-Reply-To: <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
 <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.16, 10.4.195.27]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jEKa1YIoBfwCK9gQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Sat, 10 Aug 2019 06:01:59 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZyB0
aGUgc2VyaWVzCj4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IEFzIHdlIGRvbid0IHVzZSBhbnkgdG9r
ZW4gdGhlcmUncyBubyByZWFzb24gdG8gbm90IHF1ZXVlIGRpcmVjdGx5Cj4gPiA+ID4gaW5zdGVh
ZAo+ID4gPiA+IG9mIHBhc3NpbmcgdGhyb3VnaCBSZWRDaGFyRGV2aWNlLgo+ID4gPiA+IFRoaXMg
d2lsbCBtYWtlIGVhc2llciB0byBsaW1pdCB0aGUgcXVldWUgd2hpY2ggY3VycmVudGx5IGlzIHVu
bGltaXRlZC4KPiA+ID4gPiAKPiA+ID4gPiBSZWRDaGFyRGV2aWNlIGZsb3cgY29udHJvbCBoYXMg
c29tZSBwcm9ibGVtczoKPiA+ID4gPiAtIGl0J3MgcmVhbGx5IGRlc2lnbmVkIHdpdGggVkRJIGlu
IG1pbmQuIFRoaXMgZm9yIFNwaWNlVk1DIHdvdWxkIGNhdXNlCj4gPiA+ID4gICBjb2RlIGltcGxl
bWVudGF0aW9uIHRvIGJlIGNvbmZ1c2luZyBoYXZpbmcgdG8gc2F0aXNmeSB0aGUgYWdlbnQgdG9r
ZW4KPiA+ID4gPiAgIGhhbmRsaW5nOwo+ID4gPiA+IC0gaXQncyB1c2luZyBpdGVtcyBhcyB1bml0
IG5vdCBhbGxvd2luZyBjb3VudGluZyBieXRlczsKPiA+ID4gPiAtIGl0IGR1cGxpY2F0ZXMgc29t
ZSBxdWV1ZSBtYW5hZ2VtZW50IGJldHdlZW4gUmVkQ2hhbm5lbENsaWVudDsKPiA+ID4gPiAtIGl0
J3MgYnJva2VuIChzZWUgY29tbWVudHMgaW4gY2hhci1kZXZpY2UuaCk7Cj4gPiA+ID4gLSBpdCBm
b3JjZXMgImNsaWVudHMiIHRvIGJlaGF2ZSBpbiBzb21lIHdheSBub3QgYWx0ZXJpbmcgZm9yIGlu
c3RhbmNlCj4gPiA+ID4gdGhlCj4gPiA+ID4gICBxdWV1ZWQgaXRlbXMgKHdoaWNoIGlzIHZlcnkg
dXNlZnVsIGlmIGl0ZW1zIGNhbiBiZSBjb2xsYXBzZWQKPiA+ID4gPiAgIHRvZ2V0aGVyKTsKPiA+
ID4gPiAtIGl0IHJlcGxpY2F0ZXMgdGhlIHRva2VuIGhhbmRsaW5nIG9uIHRoZSBkZXZpY2UgcXVl
dWUgdG9vLiBUaGlzIGNvdWxkCj4gPiA+ID4gICBzZWVtcyByaWdodCBidXQgaXMgbm90IHRoYXQg
aWYgeW91IGhhdmUgYSBuZXR3b3JrIGNhcmQgZ29pbmcgQCAxCj4gPiA+ID4gICBHQml0L3MKPiA+
ID4gPiAgIHlvdSBhcmUgYWJsZSB0byB1cGxvYWQgbW9yZSB0aGFuIDEgR2JpdC9zIGp1c3QgdXNp
bmcgbXVsdGlwbGUKPiA+ID4gPiAgIGNvbm5lY3Rpb25zLiBUaGUga2VybmVsIHdpbGwgdXNlIGEg
c2luZ2xlIHF1ZXVlIGZvciB0aGUgbmV0d29yawo+ID4gPiA+ICAgaW50ZXJmYWNlCj4gPiA+ID4g
ICBsaW1pdGluZyBhbmQgc2hhcmluZyBkZSBmYWN0byB0aGUgdmFyaW91cyBidWZmZXJzIGJldHdl
ZW4gdGhlCj4gPiA+ID4gICBtdWx0aXBsZQo+ID4gPiA+ICAgY29ubmVjdGlvbnMuCj4gPiA+ID4g
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ID4gPiAtIG1vcmUgY29t
bWl0IG1lc3NhZ2UgY29tbWVudHMKPiA+ID4gPiAtLS0KPiA+ID4gPiAgc2VydmVyL3NwaWNldm1j
LmMgfCAxNSArKysrKy0tLS0tLS0tLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci9zcGljZXZtYy5jIGIvc2VydmVyL3NwaWNldm1jLmMKPiA+ID4gPiBpbmRleCA4NGJiYjcz
YzIuLjhjNDE1NzNhZSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4g
PiA+ICsrKyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+ID4gQEAgLTM2MCwyOSArMzYwLDI0IEBA
IHN0YXRpYyBSZWRQaXBlSXRlbQo+ID4gPiA+ICpzcGljZXZtY19jaGFyZGV2X3JlYWRfbXNnX2Zy
b21fZGV2KFJlZENoYXJEZXZpY2UgKnNlbGYsCj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgICAgIG1z
Z19pdGVtX2NvbXByZXNzZWQgPSB0cnlfY29tcHJlc3NfbHo0KGNoYW5uZWwsIG4sIG1zZ19pdGVt
KTsKPiA+ID4gPiAgICAgICAgICBpZiAobXNnX2l0ZW1fY29tcHJlc3NlZCAhPSBOVUxMKSB7Cj4g
PiA+ID4gLSAgICAgICAgICAgIHJldHVybiAmbXNnX2l0ZW1fY29tcHJlc3NlZC0+YmFzZTsKPiA+
ID4gPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hhbm5l
bC0+cmNjLAo+ID4gPiA+ICZtc2dfaXRlbV9jb21wcmVzc2VkLT5iYXNlKTsKPiA+ID4gPiArICAg
ICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ID4gICAgICAgICAgfQo+ID4gPiA+ICAjZW5kaWYK
PiA+ID4gPiAgICAgICAgICBzdGF0X2luY19jb3VudGVyKGNoYW5uZWwtPm91dF9kYXRhLCBuKTsK
PiA+ID4gPiAgICAgICAgICBtc2dfaXRlbS0+dW5jb21wcmVzc2VkX2RhdGFfc2l6ZSA9IG47Cj4g
PiA+ID4gICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91c2VkID0gbjsKPiA+ID4gPiAtICAgICAgICBy
ZXR1cm4gJm1zZ19pdGVtLT5iYXNlOwo+ID4gPiA+IC0gICAgfSBlbHNlIHsKPiA+ID4gPiAtICAg
ICAgICBjaGFubmVsLT5waXBlX2l0ZW0gPSBtc2dfaXRlbTsKPiA+ID4gPiArICAgICAgICByZWRf
Y2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsCj4gPiA+ID4gJm1zZ19p
dGVtLT5iYXNlKTsKPiA+ID4gPiAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiAgICAgIH0K
PiA+ID4gPiArICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1zZ19pdGVtOwo+ID4gPiA+ICsgICAg
cmV0dXJuIE5VTEw7Cj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4gIHN0YXRpYyB2b2lkIHNw
aWNldm1jX2NoYXJkZXZfc2VuZF9tc2dfdG9fY2xpZW50KFJlZENoYXJEZXZpY2UgKnNlbGYsCj4g
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJl
ZFBpcGVJdGVtICptc2csCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50KQo+ID4gPiA+ICB7Cj4gPiA+ID4gLSAg
ICBSZWRDaGFyRGV2aWNlU3BpY2VWbWMgKnZtYyA9IFJFRF9DSEFSX0RFVklDRV9TUElDRVZNQyhz
ZWxmKTsKPiA+ID4gPiAtICAgIFJlZFZtY0NoYW5uZWwgKmNoYW5uZWwgPSBSRURfVk1DX0NIQU5O
RUwodm1jLT5jaGFubmVsKTsKPiA+ID4gPiAtCj4gPiA+ID4gLSAgICBzcGljZV9hc3NlcnQocmVk
X2NoYW5uZWxfY2xpZW50X2dldF9jbGllbnQoY2hhbm5lbC0+cmNjKSA9PQo+ID4gPiA+IGNsaWVu
dCk7Cj4gPiA+ID4gLSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwo+ID4gPiA+IC0gICAgcmVk
X2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLCBtc2cpOwo+ID4gPiA+
ICB9Cj4gPiA+ID4gIAo+ID4gPiA+ICBzdGF0aWMgdm9pZCByZWRfcG9ydF9pbml0X2l0ZW1fZnJl
ZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJhc2UpCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
