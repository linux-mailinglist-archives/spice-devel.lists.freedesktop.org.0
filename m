Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5B64A7CC
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 19:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECA66E207;
	Tue, 18 Jun 2019 17:03:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899FE6E204
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 17:03:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0CA1A3003AFF
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 17:03:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 023C951F05
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 17:03:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE3711806B16;
 Tue, 18 Jun 2019 17:03:25 +0000 (UTC)
Date: Tue, 18 Jun 2019 13:03:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1818361336.23567373.1560877404608.JavaMail.zimbra@redhat.com>
In-Reply-To: <1710070993.23408122.1560862162144.JavaMail.zimbra@redhat.com>
References: <20190603112214.15093-1-fziglio@redhat.com>
 <20190603112214.15093-2-fziglio@redhat.com>
 <b42ea5f5-1d4e-1037-5793-5245a7548240@redhat.com>
 <1710070993.23408122.1560862162144.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.128, 10.4.195.20]
Thread-Topic: Remove a warning on MIPS machine
Thread-Index: SU8IS4GsrNM4mht3DoK0fvQzX+2uMv/wkcLl
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 18 Jun 2019 17:03:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] Remove a warning on MIPS
 machine
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

PiAKPiA+IAo+ID4gT24gNi8zLzE5IDI6MjIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+
ID4gVGhlIGZvcm11bGEgaXMgaGVyZSB0byBtYWtlIHN1cmUgZ2x5cGggaXMgYWxpZ25lZCB0byA0
IGJ5dGVzIHNvCj4gPiA+IHRlbGwgdG8gdGhlIGNvbXBpbGVyIHRvIGF2b2lkIGEgd2FybmluZy4K
PiA+IAo+ID4gV2hhdCdzIHRoZSB3YXJuaW5nID8KPiAKPiBUcnlpbmcgdG8gcmVwcm9kdWNlIGJ1
dCB0aGUgdXBkYXRlZCBlbnZpcm9ubWVudCBpdCdzIHNsb3cgbGlrZQo+IGhlbGwgKGl0J3MgbW9y
ZSB0aGFuIDMwIG1pbnV0ZXMgdGhhdCBpdCdzIGNvbXBpbGluZyAzIGZpbGVzKS4KPiAKClRoZSB3
YXJuaW5nIGlzCgpyZWQtcGFyc2UtcXhsLmM6IEluIGZ1bmN0aW9uIOKAmHJlZF9nZXRfc3RyaW5n
4oCZOgpyZWQtcGFyc2UtcXhsLmM6OTQ5OjE3OiBlcnJvcjogY2FzdCBpbmNyZWFzZXMgcmVxdWly
ZWQgYWxpZ25tZW50IG9mIHRhcmdldCB0eXBlIFstV2Vycm9yPWNhc3QtYWxpZ25dCiAgICAgICAg
IGdseXBoID0gKFNwaWNlUmFzdGVyR2x5cGgqKQogICAgICAgICAgICAgICAgIF4KCgo+ID4gSXMg
aXQgdGhhdCB0aGUgcG9pbnRlciBtYXkgYmUgdW5hbGlnbmVkICh3aGljaCBpcyBpbXBvc2libGUK
PiA+IGlmIHlvdSBzdGFydCBmcm9tIGFuIGFsaWduZWQgYWRkcmVzcykgPwo+ID4gCj4gCj4gWWVz
LCB3YXMgYW4gYWxpZ25tZW50IHdhcm5pbmcKPiAKPiA+IExvb2tzIGNvbXBsaWNhdGVkIHRvIG1l
LCBlc3BlY2lhbGx5IHNpbmNlIGFmdGVyIHRoZQo+ID4gU1BJQ0VfQUxJR05FRF9DQVNUIHRoZXJl
IGlzIGFub3RoZXIgKHRoZSAicmVhbCIpIGNhc3QuCj4gPiAKPiAKPiBNYXliZSB3aXRoIGFuIGFk
ZGl0aW9uYWwKPiAKPiBAQCAtOTQxLDcgKzk0MSw3IEBAIHN0YXRpYyBTcGljZVN0cmluZyAqcmVk
X2dldF9zdHJpbmcoUmVkTWVtU2xvdEluZm8gKnNsb3RzLAo+IGludCBncm91cF9pZCwKPiAgICAg
ICAgICBzcGljZV9hc3NlcnQoZ2x5cGhfc2l6ZSA8PSAoY2hhciopIGVuZCAtIChjaGFyKikgJnN0
YXJ0LT5kYXRhWzBdKTsKPiAgICAgICAgICBtZW1jcHkoZ2x5cGgtPmRhdGEsIHN0YXJ0LT5kYXRh
LCBnbHlwaF9zaXplKTsKPiAgICAgICAgICBzdGFydCA9IChRWExSYXN0ZXJHbHlwaCopKCZzdGFy
dC0+ZGF0YVtnbHlwaF9zaXplXSk7Cj4gLSAgICAgICAgZ2x5cGggPSAoU3BpY2VSYXN0ZXJHbHlw
aCopIFNQSUNFX0FMSUdORURfQ0FTVCh1aW50MzJfdCosCj4gKyAgICAgICAgZ2x5cGggPSBTUElD
RV9BTElHTkVEX0NBU1QoU3BpY2VSYXN0ZXJHbHlwaCosCj4gICAgICAgICAgICAgICgoKHVpbnQ4
X3QgKilnbHlwaCkgKwo+ICAgICAgICAgICAgICAgU1BJQ0VfQUxJR04oc2l6ZW9mKFNwaWNlUmFz
dGVyR2x5cGgpICsgZ2x5cGhfc2l6ZSwgNCkpKTsKPiAgICAgIH0KPiAKPiAKPiB3b3VsZCB3b3Jr
IHRvby4gTm90IHN1cmUgaG93IGxvbmcgaXQncyBnb2luZyB0byB0YWtlIHRvIHRlc3QgaXQuCj4g
CgpUaGlzIHdvcmtzIHRvby4KCj4gPiBPbiB0aGUgb3RoZXIgaGFuZCBpdCBkb2Vzbid0IGJyZWFr
IGFueXRoaW5nLgo+ID4gCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IAo+ID4gQWNrLgo+ID4gCj4gPiA+IC0tLQo+ID4g
PiAgIHNlcnZlci9yZWQtcGFyc2UtcXhsLmMgfCA0ICsrLS0KPiA+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdp
dCBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gPiA+
IGluZGV4IGFmYWU5NDMxNi4uODliNjFjMDZmIDEwMDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVk
LXBhcnNlLXF4bC5jCj4gPiA+ICsrKyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKPiA+ID4gQEAg
LTk0MSw5ICs5NDEsOSBAQCBzdGF0aWMgU3BpY2VTdHJpbmcgKnJlZF9nZXRfc3RyaW5nKFJlZE1l
bVNsb3RJbmZvCj4gPiA+ICpzbG90cywgaW50IGdyb3VwX2lkLAo+ID4gPiAgICAgICAgICAgc3Bp
Y2VfYXNzZXJ0KGdseXBoX3NpemUgPD0gKGNoYXIqKSBlbmQgLSAoY2hhciopCj4gPiA+ICAgICAg
ICAgICAmc3RhcnQtPmRhdGFbMF0pOwo+ID4gPiAgICAgICAgICAgbWVtY3B5KGdseXBoLT5kYXRh
LCBzdGFydC0+ZGF0YSwgZ2x5cGhfc2l6ZSk7Cj4gPiA+ICAgICAgICAgICBzdGFydCA9IChRWExS
YXN0ZXJHbHlwaCopKCZzdGFydC0+ZGF0YVtnbHlwaF9zaXplXSk7Cj4gPiA+IC0gICAgICAgIGds
eXBoID0gKFNwaWNlUmFzdGVyR2x5cGgqKQo+ID4gPiArICAgICAgICBnbHlwaCA9IChTcGljZVJh
c3RlckdseXBoKikgU1BJQ0VfQUxJR05FRF9DQVNUKHVpbnQzMl90KiwKPiA+ID4gICAgICAgICAg
ICAgICAoKCh1aW50OF90ICopZ2x5cGgpICsKPiA+ID4gLSAgICAgICAgICAgICBTUElDRV9BTElH
TihzaXplb2YoU3BpY2VSYXN0ZXJHbHlwaCkgKyBnbHlwaF9zaXplLCA0KSk7Cj4gPiA+ICsgICAg
ICAgICAgICAgU1BJQ0VfQUxJR04oc2l6ZW9mKFNwaWNlUmFzdGVyR2x5cGgpICsgZ2x5cGhfc2l6
ZSwgNCkpKTsKPiA+ID4gICAgICAgfQo+ID4gPiAgIAo+ID4gPiAgICAgICBpZiAoZnJlZV9kYXRh
KSB7Cj4gPiA+IAo+ID4gCj4gPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
