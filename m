Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E842B8A6
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2019 17:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6299E89BB0;
	Mon, 27 May 2019 15:58:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EB289BB0
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2019 15:58:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 640AA30C0DC6;
 Mon, 27 May 2019 15:58:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C3404AE;
 Mon, 27 May 2019 15:58:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 528C324AFA;
 Mon, 27 May 2019 15:58:35 +0000 (UTC)
Date: Mon, 27 May 2019 11:58:33 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <1053966795.20226820.1558972713015.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAH=CeiAX_ppz=18c90RKZXOg4ahu1WS29FgnJNJqss2S6mODtA@mail.gmail.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-4-jjanku@redhat.com>
 <CAJ+F1C+PVrYZa=ZcjKvAqF_fdd21FGh_wGOSQcrf_HDFoduk5Q@mail.gmail.com>
 <CAH=CeiAX_ppz=18c90RKZXOg4ahu1WS29FgnJNJqss2S6mODtA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.4]
Thread-Topic: spice: handle SIGINT properly
Thread-Index: e+atv6eU8WMOssW7aSr4qoRRd0P3cQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 27 May 2019 15:58:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH phodav 03/13] spice: handle SIGINT properly
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

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIE1heSAyMywgMjAxOSBhdCAzOjMxIFBNIE1hcmMtQW5kcsOp
IEx1cmVhdQo+IDxtYXJjYW5kcmUubHVyZWF1QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkK
PiA+Cj4gPiBPbiBUaHUsIE1heSAyMywgMjAxOSBhdCAxMDozNyBBTSBKYWt1YiBKYW5rxa8gPGpq
YW5rdUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gQWNjb3JkaW5nIHRvIFswXSwgZ19k
ZWJ1ZyBzaG91bGQgbm90IGJlIHVzZWQgaW4gYSBzaWduYWwgaGFuZGxlci4KPiA+ID4gU28sIHRv
IGF2b2lkIHJlZW50cmFuY3ksIGRvIG5vdCBwcmludCBkZWJ1ZyBtZXNzYWdlIHdoZW4gcXVpdCBp
cwo+ID4gPiBjYWxsZWQgd2l0aCBTSUdJTlQuCj4gPiA+Cj4gPiA+IFswXQo+ID4gPiBodHRwczov
L2RvY3MubWljcm9zb2Z0LmNvbS9lbi11cy9jcHAvYy1ydW50aW1lLWxpYnJhcnkvcmVmZXJlbmNl
L3NpZ25hbD92aWV3PXZzLTIwMTkKPiA+ID4KCj8/Pz8KClRoZSBxdWl0IGZ1bmN0aW9uIGlzIGNh
bGxlZCBieSBzaWduYWwgaGFuZGxlciBvciAibWFudWFsbHkiLgpJZiBjYWxsZWQgbWFudWFsbHkg
aXQncyBub3QgYSBwcm9ibGVtLiAKVGhlIG9ubHkgc2lnbmFsIHJlZ2lzdGVyZWQgZm9yIHRoaXMg
ZnVuY3Rpb24gaXMgU0lHSU5UIHdoaWNoIGluIFdpbmRvd3MKaXMgbWFuYWdlZCBieSBhbm90aGVy
IHRocmVhZCAoYXMgd3JpdHRlbiBpbiB0aGUgbGluayB5b3Ugc2VudCwgYW5kIGJ5IHRoZQp3YXkg
aXMgaGFuZGxlZCBieSBTZXRDb25zb2xlQ3RybEhhbmRsZXIpIHNvIGl0J3Mgbm90IGEgcHJvYmxl
bSB0byBjYWxsCmdfZGVidWcuIE5vdGUgdGhhdCB0aGlzIGZ1bmN0aW9uIGlzIGFsc28gY2FsbGVk
IG1hbnVhbGx5IHdpdGggU0lHVEVSTSBidXQKc3RpbGwgbm90IGEgcHJvYmxlbSBvbiBXaW5kb3dz
IGFzIHNlcnZpY2VfY3RybF9oYW5kbGVyIGlzIHJ1biBpbiBhbm90aGVyCnRocmVhZC4KClRoZSBw
cm9ibGVtcyBJIHNlZSBpcyB0aGF0IHF1aXRfc2VydmljZSBzaG91bGQgYmUgZGVmaW5lZCB2b2xh
dGlsZSBhbmQKZ19tYWluX2xvb3BfcXVpdCBzaG91bGQgbm90IGJlIGNhbGxlZCBvbiBVbml4ISBJ
ZiBhIGxvY2sgdXNlZCBieSAKZ19tYWluX2xvb3BfcXVpdCBpcyByZXRhaW5lZCB3aGlsZSB0aGUg
c2lnbmFsIGlzIGNhbGxlZCB5b3UnbGwgaGF2ZQphIGRlYWRsb2NrLgpNYXliZSBJJ20gd3Jvbmcg
YnV0IEkgZGlkbid0IGZpbmQgYSBub3RlIGlmIGdfbWFpbl9sb29wX3F1aXQgaXMgc2lnbmFsCnNh
ZmUgc28gYmV0dGVyIG5vdCB0byBjYWxsIGl0IGZyb20gYSBzaWduYWwgaGFuZGxlci4KZ191bml4
X3NpZ25hbF9hZGQgc2VlbXMgYSBnb29kIHNvbHV0aW9uIGZvciBVbml4LgoKPiA+ID4gU2lnbmVk
LW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+
ICBzcGljZS9zcGljZS13ZWJkYXZkLmMgfCAzICsrLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvc3Bp
Y2Uvc3BpY2Utd2ViZGF2ZC5jIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gPiA+IGluZGV4IGU0
OTQ2OTIuLmNkZmE3M2QgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+
ID4gPiArKysgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKPiA+ID4gQEAgLTIzNyw3ICsyMzcsOCBA
QCBzdGF0aWMgdm9pZCBtZG5zX3VucmVnaXN0ZXJfc2VydmljZSAodm9pZCk7Cj4gPiA+ICBzdGF0
aWMgdm9pZAo+ID4gPiAgcXVpdCAoaW50IHNpZykKPiA+ID4gIHsKPiA+ID4gLSAgZ19kZWJ1ZyAo
InF1aXQgJWQiLCBzaWcpOwo+ID4gPiArICBpZiAoc2lnICE9IFNJR0lOVCkKPiA+ID4gKyAgICBn
X2RlYnVnICgicXVpdCAlZCIsIHNpZyk7Cj4gPiA+Cj4gPgo+ID4gSSB3b3VsZCBzaW1wbHkgcmVt
b3ZlIHRoZSBnX2RlYnVnKCkgY2FsbCB0aGVuLgo+IAo+IE9rIHRoZW4uCj4gCj4gT24gVW5peCwg
d2UgY291bGQgdXNlIGdfdW5peF9zaWduYWxfYWRkLCBJJ2xsIGNoYW5nZSBpdC4KPiBCdXQgc2Fk
bHkgdGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGEgV2luZG93cyBlcXVpdmFsZW50Lgo+IAo+IENo
ZWVycywKPiBKYWt1Ygo+ID4KPiA+IChtYXliZSB3ZSBzaG91bGQgaGF2ZSBhIGRpZmZlcmVudCBm
dW5jdGlvbiBmb3IgdGhlIHNpZ25hbCBoYW5kbGVyKQo+ID4KCkl0IHNvdW5kcyBhIGdyZWF0IGlk
ZWEuCgo+ID4gPiAgICBpZiAoc2lnID09IFNJR0lOVCB8fCBzaWcgPT0gU0lHVEVSTSkKPiA+ID4g
ICAgICAgIHF1aXRfc2VydmljZSA9IFRSVUU7CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
