Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14AD6D172
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F62B6E425;
	Thu, 18 Jul 2019 15:57:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C001E6E428
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:57:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 65C543179B43
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:57:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 56616101E242
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:57:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4569C1800206
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:57:08 +0000 (UTC)
Date: Thu, 18 Jul 2019 11:57:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1566070480.809119.1563465428248.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190708072649.22114-1-fziglio@redhat.com>
References: <20190708072649.22114-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.15]
Thread-Topic: red-replay-qxl: Fix some issue of alignment
Thread-Index: l9sF23yhKqfxuok4NzMHFA+pQlCNOA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 18 Jul 2019 15:57:08 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-replay-qxl: Fix some
 issue of alignment
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

cGluZwoKPiAKPiBEbyBub3QgcGFzcyB1bmFsaWduZWQgUVhMUEhZU0lDQUwgYnV0IHBhc3MgYSB2
YWxpZCBwb2ludGVyIGFuZAo+IHRoZW4gY2FzdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgc2VydmVyL3JlZC1yZXBsYXkt
cXhsLmMgfCAxNiArKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLXJlcGxh
eS1xeGwuYyBiL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jCj4gaW5kZXggZmE0NGZhN2M0Li4wYzdl
MDhjMTQgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3JlZC1yZXBsYXktcXhsLmMKPiArKysgYi9zZXJ2
ZXIvcmVkLXJlcGxheS1xeGwuYwo+IEBAIC0zMTEsMTAgKzMxMSwxMiBAQCBzdGF0aWMgc3NpemVf
dCByZWRfcmVwbGF5X2RhdGFfY2h1bmtzKFNwaWNlUmVwbGF5Cj4gKnJlcGxheSwgY29uc3QgY2hh
ciAqcHJlZml4LAo+ICAgICAgZGF0YV9zaXplID0gY3VyLT5kYXRhX3NpemU7Cj4gICAgICBjdXIt
Pm5leHRfY2h1bmsgPSBjdXItPnByZXZfY2h1bmsgPSAwOwo+ICAgICAgd2hpbGUgKGNvdW50X2No
dW5rcy0tID4gMCkgewo+IC0gICAgICAgIGlmIChyZWFkX2JpbmFyeShyZXBsYXksIHByZWZpeCwg
Jm5leHRfZGF0YV9zaXplLAo+ICh1aW50OF90KiopJmN1ci0+bmV4dF9jaHVuaywKPiArICAgICAg
ICB1aW50OF90ICpkYXRhID0gTlVMTDsKPiArICAgICAgICBpZiAocmVhZF9iaW5hcnkocmVwbGF5
LCBwcmVmaXgsICZuZXh0X2RhdGFfc2l6ZSwgKHVpbnQ4X3QqKikmZGF0YSwKPiAgICAgICAgICAg
ICAgc2l6ZW9mKFFYTERhdGFDaHVuaykpID09IFJFUExBWV9FUlJPUikgewo+ICAgICAgICAgICAg
ICByZXR1cm4gLTE7Cj4gICAgICAgICAgfQo+ICsgICAgICAgIGN1ci0+bmV4dF9jaHVuayA9IFFY
TFBIWVNJQ0FMX0ZST01fUFRSKGRhdGEpOwo+ICAgICAgICAgIGRhdGFfc2l6ZSArPSBuZXh0X2Rh
dGFfc2l6ZTsKPiAgICAgICAgICBuZXh0ID0gUVhMUEhZU0lDQUxfVE9fUFRSKGN1ci0+bmV4dF9j
aHVuayk7Cj4gICAgICAgICAgbmV4dC0+cHJldl9jaHVuayA9IFFYTFBIWVNJQ0FMX0ZST01fUFRS
KGN1cik7Cj4gQEAgLTQ3Miw3ICs0NzQsOSBAQCBzdGF0aWMgUVhMSW1hZ2UgKnJlZF9yZXBsYXlf
aW1hZ2UoU3BpY2VSZXBsYXkgKnJlcGxheSwKPiB1aW50MzJfdCBmbGFncykKPiAgICAgICAgICBp
ZiAocXhsX2ZsYWdzICYgUVhMX0JJVE1BUF9ESVJFQ1QpIHsKPiAgICAgICAgICAgICAgcXhsLT5i
aXRtYXAuZGF0YSA9Cj4gICAgICAgICAgICAgIFFYTFBIWVNJQ0FMX0ZST01fUFRSKHJlZF9yZXBs
YXlfaW1hZ2VfZGF0YV9mbGF0KHJlcGxheSwKPiAgICAgICAgICAgICAgJmJpdG1hcF9zaXplKSk7
Cj4gICAgICAgICAgfSBlbHNlIHsKPiAtICAgICAgICAgICAgc2l6ZSA9IHJlZF9yZXBsYXlfZGF0
YV9jaHVua3MocmVwbGF5LCAiYml0bWFwLmRhdGEiLAo+ICh1aW50OF90KiopJnF4bC0+Yml0bWFw
LmRhdGEsIDApOwo+ICsgICAgICAgICAgICB1aW50OF90ICpkYXRhID0gTlVMTDsKPiArICAgICAg
ICAgICAgc2l6ZSA9IHJlZF9yZXBsYXlfZGF0YV9jaHVua3MocmVwbGF5LCAiYml0bWFwLmRhdGEi
LAo+ICh1aW50OF90KiopJmRhdGEsIDApOwo+ICsgICAgICAgICAgICBxeGwtPmJpdG1hcC5kYXRh
ID0gUVhMUEhZU0lDQUxfRlJPTV9QVFIoZGF0YSk7Cj4gICAgICAgICAgICAgIGlmIChzaXplICE9
IGJpdG1hcF9zaXplKSB7Cj4gICAgICAgICAgICAgICAgICBnX3dhcm5pbmcoImJhZCBpbWFnZSwg
JSIgR19HU0laRV9GT1JNQVQgIiAhPSAlIgo+ICAgICAgICAgICAgICAgICAgR19HU0laRV9GT1JN
QVQsIHNpemUsIGJpdG1hcF9zaXplKTsKPiAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
IEBAIC03MTAsNyArNzE0LDkgQEAgc3RhdGljIHZvaWQgcmVkX3JlcGxheV9zdHJva2VfcHRyKFNw
aWNlUmVwbGF5ICpyZXBsYXksCj4gUVhMU3Ryb2tlICpxeGwsIHVpbnQzMl90Cj4gICAgICAgICAg
c2l6ZV90IHNpemU7Cj4gIAo+ICAgICAgICAgIHJlcGxheV9mc2NhbmYocmVwbGF5LCAiYXR0ci5z
dHlsZV9uc2VnICVkXG4iLCAmdGVtcCk7Cj4gICAgICAgICAgcXhsLT5hdHRyLnN0eWxlX25zZWcg
PSB0ZW1wOwo+IC0gICAgICAgIHJlYWRfYmluYXJ5KHJlcGxheSwgInN0eWxlIiwgJnNpemUsICh1
aW50OF90KiopJnF4bC0+YXR0ci5zdHlsZSwgMCk7Cj4gKyAgICAgICAgdWludDhfdCAqZGF0YSA9
IE5VTEw7Cj4gKyAgICAgICAgcmVhZF9iaW5hcnkocmVwbGF5LCAic3R5bGUiLCAmc2l6ZSwgKHVp
bnQ4X3QqKikmZGF0YSwgMCk7Cj4gKyAgICAgICAgcXhsLT5hdHRyLnN0eWxlID0gUVhMUEhZU0lD
QUxfRlJPTV9QVFIoZGF0YSk7Cj4gICAgICB9Cj4gICAgICByZWRfcmVwbGF5X2JydXNoX3B0cihy
ZXBsYXksICZxeGwtPmJydXNoLCBmbGFncyk7Cj4gICAgICByZXBsYXlfZnNjYW5mKHJlcGxheSwg
ImZvcmVfbW9kZSAlZFxuIiwgJnRlbXApOyBxeGwtPmZvcmVfbW9kZSA9IHRlbXA7Cj4gQEAgLTEx
MzQsNyArMTE0MCw5IEBAIHN0YXRpYyBRWExTdXJmYWNlQ21kCj4gKnJlZF9yZXBsYXlfc3VyZmFj
ZV9jbWQoU3BpY2VSZXBsYXkgKnJlcGxheSkKPiAgICAgICAgICB9Cj4gICAgICAgICAgc2l6ZSA9
IHF4bC0+dS5zdXJmYWNlX2NyZWF0ZS5oZWlnaHQgKgo+ICAgICAgICAgIGFicyhxeGwtPnUuc3Vy
ZmFjZV9jcmVhdGUuc3RyaWRlKTsKPiAgICAgICAgICBpZiAoKHF4bC0+ZmxhZ3MgJiBRWExfU1VS
Rl9GTEFHX0tFRVBfREFUQSkgIT0gMCkgewo+IC0gICAgICAgICAgICByZWFkX2JpbmFyeShyZXBs
YXksICJkYXRhIiwgJnJlYWRfc2l6ZSwKPiAodWludDhfdCoqKSZxeGwtPnUuc3VyZmFjZV9jcmVh
dGUuZGF0YSwgMCk7Cj4gKyAgICAgICAgICAgIHVpbnQ4X3QgKmRhdGEgPSBOVUxMOwo+ICsgICAg
ICAgICAgICByZWFkX2JpbmFyeShyZXBsYXksICJkYXRhIiwgJnJlYWRfc2l6ZSwgKHVpbnQ4X3Qq
KikmZGF0YSwgMCk7Cj4gKyAgICAgICAgICAgIHF4bC0+dS5zdXJmYWNlX2NyZWF0ZS5kYXRhID0g
UVhMUEhZU0lDQUxfRlJPTV9QVFIoZGF0YSk7Cj4gICAgICAgICAgICAgIGlmIChyZWFkX3NpemUg
IT0gc2l6ZSkgewo+ICAgICAgICAgICAgICAgICAgZ193YXJuaW5nKCJtaXNtYXRjaCAlIiBHX0dT
SVpFX0ZPUk1BVCAiICE9ICUiCj4gICAgICAgICAgICAgICAgICBHX0dTSVpFX0ZPUk1BVCwgc2l6
ZSwgcmVhZF9zaXplKTsKPiAgICAgICAgICAgICAgfQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
