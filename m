Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728465955B
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FAA6E897;
	Fri, 28 Jun 2019 07:49:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6486E897
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:49:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 868A4C03D478
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:49:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CD75608CA
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:49:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73A5E54D3C
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:49:26 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:49:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <152955403.25083810.1561708166431.JavaMail.zimbra@redhat.com>
In-Reply-To: <1286421336.23631750.1560938782394.JavaMail.zimbra@redhat.com>
References: <20190602175359.24499-1-fziglio@redhat.com>
 <1148657461.22408065.1560318790210.JavaMail.zimbra@redhat.com>
 <1286421336.23631750.1560938782394.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: red-parse-qxl: Reset mask attributes if brush image is missing
Thread-Index: Yg+w1Aptcft1A03Oi00OFFgeJjXroEFZiCBMKMaXWTQ=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 28 Jun 2019 07:49:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-parse-qxl: Reset mask
 attributes if brush image is missing
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

cGluZyAzCgo+IAo+IHBpbmcgMgo+IAo+ID4gCj4gPiBwaW5nCj4gPiAKPiA+ID4gCj4gPiA+IFRo
ZSBhdHRyaWJ1dGVzIGluIHRoaXMgY2FzZSBhcmUgbm90IHVzZWQgdG8gYXBwbHkgdGhlIG1hc2su
Cj4gPiA+IERvaW5nIHNvIGF2b2lkIHNlbmRpbmcgZ2FyYmFnZSBmcm9tIHRoZSBndWVzdCB3aGlj
aCB1c3VhbGx5Cj4gPiA+IGRvbid0IGluaXRpYWxpc2UgdGhlIG1lbW9yeSBpbiBjYXNlIHRoZSBt
YXNrIGlzIG1pc3NpbmcuCj4gPiA+IEd1ZXN0IHNob3VsZCBoYXZlIGNsZWFyZWQgdGhlc2UgYnl0
ZXMgYnkgaXRzIG93biBob3dldmVyIGRvaW5nIHNvCj4gPiA+IG9uIHRoZSBzZXJ2ZXIgZml4ZXMg
dGhlIHByb2JsZW0gdG9vLiBDb25zaWRlcmluZyB0aGF0IHRoZXNlCj4gPiA+IGNvbW1hbmQgc2hv
dWxkIG5vdCBhcHBlYXJzIGluIG5ld2VyIE9TZXMgaXQncyBzdXJlbHkgbm90IGEgaG90IHBhdGgK
PiA+ID4gY29kZS4KPiA+ID4gVGhlc2UgZ2FyYmFnZSBjYW1lIGZyb20gdmlkZW8gbWVtb3J5IG9m
IHRoZSBndWVzdCBzbyB0aGV5IGRvbid0Cj4gPiA+IGNvbnRhaW4gc2Vuc2l0aXZlIGRhdGEuCj4g
PiA+IAo+ID4gPiBUaGlzIGZpeGVzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGlj
ZS9zcGljZS1zZXJ2ZXIvaXNzdWVzLzI1Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgc2VydmVy
L3JlZC1wYXJzZS1xeGwuYyB8IDEwICsrKysrKysrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEv
c2VydmVyL3JlZC1wYXJzZS1xeGwuYyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKPiA+ID4gaW5k
ZXggYWZhZTk0MzE2Li5hNGFjNmE0NzMgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NlcnZlci9yZWQtcGFy
c2UtcXhsLmMKPiA+ID4gKysrIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwo+ID4gPiBAQCAtNjI2
LDkgKzYyNiwxNSBAQCBzdGF0aWMgdm9pZCByZWRfcHV0X2JydXNoKFNwaWNlQnJ1c2ggKnJlZCkK
PiA+ID4gIHN0YXRpYyB2b2lkIHJlZF9nZXRfcW1hc2tfcHRyKFJlZE1lbVNsb3RJbmZvICpzbG90
cywgaW50IGdyb3VwX2lkLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3Bp
Y2VRTWFzayAqcmVkLCBRWExRTWFzayAqcXhsLCB1aW50MzJfdAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZmxhZ3MpCj4gPiA+ICB7Cj4gPiA+IC0gICAgcmVkLT5mbGFncyAg
PSBxeGwtPmZsYWdzOwo+ID4gPiAtICAgIHJlZF9nZXRfcG9pbnRfcHRyKCZyZWQtPnBvcywgJnF4
bC0+cG9zKTsKPiA+ID4gICAgICByZWQtPmJpdG1hcCA9IHJlZF9nZXRfaW1hZ2Uoc2xvdHMsIGdy
b3VwX2lkLCBxeGwtPmJpdG1hcCwgZmxhZ3MsCj4gPiA+ICAgICAgdHJ1ZSk7Cj4gPiA+ICsgICAg
aWYgKHJlZC0+Yml0bWFwKSB7Cj4gPiA+ICsgICAgICAgIHJlZC0+ZmxhZ3MgID0gcXhsLT5mbGFn
czsKPiA+ID4gKyAgICAgICAgcmVkX2dldF9wb2ludF9wdHIoJnJlZC0+cG9zLCAmcXhsLT5wb3Mp
Owo+ID4gPiArICAgIH0gZWxzZSB7Cj4gPiA+ICsgICAgICAgIHJlZC0+ZmxhZ3MgID0gMDsKPiA+
ID4gKyAgICAgICAgcmVkLT5wb3MueCA9IDA7Cj4gPiA+ICsgICAgICAgIHJlZC0+cG9zLnkgPSAw
Owo+ID4gPiArICAgIH0KPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgcmVkX3B1
dF9xbWFzayhTcGljZVFNYXNrICpyZWQpCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
