Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2C57632D
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0856ED0E;
	Fri, 26 Jul 2019 10:08:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C7E6ED0E
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 604BB7F7DE
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5875151
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 508EE18089C8
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:44 +0000 (UTC)
Date: Fri, 26 Jul 2019 06:08:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1733500423.3099698.1564135724279.JavaMail.zimbra@redhat.com>
In-Reply-To: <449504692.688100.1563435626034.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
 <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
 <1747251888.25083543.1561708116006.JavaMail.zimbra@redhat.com>
 <1782462215.26605982.1562570974873.JavaMail.zimbra@redhat.com>
 <449504692.688100.1563435626034.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.26]
Thread-Topic: red-channel-client: Reduce indentation of some code
Thread-Index: E8S78wCjOS263hjwE4dw7jfqC2HXpoU4bjV9ninJB3it2LSDse5T/mJF
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 26 Jul 2019 10:08:44 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IEp1c3QgYSBzdHlsZSBjaGFuZ2UsIHJldHVybiBlYXJsaWVyIHRvIGF2b2lkIHNvbWUgaW5kZW50
YXRpb24uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgc2VydmVyL3Jl
ZC1jaGFubmVsLWNsaWVudC5jIHwgMzcKPiA+ID4gPiA+ICArKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDIyIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiA+ID4gPiBiL3NlcnZlci9yZWQtY2hhbm5lbC1j
bGllbnQuYwo+ID4gPiA+ID4gaW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3OGIgMTAwNjQ0Cj4gPiA+
ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4gPiA+ICsrKyBiL3Nl
cnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwo+ID4gPiA+ID4gQEAgLTY5MCwyNSArNjkwLDIxIEBA
IHN0YXRpYyB2b2lkIHJlZF9jaGFubmVsX2NsaWVudF9waW5nX3RpbWVyKHZvaWQKPiA+ID4gPiA+
ICpvcGFxdWUpCj4gPiA+ID4gPiAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9jYW5jZWxfcGluZ190
aW1lcihyY2MpOwo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gICNpZmRlZiBIQVZFX0xJTlVYX1NPQ0tJ
T1NfSCAvKiBTSU9DT1VUUSBpcyBhIExpbnV4IG9ubHkgaW9jdGwgb24KPiA+ID4gPiA+ICBzb2Nr
ZXRzLgo+ID4gPiA+ID4gICovCj4gPiA+ID4gPiAtICAgIHsKPiA+ID4gPiA+IC0gICAgICAgIGlu
dCBzb191bnNlbnRfc2l6ZSA9IDA7Cj4gPiA+ID4gPiArICAgIGludCBzb191bnNlbnRfc2l6ZSA9
IDA7Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAtICAgICAgICAvKiByZXRyaWV2aW5nIHRoZSBvY2N1
cGllZCBzaXplIG9mIHRoZSBzb2NrZXQncyB0Y3Agc25kCj4gPiA+ID4gPiBidWZmZXIKPiA+ID4g
PiA+ICh1bmFja2VkICsgdW5zZW50KSAqLwo+ID4gPiA+ID4gLSAgICAgICAgaWYgKGlvY3RsKHJj
Yy0+cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLAo+ID4gPiA+ID4gJnNvX3Vuc2VudF9z
aXplKQo+ID4gPiA+ID4gPT0KPiA+ID4gPiA+IC0xKSB7Cj4gPiA+ID4gPiAtICAgICAgICAgICAg
cmVkX2NoYW5uZWxfd2FybmluZyhyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NoYW5uZWwocmNjKSwK
PiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJpb2N0bChTSU9DT1VU
USkgZmFpbGVkLCAlcyIsCj4gPiA+ID4gPiBzdHJlcnJvcihlcnJubykpOwo+ID4gPiA+ID4gLSAg
ICAgICAgfQo+ID4gPiA+ID4gLSAgICAgICAgaWYgKHNvX3Vuc2VudF9zaXplID4gMCkgewo+ID4g
PiA+ID4gLSAgICAgICAgICAgIC8qIHRjcCBzbmQgYnVmZmVyIGlzIHN0aWxsIG9jY3VwaWVkLiBy
ZXNjaGVkdWxpbmcgcGluZwo+ID4gPiA+ID4gKi8KPiA+ID4gPiA+IC0gICAgICAgICAgICByZWRf
Y2hhbm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1lcihyY2MsCj4gPiA+ID4gPiBQSU5HX1RFU1Rf
SURMRV9ORVRfVElNRU9VVF9NUyk7Cj4gPiA+ID4gPiAtICAgICAgICB9IGVsc2Ugewo+ID4gPiA+
ID4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9wdXNoX3BpbmcocmNjKTsKPiA+ID4g
PiA+IC0gICAgICAgIH0KPiA+ID4gPiA+ICsgICAgLyogcmV0cmlldmluZyB0aGUgb2NjdXBpZWQg
c2l6ZSBvZiB0aGUgc29ja2V0J3MgdGNwIHNuZCBidWZmZXIKPiA+ID4gPiA+ICh1bmFja2VkCj4g
PiA+ID4gPiArIHVuc2VudCkgKi8KPiA+ID4gPiA+ICsgICAgaWYgKGlvY3RsKHJjYy0+cHJpdi0+
c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLCAmc29fdW5zZW50X3NpemUpCj4gPiA+ID4gPiA9PQo+
ID4gPiA+ID4gLTEpCj4gPiA+ID4gPiB7Cj4gPiA+ID4gPiArICAgICAgICByZWRfY2hhbm5lbF93
YXJuaW5nKHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2hhbm5lbChyY2MpLAo+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiaW9jdGwoU0lPQ09VVFEpIGZhaWxlZCwgJXMiLAo+
ID4gPiA+ID4gc3RyZXJyb3IoZXJybm8pKTsKPiA+ID4gPiA+ICAgICAgfQo+ID4gPiA+ID4gLSNl
bHNlIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IICovCj4gPiA+ID4gPiArICAgIGlmIChz
b191bnNlbnRfc2l6ZSA+IDApIHsKPiA+ID4gPiA+ICsgICAgICAgIC8qIHRjcCBzbmQgYnVmZmVy
IGlzIHN0aWxsIG9jY3VwaWVkLiByZXNjaGVkdWxpbmcgcGluZyAqLwo+ID4gPiA+ID4gKyAgICAg
ICAgcmVkX2NoYW5uZWxfY2xpZW50X3N0YXJ0X3BpbmdfdGltZXIocmNjLAo+ID4gPiA+ID4gUElO
R19URVNUX0lETEVfTkVUX1RJTUVPVVRfTVMpOwo+ID4gPiA+ID4gKyAgICAgICAgcmV0dXJuOwo+
ID4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gPiArI2VuZGlmIC8qIGlmZGVmIEhBVkVfTElOVVhfU09D
S0lPU19IICovCj4gPiA+ID4gPiAgICAgIC8qIE1vcmUgcG9ydGFibGUgYWx0ZXJuYXRpdmUgY29k
ZSBwYXRoIChsZXNzIGFjY3VyYXRlIGJ1dCBhdm9pZHMKPiA+ID4gPiA+ICAgICAgYm9ndXMKPiA+
ID4gPiA+ICAgICAgaW9jdGxzKSovCj4gPiA+ID4gPiAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9w
dXNoX3BpbmcocmNjKTsKPiA+ID4gPiA+IC0jZW5kaWYgLyogaWZkZWYgSEFWRV9MSU5VWF9TT0NL
SU9TX0ggKi8KPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgc3RhdGljIGlubGlu
ZSBpbnQKPiA+ID4gPiA+ICByZWRfY2hhbm5lbF9jbGllbnRfd2FpdGluZ19mb3JfYWNrKFJlZENo
YW5uZWxDbGllbnQKPiA+ID4gPiA+ICAqcmNjKQo+ID4gPiA+ID4gQEAgLTExNDAsMTYgKzExMzYs
MTMgQEAgc3RhdGljIGludCByZWRfcGVlcl9yZWNlaXZlKFJlZFN0cmVhbQo+ID4gPiA+ID4gKnN0
cmVhbSwKPiA+ID4gPiA+IHVpbnQ4X3QgKmJ1ZiwgdWludDMyX3Qgc2l6ZSkKPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgfSBlbHNlIGlmIChl
cnJubyA9PSBFSU5UUikgewo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+
ID4gPiA+IC0gICAgICAgICAgICB9IGVsc2UgaWYgKGVycm5vID09IEVQSVBFKSB7Cj4gPiA+ID4g
PiAtICAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiA+ID4gPiA+IC0gICAgICAgICAgICB9IGVs
c2Ugewo+ID4gPiA+ID4gKyAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gIT0gRVBJUEUpIHsK
PiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgZ193YXJuaW5nKCIlcyIsIHN0cmVycm9yKGVycm5v
KSk7Cj4gPiA+ID4gPiAtICAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiA+ID4gPiA+ICAgICAg
ICAgICAgICB9Cj4gPiA+ID4gPiAtICAgICAgICB9IGVsc2Ugewo+ID4gPiA+ID4gLSAgICAgICAg
ICAgIHNpemUgLT0gbm93Owo+ID4gPiA+ID4gLSAgICAgICAgICAgIHBvcyArPSBub3c7Cj4gPiA+
ID4gPiArICAgICAgICAgICAgcmV0dXJuIC0xOwo+ID4gPiA+ID4gICAgICAgICAgfQo+ID4gPiA+
ID4gKyAgICAgICAgc2l6ZSAtPSBub3c7Cj4gPiA+ID4gPiArICAgICAgICBwb3MgKz0gbm93Owo+
ID4gPiA+ID4gICAgICB9Cj4gPiA+ID4gPiAgICAgIHJldHVybiBwb3MgLSBidWY7Cj4gPiA+ID4g
PiAgfQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
