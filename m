Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD989BC97
	for <lists+spice-devel@lfdr.de>; Sat, 24 Aug 2019 10:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C6F6E095;
	Sat, 24 Aug 2019 08:39:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA6E6E095
 for <spice-devel@lists.freedesktop.org>; Sat, 24 Aug 2019 08:39:15 +0000 (UTC)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4FF7259465
 for <spice-devel@lists.freedesktop.org>; Sat, 24 Aug 2019 08:39:15 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id v16so14466638ioh.7
 for <spice-devel@lists.freedesktop.org>; Sat, 24 Aug 2019 01:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=He7rJec8FobYJcIilkTMtro+6cK1i/HqRRJZNvDjvWE=;
 b=QyWpQ0adYDwTcybSLtCMoS0ETAyYISsU4m09VlRIrDDpZ0kvFstBUeVWg6oqdGA/FD
 0xnzo0wmgvypE8EIuQKY+L6AjsxJ1hH3qh5NDwDP5LfQgXr/gShcAqStcIlrKKGKv5mS
 WYvUYES/3XiVccpZUbk4LXCSh4Quwp0NEzVV2HQKJ9RNpKYWyfvHQ3Bn9ulYgY3vVdvf
 HdcLjpdi2T2brLOBMFlqwqtQXyNJ1767jteH3QHHWksutvg5noKTw578FgbobGgRC5y8
 7GuGOHz0VotEYacIbisxVlsPcqFz/BYl1HBEVl7uoui8C7rvO+LOqMzY85ENLJPpIEBg
 +nBA==
X-Gm-Message-State: APjAAAVXkD4+KjbKlAZXfZzZBmJ/2OJFJgxgSFICvLKZ5PQZCfmbik5F
 XD4q1Efr2sam5uziIGfJ2KDQ5kuZpy7rN6trohGIsEufJIOLWDmNje4TB3AWhyIe7tUcbqJ56eD
 GznEF2Q235E6wKHz0Kg80MRGV6M89YRkqlTvmQm+xfo7x1yg=
X-Received: by 2002:a5d:9945:: with SMTP id v5mr11990571ios.143.1566635954647; 
 Sat, 24 Aug 2019 01:39:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvBQSfBlIWAL0GIA33fDaRo5sdD/E9sFE+d+sqB9KspbsgeHjNka8wPbk3jLSa9eFkBuZ2SX904Sy8c/1voGQ=
X-Received: by 2002:a5d:9945:: with SMTP id v5mr11990561ios.143.1566635954396; 
 Sat, 24 Aug 2019 01:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190808090314.28167-1-jjanku@redhat.com>
 <CAH=CeiDFnMYX7BFUycejr575LWnw8A-puWoqBrq7_QLEd1f=kQ@mail.gmail.com>
 <20190823133636.7gutbuaciykwqzbh@wingsuit>
In-Reply-To: <20190823133636.7gutbuaciykwqzbh@wingsuit>
From: Jakub Janku <jjanku@redhat.com>
Date: Sat, 24 Aug 2019 10:39:03 +0200
Message-ID: <CAH=CeiCZ7GJTEYgJy7DX1GPSursFrnU8ACp0jFGQMiLjORHcBQ@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Subject: Re: [Spice-devel] [PATCH spice-gtk] webdav: fix usecase with
 multiple concurrent connections
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiBGcmksIEF1ZyAyMywgMjAxOSBhdCAzOjM2IFBNIFZpY3RvciBUb3NvIDx2aWN0b3J0
b3NvQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBGcmksIEF1ZyAyMywgMjAxOSBh
dCAxMTo1Nzo1NUFNICswMjAwLCBKYWt1YiBKYW5rdSB3cm90ZToKPiA+IHBpbmcKPgo+IFllcCwg
c29ycnkKPgo+ID4KPiA+IEFsc28gZm9yZ290IHRvIG1lbnRpb24gdGhhdCB0aGlzIGZpeGVzIGEg
cmVncmVzc2lvbiBpbnRyb2R1Y2VkIGJ5IG1lCj4gPiBpbiA5ZjVhZWUwNS4KPgo+IE9rLiBJIGp1
c3Qgd2VudCBvdmVyIGl0IGJlZm9yZSBjb21pbmcgYmFjayBoZXJlLgo+Cj4gPiBPbiBUaHUsIEF1
ZyA4LCAyMDE5IGF0IDExOjAzIEFNIEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4gPgo+ID4gPiBHT3V0cHV0U3RyZWFtIGRvZXMgbm90IGFsbG93IHNpbXVsdGFuZW91
cyB0YXNrcyBvbiBhIHNpbmdsZQo+ID4gPiBzdHJlYW0uIEFuIGF0dGVtcHQgdG8gdHJhbnNmZXIg
dHdvIGZpbGVzIHRoZXJlZm9yZQo+ID4gPiByZXN1bHRzIGludG8gb25lIG9mIHRoZSBjbGllbnRz
IGJlaW5nIHJlbW92ZWQgaW4KPiA+ID4gbXV4X21zZ19mbHVzaGVkX2NiKCkgd2l0aCB0aGUgZXJy
b3IKPiA+ID4gIlN0cmVhbSBoYXMgb3V0c3RhbmRpbmcgb3BlcmF0aW9uIi4KPiA+ID4KPiA+ID4g
VG8gZml4IHRoaXMsIHVzZSBzcGljZV92bWNfd3JpdGVfYXN5bmMoKSBkaXJlY3RseS4KPgo+IFRo
ZSBtYWpvciBkaWZmZXJlbmNlIGluIGltcGxlbWVudGF0aW9uIHRoYXQgdGhpcyBwYXRjaCBwcm9w
b3Nlcwo+IGlzIHRvIGF2b2lkIGEgR1Rhc2sgY3JlYXRpb24gYW5kIGJlaW5nIGhhbmRsZWQgYnkg
dm1jc3RyZWFtLmMgb24KPiBzcGljZV92bWNfb3V0cHV0X3N0cmVhbV93cml0ZV9hc3luYygpLCBj
b3JyZWN0PwoKVGhhdCdzIGNvcnJlY3QuCkJlZm9yZSB0aGlzIHBhdGNoOiBnX291dHB1dF9zdHJl
YW1fd3JpdGVfYWxsX2FzeW5jKCkgLT4Kc3BpY2Vfdm1jX291dHB1dF9zdHJlYW1fd3JpdGVfYXN5
bmMoKSAtPiBzcGljZV92bWNfd3JpdGVfYXN5bmMoKQpXaXRoIHRoaXMgcGF0Y2gsIHNwaWNlX3Zt
Y193cml0ZV9hc3luYygpIGlzIGNhbGxlZCBkaXJlY3RseSwgd2l0aG91dAp0aGUgZmlyc3QgMiBz
dGVwcy4KPgo+IEknbSBhIGJpdCBjb25mdXNlZCBhYm91dCB0aGF0LCBtYXliZSBiZWNhdXNlIGl0
IHdhcyB3b3JraW5nCj4gYmVmb3JlPyBJIG1lYW4sIHRoZSBmYWN0IHRoYXQgd2UgY2hhbmdlZCB0
aGUgd2F5IHRvIGRlYWwgd2l0aAo+IHRoZSBidWZmZXJzIG1hZGUgb3VyIGltcGxlbWVudGF0aW9u
IG9uIEdPdXRwdXRTdHJlYW0gbm90Cj4gc3VwcG9ydCBzaW11bHRhbmVvdXMgdGFza3Mgb3IgdGhh
dCBzaG91bGQgbmV2ZXIgYWN0dWFsbHkgd29yayBpbgo+IHRoZSBmaXJzdCBwbGFjZT8KClByZXZp
b3VzbHksIHdlYmRhdiBjaGFubmVsIGhhZCBpdHMgb3duIE91dHB1dFF1ZXVlIHRoYXQgd2FzIHNj
aGVkdWxpbmcKdGhlIG1lc3NhZ2VzIGFuZCBjYWxsaW5nIGdfb3V0cHV0X3N0cmVhbV93cml0ZV9h
bGwoKSBmb3IgZWFjaCBtZXNzYWdlLgpXaXRoIDlmNWFlZTA1LCB0aGUgT3V0cHV0UXVldWUgd2Fz
IGRyb3BwZWQgYW5kIHdlYmRhdiBub3cgcmVsaWVzIG9uCnRoZSBpbnRlcm5hbCBxdWV1ZSBpbiBT
cGljZUNoYW5uZWwuCk1heWJlIGl0J3MgdGhlIG5hbWluZyB0aGF0IG1pZ2h0IGNvbmZ1c2UgeW91
LiAic3BpY2Vfdm1jX3dyaXRlX2FzeW5jIgptaWdodCBzdWdnZXN0IHRoYXQgdGhlIG1lc3NhZ2Ug
aXMgc2ltcGx5IHdyaXR0ZW4gdG8gdGhlIHN0cmVhbSwgYnV0CnRoZSBtZXNzYWdlIGlzIGluIHJl
YWxpdHkgcXVldWVkIGZvciB3cml0ZSBhbmQgdGhlIGFzeW5jIG9wZXJhdGlvbgpmaW5pc2hlcyBv
bmNlIHRoZSBtc2cgaXMgZmx1c2hlZC4gVGhlcmVmb3JlIHlvdSBjYW4gY2FsbApzcGljZV92bWNf
d3JpdGVfYXN5bmMoKSBtdWx0aXBsZSB0aW1lcyBpbiBhIHJvdywgdW5saWtlCmdfb3V0cHV0X3N0
cmVhbV93cml0ZV9hc3luYygpIHRoYXQgcGVybWl0cyBvbmx5IGEgc2luZ2xlIG9wZXJhdGlvbiBh
dAphIHRpbWUuCj4KPiBJIGhhdmUgdG8gcmVmcmVzaCBteSBtZW1vcnkgb24gdGhlIGltcGxlbWVu
dGF0aW9uIGRldGFpbHMgb24gdGhpcwo+IGJ1dCB0aGUgY29uY2VwdCBvZiBwaXBlIHBlciAnY2xp
ZW50JyBjb3VsZCB3b3JrIHdpdGggbXVsdGlwbGUKPiBmaWxlcyBiZWNhdXNlIG9mIHRoZSBpbm5l
ciBwcm90b2NvbCB0aGF0IG11eC9kZW11eCB0aGluZ3Mgb24KPiBjbGllbnQvc2VydmVyLCBidXQg
cGVyaGFwcyBJJ20gbWlzcmVtZW1iZXJpbmcuCj4KPiBTbywgYWdhaW4sIG15IHF1ZXN0aW9uIHdv
dWxkIGJlOiBEaWQgdGhlIG92ZXJhbGwgYmVoYXZpb3IKPiBjaGFuZ2VkPyBlLmc6IFRoaXMgY2xp
ZW50IHN0aWxsIHdvcmtzIHdpdGggb2xkIHNwaWNlLXdlYmRhdmQgZm9yCj4gaW5zdGFuY2UuCgpZ
ZXMsIGl0IHdvcmtzIHdpdGggb2xkIHNwaWNlLXdlYmRhdmQgdmVyc2lvbnMuCgpDaGVlcnMsCkph
a3ViCj4KPiBUaGFua3MsCj4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFu
a3VAcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBzcmMvY2hhbm5lbC13ZWJkYXYuYyB8IDE3
ICsrKysrKystLS0tLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdl
YmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiA+ID4gaW5kZXggMTRkNGUwNS4uMDllZjlm
NyAxMDA2NDQKPiA+ID4gLS0tIGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiA+ID4gKysrIGIvc3Jj
L2NoYW5uZWwtd2ViZGF2LmMKPiA+ID4gQEAgLTIzNSw3ICsyMzUsNyBAQCBtdXhfbXNnX2ZsdXNo
ZWRfY2IoR09iamVjdCAqc291cmNlX29iamVjdCwKPiA+ID4gIHsKPiA+ID4gICAgICBDbGllbnQg
KmNsaWVudCA9IHVzZXJfZGF0YTsKPiA+ID4KPiA+ID4gLSAgICBpZiAoIWdfb3V0cHV0X3N0cmVh
bV93cml0ZV9hbGxfZmluaXNoKEdfT1VUUFVUX1NUUkVBTShzb3VyY2Vfb2JqZWN0KSwgcmVzdWx0
LCBOVUxMLCBOVUxMKSB8fAo+ID4gPiArICAgIGlmIChzcGljZV92bWNfd3JpdGVfZmluaXNoKFNQ
SUNFX0NIQU5ORUwoc291cmNlX29iamVjdCksIHJlc3VsdCwgTlVMTCkgPT0gLTEgfHwKPiA+ID4g
ICAgICAgICAgY2xpZW50LT5tdXguc2l6ZSA9PSAwIHx8Cj4gPiA+ICAgICAgICAgICFjbGllbnRf
c3RhcnRfcmVhZChjbGllbnQpKSB7Cj4gPiA+ICAgICAgICAgIHJlbW92ZV9jbGllbnQoY2xpZW50
KTsKPiA+ID4gQEAgLTI0OSw4ICsyNDksNiBAQCBzdGF0aWMgdm9pZCBzZXJ2ZXJfcmVwbHlfY2Io
R09iamVjdCAqc291cmNlX29iamVjdCwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBncG9pbnRlciB1c2VyX2RhdGEpCj4gPiA+ICB7Cj4gPiA+ICAgICAgQ2xpZW50ICpjbGllbnQg
PSB1c2VyX2RhdGE7Cj4gPiA+IC0gICAgU3BpY2VXZWJkYXZDaGFubmVsUHJpdmF0ZSAqYyA9IGNs
aWVudC0+c2VsZi0+cHJpdjsKPiA+ID4gLSAgICBHT3V0cHV0U3RyZWFtICptdXhfb3V0Owo+ID4g
PiAgICAgIEdFcnJvciAqZXJyID0gTlVMTDsKPiA+ID4gICAgICBnc3NpemUgc2l6ZTsKPiA+ID4K
PiA+ID4gQEAgLTI2MiwxMyArMjYwLDEyIEBAIHN0YXRpYyB2b2lkIHNlcnZlcl9yZXBseV9jYihH
T2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAo+ID4gPiAgICAgIGdfcmV0dXJuX2lmX2ZhaWwoc2l6ZSA+
PSAwKTsKPiA+ID4gICAgICBjbGllbnQtPm11eC5zaXplID0gR1VJTlQxNl9UT19MRShzaXplKTsK
PiA+ID4KPiA+ID4gLSAgICBtdXhfb3V0ID0gZ19pb19zdHJlYW1fZ2V0X291dHB1dF9zdHJlYW0o
R19JT19TVFJFQU0oYy0+c3RyZWFtKSk7Cj4gPiA+IC0KPiA+ID4gLSAgICAvKiB0aGlzIGludGVy
bmFsbHkgdXNlcyBzcGljZV92bWNfd3JpdGVfYXN5bmMoKSwgcHJpb3JpdHkgaXMgaWdub3JlZDsK
PiA+ID4gLSAgICAgKiB0aGUgY2FsbGJhY2sgaXMgaW52b2tlZCBvbmNlIHRoZSBtc2cgaXMgd3Jp
dHRlbiBvdXQgdG8gdGhlIHNvY2tldCAqLwo+ID4gPiAtICAgIGdfb3V0cHV0X3N0cmVhbV93cml0
ZV9hbGxfYXN5bmMobXV4X291dCwgKGd1aW50OCAqKSZjbGllbnQtPm11eCwgc2l6ZW9mKGdpbnQ2
NCkgKyBzaXplb2YoZ3VpbnQxNikgKyBzaXplLAo+ID4gPiAtICAgICAgICBHX1BSSU9SSVRZX0RF
RkFVTFQsIGNsaWVudC0+Y2FuY2VsbGFibGUsIG11eF9tc2dfZmx1c2hlZF9jYiwgY2xpZW50KTsK
PiA+ID4gLQo+ID4gPiArICAgIHNwaWNlX3ZtY193cml0ZV9hc3luYyhTUElDRV9DSEFOTkVMKGNs
aWVudC0+c2VsZiksCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICZjbGllbnQtPm11
eCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKGdpbnQ2NCkgKyBzaXpl
b2YoZ3VpbnQxNikgKyBzaXplLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBjbGll
bnQtPmNhbmNlbGxhYmxlLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBtdXhfbXNn
X2ZsdXNoZWRfY2IsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIGNsaWVudCk7Cj4g
PiA+ICAgICAgcmV0dXJuOwo+ID4gPgo+ID4gPiAgZW5kOgo+ID4gPiAtLQo+ID4gPiAyLjIxLjAK
PiA+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
