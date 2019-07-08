Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D02B61F35
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 15:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 966708940F;
	Mon,  8 Jul 2019 13:03:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37ED8940F
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:03:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CBB77FDF0
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:03:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4070119C68
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:03:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 31B5318521C0;
 Mon,  8 Jul 2019 13:03:10 +0000 (UTC)
Date: Mon, 8 Jul 2019 09:03:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <497996615.26640174.1562590988446.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190708120749.mf6jd2ttda4nfktw@wingsuit>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <20190708120749.mf6jd2ttda4nfktw@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.7]
Thread-Topic: Drop autotools
Thread-Index: vkdowZnzXVOoIYD82w3cZ/JiUGHIFw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 08 Jul 2019 13:03:10 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/2] Drop autotools
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
Cc: spice-devel@lists.freedesktop.org, elima@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBPbiBNb24sIEp1bCAwOCwgMjAxOSBhdCAwMTowMDoxNFBNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBUaGlzIHNlcmllcyBpcyBmcm9tIE1hcmMtQW5kcsOp
LCBJIGp1c3QgcmViYXNlZCBpdCBvbiBjdXJyZW50IG1hc3Rlci4KPiA+IE5vdCBtdWNoIGxlZnQg
b2YgdGhlIG9yaWdpbmFsIHNlcmllcy4KPiA+IEkgdGhpbmsgaXQncyB0aW1lIHRvIGdldCBiYWNr
IHRvIGl0Lgo+IAo+IFllcy4gSSdtIGNvbXBsZXRlbHkgZmluZSB3aXRoIHRoaXMgbm93LCBqdXN0
IG5lZWQgdG8gYmUgc3VyZQo+IHRoYXQgbWVzb24ncyB0YXJiYWxsIGlzIDEwMCUgKEkgdGhpbmsg
aSBoYWQgc29tZSB0d2VhayBuZWVkZWQKPiBiZWZvcmUgbGFzdCByZWxlYXNlLCBJIGRvbid0IHJl
Y2FsbCBleGFjdGx5IHdoYXQpLgoKU3VyZSwgSSB0aGluayB5b3UgYXJlIHRoZSBndXkgbW9yZSBp
bnZvbHZlZCBpbiB0aGUgcmVsZWFzZQpwcm9jZXNzLiBUaGUgb3RoZXIgcGF0Y2hlcyBJIGhhZCAo
bWVyZ2VkKSB3YXMgaW50ZW5kZWQgdG8gbWFrZQp0aGUgYXV0b2NvbmYgYW5kIE1lc29uIHRhcmJh
bGwgdGhlIHNhbWUuIEJ1dCBiZXR0ZXIgYW4gYWRkaXRpb25hbApjaGVjayB0aGVuIG9uZSBsZXNz
LCB5b3UgbmV2ZXIga25vdy4KCj4gCj4gRG8geW91IGhhdmUgQ0kgcnVubmluZyBmb3IgdGhpcyBi
cmFuY2g/CgpOb3cgeWVzLi4uIGFuZCBJIGZpeGVkIGl0LCBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvcGlwZWxpbmVzLzQ3MjQwCgo+IERvIHlvdSBwbGFu
IHRvIGRyb3AgYXV0b3Rvb2xzIGluIHRoZSBvdGhlciBjb21wb25lbnRzIHRvbz8KCk5vLCBubyBw
bGFuLgpJIGhvcGUgdGhpcyBkb2VzIG5vdCBhZmZlY3QgdGhlIHJldmlldyBvZiB0aGlzIHNlcmll
cy4gSGFzIHRoaXMgdG8KYmUgYSAiYWxsIG9yIG5vdGhpbmciID8KCj4gQGV0cnVua28sIGFueSBv
YmplY3Rpb25zPyA6KQo+IAo+ID4gTWFyYy1BbmRyw6kgTHVyZWF1ICgyKToKPiA+ICAgRHJvcCBh
dXRvdG9vbHMKPiA+ICAgbWVzb246IHVzZSBndGstZG9jIC0tcmVidWlsZC10eXBlcwo+ID4gCj4g
PiAgLmdpdGxhYi1jaS55bWwgICAgICAgICAgICAgICAgfCAgNjYgKy0tLQo+ID4gIE1ha2VmaWxl
LmFtICAgICAgICAgICAgICAgICAgIHwgIDc0IC0tLS0tCj4gPiAgUkVBRE1FLm1kICAgICAgICAg
ICAgICAgICAgICAgfCAgMTEgKy0KPiA+ICBhdXRvZ2VuLnNoICAgICAgICAgICAgICAgICAgICB8
ICAyMCAtLQo+ID4gIGJ1aWxkLWF1eC9naXQtdmVyc2lvbi1nZW4gICAgIHwgMTU4IC0tLS0tLS0t
LQo+ID4gIGNvbmZpZ3VyZS5hYyAgICAgICAgICAgICAgICAgIHwgNTQ3IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiA+ICBkYXRhL01ha2VmaWxlLmFtICAgICAgICAgICAgICB8ICAx
MSAtCj4gPiAgZG9jL01ha2VmaWxlLmFtICAgICAgICAgICAgICAgfCAgIDUgLQo+ID4gIGRvYy9y
ZWZlcmVuY2UvTWFrZWZpbGUuYW0gICAgIHwgIDgwIC0tLS0tCj4gPiAgZG9jL3JlZmVyZW5jZS9t
ZXNvbi5idWlsZCAgICAgfCAgIDIgKy0KPiA+ICBkb2MvcmVmZXJlbmNlL3NwaWNlLWd0ay50eXBl
cyB8ICA0OSAtLS0KPiA+ICBnaXQubWsgICAgICAgICAgICAgICAgICAgICAgICB8IDQwMCAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIG00L2xkLXZlcnNpb24ubTQgICAgICAgICAgICAgIHwg
IDM0IC0tCj4gPiAgbTQvbWFueXdhcm5pbmdzLm00ICAgICAgICAgICAgfCAyNzMgLS0tLS0tLS0t
LS0tLS0tLQo+ID4gIG00L3NwaWNlLWNvbXBpbGUtd2FybmluZ3MubTQgIHwgMTQ2IC0tLS0tLS0t
LQo+ID4gIG00L3dhcm5pbmdzLm00ICAgICAgICAgICAgICAgIHwgIDc5IC0tLS0tCj4gPiAgbWFu
L01ha2VmaWxlLmFtICAgICAgICAgICAgICAgfCAgMTcgLQo+ID4gIHBvL0NoYW5nZUxvZyAgICAg
ICAgICAgICAgICAgIHwgICA4IC0KPiA+ICBwby9NYWtldmFycyAgICAgICAgICAgICAgICAgICB8
ICA5NSAtLS0tLS0KPiA+ICBwby97UE9URklMRVMuaW4gPT4gUE9URklMRVN9ICB8ICAgMAo+ID4g
IHBvL1BPVEZJTEVTLnNraXAgICAgICAgICAgICAgIHwgICAyIC0KPiA+ICBzcGljZS1jbGllbnQt
Z2xpYi0yLjAucGMuaW4gICB8ICAxNCAtCj4gPiAgc3BpY2UtY2xpZW50LWd0ay0zLjAucGMuaW4g
ICAgfCAgMTIgLQo+ID4gIHNyYy9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgIHwgNTkzIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICB0ZXN0cy9NYWtlZmlsZS5hbSAgICAg
ICAgICAgICB8ICA0OSAtLS0KPiA+ICB0b29scy9NYWtlZmlsZS5hbSAgICAgICAgICAgICB8ICA3
NyAtLS0tLQo+ID4gIHZhcGkvTWFrZWZpbGUuYW0gICAgICAgICAgICAgIHwgIDQzIC0tLQo+ID4g
IDI3IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjg1OSBkZWxldGlvbnMoLSkKPiA+
ICBkZWxldGUgbW9kZSAxMDA2NDQgTWFrZWZpbGUuYW0KPiA+ICBkZWxldGUgbW9kZSAxMDA3NTUg
YXV0b2dlbi5zaAo+ID4gIGRlbGV0ZSBtb2RlIDEwMDc1NSBidWlsZC1hdXgvZ2l0LXZlcnNpb24t
Z2VuCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGNvbmZpZ3VyZS5hYwo+ID4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBkYXRhL01ha2VmaWxlLmFtCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRvYy9NYWtl
ZmlsZS5hbQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkb2MvcmVmZXJlbmNlL01ha2VmaWxlLmFt
Cj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRvYy9yZWZlcmVuY2Uvc3BpY2UtZ3RrLnR5cGVzCj4g
PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGdpdC5tawo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBtNC9s
ZC12ZXJzaW9uLm00Cj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG00L21hbnl3YXJuaW5ncy5tNAo+
ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBtNC9zcGljZS1jb21waWxlLXdhcm5pbmdzLm00Cj4gPiAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IG00L3dhcm5pbmdzLm00Cj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IG1hbi9NYWtlZmlsZS5hbQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBwby9DaGFuZ2VMb2cKPiA+
ICBkZWxldGUgbW9kZSAxMDA2NDQgcG8vTWFrZXZhcnMKPiA+ICByZW5hbWUgcG8ve1BPVEZJTEVT
LmluID0+IFBPVEZJTEVTfSAoMTAwJSkKPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgcG8vUE9URklM
RVMuc2tpcAo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcGljZS1jbGllbnQtZ2xpYi0yLjAucGMu
aW4KPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3BpY2UtY2xpZW50LWd0ay0zLjAucGMuaW4KPiA+
ICBkZWxldGUgbW9kZSAxMDA2NDQgc3JjL01ha2VmaWxlLmFtCj4gPiAgZGVsZXRlIG1vZGUgMTAw
NjQ0IHRlc3RzL01ha2VmaWxlLmFtCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHRvb2xzL01ha2Vm
aWxlLmFtCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHZhcGkvTWFrZWZpbGUuYW0KPiA+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
