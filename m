Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7906CA15
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BB516E332;
	Thu, 18 Jul 2019 07:40:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EFA6E32F
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2E51630BD1A7
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 244B45D71A
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B25F4EA30
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:26 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:40:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <449504692.688100.1563435626034.JavaMail.zimbra@redhat.com>
In-Reply-To: <1782462215.26605982.1562570974873.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
 <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
 <1747251888.25083543.1561708116006.JavaMail.zimbra@redhat.com>
 <1782462215.26605982.1562570974873.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: red-channel-client: Reduce indentation of some code
Thread-Index: E8S78wCjOS263hjwE4dw7jfqC2HXpoU4bjV9ninJB3it2LSDsQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 18 Jul 2019 07:40:26 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBKdXN0IGEgc3R5bGUgY2hhbmdlLCByZXR1cm4gZWFybGll
ciB0byBhdm9pZCBzb21lIGluZGVudGF0aW9uLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+IC0tLQo+ID4g
PiA+ICBzZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMgfCAzNyArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAyMiBkZWxldGlvbnMoLSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiA+
ID4gaW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3OGIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvc2VydmVy
L3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiA+ID4gKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLWNs
aWVudC5jCj4gPiA+ID4gQEAgLTY5MCwyNSArNjkwLDIxIEBAIHN0YXRpYyB2b2lkIHJlZF9jaGFu
bmVsX2NsaWVudF9waW5nX3RpbWVyKHZvaWQKPiA+ID4gPiAqb3BhcXVlKQo+ID4gPiA+ICAgICAg
cmVkX2NoYW5uZWxfY2xpZW50X2NhbmNlbF9waW5nX3RpbWVyKHJjYyk7Cj4gPiA+ID4gIAo+ID4g
PiA+ICAjaWZkZWYgSEFWRV9MSU5VWF9TT0NLSU9TX0ggLyogU0lPQ09VVFEgaXMgYSBMaW51eCBv
bmx5IGlvY3RsIG9uCj4gPiA+ID4gIHNvY2tldHMuCj4gPiA+ID4gICovCj4gPiA+ID4gLSAgICB7
Cj4gPiA+ID4gLSAgICAgICAgaW50IHNvX3Vuc2VudF9zaXplID0gMDsKPiA+ID4gPiArICAgIGlu
dCBzb191bnNlbnRfc2l6ZSA9IDA7Cj4gPiA+ID4gIAo+ID4gPiA+IC0gICAgICAgIC8qIHJldHJp
ZXZpbmcgdGhlIG9jY3VwaWVkIHNpemUgb2YgdGhlIHNvY2tldCdzIHRjcCBzbmQgYnVmZmVyCj4g
PiA+ID4gKHVuYWNrZWQgKyB1bnNlbnQpICovCj4gPiA+ID4gLSAgICAgICAgaWYgKGlvY3RsKHJj
Yy0+cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLAo+ID4gPiA+ICZzb191bnNlbnRfc2l6
ZSkKPiA+ID4gPiA9PQo+ID4gPiA+IC0xKSB7Cj4gPiA+ID4gLSAgICAgICAgICAgIHJlZF9jaGFu
bmVsX3dhcm5pbmcocmVkX2NoYW5uZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksCj4gPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImlvY3RsKFNJT0NPVVRRKSBmYWlsZWQs
ICVzIiwKPiA+ID4gPiBzdHJlcnJvcihlcnJubykpOwo+ID4gPiA+IC0gICAgICAgIH0KPiA+ID4g
PiAtICAgICAgICBpZiAoc29fdW5zZW50X3NpemUgPiAwKSB7Cj4gPiA+ID4gLSAgICAgICAgICAg
IC8qIHRjcCBzbmQgYnVmZmVyIGlzIHN0aWxsIG9jY3VwaWVkLiByZXNjaGVkdWxpbmcgcGluZyAq
Lwo+ID4gPiA+IC0gICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1l
cihyY2MsCj4gPiA+ID4gUElOR19URVNUX0lETEVfTkVUX1RJTUVPVVRfTVMpOwo+ID4gPiA+IC0g
ICAgICAgIH0gZWxzZSB7Cj4gPiA+ID4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9w
dXNoX3BpbmcocmNjKTsKPiA+ID4gPiAtICAgICAgICB9Cj4gPiA+ID4gKyAgICAvKiByZXRyaWV2
aW5nIHRoZSBvY2N1cGllZCBzaXplIG9mIHRoZSBzb2NrZXQncyB0Y3Agc25kIGJ1ZmZlcgo+ID4g
PiA+ICh1bmFja2VkCj4gPiA+ID4gKyB1bnNlbnQpICovCj4gPiA+ID4gKyAgICBpZiAoaW9jdGwo
cmNjLT5wcml2LT5zdHJlYW0tPnNvY2tldCwgU0lPQ09VVFEsICZzb191bnNlbnRfc2l6ZSkgPT0K
PiA+ID4gPiAtMSkKPiA+ID4gPiB7Cj4gPiA+ID4gKyAgICAgICAgcmVkX2NoYW5uZWxfd2Fybmlu
ZyhyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NoYW5uZWwocmNjKSwKPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJpb2N0bChTSU9DT1VUUSkgZmFpbGVkLCAlcyIsCj4gPiA+ID4g
c3RyZXJyb3IoZXJybm8pKTsKPiA+ID4gPiAgICAgIH0KPiA+ID4gPiAtI2Vsc2UgLyogaWZkZWYg
SEFWRV9MSU5VWF9TT0NLSU9TX0ggKi8KPiA+ID4gPiArICAgIGlmIChzb191bnNlbnRfc2l6ZSA+
IDApIHsKPiA+ID4gPiArICAgICAgICAvKiB0Y3Agc25kIGJ1ZmZlciBpcyBzdGlsbCBvY2N1cGll
ZC4gcmVzY2hlZHVsaW5nIHBpbmcgKi8KPiA+ID4gPiArICAgICAgICByZWRfY2hhbm5lbF9jbGll
bnRfc3RhcnRfcGluZ190aW1lcihyY2MsCj4gPiA+ID4gUElOR19URVNUX0lETEVfTkVUX1RJTUVP
VVRfTVMpOwo+ID4gPiA+ICsgICAgICAgIHJldHVybjsKPiA+ID4gPiArICAgIH0KPiA+ID4gPiAr
I2VuZGlmIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IICovCj4gPiA+ID4gICAgICAvKiBN
b3JlIHBvcnRhYmxlIGFsdGVybmF0aXZlIGNvZGUgcGF0aCAobGVzcyBhY2N1cmF0ZSBidXQgYXZv
aWRzCj4gPiA+ID4gICAgICBib2d1cwo+ID4gPiA+ICAgICAgaW9jdGxzKSovCj4gPiA+ID4gICAg
ICByZWRfY2hhbm5lbF9jbGllbnRfcHVzaF9waW5nKHJjYyk7Cj4gPiA+ID4gLSNlbmRpZiAvKiBp
ZmRlZiBIQVZFX0xJTlVYX1NPQ0tJT1NfSCAqLwo+ID4gPiA+ICB9Cj4gPiA+ID4gIAo+ID4gPiA+
ICBzdGF0aWMgaW5saW5lIGludCByZWRfY2hhbm5lbF9jbGllbnRfd2FpdGluZ19mb3JfYWNrKFJl
ZENoYW5uZWxDbGllbnQKPiA+ID4gPiAgKnJjYykKPiA+ID4gPiBAQCAtMTE0MCwxNiArMTEzNiwx
MyBAQCBzdGF0aWMgaW50IHJlZF9wZWVyX3JlY2VpdmUoUmVkU3RyZWFtICpzdHJlYW0sCj4gPiA+
ID4gdWludDhfdCAqYnVmLCB1aW50MzJfdCBzaXplKQo+ID4gPiA+ICAgICAgICAgICAgICAgICAg
YnJlYWs7Cj4gPiA+ID4gICAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gPT0gRUlOVFIpIHsK
PiA+ID4gPiAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gPiA+IC0gICAgICAgICAgICB9
IGVsc2UgaWYgKGVycm5vID09IEVQSVBFKSB7Cj4gPiA+ID4gLSAgICAgICAgICAgICAgICByZXR1
cm4gLTE7Cj4gPiA+ID4gLSAgICAgICAgICAgIH0gZWxzZSB7Cj4gPiA+ID4gKyAgICAgICAgICAg
IH0gZWxzZSBpZiAoZXJybm8gIT0gRVBJUEUpIHsKPiA+ID4gPiAgICAgICAgICAgICAgICAgIGdf
d2FybmluZygiJXMiLCBzdHJlcnJvcihlcnJubykpOwo+ID4gPiA+IC0gICAgICAgICAgICAgICAg
cmV0dXJuIC0xOwo+ID4gPiA+ICAgICAgICAgICAgICB9Cj4gPiA+ID4gLSAgICAgICAgfSBlbHNl
IHsKPiA+ID4gPiAtICAgICAgICAgICAgc2l6ZSAtPSBub3c7Cj4gPiA+ID4gLSAgICAgICAgICAg
IHBvcyArPSBub3c7Cj4gPiA+ID4gKyAgICAgICAgICAgIHJldHVybiAtMTsKPiA+ID4gPiAgICAg
ICAgICB9Cj4gPiA+ID4gKyAgICAgICAgc2l6ZSAtPSBub3c7Cj4gPiA+ID4gKyAgICAgICAgcG9z
ICs9IG5vdzsKPiA+ID4gPiAgICAgIH0KPiA+ID4gPiAgICAgIHJldHVybiBwb3MgLSBidWY7Cj4g
PiA+ID4gIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
