Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0ED61B44
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18D989BE8;
	Mon,  8 Jul 2019 07:29:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5213289BE8
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F394481121
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC26BA7C
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E23FF206D1
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:34 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:29:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1782462215.26605982.1562570974873.JavaMail.zimbra@redhat.com>
In-Reply-To: <1747251888.25083543.1561708116006.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
 <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
 <1747251888.25083543.1561708116006.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: red-channel-client: Reduce indentation of some code
Thread-Index: E8S78wCjOS263hjwE4dw7jfqC2HXpoU4bjV9ninJB3g=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 08 Jul 2019 07:29:35 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gSnVzdCBh
IHN0eWxlIGNoYW5nZSwgcmV0dXJuIGVhcmxpZXIgdG8gYXZvaWQgc29tZSBpbmRlbnRhdGlvbi4K
PiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyB8IDM3
ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYg
LS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwt
Y2xpZW50LmMKPiA+ID4gaW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3OGIgMTAwNjQ0Cj4gPiA+IC0t
LSBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwo+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLWNo
YW5uZWwtY2xpZW50LmMKPiA+ID4gQEAgLTY5MCwyNSArNjkwLDIxIEBAIHN0YXRpYyB2b2lkIHJl
ZF9jaGFubmVsX2NsaWVudF9waW5nX3RpbWVyKHZvaWQKPiA+ID4gKm9wYXF1ZSkKPiA+ID4gICAg
ICByZWRfY2hhbm5lbF9jbGllbnRfY2FuY2VsX3BpbmdfdGltZXIocmNjKTsKPiA+ID4gIAo+ID4g
PiAgI2lmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IIC8qIFNJT0NPVVRRIGlzIGEgTGludXggb25s
eSBpb2N0bCBvbgo+ID4gPiAgc29ja2V0cy4KPiA+ID4gICovCj4gPiA+IC0gICAgewo+ID4gPiAt
ICAgICAgICBpbnQgc29fdW5zZW50X3NpemUgPSAwOwo+ID4gPiArICAgIGludCBzb191bnNlbnRf
c2l6ZSA9IDA7Cj4gPiA+ICAKPiA+ID4gLSAgICAgICAgLyogcmV0cmlldmluZyB0aGUgb2NjdXBp
ZWQgc2l6ZSBvZiB0aGUgc29ja2V0J3MgdGNwIHNuZCBidWZmZXIKPiA+ID4gKHVuYWNrZWQgKyB1
bnNlbnQpICovCj4gPiA+IC0gICAgICAgIGlmIChpb2N0bChyY2MtPnByaXYtPnN0cmVhbS0+c29j
a2V0LCBTSU9DT1VUUSwgJnNvX3Vuc2VudF9zaXplKQo+ID4gPiA9PQo+ID4gPiAtMSkgewo+ID4g
PiAtICAgICAgICAgICAgcmVkX2NoYW5uZWxfd2FybmluZyhyZWRfY2hhbm5lbF9jbGllbnRfZ2V0
X2NoYW5uZWwocmNjKSwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImlv
Y3RsKFNJT0NPVVRRKSBmYWlsZWQsICVzIiwKPiA+ID4gc3RyZXJyb3IoZXJybm8pKTsKPiA+ID4g
LSAgICAgICAgfQo+ID4gPiAtICAgICAgICBpZiAoc29fdW5zZW50X3NpemUgPiAwKSB7Cj4gPiA+
IC0gICAgICAgICAgICAvKiB0Y3Agc25kIGJ1ZmZlciBpcyBzdGlsbCBvY2N1cGllZC4gcmVzY2hl
ZHVsaW5nIHBpbmcgKi8KPiA+ID4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9zdGFy
dF9waW5nX3RpbWVyKHJjYywKPiA+ID4gUElOR19URVNUX0lETEVfTkVUX1RJTUVPVVRfTVMpOwo+
ID4gPiAtICAgICAgICB9IGVsc2Ugewo+ID4gPiAtICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xp
ZW50X3B1c2hfcGluZyhyY2MpOwo+ID4gPiAtICAgICAgICB9Cj4gPiA+ICsgICAgLyogcmV0cmll
dmluZyB0aGUgb2NjdXBpZWQgc2l6ZSBvZiB0aGUgc29ja2V0J3MgdGNwIHNuZCBidWZmZXIKPiA+
ID4gKHVuYWNrZWQKPiA+ID4gKyB1bnNlbnQpICovCj4gPiA+ICsgICAgaWYgKGlvY3RsKHJjYy0+
cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLCAmc29fdW5zZW50X3NpemUpID09Cj4gPiA+
IC0xKQo+ID4gPiB7Cj4gPiA+ICsgICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcocmVkX2NoYW5u
ZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImlvY3RsKFNJT0NPVVRRKSBmYWlsZWQsICVzIiwKPiA+ID4gc3RyZXJyb3IoZXJybm8p
KTsKPiA+ID4gICAgICB9Cj4gPiA+IC0jZWxzZSAvKiBpZmRlZiBIQVZFX0xJTlVYX1NPQ0tJT1Nf
SCAqLwo+ID4gPiArICAgIGlmIChzb191bnNlbnRfc2l6ZSA+IDApIHsKPiA+ID4gKyAgICAgICAg
LyogdGNwIHNuZCBidWZmZXIgaXMgc3RpbGwgb2NjdXBpZWQuIHJlc2NoZWR1bGluZyBwaW5nICov
Cj4gPiA+ICsgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9zdGFydF9waW5nX3RpbWVyKHJjYywK
PiA+ID4gUElOR19URVNUX0lETEVfTkVUX1RJTUVPVVRfTVMpOwo+ID4gPiArICAgICAgICByZXR1
cm47Cj4gPiA+ICsgICAgfQo+ID4gPiArI2VuZGlmIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lP
U19IICovCj4gPiA+ICAgICAgLyogTW9yZSBwb3J0YWJsZSBhbHRlcm5hdGl2ZSBjb2RlIHBhdGgg
KGxlc3MgYWNjdXJhdGUgYnV0IGF2b2lkcwo+ID4gPiAgICAgIGJvZ3VzCj4gPiA+ICAgICAgaW9j
dGxzKSovCj4gPiA+ICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3B1c2hfcGluZyhyY2MpOwo+ID4g
PiAtI2VuZGlmIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IICovCj4gPiA+ICB9Cj4gPiA+
ICAKPiA+ID4gIHN0YXRpYyBpbmxpbmUgaW50IHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5nX2Zv
cl9hY2soUmVkQ2hhbm5lbENsaWVudAo+ID4gPiAgKnJjYykKPiA+ID4gQEAgLTExNDAsMTYgKzEx
MzYsMTMgQEAgc3RhdGljIGludCByZWRfcGVlcl9yZWNlaXZlKFJlZFN0cmVhbSAqc3RyZWFtLAo+
ID4gPiB1aW50OF90ICpidWYsIHVpbnQzMl90IHNpemUpCj4gPiA+ICAgICAgICAgICAgICAgICAg
YnJlYWs7Cj4gPiA+ICAgICAgICAgICAgICB9IGVsc2UgaWYgKGVycm5vID09IEVJTlRSKSB7Cj4g
PiA+ICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+IC0gICAgICAgICAgICB9IGVsc2Ug
aWYgKGVycm5vID09IEVQSVBFKSB7Cj4gPiA+IC0gICAgICAgICAgICAgICAgcmV0dXJuIC0xOwo+
ID4gPiAtICAgICAgICAgICAgfSBlbHNlIHsKPiA+ID4gKyAgICAgICAgICAgIH0gZWxzZSBpZiAo
ZXJybm8gIT0gRVBJUEUpIHsKPiA+ID4gICAgICAgICAgICAgICAgICBnX3dhcm5pbmcoIiVzIiwg
c3RyZXJyb3IoZXJybm8pKTsKPiA+ID4gLSAgICAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiA+
ICAgICAgICAgICAgICB9Cj4gPiA+IC0gICAgICAgIH0gZWxzZSB7Cj4gPiA+IC0gICAgICAgICAg
ICBzaXplIC09IG5vdzsKPiA+ID4gLSAgICAgICAgICAgIHBvcyArPSBub3c7Cj4gPiA+ICsgICAg
ICAgICAgICByZXR1cm4gLTE7Cj4gPiA+ICAgICAgICAgIH0KPiA+ID4gKyAgICAgICAgc2l6ZSAt
PSBub3c7Cj4gPiA+ICsgICAgICAgIHBvcyArPSBub3c7Cj4gPiA+ICAgICAgfQo+ID4gPiAgICAg
IHJldHVybiBwb3MgLSBidWY7Cj4gPiA+ICB9Cj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
PiA+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
