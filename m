Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FB37037D
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 17:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7A489CB3;
	Mon, 22 Jul 2019 15:19:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007C889CB2
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 15:18:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B1B3308FE9A
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 15:18:59 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.52])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 92CD660A9F;
 Mon, 22 Jul 2019 15:18:58 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190719091827.30413-1-fziglio@redhat.com>
 <20190719091827.30413-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <a3b707b0-6311-fb50-97ed-3f3b14e6fae7@redhat.com>
Date: Mon, 22 Jul 2019 18:18:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719091827.30413-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 22 Jul 2019 15:18:59 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/2] red-replay-qxl: Fix
 some issue of alignment
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8xOS8xOSAxMjoxOCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IERvIG5vdCBwYXNz
IHVuYWxpZ25lZCBRWExQSFlTSUNBTCBidXQgcGFzcyBhIHZhbGlkIHBvaW50ZXIgYW5kCj4gdGhl
biBjYXN0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgoKQWNrLgoKVXJpLgoKPiAtLS0KPiAgIHNlcnZlci9yZWQtcmVwbGF5LXF4bC5jIHwg
MTggKysrKysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gcmVtb3ZlIHVubmVj
ZXNzYXJ5IGNhc3RzCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jIGIv
c2VydmVyL3JlZC1yZXBsYXktcXhsLmMKPiBpbmRleCBmYTQ0ZmE3YzQuLjY3NGZlYWUyZiAxMDA2
NDQKPiAtLS0gYS9zZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYwo+ICsrKyBiL3NlcnZlci9yZWQtcmVw
bGF5LXF4bC5jCj4gQEAgLTMxMSwxMCArMzExLDEyIEBAIHN0YXRpYyBzc2l6ZV90IHJlZF9yZXBs
YXlfZGF0YV9jaHVua3MoU3BpY2VSZXBsYXkgKnJlcGxheSwgY29uc3QgY2hhciAqcHJlZml4LAo+
ICAgICAgIGRhdGFfc2l6ZSA9IGN1ci0+ZGF0YV9zaXplOwo+ICAgICAgIGN1ci0+bmV4dF9jaHVu
ayA9IGN1ci0+cHJldl9jaHVuayA9IDA7Cj4gICAgICAgd2hpbGUgKGNvdW50X2NodW5rcy0tID4g
MCkgewo+IC0gICAgICAgIGlmIChyZWFkX2JpbmFyeShyZXBsYXksIHByZWZpeCwgJm5leHRfZGF0
YV9zaXplLCAodWludDhfdCoqKSZjdXItPm5leHRfY2h1bmssCj4gLSAgICAgICAgICAgIHNpemVv
ZihRWExEYXRhQ2h1bmspKSA9PSBSRVBMQVlfRVJST1IpIHsKPiArICAgICAgICB1aW50OF90ICpk
YXRhID0gTlVMTDsKPiArICAgICAgICBpZiAocmVhZF9iaW5hcnkocmVwbGF5LCBwcmVmaXgsICZu
ZXh0X2RhdGFfc2l6ZSwgJmRhdGEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihR
WExEYXRhQ2h1bmspKSA9PSBSRVBMQVlfRVJST1IpIHsKPiAgICAgICAgICAgICAgIHJldHVybiAt
MTsKPiAgICAgICAgICAgfQo+ICsgICAgICAgIGN1ci0+bmV4dF9jaHVuayA9IFFYTFBIWVNJQ0FM
X0ZST01fUFRSKGRhdGEpOwo+ICAgICAgICAgICBkYXRhX3NpemUgKz0gbmV4dF9kYXRhX3NpemU7
Cj4gICAgICAgICAgIG5leHQgPSBRWExQSFlTSUNBTF9UT19QVFIoY3VyLT5uZXh0X2NodW5rKTsK
PiAgICAgICAgICAgbmV4dC0+cHJldl9jaHVuayA9IFFYTFBIWVNJQ0FMX0ZST01fUFRSKGN1cik7
Cj4gQEAgLTQ3Miw3ICs0NzQsOSBAQCBzdGF0aWMgUVhMSW1hZ2UgKnJlZF9yZXBsYXlfaW1hZ2Uo
U3BpY2VSZXBsYXkgKnJlcGxheSwgdWludDMyX3QgZmxhZ3MpCj4gICAgICAgICAgIGlmIChxeGxf
ZmxhZ3MgJiBRWExfQklUTUFQX0RJUkVDVCkgewo+ICAgICAgICAgICAgICAgcXhsLT5iaXRtYXAu
ZGF0YSA9IFFYTFBIWVNJQ0FMX0ZST01fUFRSKHJlZF9yZXBsYXlfaW1hZ2VfZGF0YV9mbGF0KHJl
cGxheSwgJmJpdG1hcF9zaXplKSk7Cj4gICAgICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgICAg
IHNpemUgPSByZWRfcmVwbGF5X2RhdGFfY2h1bmtzKHJlcGxheSwgImJpdG1hcC5kYXRhIiwgKHVp
bnQ4X3QqKikmcXhsLT5iaXRtYXAuZGF0YSwgMCk7Cj4gKyAgICAgICAgICAgIHVpbnQ4X3QgKmRh
dGEgPSBOVUxMOwo+ICsgICAgICAgICAgICBzaXplID0gcmVkX3JlcGxheV9kYXRhX2NodW5rcyhy
ZXBsYXksICJiaXRtYXAuZGF0YSIsICZkYXRhLCAwKTsKPiArICAgICAgICAgICAgcXhsLT5iaXRt
YXAuZGF0YSA9IFFYTFBIWVNJQ0FMX0ZST01fUFRSKGRhdGEpOwo+ICAgICAgICAgICAgICAgaWYg
KHNpemUgIT0gYml0bWFwX3NpemUpIHsKPiAgICAgICAgICAgICAgICAgICBnX3dhcm5pbmcoImJh
ZCBpbWFnZSwgJSIgR19HU0laRV9GT1JNQVQgIiAhPSAlIiBHX0dTSVpFX0ZPUk1BVCwgc2l6ZSwg
Yml0bWFwX3NpemUpOwo+ICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+IEBAIC03MTAs
NyArNzE0LDkgQEAgc3RhdGljIHZvaWQgcmVkX3JlcGxheV9zdHJva2VfcHRyKFNwaWNlUmVwbGF5
ICpyZXBsYXksIFFYTFN0cm9rZSAqcXhsLCB1aW50MzJfdAo+ICAgICAgICAgICBzaXplX3Qgc2l6
ZTsKPiAgIAo+ICAgICAgICAgICByZXBsYXlfZnNjYW5mKHJlcGxheSwgImF0dHIuc3R5bGVfbnNl
ZyAlZFxuIiwgJnRlbXApOyBxeGwtPmF0dHIuc3R5bGVfbnNlZyA9IHRlbXA7Cj4gLSAgICAgICAg
cmVhZF9iaW5hcnkocmVwbGF5LCAic3R5bGUiLCAmc2l6ZSwgKHVpbnQ4X3QqKikmcXhsLT5hdHRy
LnN0eWxlLCAwKTsKPiArICAgICAgICB1aW50OF90ICpkYXRhID0gTlVMTDsKPiArICAgICAgICBy
ZWFkX2JpbmFyeShyZXBsYXksICJzdHlsZSIsICZzaXplLCAmZGF0YSwgMCk7Cj4gKyAgICAgICAg
cXhsLT5hdHRyLnN0eWxlID0gUVhMUEhZU0lDQUxfRlJPTV9QVFIoZGF0YSk7Cj4gICAgICAgfQo+
ICAgICAgIHJlZF9yZXBsYXlfYnJ1c2hfcHRyKHJlcGxheSwgJnF4bC0+YnJ1c2gsIGZsYWdzKTsK
PiAgICAgICByZXBsYXlfZnNjYW5mKHJlcGxheSwgImZvcmVfbW9kZSAlZFxuIiwgJnRlbXApOyBx
eGwtPmZvcmVfbW9kZSA9IHRlbXA7Cj4gQEAgLTExMzQsNyArMTE0MCw5IEBAIHN0YXRpYyBRWExT
dXJmYWNlQ21kICpyZWRfcmVwbGF5X3N1cmZhY2VfY21kKFNwaWNlUmVwbGF5ICpyZXBsYXkpCj4g
ICAgICAgICAgIH0KPiAgICAgICAgICAgc2l6ZSA9IHF4bC0+dS5zdXJmYWNlX2NyZWF0ZS5oZWln
aHQgKiBhYnMocXhsLT51LnN1cmZhY2VfY3JlYXRlLnN0cmlkZSk7Cj4gICAgICAgICAgIGlmICgo
cXhsLT5mbGFncyAmIFFYTF9TVVJGX0ZMQUdfS0VFUF9EQVRBKSAhPSAwKSB7Cj4gLSAgICAgICAg
ICAgIHJlYWRfYmluYXJ5KHJlcGxheSwgImRhdGEiLCAmcmVhZF9zaXplLCAodWludDhfdCoqKSZx
eGwtPnUuc3VyZmFjZV9jcmVhdGUuZGF0YSwgMCk7Cj4gKyAgICAgICAgICAgIHVpbnQ4X3QgKmRh
dGEgPSBOVUxMOwo+ICsgICAgICAgICAgICByZWFkX2JpbmFyeShyZXBsYXksICJkYXRhIiwgJnJl
YWRfc2l6ZSwgJmRhdGEsIDApOwo+ICsgICAgICAgICAgICBxeGwtPnUuc3VyZmFjZV9jcmVhdGUu
ZGF0YSA9IFFYTFBIWVNJQ0FMX0ZST01fUFRSKGRhdGEpOwo+ICAgICAgICAgICAgICAgaWYgKHJl
YWRfc2l6ZSAhPSBzaXplKSB7Cj4gICAgICAgICAgICAgICAgICAgZ193YXJuaW5nKCJtaXNtYXRj
aCAlIiBHX0dTSVpFX0ZPUk1BVCAiICE9ICUiIEdfR1NJWkVfRk9STUFULCBzaXplLCByZWFkX3Np
emUpOwo+ICAgICAgICAgICAgICAgfQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
