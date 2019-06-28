Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DBA59558
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D5CC6E896;
	Fri, 28 Jun 2019 07:48:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749356E896
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21AC1309CC01
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1773360BE0
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F96454D3D
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:36 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:48:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1747251888.25083543.1561708116006.JavaMail.zimbra@redhat.com>
In-Reply-To: <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
 <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: red-channel-client: Reduce indentation of some code
Thread-Index: E8S78wCjOS263hjwE4dw7jfqC2HXpoU4bjV9
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 28 Jun 2019 07:48:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 12/13] red-channel-client:
 Reduce indentation of some code
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IEp1c3QgYSBzdHlsZSBjaGFuZ2UsIHJldHVybiBl
YXJsaWVyIHRvIGF2b2lkIHNvbWUgaW5kZW50YXRpb24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgc2VydmVy
L3JlZC1jaGFubmVsLWNsaWVudC5jIHwgMzcgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyBi
L3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwo+ID4gaW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3
OGIgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ICsrKyBi
L3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwo+ID4gQEAgLTY5MCwyNSArNjkwLDIxIEBAIHN0
YXRpYyB2b2lkIHJlZF9jaGFubmVsX2NsaWVudF9waW5nX3RpbWVyKHZvaWQKPiA+ICpvcGFxdWUp
Cj4gPiAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9jYW5jZWxfcGluZ190aW1lcihyY2MpOwo+ID4g
IAo+ID4gICNpZmRlZiBIQVZFX0xJTlVYX1NPQ0tJT1NfSCAvKiBTSU9DT1VUUSBpcyBhIExpbnV4
IG9ubHkgaW9jdGwgb24gc29ja2V0cy4KPiA+ICAqLwo+ID4gLSAgICB7Cj4gPiAtICAgICAgICBp
bnQgc29fdW5zZW50X3NpemUgPSAwOwo+ID4gKyAgICBpbnQgc29fdW5zZW50X3NpemUgPSAwOwo+
ID4gIAo+ID4gLSAgICAgICAgLyogcmV0cmlldmluZyB0aGUgb2NjdXBpZWQgc2l6ZSBvZiB0aGUg
c29ja2V0J3MgdGNwIHNuZCBidWZmZXIKPiA+ICh1bmFja2VkICsgdW5zZW50KSAqLwo+ID4gLSAg
ICAgICAgaWYgKGlvY3RsKHJjYy0+cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLCAmc29f
dW5zZW50X3NpemUpID09Cj4gPiAtMSkgewo+ID4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX3dh
cm5pbmcocmVkX2NoYW5uZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksCj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiaW9jdGwoU0lPQ09VVFEpIGZhaWxlZCwgJXMiLAo+ID4g
c3RyZXJyb3IoZXJybm8pKTsKPiA+IC0gICAgICAgIH0KPiA+IC0gICAgICAgIGlmIChzb191bnNl
bnRfc2l6ZSA+IDApIHsKPiA+IC0gICAgICAgICAgICAvKiB0Y3Agc25kIGJ1ZmZlciBpcyBzdGls
bCBvY2N1cGllZC4gcmVzY2hlZHVsaW5nIHBpbmcgKi8KPiA+IC0gICAgICAgICAgICByZWRfY2hh
bm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1lcihyY2MsCj4gPiBQSU5HX1RFU1RfSURMRV9ORVRf
VElNRU9VVF9NUyk7Cj4gPiAtICAgICAgICB9IGVsc2Ugewo+ID4gLSAgICAgICAgICAgIHJlZF9j
aGFubmVsX2NsaWVudF9wdXNoX3BpbmcocmNjKTsKPiA+IC0gICAgICAgIH0KPiA+ICsgICAgLyog
cmV0cmlldmluZyB0aGUgb2NjdXBpZWQgc2l6ZSBvZiB0aGUgc29ja2V0J3MgdGNwIHNuZCBidWZm
ZXIKPiA+ICh1bmFja2VkCj4gPiArIHVuc2VudCkgKi8KPiA+ICsgICAgaWYgKGlvY3RsKHJjYy0+
cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLCAmc29fdW5zZW50X3NpemUpID09IC0xKQo+
ID4gewo+ID4gKyAgICAgICAgcmVkX2NoYW5uZWxfd2FybmluZyhyZWRfY2hhbm5lbF9jbGllbnRf
Z2V0X2NoYW5uZWwocmNjKSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgImlvY3Rs
KFNJT0NPVVRRKSBmYWlsZWQsICVzIiwKPiA+IHN0cmVycm9yKGVycm5vKSk7Cj4gPiAgICAgIH0K
PiA+IC0jZWxzZSAvKiBpZmRlZiBIQVZFX0xJTlVYX1NPQ0tJT1NfSCAqLwo+ID4gKyAgICBpZiAo
c29fdW5zZW50X3NpemUgPiAwKSB7Cj4gPiArICAgICAgICAvKiB0Y3Agc25kIGJ1ZmZlciBpcyBz
dGlsbCBvY2N1cGllZC4gcmVzY2hlZHVsaW5nIHBpbmcgKi8KPiA+ICsgICAgICAgIHJlZF9jaGFu
bmVsX2NsaWVudF9zdGFydF9waW5nX3RpbWVyKHJjYywKPiA+IFBJTkdfVEVTVF9JRExFX05FVF9U
SU1FT1VUX01TKTsKPiA+ICsgICAgICAgIHJldHVybjsKPiA+ICsgICAgfQo+ID4gKyNlbmRpZiAv
KiBpZmRlZiBIQVZFX0xJTlVYX1NPQ0tJT1NfSCAqLwo+ID4gICAgICAvKiBNb3JlIHBvcnRhYmxl
IGFsdGVybmF0aXZlIGNvZGUgcGF0aCAobGVzcyBhY2N1cmF0ZSBidXQgYXZvaWRzIGJvZ3VzCj4g
PiAgICAgIGlvY3RscykqLwo+ID4gICAgICByZWRfY2hhbm5lbF9jbGllbnRfcHVzaF9waW5nKHJj
Yyk7Cj4gPiAtI2VuZGlmIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IICovCj4gPiAgfQo+
ID4gIAo+ID4gIHN0YXRpYyBpbmxpbmUgaW50IHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5nX2Zv
cl9hY2soUmVkQ2hhbm5lbENsaWVudAo+ID4gICpyY2MpCj4gPiBAQCAtMTE0MCwxNiArMTEzNiwx
MyBAQCBzdGF0aWMgaW50IHJlZF9wZWVyX3JlY2VpdmUoUmVkU3RyZWFtICpzdHJlYW0sCj4gPiB1
aW50OF90ICpidWYsIHVpbnQzMl90IHNpemUpCj4gPiAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ID4gICAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gPT0gRUlOVFIpIHsKPiA+ICAgICAgICAg
ICAgICAgICAgY29udGludWU7Cj4gPiAtICAgICAgICAgICAgfSBlbHNlIGlmIChlcnJubyA9PSBF
UElQRSkgewo+ID4gLSAgICAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiAtICAgICAgICAgICAg
fSBlbHNlIHsKPiA+ICsgICAgICAgICAgICB9IGVsc2UgaWYgKGVycm5vICE9IEVQSVBFKSB7Cj4g
PiAgICAgICAgICAgICAgICAgIGdfd2FybmluZygiJXMiLCBzdHJlcnJvcihlcnJubykpOwo+ID4g
LSAgICAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiAgICAgICAgICAgICAgfQo+ID4gLSAgICAg
ICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICBzaXplIC09IG5vdzsKPiA+IC0gICAgICAgICAg
ICBwb3MgKz0gbm93Owo+ID4gKyAgICAgICAgICAgIHJldHVybiAtMTsKPiA+ICAgICAgICAgIH0K
PiA+ICsgICAgICAgIHNpemUgLT0gbm93Owo+ID4gKyAgICAgICAgcG9zICs9IG5vdzsKPiA+ICAg
ICAgfQo+ID4gICAgICByZXR1cm4gcG9zIC0gYnVmOwo+ID4gIH0KPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
