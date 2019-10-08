Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DD3CFBD8
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 16:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829C36E7C0;
	Tue,  8 Oct 2019 14:04:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753A16E7C0
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:04:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 123C5A44ADE
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:04:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0947D19C69
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:04:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 00E724EE68;
 Tue,  8 Oct 2019 14:04:25 +0000 (UTC)
Date: Tue, 8 Oct 2019 10:04:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1186654320.5965274.1570543465788.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191008123218.vk5uawidlweqxljy@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-2-fziglio@redhat.com>
 <20191008123218.vk5uawidlweqxljy@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.12]
Thread-Topic: test-stream-device: Factor out VMC emulation
Thread-Index: 7QEIfpxUzZFFORSLMGqzttZ/ZlSiMw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 08 Oct 2019 14:04:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/8] test-stream-device:
 Factor out VMC emulation
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

PiAKPiBPbiBNb24sIE9jdCAwNywgMjAxOSBhdCAxMTozODo1OUFNICswMTAwLCBGcmVkaWFubyBa
aWdsaW8gd3JvdGU6Cj4gPiBBbGxvd3MgdG8gcmV1c2UgY29kZSBmb3IgZW11bGF0aW5nIGEgY2hh
cmFjdGVyIGRldmljZS4KPiA+IEl0IHdpbGwgYmUgdXNlZCBmb3IgU21hcmRjYXJkIHRlc3QuCj4g
PiAKCi4uLgoKPiA+ICsKPiA+ICt2b2lkIHZtY19lbXVfcmVzZXQoVm1jRW11ICp2bWMpCj4gPiAr
ewo+ID4gKyAgICB2bWMtPnBvcyA9IDA7Cj4gPiArICAgIHZtYy0+d3JpdGVfcG9zID0gMDsKPiA+
ICsgICAgdm1jLT5tZXNzYWdlX3NpemVzX2N1cnIgPSB2bWMtPm1lc3NhZ2Vfc2l6ZXM7Cj4gPiAr
ICAgIHZtYy0+bWVzc2FnZV9zaXplc19lbmQgPSB2bWMtPm1lc3NhZ2Vfc2l6ZXM7Cj4gPiArfQo+
ID4gKwo+ID4gK3ZvaWQgdm1jX2VtdV9hZGRfcmVhZF90aWxsKFZtY0VtdSAqdm1jLCB1aW50OF90
ICplbmQpCj4gPiArewo+ID4gKyAgICBnX2Fzc2VydCh2bWMtPm1lc3NhZ2Vfc2l6ZXNfZW5kIC0g
dm1jLT5tZXNzYWdlX3NpemVzIDwKPiA+IEdfTl9FTEVNRU5UUyh2bWMtPm1lc3NhZ2Vfc2l6ZXMp
KTsKPiAKPiBJJ2QgbW92ZSB0aGUgdW5zaWduZWQgc2l6ZSBoZXJlIGFuZCBjaGFuZ2UgYm90aCBh
c3NlcnRzIHRvIHVzZQo+IGl0LCB0aGF0IGlzOgo+IAo+ICAgICB1bnNpZ25lZCBzaXplID0gZW5k
IC0gdm1jLT5tZXNzYWdlOwo+ICAgICBnX2Fzc2VydChzaXplID49IDApOwo+ICAgICBnX2Fzc2Vy
dChzaXplIDw9IEdfTl9FTEVNRU5UUyh2bWMtPm1lc3NhZ2UpKTsKPiAKClRoZXkgYXJlIG5vdCBl
eGFjdGx5IHRoZSBzYW1lLgpzaXplID49IDAgd2lsbCBiZSBhbHdheXMgdHJ1ZSwgaXQncyB1bnNp
Z25lZCB3aGlsZSB0aGUgaW5pdGlhbCBjaGVjawpjb3VsZCBiZSBmYWxzZS4KQWxzbyBjaGVja2lu
ZyBlbmQgLSB2bWMtPm1lc3NhZ2UgPD0gR19OX0VMRU1FTlRTKHZtYy0+bWVzc2FnZSkgYW5kCnVz
aW5nIHNpemUgaW5zdGVhZCBjb3VsZCBoYXZlIGRpZmZlcmVudCByZXN1bHRzIGluIGNhc2UgdGhl
IGRpZmZlcmVuY2UKaXMgdHJ1bmNhdGVkIHRvIGZpdCBpbiBhbiB1bnNpZ25lZCAoZm9yIGluc3Rh
bmNlIGlmIHVuc2lnbmVkIGlzIDMyIGJpdAphbmQgZW5kIC0gdm1jLT5tZXNzYWdlIGlzIG1vcmUg
dGhhbiAyKiozMikuCgo+IFRoaXMgaXMgbXkgb25seSBuaXRwaWNrIGZvciB0aGlzIHBhdGNoLCBm
ZWVsIGZyZWUgdG8gaWdub3JlIGlmCj4geW91IHdhbnQKPiAKPiAgICAgQWNrZWQtYnk6IFZpY3Rv
ciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gCj4gPiArICAgIGdfYXNzZXJ0KGVuZCA+
PSB2bWMtPm1lc3NhZ2UpOwo+ID4gKyAgICBnX2Fzc2VydChlbmQgLSB2bWMtPm1lc3NhZ2UgPD0g
R19OX0VMRU1FTlRTKHZtYy0+bWVzc2FnZSkpOwo+ID4gKyAgICB1bnNpZ25lZCBwcmV2X3NpemUg
PQo+ID4gKyAgICAgICAgdm1jLT5tZXNzYWdlX3NpemVzX2VuZCA+IHZtYy0+bWVzc2FnZV9zaXpl
cyA/Cj4gPiB2bWMtPm1lc3NhZ2Vfc2l6ZXNfZW5kWy0xXSA6IDA7Cj4gCj4gRm9yZ290IGhvdyBs
b25nIHNpbmNlIEkgc2F3IGEgbmVnYXRpdmUgaW5kZXggaW4gQyEKPiAKPiA+ICsgICAgdW5zaWdu
ZWQgc2l6ZSA9IGVuZCAtIHZtYy0+bWVzc2FnZTsKPiA+ICsgICAgZ19hc3NlcnQoc2l6ZSA+PSBw
cmV2X3NpemUpOwo+ID4gKyAgICAqdm1jLT5tZXNzYWdlX3NpemVzX2VuZCA9IHNpemU7Cj4gPiAr
ICAgICsrdm1jLT5tZXNzYWdlX3NpemVzX2VuZDsKPiA+ICt9CgpNb3N0bHkgT1Q6CgpUaGlzIGlz
IGp1c3QgY29kZSBmb3IgdGVzdCBzbyBpdCdzIG5vdCBtZWFudCB0byBiZSAic2FmZSIgYnV0IGl0
IHNlZW1zCnRoYXQgYSBnb29kIHJ1bGUgZm9yIHNlY3VyaXR5IGNoZWNrcyBpcyAibGV0J3MgdGhl
IHVuc2FmZSBhbG9uZSIuCkp1c3QgYW4gZXhhbXBsZSwgaGF2aW5nIHRvIGNoZWNrIGlmIHdlIGhh
dmUgYSBmdWxsIG1lc3NhZ2Ugc29tZXRpbWVzCndlIGRvCgppZiAoc2l6ZW9mKGhlYWRlcikgKyBo
ZWFkZXIuc2l6ZSA+PSBidWZmZXJfc2l6ZSkgLi4uCgpUaGUgImhlYWRlci5zaXplIiB1c3VhbGx5
IGNhbWUgZnJvbSBuZXR3b3JrIHNvIHNob3VsZCBiZSBjb25zaWRlcmVkCnVuc2FmZSBidXQgaXQn
cyBub3QgYWxvbmUsIGJldHRlciB0byBjaGFuZ2UgdGhlIGNoZWNrIHRvCgppZiAoaGVhZGVyLnNp
emUgPj0gYnVmZmVyX3NpemUgLSBzaXplb2YoaGVhZGVyKSkgLi4uCgpUaGlzIHRvIGF2b2lkIHRo
ZSBwb3NzaWJsZSBvdmVyZmxvdyB3aXRoIHRoZSBhZGRpdGlvbiAoYW5kIEkgd291bGQKcmVtZW1i
ZXIgdGhhdCBtZW1vcnkgaXMgbm90IGluZmluaXRlIGJ1dCB0aGlzIGlzIGFub3RoZXIgc3Rvcnkp
LgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
