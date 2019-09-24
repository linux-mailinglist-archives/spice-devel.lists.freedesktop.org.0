Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6BBC780
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 14:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE7B89E5B;
	Tue, 24 Sep 2019 12:03:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E41289E5B
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:03:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 192AF307D9CF
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:03:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1072C5D9CA
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:03:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02D3C1808878;
 Tue, 24 Sep 2019 12:03:29 +0000 (UTC)
Date: Tue, 24 Sep 2019 08:03:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <953184562.3068982.1569326608824.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190924111733.6i4zltbv5ky2kcbn@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <20190924111733.6i4zltbv5ky2kcbn@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.6]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: OA0jtCKm0iE94FIXgSnm5tTXTORwRg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 24 Sep 2019 12:03:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
 RedCharDevice pipe items handling
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

PiAKPiBIaSwKPiAKPiBPbiBNb24sIEp1biAxNywgMjAxOSBhdCAwNDo0MDowOFBNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBBcyB3ZSBkb24ndCB1c2UgYW55IHRva2VuIHRoZXJl
J3Mgbm8gcmVhc29uIHRvIG5vdCBxdWV1ZSBkaXJlY3RseSBpbnN0ZWFkCj4gPiBvZiBwYXNzaW5n
IHRocm91Z2ggUmVkQ2hhckRldmljZS4KPiA+IFRoaXMgd2lsbCBtYWtlIGVhc2llciB0byBsaW1p
dCB0aGUgcXVldWUgd2hpY2ggY3VycmVudGx5IGlzIHVubGltaXRlZC4KPiA+IAo+ID4gUmVkQ2hh
ckRldmljZSBmbG93IGNvbnRyb2wgaGFzIHNvbWUgcHJvYmxlbXM6Cj4gPiAtIGl0J3MgcmVhbGx5
IGRlc2lnbmVkIHdpdGggVkRJIGluIG1pbmQuIFRoaXMgZm9yIFNwaWNlVk1DIHdvdWxkIGNhdXNl
Cj4gPiAgIGNvZGUgaW1wbGVtZW50YXRpb24gdG8gYmUgY29uZnVzaW5nIGhhdmluZyB0byBzYXRp
c2Z5IHRoZSBhZ2VudCB0b2tlbgo+ID4gICBoYW5kbGluZzsKPiA+IC0gaXQncyB1c2luZyBpdGVt
cyBhcyB1bml0IG5vdCBhbGxvd2luZyBjb3VudGluZyBieXRlczsKPiA+IC0gaXQgZHVwbGljYXRl
cyBzb21lIHF1ZXVlIG1hbmFnZW1lbnQgYmV0d2VlbiBSZWRDaGFubmVsQ2xpZW50Owo+ID4gLSBp
dCdzIGJyb2tlbiAoc2VlIGNvbW1lbnRzIGluIGNoYXItZGV2aWNlLmgpOwo+ID4gLSBpdCBmb3Jj
ZXMgImNsaWVudHMiIHRvIGJlaGF2ZSBpbiBzb21lIHdheSBub3QgYWx0ZXJpbmcgZm9yIGluc3Rh
bmNlIHRoZQo+ID4gICBxdWV1ZWQgaXRlbXMgKHdoaWNoIGlzIHZlcnkgdXNlZnVsIGlmIGl0ZW1z
IGNhbiBiZSBjb2xsYXBzZWQgdG9nZXRoZXIpOwo+ID4gLSBpdCByZXBsaWNhdGVzIHRoZSB0b2tl
biBoYW5kbGluZyBvbiB0aGUgZGV2aWNlIHF1ZXVlIHRvby4gVGhpcyBjb3VsZAo+ID4gICBzZWVt
cyByaWdodCBidXQgaXMgbm90IHRoYXQgaWYgeW91IGhhdmUgYSBuZXR3b3JrIGNhcmQgZ29pbmcg
QCAxIEdCaXQvcwo+ID4gICB5b3UgYXJlIGFibGUgdG8gdXBsb2FkIG1vcmUgdGhhbiAxIEdiaXQv
cyBqdXN0IHVzaW5nIG11bHRpcGxlCj4gPiAgIGNvbm5lY3Rpb25zLiBUaGUga2VybmVsIHdpbGwg
dXNlIGEgc2luZ2xlIHF1ZXVlIGZvciB0aGUgbmV0d29yayBpbnRlcmZhY2UKPiA+ICAgbGltaXRp
bmcgYW5kIHNoYXJpbmcgZGUgZmFjdG8gdGhlIHZhcmlvdXMgYnVmZmVycyBiZXR3ZWVuIHRoZSBt
dWx0aXBsZQo+ID4gICBjb25uZWN0aW9ucy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjI6
Cj4gPiAtIG1vcmUgY29tbWl0IG1lc3NhZ2UgY29tbWVudHMKPiA+IC0tLQo+ID4gIHNlcnZlci9z
cGljZXZtYy5jIHwgMTUgKysrKystLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
c3BpY2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiBpbmRleCA4NGJiYjczYzIuLjhjNDE1
NzNhZSAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9zcGljZXZtYy5jCj4gPiArKysgYi9zZXJ2ZXIv
c3BpY2V2bWMuYwo+ID4gQEAgLTM2MCwyOSArMzYwLDI0IEBAIHN0YXRpYyBSZWRQaXBlSXRlbQo+
ID4gKnNwaWNldm1jX2NoYXJkZXZfcmVhZF9tc2dfZnJvbV9kZXYoUmVkQ2hhckRldmljZSAqc2Vs
ZiwKPiA+ICAKPiA+ICAgICAgICAgIG1zZ19pdGVtX2NvbXByZXNzZWQgPSB0cnlfY29tcHJlc3Nf
bHo0KGNoYW5uZWwsIG4sIG1zZ19pdGVtKTsKPiA+ICAgICAgICAgIGlmIChtc2dfaXRlbV9jb21w
cmVzc2VkICE9IE5VTEwpIHsKPiA+IC0gICAgICAgICAgICByZXR1cm4gJm1zZ19pdGVtX2NvbXBy
ZXNzZWQtPmJhc2U7Cj4gPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRk
X3B1c2goY2hhbm5lbC0+cmNjLAo+ID4gJm1zZ19pdGVtX2NvbXByZXNzZWQtPmJhc2UpOwo+ID4g
KyAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gICAgICAgICAgfQo+ID4gICNlbmRpZgo+ID4g
ICAgICAgICAgc3RhdF9pbmNfY291bnRlcihjaGFubmVsLT5vdXRfZGF0YSwgbik7Cj4gPiAgICAg
ICAgICBtc2dfaXRlbS0+dW5jb21wcmVzc2VkX2RhdGFfc2l6ZSA9IG47Cj4gPiAgICAgICAgICBt
c2dfaXRlbS0+YnVmX3VzZWQgPSBuOwo+ID4gLSAgICAgICAgcmV0dXJuICZtc2dfaXRlbS0+YmFz
ZTsKPiA+IC0gICAgfSBlbHNlIHsKPiA+IC0gICAgICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1z
Z19pdGVtOwo+ID4gKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hh
bm5lbC0+cmNjLCAmbXNnX2l0ZW0tPmJhc2UpOwo+ID4gICAgICAgICAgcmV0dXJuIE5VTEw7Cj4g
PiAgICAgIH0KPiA+ICsgICAgY2hhbm5lbC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gPiArICAg
IHJldHVybiBOVUxMOwo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCBzcGljZXZtY19jaGFy
ZGV2X3NlbmRfbXNnX3RvX2NsaWVudChSZWRDaGFyRGV2aWNlICpzZWxmLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZFBpcGVJdGVtICptc2cs
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVk
Q2xpZW50ICpjbGllbnQpCj4gPiAgewo+ID4gLSAgICBSZWRDaGFyRGV2aWNlU3BpY2VWbWMgKnZt
YyA9IFJFRF9DSEFSX0RFVklDRV9TUElDRVZNQyhzZWxmKTsKPiA+IC0gICAgUmVkVm1jQ2hhbm5l
bCAqY2hhbm5lbCA9IFJFRF9WTUNfQ0hBTk5FTCh2bWMtPmNoYW5uZWwpOwo+ID4gLQo+ID4gLSAg
ICBzcGljZV9hc3NlcnQocmVkX2NoYW5uZWxfY2xpZW50X2dldF9jbGllbnQoY2hhbm5lbC0+cmNj
KSA9PSBjbGllbnQpOwo+ID4gLSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwo+ID4gLSAgICBy
ZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsIG1zZyk7Cj4gPiAg
fQo+IAo+IElzIGl0IHdvcnRoIHRvIDEpIHVwZGF0ZSBjaGFyLWRldmljZS5oIHRoYXQgdGhpcyBp
cyBpcyBub3QgdXNlZAoKSXQgZG9lcyBub3Qgc2VlbSBhIGdyZWF0IGlkZWEgdG8gbWUuCgpJIHdv
dWxkIGp1c3QgYWRkIHRvIHNlbmRfbXNnX3RvX2NsaWVudCB0aGF0IHRoaXMgY2FsbGJhY2sgY2Fu
IGJlCk5VTEwgaWYgd2UgYWxsb3cgdGhhdC4gQW5kIHByb2JhYmx5IGl0J3MgYSBnb29kIGlkZWEg
YXMgbWVzc2FnZXMKYXJlIGFjY291bnRlZCBmb3IgdG9rZW4gY29tcHV0YXRpb24gYW5kIHRva2Vu
IGNhbGxiYWNrcyBhcmUgcHJvdGVjdGVkCmJ5IGEgImlmIChjYWxsYmFjayAhPSBOVUxMKSIgY2hl
Y2suCgpJc24ndCBiZXR0ZXIgdGhlIGNoYW5nZSBpbiBhIGZvbGxvdyB1cCBwYXRjaD8KCj4gaW4g
c3BpY2V2bWM7IDIpIHVwZGF0ZSBjaGFyLWRldmljZS5jIHdpdGgKPiAKPiAgICAgLSAgIGtsYXNz
LT5zZW5kX21zZ190b19jbGllbnQoZGV2LCBtc2csIGNsaWVudCk7Cj4gICAgICsgICBpZiAoa2xh
c3MtPnNlbmRfbXNnX3RvX2NsaWVudCkgewo+ICAgICArICAgICAgIGtsYXNzLT5zZW5kX21zZ190
b19jbGllbnQoZGV2LCBtc2csIGNsaWVudCk7Cj4gICAgICsgICB9Cj4gCj4gYW5kIHJlbW92ZSB0
aGlzIGZ1bmN0aW9uPzsKPiAKPiBQYXRjaCBsb29rcyBnb29kLgo+IAo+ID4gIHN0YXRpYyB2b2lk
IHJlZF9wb3J0X2luaXRfaXRlbV9mcmVlKHN0cnVjdCBSZWRQaXBlSXRlbSAqYmFzZSkKCkZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
