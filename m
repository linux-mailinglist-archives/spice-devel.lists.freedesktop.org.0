Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E52C09C5
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 18:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C866E14C;
	Fri, 27 Sep 2019 16:45:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093DC6E162
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 16:45:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 954A22111
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 16:45:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A04110013A7
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 16:45:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D3624E589;
 Fri, 27 Sep 2019 16:45:11 +0000 (UTC)
Date: Fri, 27 Sep 2019 12:45:11 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <229676060.3566474.1569602711325.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190926174536.19730-1-victortoso@redhat.com>
References: <20190926174536.19730-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.13]
Thread-Topic: channel-main: add debug related to migration
Thread-Index: N3nQ1/lKD+w5q5q5b1Qs4UaMlaFNtA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Fri, 27 Sep 2019 16:45:11 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 1/2] channel-main: add debug
 related to migration
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gTWlncmF0aW9u
IGNhbiBzdGFydCB3aXRoIGRpZmZlcmVudCBtZXNzYWdlcyBhbmQgdGhlIGNvZGUgY291bGQgdGFr
ZQo+IGRpZmZlcmVudCBwYXRocy4gQnkgaGF2aW5nIGEgZGVidWcgb24gd2hpY2ggbWVzc2FnZSBz
dGFydGVkIGNhbiBoZWxwCj4gcGlucG9pbnQgaXNzdWVzIGZhc3Rlci4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgoKQWNrZWQtYnk6IEZyZWRp
YW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKRnJlZGlhbm8KCj4gLS0tCj4gIHNyYy9j
aGFubmVsLW1haW4uYyB8IDE1ICsrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5u
ZWwtbWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCj4gaW5kZXggMzM0YmU3ZC4uNDMwNWRjZCAx
MDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1tYWluLmMKPiArKysgYi9zcmMvY2hhbm5lbC1tYWlu
LmMKPiBAQCAtMjM5NCw2ICsyMzk0LDggQEAgc3RhdGljIHZvaWQgbWFpbl9oYW5kbGVfbWlncmF0
ZV9iZWdpbihTcGljZUNoYW5uZWwKPiAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaW4pCj4gIHsKPiAg
ICAgIFNwaWNlTXNnTWFpbk1pZ3JhdGlvbkJlZ2luICptc2cgPSBzcGljZV9tc2dfaW5fcGFyc2Vk
KGluKTsKPiAgCj4gKyAgICBDSEFOTkVMX0RFQlVHKGNoYW5uZWwsICJtaWdyYXRpb24gbWVzc2Fn
ZTogbWlncmF0ZS1iZWdpbiIpOwo+ICsKPiAgICAgIG1haW5fbWlncmF0ZV9jb25uZWN0KGNoYW5u
ZWwsICZtc2ctPmRzdF9pbmZvLCBmYWxzZSwgMCk7Cj4gIH0KPiAgCj4gQEAgLTI0MDIsNiArMjQw
NCw4IEBAIHN0YXRpYyB2b2lkCj4gbWFpbl9oYW5kbGVfbWlncmF0ZV9iZWdpbl9zZWFtbGVzcyhT
cGljZUNoYW5uZWwgKmNoYW5uZWwsIFNwaWNlTXNnSW4KPiAgewo+ICAgICAgU3BpY2VNc2dNYWlu
TWlncmF0ZUJlZ2luU2VhbWxlc3MgKm1zZyA9IHNwaWNlX21zZ19pbl9wYXJzZWQoaW4pOwo+ICAK
PiArICAgIENIQU5ORUxfREVCVUcoY2hhbm5lbCwgIm1pZ3JhdGlvbiBtZXNzYWdlOiBtaWdyYXRl
LWJlZ2luLXNlYW1sZXNzIik7Cj4gKwo+ICAgICAgbWFpbl9taWdyYXRlX2Nvbm5lY3QoY2hhbm5l
bCwgJm1zZy0+ZHN0X2luZm8sIHRydWUsCj4gICAgICBtc2ctPnNyY19taWdfdmVyc2lvbik7Cj4g
IH0KPiAgCj4gQEAgLTI0MTAsNiArMjQxNCw4IEBAIHN0YXRpYyB2b2lkCj4gbWFpbl9oYW5kbGVf
bWlncmF0ZV9kc3Rfc2VhbWxlc3NfYWNrKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2cK
PiAgICAgIFNwaWNlQ2hhbm5lbFByaXZhdGUgICpjID0gU1BJQ0VfQ0hBTk5FTChjaGFubmVsKS0+
cHJpdjsKPiAgICAgIFNwaWNlTWFpbkNoYW5uZWxQcml2YXRlICptYWluX3ByaXYgPSBTUElDRV9N
QUlOX0NIQU5ORUwoY2hhbm5lbCktPnByaXY7Cj4gIAo+ICsgICAgQ0hBTk5FTF9ERUJVRyhjaGFu
bmVsLCAibWlncmF0aW9uIG1lc3NhZ2U6IG1pZ3JhdGUtZHN0LXNlYW1sZXNzLWFjayIpOwo+ICsK
PiAgICAgIGdfcmV0dXJuX2lmX2ZhaWwoYy0+c3RhdGUgPT0gU1BJQ0VfQ0hBTk5FTF9TVEFURV9N
SUdSQVRJT05fSEFORFNIQUtFKTsKPiAgICAgIG1haW5fcHJpdi0+bWlncmF0ZV9kYXRhLT5kb19z
ZWFtbGVzcyA9IHRydWU7Cj4gICAgICBnX2lkbGVfYWRkKG1haW5fbWlncmF0ZV9oYW5kc2hha2Vf
ZG9uZSwgbWFpbl9wcml2LT5taWdyYXRlX2RhdGEpOwo+IEBAIC0yNDIwLDYgKzI0MjYsOCBAQCBz
dGF0aWMgdm9pZAo+IG1haW5faGFuZGxlX21pZ3JhdGVfZHN0X3NlYW1sZXNzX25hY2soU3BpY2VD
aGFubmVsICpjaGFubmVsLCBTcGljZU1zCj4gICAgICBTcGljZUNoYW5uZWxQcml2YXRlICAqYyA9
IFNQSUNFX0NIQU5ORUwoY2hhbm5lbCktPnByaXY7Cj4gICAgICBTcGljZU1haW5DaGFubmVsUHJp
dmF0ZSAqbWFpbl9wcml2ID0gU1BJQ0VfTUFJTl9DSEFOTkVMKGNoYW5uZWwpLT5wcml2Owo+ICAK
PiArICAgIENIQU5ORUxfREVCVUcoY2hhbm5lbCwgIm1pZ3JhdGlvbiBtZXNzYWdlOiBtaWdyYXRl
LWRzdC1zZWFtbGVzcy1uYWNrIik7Cj4gKwo+ICAgICAgZ19yZXR1cm5faWZfZmFpbChjLT5zdGF0
ZSA9PSBTUElDRV9DSEFOTkVMX1NUQVRFX01JR1JBVElPTl9IQU5EU0hBS0UpOwo+ICAgICAgbWFp
bl9wcml2LT5taWdyYXRlX2RhdGEtPmRvX3NlYW1sZXNzID0gZmFsc2U7Cj4gICAgICBnX2lkbGVf
YWRkKG1haW5fbWlncmF0ZV9oYW5kc2hha2VfZG9uZSwgbWFpbl9wcml2LT5taWdyYXRlX2RhdGEp
Owo+IEBAIC0yNDQ0LDcgKzI0NTIsNyBAQCBzdGF0aWMgdm9pZCBtYWluX2hhbmRsZV9taWdyYXRl
X2VuZChTcGljZUNoYW5uZWwKPiAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaW4pCj4gIHsKPiAgICAg
IFNwaWNlTWFpbkNoYW5uZWxQcml2YXRlICpjID0gU1BJQ0VfTUFJTl9DSEFOTkVMKGNoYW5uZWwp
LT5wcml2Owo+ICAKPiAtICAgIFNQSUNFX0RFQlVHKCJtaWdyYXRlIGVuZCIpOwo+ICsgICAgQ0hB
Tk5FTF9ERUJVRyhjaGFubmVsLCAibWlncmF0aW9uIG1lc3NhZ2U6IG1pZ3JhdGUtZW5kIik7Cj4g
IAo+ICAgICAgZ19yZXR1cm5faWZfZmFpbChjLT5taWdyYXRlX2RlbGF5ZWRfaWQgPT0gMCk7Cj4g
ICAgICBnX3JldHVybl9pZl9mYWlsKHNwaWNlX2NoYW5uZWxfdGVzdF9jYXBhYmlsaXR5KGNoYW5u
ZWwsCj4gICAgICBTUElDRV9NQUlOX0NBUF9TRU1JX1NFQU1MRVNTX01JR1JBVEUpKTsKPiBAQCAt
MjQ3OSw2ICsyNDg3LDggQEAgc3RhdGljIHZvaWQKPiBtYWluX2hhbmRsZV9taWdyYXRlX3N3aXRj
aF9ob3N0KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaQo+ICAgICAgY2hhciAq
c3ViamVjdCA9IE5VTEw7Cj4gICAgICBTcGljZU1haW5DaGFubmVsUHJpdmF0ZSAqYyA9IFNQSUNF
X01BSU5fQ0hBTk5FTChjaGFubmVsKS0+cHJpdjsKPiAgCj4gKyAgICBDSEFOTkVMX0RFQlVHKGNo
YW5uZWwsICJtaWdyYXRpb24gbWVzc2FnZTogbWlncmF0ZS1zd2l0Y2gtaG9zdCIpOwo+ICsKPiAg
ICAgIGdfcmV0dXJuX2lmX2ZhaWwoaG9zdFttaWctPmhvc3Rfc2l6ZSAtIDFdID09ICdcMCcpOwo+
ICAKPiAgICAgIGlmIChtaWctPmNlcnRfc3ViamVjdF9zaXplKSB7Cj4gQEAgLTI1MTMsNyArMjUy
Myw4IEBAIHN0YXRpYyB2b2lkIG1haW5faGFuZGxlX21pZ3JhdGVfY2FuY2VsKFNwaWNlQ2hhbm5l
bAo+ICpjaGFubmVsLAo+ICB7Cj4gICAgICBTcGljZVNlc3Npb24gKnNlc3Npb247Cj4gIAo+IC0g
ICAgU1BJQ0VfREVCVUcoIm1pZ3JhdGVfY2FuY2VsIik7Cj4gKyAgICBDSEFOTkVMX0RFQlVHKGNo
YW5uZWwsICJtaWdyYXRpb24gbWVzc2FnZTogbWlncmF0ZS1jYW5jZWwiKTsKPiArCj4gICAgICBz
ZXNzaW9uID0gc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lvbihjaGFubmVsKTsKPiAgICAgIHNwaWNl
X3Nlc3Npb25fYWJvcnRfbWlncmF0aW9uKHNlc3Npb24pOwo+ICB9Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
