Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4441475603
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 19:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855516E7DF;
	Thu, 25 Jul 2019 17:46:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185466E7DF
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 17:46:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 75B8F30832EA;
 Thu, 25 Jul 2019 17:46:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 684AF19C7F;
 Thu, 25 Jul 2019 17:46:05 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5D0D61800205;
 Thu, 25 Jul 2019 17:46:05 +0000 (UTC)
Date: Thu, 25 Jul 2019 13:46:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <615004152.3040546.1564076765218.JavaMail.zimbra@redhat.com>
In-Reply-To: <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-3-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
 <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
 <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.18]
Thread-Topic: usb-redir: device error signal without device object
Thread-Index: Qnjfu4ui5VOYt5iwjITlBFRV3zxjnbPOX0Hi
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 25 Jul 2019 17:46:05 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiA+IAo+ID4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTI6MDEgUE0gRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiB3cm90ZToKPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEFk
ZCBhYmlsaXR5IHRvIGluZGljYXRlIGVycm9yIHRvIGV4dGVybmFsIG1vZHVsZXMgdmlhCj4gPiA+
ID4gJ2RldmljZSBlcnJvcicgc2lnbmFsIHdoZW4gcmVhbCBTcGljZVVzYkRldmljZSBpcyBub3Qg
cGFzc2VkLgo+ID4gPiA+IFRoaXMgaXMgbmVlZGVkIHRvIGluZGljYXRlIGVycm9yIGR1cmluZyBj
cmVhdGlvbiBvZiBlbXVsYXRlZAo+ID4gPiA+IGRldmljZSwgd2hlbiB0aGUgZGV2aWNlIGlzIG5v
dCBjcmVhdGVkIHlldC4gRm9yIHRoYXQgd2UKPiA+ID4gPiBhbGxvY2F0ZSB0ZW1wb3JhcnkgU3Bp
Y2VVc2JEZXZpY2Ugc3RydWN0dXJlIHdpdGggYmFja2VuZAo+ID4gPiA+IGRldmljZSBmaWVsZHMg
c2V0IHRvIE5VTEwgYW5kIHVzZSBpdCBmb3IgaW5kaWNhdGlvbi4gRGV2aWNlCj4gPiA+ID4gZGVz
Y3JpcHRpb24gZm9yIHN1Y2ggZGV2aWNlIHdpbGwgYmUgJ1VTQiBSZWRpcmVjdGlvbicuCj4gPiA+
ID4gVW5yZWZlcmVuY2luZyBvZiBzdWNoIGRldmljZSB3aWxsIGJlICdubyBvcGVyYXRpb24nLgo+
ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5k
aXRvdmljaEBkYXluaXguY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBzcmMvdXNiLWJhY2tlbmQu
YyAgICAgICAgfCAgMyArKysKPiA+ID4gPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMTQg
KysrKysrKysrKysrLS0KPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFj
a2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+ID4gPiBpbmRleCAwYmYyZWNjLi5jMTc5MTg4
IDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5jCj4gPiA+ID4gKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmMKPiA+ID4gPiBAQCAtNTI4LDYgKzUyOCw5IEBAIFNwaWNlVXNiQmFja2Vu
ZERldmljZQo+ID4gPiA+ICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVmKFNwaWNlVXNiQmFj
a2VuZERldmljZSAqZGV2KQo+ID4gPiA+Cj4gPiA+ID4gIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX3VucmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQo+ID4gPiA+ICB7Cj4gPiA+
ID4gKyAgICBpZiAoIWRldikgewo+ID4gPiA+ICsgICAgICAgIHJldHVybjsKPiA+ID4gPiArICAg
IH0KPiA+ID4gPiAgICAgIExPVURfREVCVUcoIiVzID4+ICVwKCVkKSIsIF9fRlVOQ1RJT05fXywg
ZGV2LCBkZXYtPnJlZl9jb3VudCk7Cj4gPiA+ID4gICAgICBpZiAoZ19hdG9taWNfaW50X2RlY19h
bmRfdGVzdCgmZGV2LT5yZWZfY291bnQpKSB7Cj4gPiA+ID4gICAgICAgICAgaWYgKGRldi0+bGli
dXNiX2RldmljZSkgewo+ID4gPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKPiA+ID4gPiBpbmRleCBhNTMwYmU5Li4wOTYx
ZDE2IDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gPiA+
ICsrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gPiA+IEBAIC05MzUsMTAgKzkzNSwx
NiBAQCBzdGF0aWMgdm9pZAo+ID4gPiA+IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jaGVja19y
ZWRpcl9vbl9jb25uZWN0KAo+ID4gPiA+ICB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9k
ZXZpY2VfZXJyb3IoCj4gPiA+ID4gICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKnNlbGYsIFNw
aWNlVXNiRGV2aWNlICpkZXZpY2UsIEdFcnJvciAqZXJyKQo+ID4gPiA+ICB7Cj4gPiA+ID4gKyAg
ICBTcGljZVVzYkRldmljZSAqZGV2ID0gZGV2aWNlOwo+ID4gPgo+ID4gPiAiZGV2IiBhbmQgImRl
dmljZSIgZG8gbm90IHNvdW5kIGdyZWF0LiBNYXliZSAidGVtcF9kZXYiIG9yICJmYWtlX2RldiIg
Pwo+ID4gPgo+ID4gPiA+ICAgICAgZ19yZXR1cm5faWZfZmFpbChTUElDRV9JU19VU0JfREVWSUNF
X01BTkFHRVIoc2VsZikpOwo+ID4gPiA+IC0gICAgZ19yZXR1cm5faWZfZmFpbChkZXZpY2UgIT0g
TlVMTCk7Cj4gPiA+ID4gLQo+ID4gPiA+ICsgICAgaWYgKGRldmljZSA9PSBOVUxMKSB7Cj4gPiA+
ID4gKyAgICAgICAgZGV2ID0gZ19uZXcwKFNwaWNlVXNiRGV2aWNlLCAxKTsKPiA+ID4gPiArICAg
ICAgICBkZXYtPnJlZiA9IDE7Cj4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gICAgICBnX3NpZ25hbF9l
bWl0KHNlbGYsIHNpZ25hbHNbREVWSUNFX0VSUk9SXSwgMCwgZGV2aWNlLCBlcnIpOwo+ID4gPgo+
ID4gPiBJZiBkZXZpY2Ugd2FzIGluaXRpYWxseSBOVUxMIGF0IGZ1bmN0aW9uIGNhbGwgdGhpcyBp
cyBzdGlsbCBOVUxMLgo+ID4gCj4gPiBTb3JyeSwgdHlwby4KPiA+IAo+ID4gPgo+ID4gPiA+ICsg
ICAgaWYgKGRldmljZSA9PSBOVUxMKSB7Cj4gPiA+ID4gKyAgICAgICAgc3BpY2VfdXNiX2Rldmlj
ZV91bnJlZihkZXYpOwo+ID4gPgo+ID4gPiBJZiBkZXZpY2Ugd2FzIE5VTEwgeW91IGFsbG9jYXRl
IGEgbmV3IGVtcHR5IFNwaWNlVXNiRGV2aWNlIGFuZAo+ID4gPiB0aGVuIGZyZWUgaXQuIE5vdCBz
dXJlIGlzIHdoYXQgeW91IHdhbnQgdG8gZG8uCj4gPiA+Cj4gPiA+ID4gKyAgICB9Cj4gCj4gSSB3
b3VsZCB0aGVuIHJld3JpdGUgYXMKPiAKPiB7Cj4gICAgIFNwaWNlVXNiRGV2aWNlICpkdW1teV9k
ZXZpY2UgPSBOVUxMOwo+ICAgICBnX3JldHVybl9pZl9mYWlsKFNQSUNFX0lTX1VTQl9ERVZJQ0Vf
TUFOQUdFUihzZWxmKSk7Cj4gCj4gICAgIGlmIChkZXZpY2UgPT0gTlVMTCkgewo+ICAgICAgICAg
ZHVtbXlfZGV2aWNlID0gZ19uZXcwKFNwaWNlVXNiRGV2aWNlLCAxKTsKPiAgICAgICAgIGR1bW15
X2RldmljZS0+cmVmID0gMTsKPiAgICAgICAgIGRldmljZSA9IGR1bW15X2RldmljZTsKPiAgICAg
fQo+ICAgICBnX3NpZ25hbF9lbWl0KHNlbGYsIHNpZ25hbHNbREVWSUNFX0VSUk9SXSwgMCwgZGV2
aWNlLCBlcnIpOwo+ICAgICBpZiAoZHVtbXlfZGV2aWNlICE9IE5VTEwpIHsKPiAgICAgICAgIHNw
aWNlX3VzYl9kZXZpY2VfdW5yZWYoZHVtbXlfZGV2aWNlKTsKPiAgICAgfQo+IH0KPiAKPiA+ID4g
PiAgfQo+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPgo+ID4gPiA+IEBAIC0xNDQwLDYgKzE0NDYsMTAg
QEAgZ2NoYXIKPiA+ID4gPiAqc3BpY2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VV
c2JEZXZpY2UKPiA+ID4gPiAqZGV2aWNlLCBjb25zdCBnY2hhciAqZm9yCj4gPiA+ID4KPiA+ID4g
PiAgICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGRldmljZSAhPSBOVUxMLCBOVUxMKTsKPiA+ID4g
Pgo+ID4gPiA+ICsgICAgaWYgKCFkZXZpY2UtPmJkZXYpIHsKPiA+ID4gPiArICAgICAgICByZXR1
cm4gZ19zdHJkdXAoXygiVVNCIHJlZGlyZWN0aW9uIikpOwo+ID4gPiA+ICsgICAgfQo+ID4gPiA+
ICsKPiA+ID4gPiAgICAgIGJ1cyAgICAgPSBzcGljZV91c2JfZGV2aWNlX2dldF9idXNudW0oZGV2
aWNlKTsKPiA+ID4gPiAgICAgIGFkZHJlc3MgPSBzcGljZV91c2JfZGV2aWNlX2dldF9kZXZhZGRy
KGRldmljZSk7Cj4gPiA+ID4gICAgICB2aWQgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRfdmlk
KGRldmljZSk7Cj4gPiA+CgpPaywgbm93IEkgaGFkIHVuZGVyc3RhbmQgdGhpcyBwYXRjaC4gVGhp
cyBpcyByZW1vdmluZyB0aGUKYXNzdW1wdGlvbiB0aGF0IGJkZXYgaXMgbmV2ZXIgTlVMTC4KT25s
eSB0byBzdXBwb3J0IGNhbGxpbmcgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2RldmljZV9lcnJv
cgp3aXRoIGEgTlVMTCBkZXZpY2UuCkkgd291bGQgc2F5IG5hY2sgdG8gdGhpcyBwYXRjaCBhbmQg
ZmluZCBhbm90aGVyIHNvbHV0aW9uLgpNYXliZSBhZGRpbmcgYSAiZGV2aWNlX2NyZWF0aW9uX2Vy
cm9yIiBzaWduYWwgd2l0aCAiZXJyb3IiCmJ1dCBubyBkZXZpY2UuClRoaXMgaXMgbm90IGEgZGV2
aWNlIGVycm9yLCBpdCdzIGEgZGV2aWNlIG1hbmFnZXIgZXJyb3IuClRoaXMgaXMgY2F1c2VkIGJ5
IHdhbnRpbmcgdG8gdXNlIGFuIGludGVyZmFjZSAocHJvcGVydGllcykKdGhhdCBkb2VzIG5vdCBh
bGxvdyB0byByZXR1cm4gYW4gZXJyb3IgaW5zdGVhZC4KCkZyZWRpYW5vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
