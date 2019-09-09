Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90417AD616
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 11:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B22689A9F;
	Mon,  9 Sep 2019 09:53:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170A889A9F
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:53:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AA372C049E10
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:53:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A102B3DE0
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:53:33 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9769B1802216;
 Mon,  9 Sep 2019 09:53:33 +0000 (UTC)
Date: Mon, 9 Sep 2019 05:53:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1239308376.11119827.1568022812389.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190909091051.qia44wyxkbmuvgbm@wingsuit>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-5-victortoso@redhat.com>
 <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
 <1075329485.11053740.1567961066784.JavaMail.zimbra@redhat.com>
 <20190909091051.qia44wyxkbmuvgbm@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.18]
Thread-Topic: session: gst_deinit() GStreamer if we initialize it
Thread-Index: wZQQcb/G9UGpUE+d/m0F7nEGHa93Cw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 09 Sep 2019 09:53:33 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 4/6] session: gst_deinit()
 GStreamer if we initialize it
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

PiAKPiBIaSwKPiAKPiBPbiBTdW4sIFNlcCAwOCwgMjAxOSBhdCAxMjo0NDoyNlBNIC0wNDAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiA+IAo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IE9uIDkv
Mi8xOSA3OjA0IFBNLCBWaWN0b3IgVG9zbyB3cm90ZToKPiA+ID4gPiBGcm9tOiBWaWN0b3IgVG9z
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gPiA+ID4KPiA+ID4gPiBMZXQncyBnc3RfZGVpbml0KCkg
aWYgd2UgaW5pdGlhbGl6ZSBpdCBmb3IgdGhlIHNhbWUgcmF0aW9uYWxlIHBvaW50ZWQKPiA+ID4g
PiBvdXQKPiA+ID4gPiBpbiAwMzgxZTYyICJzcGljeTogQWRkIGNhbGwgb2YgZ3N0X2RlaW5pdCBh
dCBwcm9ncmFtIGV4aXQiIGluCj4gPiA+ID4gMjAxNy0xMC0yMCBieSBDaHJpc3RvcGhlIGRlIERp
bmVjaGluIDxkaW5lY2hpbkByZWRoYXQuY29tPgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4g
PiAgIHNyYy9zcGljZS1zZXNzaW9uLmMgfCA4ICsrKysrKysrCj4gPiA+ID4gICAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc3JjL3Nw
aWNlLXNlc3Npb24uYyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKPiA+ID4gPiBpbmRleCBkYjQwYTUz
Li4yMTM1MzQ4IDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NyYy9zcGljZS1zZXNzaW9uLmMKPiA+ID4g
PiArKysgYi9zcmMvc3BpY2Utc2Vzc2lvbi5jCj4gPiA+ID4gQEAgLTEyMyw2ICsxMjMsOCBAQCBz
dHJ1Y3QgX1NwaWNlU2Vzc2lvblByaXZhdGUgewo+ID4gPiA+ICAgICAgIGdjaGFyICAgICAgICAg
ICAgICpuYW1lOwo+ID4gPiA+ICAgICAgIFNwaWNlSW1hZ2VDb21wcmVzc2lvbiBwcmVmZXJyZWRf
Y29tcHJlc3Npb247Cj4gPiA+ID4gICAKPiA+ID4gPiArICAgIGJvb2wgICAgICAgICAgICAgIGdz
dF9pbml0X2J5X3NwaWNlOwo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICAvKiBhc3NvY2lhdGVkIG9i
amVjdHMgKi8KPiA+ID4gPiAgICAgICBTcGljZUF1ZGlvICAgICAgICAqYXVkaW9fbWFuYWdlcjsK
PiA+ID4gPiAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKnVzYl9tYW5hZ2VyOwo+ID4gPiA+
IEBAIC0zNDMsNiArMzQ1LDEwIEBAIHNwaWNlX3Nlc3Npb25fZGlzcG9zZShHT2JqZWN0ICpnb2Jq
ZWN0KQo+ID4gPiA+ICAgICAgIGdfd2Fybl9pZl9mYWlsKHMtPmNoYW5uZWxzX2Rlc3Ryb3lpbmcg
PT0gMCk7Cj4gPiA+ID4gICAgICAgZ193YXJuX2lmX2ZhaWwocy0+Y2hhbm5lbHMgPT0gTlVMTCk7
Cj4gPiA+ID4gICAKPiA+ID4gPiArICAgIGlmIChzZXNzaW9uLT5wcml2LT5nc3RfaW5pdF9ieV9z
cGljZSkgewo+ID4gPiA+ICsgICAgICAgIGdzdF9kZWluaXQoKTsKPiA+ID4gCj4gPiA+IFdvdWxk
bid0IGl0IGRlaW5pdCBvbiBtaWdyYXRpb24/IChJSVJDIGEgbmV3IHNlc3Npb24gaXMKPiA+ID4g
Y3JlYXRlZCkKPiAKPiBTZWVtcyBsaWtlIGl0LCBzaG91bGQgYmUgZml4ZWQsIHRoYW5rcyEKPiAK
PiA+ID4gQWN0dWFsbHkgZ3N0cmVhbWVyIGRvY3VtZW50YXRpb24gc3RhdGVzOgo+ID4gPiAKPiA+
ID4gIkl0IGlzIG5vcm1hbGx5IG5vdCBuZWVkZWQgdG8gY2FsbCB0aGlzIGZ1bmN0aW9uIGluIGEg
bm9ybWFsIGFwcGxpY2F0aW9uCj4gPiA+ICBhcyB0aGUgcmVzb3VyY2VzIHdpbGwgYXV0b21hdGlj
YWxseSBiZSBmcmVlZCB3aGVuIHRoZSBwcm9ncmFtCj4gPiA+ICB0ZXJtaW5hdGVzLgo+ID4gPiAg
VGhpcyBmdW5jdGlvbiBpcyB0aGVyZWZvcmUgbW9zdGx5IHVzZWQgYnkgdGVzdHN1aXRlcyBhbmQg
b3RoZXIgbWVtb3J5Cj4gPiA+ICBwcm9maWxpbmcgdG9vbHMuIgo+IAo+IFRoZSBtZW1vcnkgcHJv
ZmlsaW5nIHRvb2xzIG1pZ2h0IGJlIHdoYXQgd2UgYXJlIGludGVyZXN0ZWQgb24sIGFzCj4gbWVu
dGlvbmVkIGluIHRoZSBjb21taXQgbG9nLCBJIHF1b3RlIHRoZSBvcmlnaW5hbCBjb21taXQ6Cj4g
Cj4gIHwgV2l0aG91dCB0aGlzIHBhdGNoLCBpZiB5b3UgcnVuIHNwaWN5IHdpdGgKPiAgfCAgR1NU
X0RFQlVHPSJHU1RfVFJBQ0VSOjciIEdTVF9UUkFDRVJTPSJsZWFrcyIgc3BpY3kgLi4uCj4gIHwg
dGhlIGxlYWsgdHJhY2VyIGRvZXMgbm90IHNob3cgYW55IG91dHB1dCwKPiAgfCBiZWNhdXNlIGl0
IHJ1bnMgaW4gZ3N0X2RlaW5pdC4KPiAKPiAKPiBJZiB3ZSBhcmUgbm90IGludHJvZHVjaW5nIHNv
bWV0aGluZyB0aGF0IGJyZWFrcyB0aGUgY29kZSBhbmQKPiBtaWdodCBoZWxwIG9uIGRlYnVnLCBJ
J20ga2VlbiB0byBoYXZlIGl0LiBXaXRob3V0IHRoaXMgcGF0Y2ggd2UKPiB3b3VsZCByZWx5IG9u
IGNsaWVudHMgdG8gaW1wbGVtZW50IHRoaXMgaW4gb3JkZXIgdG8gZ3N0cmVhbWVyJ3MKPiBsZWFr
IHRyYWNlciB0byB3b3JrLCBsaWtlIHRoZSBwYXRjaCBmb3Igc3BpY3kgMDM4MWU2Mgo+IAo+ID4g
PiBCZWZvcmUgaXQgd2FzIHVzZWQgb25seSBieSBzcGljeSB3aGljaCBpIGd1ZXNzIGl0J3MKPiA+
ID4gY29uc2lkZXJlZCBtb3JlIG9mIGEgdGVzdCBjbGllbnQsIEknbSBub3Qgc3VyZSB3ZSB3b3Vs
ZCBsaWtlCj4gPiA+IHRvIGRlaW5pdCBieSB0aGUgc2Vzc2lvbiAob24gdGhlIG90aGVyIGhhbmQg
aSdtIGFsc28gbm90IHN1cmUKPiA+ID4gaG93IGhhcm1mdWwgaXQgd291bGQgYmUpCj4gPiA+IAo+
ID4gPiAKPiA+ID4gU25pci4KPiA+ID4gCj4gPiAKPiA+IFNpbXBseSBkb24ndCBkbyBpdC4gR3N0
cmVhbWVyIGlzIG5vdCB3ZWxsIGRlc2lnbmVkIHRvIGNhbGwgdGhhdCBmdW5jdGlvbi4KPiA+IAo+
ID4gSXQgbGVhZHMgdG8gcG90ZW50aWFsIG1lbW9yeSBidWdzLiBUaGUgY2hlY2sgc2hvdWxkIGJl
Cj4gPiAKPiA+IGlmIChJX2luaXRpYWxpemVkX2dzdHJlYW1lciAmJiBub2JvZHlfaXNfdXNpbmdf
b3JfYXNzdW1pbmdfaXNfaW5pdGlhbGl6ZWQpCj4gPiAgICBnc3RfZGVpbml0KCkKPiAKPiBJIGFn
cmVlIHRoYXQgdGhlIGNoZWNrIHNob3VsZCBiZSBsaWtlIHRoYXQKPiAKPiA+IElmIEEgaW5pdGlh
bGl6ZSBHc3RyZWFtZXIgYW5kIEIgZG9uJ3QgYnV0IGp1c3QgY2hlY2sgaXMgaW5pdGlhbGl6ZWQg
dGhlbgo+ID4gd2hlbiBBIGNhbGwgZGVpbml0IHRoZSBvYmplY3RzIHVzZWQgYnkgQiB3aWxsIGNv
bnRhaW4gcG90ZW50aWFsIGRhbmdsaW5nCj4gPiBwb2ludGVycy4gT25lIHJpZ2h0IGludGVyZmFj
ZSB3b3VsZCBiZSBzaW1wbHkgaW5pdC9kZWluaXQgYW5kIHVzZSBhIGNvdW50ZXIKPiA+IHRvIHRy
YWNrIHRoZSBudW1iZXIgb2YgaW5pdGlhbGl6YXRpb24uCj4gCj4gQWxsIGNoYW5uZWxzIGFyZSBy
ZWxhdGVkIHRvIFNwaWNlU2Vzc2lvbiwgdGhhdCdzIHdoeSBJIG1vdmVkIGl0Cj4gdGhlcmUuIFNl
ZW1zIHJlYXNvbmFibGUgdG8gbWUgYXQgbGVhc3QuCj4gCgpZZXMsIGl0IGlzLiBCdXQgdGhpcyB3
b24ndCBmaXggR3N0cmVhbWVyIEFQSS4KTm9ib2R5IGZvcmJpZCB1c2VycyB0byB1c2Ugc3BpY2Ut
Z3RrIGxpYnJhcnkgaW4gYW5vdGhlciBwcm9ncmFtCnRvIHByb3ZpZGUgZm9yIGluc3RhbmNlIG11
bHRpcGxlIFZNIGFjY2VzcyB1c2luZyBtdWx0aXBsZSBHVUkgdGFicy4KSWYgdGhlIG90aGVyIHBh
cnQgd2lsbCB1c2UgR3N0cmVhbWVyIGNhbGxpbmcgZ3N0X2RlaW5pdCB3aXRob3V0IG1ha2luZwpz
dXJlIG5vYm9keSBlbHNlIHdpbGwgdXNlIGl0IHdpbGwgcG90ZW50aWFsbHkgbGVhZCB0byBtZW1v
cnkgaXNzdWVzLgpUaGF0J3MgbXkgc3VnZ2VzdGlvbiAiZG9uJ3QgZG8gaXQiLiBDYWxsaW5nIHRo
YXQgZnJvbSBzcGljeSBpcyBmaW5lLApiZWNhdXNlIHlvdSBrbm93IG5vYm9keSBlbHNlIGlzIHVz
aW5nIEdzdHJlYW1lciwgbm90IGluIGEgbGlicmFyeS4KCj4gSSdsbCBmaXggcHJvcG9zZWQgY2hh
bmdlcyBhbmQgc2VuZCBhIHYyLCBtYW55IHRoYW5rcyBmb3IgcmV2aWV3IQo+IAo+ICAtIHRvc28K
PiAKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
