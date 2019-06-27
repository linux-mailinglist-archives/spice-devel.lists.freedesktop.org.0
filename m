Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A43795855E
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 17:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B426E055;
	Thu, 27 Jun 2019 15:16:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB3006E055
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:16:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A71BB2DEA
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:16:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6074E1A927
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:16:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5740D206D1;
 Thu, 27 Jun 2019 15:16:30 +0000 (UTC)
Date: Thu, 27 Jun 2019 11:16:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <1711709844.25014858.1561648588881.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAH=CeiDWC9p0RVA2TKLwn_zxhHmzJ3KOg1yMihdjhbP4wnVapA@mail.gmail.com>
References: <20190626080222.8434-1-jjanku@redhat.com>
 <36729848.24945003.1561623044903.JavaMail.zimbra@redhat.com>
 <CAH=CeiDWC9p0RVA2TKLwn_zxhHmzJ3KOg1yMihdjhbP4wnVapA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.9]
Thread-Topic: spice-channel: return if has_error is TRUE in
 spice_channel_write_msg
Thread-Index: vZA9P+4nfxR4XmB/DHIdWrLDKzXJ6Q==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 27 Jun 2019 15:16:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-channel: return if
 has_error is TRUE in spice_channel_write_msg
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

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIEp1biAyNywgMjAxOSBhdCAxMDoxMCBBTSBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPgo+ID4gPiBBdm9pZCBs
aW5lYXJpemluZyBpZiB0aGUgbWVzc2FnZSBpc24ndCB3cml0dGVuIG91dCBhbnl3YXkKPiA+Cj4g
PiAibGluZWFyaXppbmciID8gV2hhdCBkbyB5b3UgbWVhbiBhYm91dCB0aGF0Pwo+ID4gTG9va2lu
ZyBhdCBkZWZpbml0aW9ucyBpdCBzZWVtcyBub3QgY29ycmVjdCB0byBtZS4KPiAKPiBJIHdhcyBz
aW1wbHkgcmVmZXJyaW5nIHRvIHRoZSBzcGljZV9tYXJzaGFsbGVyX2xpbmVhcml6ZSgpIGNhbGwu
CgpTbyBtYXliZToKCiJBdm9pZCBjYWxsaW5nIHNwaWNlX21hcnNoYWxsZXJfbGluZWFyaXplKCkg
aWYgdGhlIG1lc3NhZ2UgaXNuJ3Qgd3JpdHRlbiBvdXQKYW55d2F5IChzcGljZV9jaGFubmVsX2Zs
dXNoX3dpcmUgY2hlY2tzKCkgdGhpcyBjb25kaXRpb24gYXMgd2VsbCkuIgoKc3VyZWx5IHRvbW9y
cm93IEkgd29uJ3QgcmVtZW1iZXIgd2hhdCB5b3UgZXhwbGFpbmVkLgoKPiA+Cj4gPiA+IChzcGlj
ZV9jaGFubmVsX2ZsdXNoX3dpcmUgY2hlY2tzKCkgdGhpcyBjb25kaXRpb24gYXMgd2VsbCkuCj4g
PiA+Cj4gPiA+IFRoaXMgYWxzbyBzaWxlbmNlcyB0aGUgZm9sbG93aW5nIGVycm9yOgo+ID4gPgo+
ID4gPiAgICAgKHNwaWN5OjMyMDg3KTogR1NwaWNlLUNSSVRJQ0FMICoqOiAxNjoyMjowMy4xNDc6
Cj4gPiA+ICAgICBzcGljZV9zZXNzaW9uX2dldF9yZWFkX29ubHk6IGFzc2VydGlvbiAnU1BJQ0Vf
SVNfU0VTU0lPTihzZWxmKScKPiA+ID4gICAgIGZhaWxlZAo+ID4gPgo+ID4gPiB0aGF0IGNhbiBi
ZSBzZWVuIGlmIHRoZSBjaGFubmVsIGdldHMgZGlzY29ubmVjdGVkCj4gPiA+IGJ5IHRoZSBzZXNz
aW9uIHdoaWxlIGhhdmluZyBub24tZW1wdHkgd3JpdGUgcXVldWUuCj4gPiA+Cj4gPiA+IHNwaWNl
X3Nlc3Npb25fY2hhbm5lbF9kZXN0cm95KCkgc2V0cyBjaGFubmVsLT5wcml2LT5zZXNzaW9uIHRv
IE5VTEwsCj4gPiA+IGJ1dCBzcGljZV9jaGFubmVsX3dyaXRlX21zZygpIHN1YnNlcXVlbnRseSBh
dHRlbXB0cyB0byBjYWxsCj4gPiA+IHNwaWNlX3Nlc3Npb25fZ2V0X3JlYWRfb25seSgpIHdpdGgg
TlVMTCBwb2ludGVyLgo+ID4gPgo+ID4KPiA+IE1pbm9yOiB0aGlzIGlzIHRoZSBleHBsYW5hdGlv
biB3aHkgdGhlIGVycm9yIG9uIHRoZSBwcmV2aW91cwo+ID4gcGFyYWdyYXBoIHNob3VsZCBub3Qg
YmUgdHJlYXRlZCBsaWtlIGFuIGVycm9yLCBJIHRoaW5rIGl0IHNob3VsZAo+ID4gYmUgdGhlIHNh
bWUgcGFyYWdyYXBocy4KPiAKPiBNYWtlcyBzZW5zZS4KPiA+Cj4gPiBPVDogbWF5YmUgY2hhbm5l
bCBzZXNzaW9uIHNob3VsZCBuZXZlciBiZSBOVUxMPwo+IAo+IEl0IGluZGVlZCBkb2VzIHNlZW0g
d2VpcmQgdGhhdAo+IGdfY2xlYXJfb2JqZWN0KCZjaGFubmVsLT5wcml2LT5zZXNzaW9uKTsgaXMg
Y2FsbGVkIHdoZW4gdGhlCj4gInNwaWNlLXNlc3Npb24iIHByb3BlcnR5IG9mIHRoZSBjaGFubmVs
IGlzIEdfUEFSQU1fQ09OU1RSVUNUX09OTFkgLS0KPiB3aXRoIHRoaXMgZmxhZywgSSB3b3VsZCBl
eHBlY3QgdGhlIHByb3BlcnR5IHRvIG5vdCBjaGFuZ2UgYWZ0ZXIgdGhlCj4gY29uc3RydWN0aW9u
Lgo+IAo+IFNwaWNlIHNlc3Npb24gd2FpdHMgZm9yIHRoZSBjaGFubmVsIGRlc3RydWN0aW9uIGFu
eXdheQo+IChjaGFubmVsX2ZpbmFsbHlfZGVzdHJveWVkIGNhbGxiYWNrKSwgc28gaXQgc2hvdWxk
IGJlIGltaG8gZmluZSB0aGF0Cj4gdGhlIGNoYW5uZWwgaG9sZHMgYSByZWZlcmVuY2UgdG8gdGhl
IHNlc3Npb24gd2hpbGUgaXQgaXMgYmVpbmcKPiBkZXN0cm95ZWQuIFNvIEkgdGhpbmsgd2UgY291
bGQgcmVtb3ZlIHRoYXQKPiBnX2NsZWFyX29iamVjdCgmY2hhbm5lbC0+cHJpdi0+c2Vzc2lvbik7
IGNhbGwgaW4KPiBzcGljZV9zZXNzaW9uX2NoYW5uZWxfZGVzdHJveSgpLgoKU3VyZWx5IHRoZXJl
J3MgYSByZWFzb24gZm9yIHRoaXMgcmVzZXQgYnV0IHlvdSBhZ3JlZSBpdCBkb2VzCm5vdCBzb3Vu
ZCBlbnRpcmVseSByaWdodC4KCj4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8g
PGpqYW5rdUByZWRoYXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNyYy9zcGljZS1jaGFubmVsLmMg
fCA1ICsrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY2hhbm5lbC5jIGIvc3JjL3NwaWNlLWNoYW5uZWwu
Ywo+ID4gPiBpbmRleCA2MWRlMTc3Li5hYTgwZWRmIDEwMDY0NAo+ID4gPiAtLS0gYS9zcmMvc3Bp
Y2UtY2hhbm5lbC5jCj4gPiA+ICsrKyBiL3NyYy9zcGljZS1jaGFubmVsLmMKPiA+ID4gQEAgLTg5
Nyw2ICs4OTcsMTEgQEAgc3RhdGljIHZvaWQgc3BpY2VfY2hhbm5lbF93cml0ZV9tc2coU3BpY2VD
aGFubmVsCj4gPiA+ICpjaGFubmVsLCBTcGljZU1zZ091dCAqb3V0KQo+ID4gPiAgICAgIGdfcmV0
dXJuX2lmX2ZhaWwob3V0ICE9IE5VTEwpOwo+ID4gPiAgICAgIGdfcmV0dXJuX2lmX2ZhaWwoY2hh
bm5lbCA9PSBvdXQtPmNoYW5uZWwpOwo+ID4gPgo+ID4gPiArICAgIGlmIChjaGFubmVsLT5wcml2
LT5oYXNfZXJyb3IpIHsKPiA+ID4gKyAgICAgICAgc3BpY2VfbXNnX291dF91bnJlZihvdXQpOwo+
ID4gPiArICAgICAgICByZXR1cm47Cj4gPiA+ICsgICAgfQo+ID4gPiArCj4gPiA+ICAgICAgaWYg
KG91dC0+cm9fY2hlY2sgJiYKPiA+ID4gICAgICAgICAgc3BpY2VfY2hhbm5lbF9nZXRfcmVhZF9v
bmx5KGNoYW5uZWwpKSB7Cj4gPiA+ICAgICAgICAgIGdfd2FybmluZygiVHJ5IHRvIHNlbmQgbWVz
c2FnZSB3aGlsZSByZWFkLW9ubHkuIFBsZWFzZSByZXBvcnQgYQo+ID4gPiAgICAgICAgICBidWcu
Iik7Cj4gPgo+ID4gRnJlZGlhbm8KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
