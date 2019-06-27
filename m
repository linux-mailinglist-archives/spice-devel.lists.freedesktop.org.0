Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A9E5879F
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 18:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D056E081;
	Thu, 27 Jun 2019 16:51:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6C06E081
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 16:51:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C6AFC057E7D
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 16:51:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 848BA5C1B4
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 16:51:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C1DA1806B18;
 Thu, 27 Jun 2019 16:51:03 +0000 (UTC)
Date: Thu, 27 Jun 2019 12:51:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <2133173746.25036522.1561654262099.JavaMail.zimbra@redhat.com>
In-Reply-To: <033cac1f-e5e7-b41b-ca23-72bada4f31e1@redhat.com>
References: <20190627133722.15613-1-ssheribe@redhat.com>
 <715253657.25003171.1561644775898.JavaMail.zimbra@redhat.com>
 <033cac1f-e5e7-b41b-ca23-72bada4f31e1@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.21]
Thread-Topic: drop sstream and use dedicated functions instead
Thread-Index: Hf2gSrYfF29qxgPMkQhrSXiMTVTmew==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 27 Jun 2019 16:51:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent 1/2] drop sstream
 and use dedicated functions instead
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

PiAKPiBIaSwKPiAKPiAKPiBPbiA2LzI3LzE5IDU6MTIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90
ZToKPiA+PiBJbnN0ZWFkIG9mIG1hbmlwdWxhdGluZyBhIHN0cmluZyBhbmQgY29udmVydCBpdCB0
byBjYXBzIGp1c3QKPiA+PiB1c2UgZGVkaWNhdGVkIGZ1bmN0aW9ucyBpbnN0ZWFkCj4gPj4KPiA+
PiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgo+ID4+
IC0tLQo+ID4+IENoYW5nZXM6Cj4gPj4gLWNvbW1pdCBsb2cKPiA+PiAtU3VnZ2VzdGluZyB1bmlx
cHRyIGZvciBjYXBzX3N0cgo+ID4+IC0tCj4gPj4gICBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAzNCAr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEv
c3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gPj4gaW5kZXggOTg1OGJl
Yi4uMGRkNzc5NiAxMDA2NDQKPiA+PiAtLS0gYS9zcmMvZ3N0LXBsdWdpbi5jcHAKPiA+PiArKysg
Yi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiA+PiBAQCAtOCw3ICs4LDYgQEAKPiA+PiAgICNpbmNsdWRl
IDxjc3RyaW5nPgo+ID4+ICAgI2luY2x1ZGUgPGV4Y2VwdGlvbj4KPiA+PiAgICNpbmNsdWRlIDxz
dGRleGNlcHQ+Cj4gPj4gLSNpbmNsdWRlIDxzc3RyZWFtPgo+ID4+ICAgI2luY2x1ZGUgPG1lbW9y
eT4KPiA+PiAgICNpbmNsdWRlIDxzeXNsb2cuaD4KPiA+PiAgICNpbmNsdWRlIDx1bmlzdGQuaD4K
PiA+PiBAQCAtMTMyLDM0ICsxMzEsMzUgQEAgR3N0RWxlbWVudAo+ID4+ICpHc3RyZWFtZXJGcmFt
ZUNhcHR1cmU6OmdldF9lbmNvZGVyX3BsdWdpbihjb25zdCBHc3RyZWFtZXJFbmNvZGVyU2V0dAo+
ID4+ICAgICAgIEdMaXN0ICpmaWx0ZXJlZDsKPiA+PiAgICAgICBHc3RFbGVtZW50ICplbmNvZGVy
Owo+ID4+ICAgICAgIEdzdEVsZW1lbnRGYWN0b3J5ICpmYWN0b3J5ID0gbnVsbHB0cjsKPiA+PiAt
ICAgIHN0ZDo6c3RyaW5nc3RyZWFtIGNhcHNfc3M7Cj4gPj4gICAKPiA+PiAgICAgICBzd2l0Y2gg
KHNldHRpbmdzLmNvZGVjKSB7Cj4gPj4gICAgICAgY2FzZSBTUElDRV9WSURFT19DT0RFQ19UWVBF
X0gyNjQ6Cj4gPj4gLSAgICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC1oMjY0IiA8PAo+ID4+ICIs
c3RyZWFtLWZvcm1hdD0oc3RyaW5nKWJ5dGUtc3RyZWFtIjsKPiA+PiArICAgICAgICBzaW5rX2Nh
cHMucmVzZXQoZ3N0X2NhcHNfbmV3X3NpbXBsZSgidmlkZW8veC1oMjY0IiwKPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic3RyZWFtLWZvcm1hdCIsCj4g
Pj4gR19UWVBFX1NUUklORywKPiA+PiAiYnl0ZS1zdHJlYW0iLAo+ID4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwpKTsKPiA+PiAgICAgICAgICAgYnJl
YWs7Cj4gPj4gICAgICAgY2FzZSBTUElDRV9WSURFT19DT0RFQ19UWVBFX01KUEVHOgo+ID4+IC0g
ICAgICAgIGNhcHNfc3MgPDwgImltYWdlL2pwZWciOwo+ID4+ICsgICAgICAgIHNpbmtfY2Fwcy5y
ZXNldChnc3RfY2Fwc19uZXdfZW1wdHlfc2ltcGxlKCJpbWFnZS9qcGVnIikpOwo+ID4+ICAgICAg
ICAgICBicmVhazsKPiA+PiAgICAgICBjYXNlIFNQSUNFX1ZJREVPX0NPREVDX1RZUEVfVlA4Ogo+
ID4+IC0gICAgICAgIGNhcHNfc3MgPDwgInZpZGVvL3gtdnA4IjsKPiA+PiArICAgICAgICBzaW5r
X2NhcHMucmVzZXQoZ3N0X2NhcHNfbmV3X2VtcHR5X3NpbXBsZSgidmlkZW8veC12cDgiKSk7Cj4g
Pj4gICAgICAgICAgIGJyZWFrOwo+ID4+ICAgICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQ
RV9WUDk6Cj4gPj4gLSAgICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC12cDkiOwo+ID4+ICsgICAg
ICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19uZXdfZW1wdHlfc2ltcGxlKCJ2aWRlby94LXZw
OSIpKTsKPiA+PiAgICAgICAgICAgYnJlYWs7Cj4gPj4gICAgICAgY2FzZSBTUElDRV9WSURFT19D
T0RFQ19UWVBFX0gyNjU6Cj4gPj4gLSAgICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC1oMjY1IjsK
PiA+PiArICAgICAgICBzaW5rX2NhcHMucmVzZXQoZ3N0X2NhcHNfbmV3X2VtcHR5X3NpbXBsZSgi
dmlkZW8veC1oMjY1IikpOwo+ID4+ICAgICAgICAgICBicmVhazsKPiA+PiAgICAgICBkZWZhdWx0
IDogLyogU2hvdWxkIG5vdCBoYXBwZW4gLSBqdXN0IHRvIGF2b2lkIGNvbXBpbGVyJ3MgY29tcGxh
aW50Cj4gPj4gICAgICAgKi8KPiA+PiAgICAgICAgICAgdGhyb3cgc3RkOjpsb2dpY19lcnJvcigi
VW5rbm93biBjb2RlYyIpOwo+ID4+ICAgICAgIH0KPiA+PiAtICAgIGNhcHNfc3MgPDwgIixmcmFt
ZXJhdGU9IiA8PCBzZXR0aW5ncy5mcHMgPDwgIi8xIjsKPiA+PiArICAgIGdzdF9jYXBzX3NldF9z
aW1wbGUoc2lua19jYXBzLmdldCgpLCAiZnJhbWVyYXRlIiwgR1NUX1RZUEVfRlJBQ1RJT04sCj4g
Pj4gc2V0dGluZ3MuZnBzLCAxLCBudWxscHRyKTsKPiA+PiArICAgIHN0ZDo6dW5pcXVlX3B0cjxn
Y2hhcj4gY2Fwc19zdHIoZ3N0X2NhcHNfdG9fc3RyaW5nKHNpbmtfY2Fwcy5nZXQoKSkpOwo+ID4+
ICAgCj4gPiBJZGVhIGl0J3MgZmluZS4gVGhpcyBob3dldmVyIHdpbGwgY2FsbCA6Om9wZXJhdG9y
IG5ldyB3aGljaCBpdCdzIG5vdCB3aGF0Cj4gPiB5b3Ugd2FudC4gSW4gdGhlIHNhbWUgZmlsZSB0
aGVyZSBhcmUgZGlmZmVyZW50IGRlbGV0ZXJzIGxpa2UKPiA+Cj4gPgo+ID4gc3RydWN0IEdzdFNh
bXBsZURlbGV0ZXIgewo+ID4gICAgICB2b2lkIG9wZXJhdG9yKCkoR3N0U2FtcGxlKiBwKQo+ID4g
ICAgICB7Cj4gPiAgICAgICAgICBnc3Rfc2FtcGxlX3VucmVmKHApOwo+ID4gICAgICB9Cj4gPiB9
Owo+ID4KPiA+IHVzaW5nIEdzdFNhbXBsZVVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8R3N0U2FtcGxl
LCBHc3RTYW1wbGVEZWxldGVyPjsKPiA+Cj4gPgo+ID4geW91IGNhbiBiYXNlIHlvdXIgb25lLiBH
bGlibW0gdXNlcyBhbiB1dGlsaXR5IChzZWUKPiA+IGh0dHBzOi8vZ2l0bGFiLmdub21lLm9yZy9H
Tk9NRS9nbGlibW0vYmxvYi9iOTJlZjIzZTM4Zjk4NjNlYmU0NzA0YTkxNmUzMzIyZWVhMmYxZjJj
L2dsaWIvZ2xpYm1tL3V0aWxpdHkuaCkKPiA+IGJ1dCBwb3RlbnRpYWxseSBlYWNoIHNtYXJ0IHBv
aW50ZXIgd2lsbCBjb250YWluIGEgcG9pbnRlciB0byBnX2ZyZWUKPiA+IChhbmQgaXQncyBsaW1p
dGVkIHRvIGdfZnJlZSBsaWtlIGEgc2luZ2xlIGRlbGV0ZXIpLgo+IAo+IAo+IEhvdyBhYm91dCB0
aGlzIG9uZWxpbmVyIGluc3RlYWQ/Cj4gCj4gc3RkOjp1bmlxdWVfcHRyPGdjaGFyLCBkZWNsdHlw
ZSgmZ19mcmVlKT4KPiBjYXBzX3N0cihnc3RfY2Fwc190b19zdHJpbmcoc2lua19jYXBzLmdldCgp
KSwgJmdfZnJlZSk7Cj4gCj4gU25pci4KPiAKCk1heWJlIGl0IHdpbGwgcGFzcyB0aGUgMTAwIGNo
YXJhY3RlcnMgYW5kIHlvdSB3aWxsIG5lZWQgdG8gc3BsaXQgaXQgaW4gMiBsaW5lcywKYnV0IGJl
c2lkZSB0aGF0IEknbSBmaW5lIHdpdGggaXQuCllvdSBjYW4gcmVtb3ZlIHRoZSAiJiIgaW4gZnJv
bnQgb2YgdGhlIGxhc3QgZ19mcmVlLgoKLi4uIG9taXNzaXMgLi4uCgpGcmVkaWFubwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
