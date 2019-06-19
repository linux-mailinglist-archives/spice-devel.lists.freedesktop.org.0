Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D3A4B5E5
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 12:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9E46E34E;
	Wed, 19 Jun 2019 10:06:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2ED6E34E
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:06:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 84DB33082E70
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:06:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 78A9419C5B
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:06:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C9A454D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:06:22 +0000 (UTC)
Date: Wed, 19 Jun 2019 06:06:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1286421336.23631750.1560938782394.JavaMail.zimbra@redhat.com>
In-Reply-To: <1148657461.22408065.1560318790210.JavaMail.zimbra@redhat.com>
References: <20190602175359.24499-1-fziglio@redhat.com>
 <1148657461.22408065.1560318790210.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.27]
Thread-Topic: red-parse-qxl: Reset mask attributes if brush image is missing
Thread-Index: Yg+w1Aptcft1A03Oi00OFFgeJjXroEFZiCBM
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 19 Jun 2019 10:06:22 +0000 (UTC)
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

cGluZyAyCgo+IAo+IHBpbmcKPiAKPiA+IAo+ID4gVGhlIGF0dHJpYnV0ZXMgaW4gdGhpcyBjYXNl
IGFyZSBub3QgdXNlZCB0byBhcHBseSB0aGUgbWFzay4KPiA+IERvaW5nIHNvIGF2b2lkIHNlbmRp
bmcgZ2FyYmFnZSBmcm9tIHRoZSBndWVzdCB3aGljaCB1c3VhbGx5Cj4gPiBkb24ndCBpbml0aWFs
aXNlIHRoZSBtZW1vcnkgaW4gY2FzZSB0aGUgbWFzayBpcyBtaXNzaW5nLgo+ID4gR3Vlc3Qgc2hv
dWxkIGhhdmUgY2xlYXJlZCB0aGVzZSBieXRlcyBieSBpdHMgb3duIGhvd2V2ZXIgZG9pbmcgc28K
PiA+IG9uIHRoZSBzZXJ2ZXIgZml4ZXMgdGhlIHByb2JsZW0gdG9vLiBDb25zaWRlcmluZyB0aGF0
IHRoZXNlCj4gPiBjb21tYW5kIHNob3VsZCBub3QgYXBwZWFycyBpbiBuZXdlciBPU2VzIGl0J3Mg
c3VyZWx5IG5vdCBhIGhvdCBwYXRoCj4gPiBjb2RlLgo+ID4gVGhlc2UgZ2FyYmFnZSBjYW1lIGZy
b20gdmlkZW8gbWVtb3J5IG9mIHRoZSBndWVzdCBzbyB0aGV5IGRvbid0Cj4gPiBjb250YWluIHNl
bnNpdGl2ZSBkYXRhLgo+ID4gCj4gPiBUaGlzIGZpeGVzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9zcGljZS9zcGljZS1zZXJ2ZXIvaXNzdWVzLzI1Lgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNl
cnZlci9yZWQtcGFyc2UtcXhsLmMgfCAxMCArKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci9yZWQtcGFyc2UtcXhsLmMgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gPiBpbmRleCBh
ZmFlOTQzMTYuLmE0YWM2YTQ3MyAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9yZWQtcGFyc2UtcXhs
LmMKPiA+ICsrKyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKPiA+IEBAIC02MjYsOSArNjI2LDE1
IEBAIHN0YXRpYyB2b2lkIHJlZF9wdXRfYnJ1c2goU3BpY2VCcnVzaCAqcmVkKQo+ID4gIHN0YXRp
YyB2b2lkIHJlZF9nZXRfcW1hc2tfcHRyKFJlZE1lbVNsb3RJbmZvICpzbG90cywgaW50IGdyb3Vw
X2lkLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlUU1hc2sgKnJlZCwg
UVhMUU1hc2sgKnF4bCwgdWludDMyX3QKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBmbGFncykKPiA+ICB7Cj4gPiAtICAgIHJlZC0+ZmxhZ3MgID0gcXhsLT5mbGFnczsKPiA+IC0g
ICAgcmVkX2dldF9wb2ludF9wdHIoJnJlZC0+cG9zLCAmcXhsLT5wb3MpOwo+ID4gICAgICByZWQt
PmJpdG1hcCA9IHJlZF9nZXRfaW1hZ2Uoc2xvdHMsIGdyb3VwX2lkLCBxeGwtPmJpdG1hcCwgZmxh
Z3MsCj4gPiAgICAgIHRydWUpOwo+ID4gKyAgICBpZiAocmVkLT5iaXRtYXApIHsKPiA+ICsgICAg
ICAgIHJlZC0+ZmxhZ3MgID0gcXhsLT5mbGFnczsKPiA+ICsgICAgICAgIHJlZF9nZXRfcG9pbnRf
cHRyKCZyZWQtPnBvcywgJnF4bC0+cG9zKTsKPiA+ICsgICAgfSBlbHNlIHsKPiA+ICsgICAgICAg
IHJlZC0+ZmxhZ3MgID0gMDsKPiA+ICsgICAgICAgIHJlZC0+cG9zLnggPSAwOwo+ID4gKyAgICAg
ICAgcmVkLT5wb3MueSA9IDA7Cj4gPiArICAgIH0KPiA+ICB9Cj4gPiAgCj4gPiAgc3RhdGljIHZv
aWQgcmVkX3B1dF9xbWFzayhTcGljZVFNYXNrICpyZWQpCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
