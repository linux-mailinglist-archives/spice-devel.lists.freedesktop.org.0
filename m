Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBE44E147
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3BC6E82D;
	Fri, 21 Jun 2019 07:34:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9EE6E82D
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 10711308218D
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 05F9F5D772
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:54 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF6E5206D1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:53 +0000 (UTC)
Date: Fri, 21 Jun 2019 03:34:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <494269402.23872972.1561102493927.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-12-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.2]
Thread-Topic: red-channel-client: Reduce indentation of some code
Thread-Index: E8S78wCjOS263hjwE4dw7jfqC2HXpg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 21 Jun 2019 07:34:54 +0000 (UTC)
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

cGluZwoKPiAKPiBKdXN0IGEgc3R5bGUgY2hhbmdlLCByZXR1cm4gZWFybGllciB0byBhdm9pZCBz
b21lIGluZGVudGF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMgfCAz
NyArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4g
aW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3OGIgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3JlZC1jaGFu
bmVsLWNsaWVudC5jCj4gKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gQEAgLTY5
MCwyNSArNjkwLDIxIEBAIHN0YXRpYyB2b2lkIHJlZF9jaGFubmVsX2NsaWVudF9waW5nX3RpbWVy
KHZvaWQgKm9wYXF1ZSkKPiAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9jYW5jZWxfcGluZ190aW1l
cihyY2MpOwo+ICAKPiAgI2lmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IIC8qIFNJT0NPVVRRIGlz
IGEgTGludXggb25seSBpb2N0bCBvbiBzb2NrZXRzLiAqLwo+IC0gICAgewo+IC0gICAgICAgIGlu
dCBzb191bnNlbnRfc2l6ZSA9IDA7Cj4gKyAgICBpbnQgc29fdW5zZW50X3NpemUgPSAwOwo+ICAK
PiAtICAgICAgICAvKiByZXRyaWV2aW5nIHRoZSBvY2N1cGllZCBzaXplIG9mIHRoZSBzb2NrZXQn
cyB0Y3Agc25kIGJ1ZmZlcgo+ICh1bmFja2VkICsgdW5zZW50KSAqLwo+IC0gICAgICAgIGlmIChp
b2N0bChyY2MtPnByaXYtPnN0cmVhbS0+c29ja2V0LCBTSU9DT1VUUSwgJnNvX3Vuc2VudF9zaXpl
KSA9PQo+IC0xKSB7Cj4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcocmVkX2NoYW5u
ZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImlvY3RsKFNJT0NPVVRRKSBmYWlsZWQsICVzIiwKPiBzdHJlcnJvcihlcnJubykpOwo+
IC0gICAgICAgIH0KPiAtICAgICAgICBpZiAoc29fdW5zZW50X3NpemUgPiAwKSB7Cj4gLSAgICAg
ICAgICAgIC8qIHRjcCBzbmQgYnVmZmVyIGlzIHN0aWxsIG9jY3VwaWVkLiByZXNjaGVkdWxpbmcg
cGluZyAqLwo+IC0gICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1l
cihyY2MsCj4gUElOR19URVNUX0lETEVfTkVUX1RJTUVPVVRfTVMpOwo+IC0gICAgICAgIH0gZWxz
ZSB7Cj4gLSAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9wdXNoX3BpbmcocmNjKTsKPiAt
ICAgICAgICB9Cj4gKyAgICAvKiByZXRyaWV2aW5nIHRoZSBvY2N1cGllZCBzaXplIG9mIHRoZSBz
b2NrZXQncyB0Y3Agc25kIGJ1ZmZlciAodW5hY2tlZAo+ICsgdW5zZW50KSAqLwo+ICsgICAgaWYg
KGlvY3RsKHJjYy0+cHJpdi0+c3RyZWFtLT5zb2NrZXQsIFNJT0NPVVRRLCAmc29fdW5zZW50X3Np
emUpID09IC0xKSB7Cj4gKyAgICAgICAgcmVkX2NoYW5uZWxfd2FybmluZyhyZWRfY2hhbm5lbF9j
bGllbnRfZ2V0X2NoYW5uZWwocmNjKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJp
b2N0bChTSU9DT1VUUSkgZmFpbGVkLCAlcyIsIHN0cmVycm9yKGVycm5vKSk7Cj4gICAgICB9Cj4g
LSNlbHNlIC8qIGlmZGVmIEhBVkVfTElOVVhfU09DS0lPU19IICovCj4gKyAgICBpZiAoc29fdW5z
ZW50X3NpemUgPiAwKSB7Cj4gKyAgICAgICAgLyogdGNwIHNuZCBidWZmZXIgaXMgc3RpbGwgb2Nj
dXBpZWQuIHJlc2NoZWR1bGluZyBwaW5nICovCj4gKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50
X3N0YXJ0X3BpbmdfdGltZXIocmNjLAo+IFBJTkdfVEVTVF9JRExFX05FVF9USU1FT1VUX01TKTsK
PiArICAgICAgICByZXR1cm47Cj4gKyAgICB9Cj4gKyNlbmRpZiAvKiBpZmRlZiBIQVZFX0xJTlVY
X1NPQ0tJT1NfSCAqLwo+ICAgICAgLyogTW9yZSBwb3J0YWJsZSBhbHRlcm5hdGl2ZSBjb2RlIHBh
dGggKGxlc3MgYWNjdXJhdGUgYnV0IGF2b2lkcyBib2d1cwo+ICAgICAgaW9jdGxzKSovCj4gICAg
ICByZWRfY2hhbm5lbF9jbGllbnRfcHVzaF9waW5nKHJjYyk7Cj4gLSNlbmRpZiAvKiBpZmRlZiBI
QVZFX0xJTlVYX1NPQ0tJT1NfSCAqLwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW5saW5lIGludCByZWRf
Y2hhbm5lbF9jbGllbnRfd2FpdGluZ19mb3JfYWNrKFJlZENoYW5uZWxDbGllbnQgKnJjYykKPiBA
QCAtMTE0MCwxNiArMTEzNiwxMyBAQCBzdGF0aWMgaW50IHJlZF9wZWVyX3JlY2VpdmUoUmVkU3Ry
ZWFtICpzdHJlYW0sCj4gdWludDhfdCAqYnVmLCB1aW50MzJfdCBzaXplKQo+ICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gICAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gPT0gRUlOVFIpIHsK
PiAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+IC0gICAgICAgICAgICB9IGVsc2UgaWYgKGVy
cm5vID09IEVQSVBFKSB7Cj4gLSAgICAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gLSAgICAgICAg
ICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gIT0gRVBJUEUpIHsK
PiAgICAgICAgICAgICAgICAgIGdfd2FybmluZygiJXMiLCBzdHJlcnJvcihlcnJubykpOwo+IC0g
ICAgICAgICAgICAgICAgcmV0dXJuIC0xOwo+ICAgICAgICAgICAgICB9Cj4gLSAgICAgICAgfSBl
bHNlIHsKPiAtICAgICAgICAgICAgc2l6ZSAtPSBub3c7Cj4gLSAgICAgICAgICAgIHBvcyArPSBu
b3c7Cj4gKyAgICAgICAgICAgIHJldHVybiAtMTsKPiAgICAgICAgICB9Cj4gKyAgICAgICAgc2l6
ZSAtPSBub3c7Cj4gKyAgICAgICAgcG9zICs9IG5vdzsKPiAgICAgIH0KPiAgICAgIHJldHVybiBw
b3MgLSBidWY7Cj4gIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
