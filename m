Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C3A61E22
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 14:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D978857E;
	Mon,  8 Jul 2019 12:03:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844AE8857E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:03:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2EFC6C1EB215
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:03:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 240482DE87
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:03:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1BC3218521C0
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:03:30 +0000 (UTC)
Date: Mon, 8 Jul 2019 08:03:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1578897357.26632001.1562587408490.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190708120016.27270-1-fziglio@redhat.com>
References: <20190708120016.27270-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.12]
Thread-Topic: Drop autotools
Thread-Index: b60k03bzbp0gJOkQgguFLuHs2pW/ww==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 08 Jul 2019 12:03:30 +0000 (UTC)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGlzIHNlcmllcyBpcyBmcm9tIE1hcmMtQW5kcsOpLCBJIGp1c3QgcmViYXNlZCBpdCBv
biBjdXJyZW50IG1hc3Rlci4KPiBOb3QgbXVjaCBsZWZ0IG9mIHRoZSBvcmlnaW5hbCBzZXJpZXMu
Cj4gSSB0aGluayBpdCdzIHRpbWUgdG8gZ2V0IGJhY2sgdG8gaXQuCj4gCgpUaGUgc2VyaWVzIHdh
cyBhbHNvIGF0IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1ndGsv
bWVyZ2VfcmVxdWVzdHMvMgoKPiBNYXJjLUFuZHLDqSBMdXJlYXUgKDIpOgo+ICAgRHJvcCBhdXRv
dG9vbHMKPiAgIG1lc29uOiB1c2UgZ3RrLWRvYyAtLXJlYnVpbGQtdHlwZXMKPiAKPiAgLmdpdGxh
Yi1jaS55bWwgICAgICAgICAgICAgICAgfCAgNjYgKy0tLQo+ICBNYWtlZmlsZS5hbSAgICAgICAg
ICAgICAgICAgICB8ICA3NCAtLS0tLQo+ICBSRUFETUUubWQgICAgICAgICAgICAgICAgICAgICB8
ICAxMSArLQo+ICBhdXRvZ2VuLnNoICAgICAgICAgICAgICAgICAgICB8ICAyMCAtLQo+ICBidWls
ZC1hdXgvZ2l0LXZlcnNpb24tZ2VuICAgICB8IDE1OCAtLS0tLS0tLS0KPiAgY29uZmlndXJlLmFj
ICAgICAgICAgICAgICAgICAgfCA1NDcgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICBkYXRhL01ha2VmaWxlLmFtICAgICAgICAgICAgICB8ICAxMSAtCj4gIGRvYy9NYWtlZmlsZS5h
bSAgICAgICAgICAgICAgIHwgICA1IC0KPiAgZG9jL3JlZmVyZW5jZS9NYWtlZmlsZS5hbSAgICAg
fCAgODAgLS0tLS0KPiAgZG9jL3JlZmVyZW5jZS9tZXNvbi5idWlsZCAgICAgfCAgIDIgKy0KPiAg
ZG9jL3JlZmVyZW5jZS9zcGljZS1ndGsudHlwZXMgfCAgNDkgLS0tCj4gIGdpdC5tayAgICAgICAg
ICAgICAgICAgICAgICAgIHwgNDAwIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIG00L2xkLXZl
cnNpb24ubTQgICAgICAgICAgICAgIHwgIDM0IC0tCj4gIG00L21hbnl3YXJuaW5ncy5tNCAgICAg
ICAgICAgIHwgMjczIC0tLS0tLS0tLS0tLS0tLS0KPiAgbTQvc3BpY2UtY29tcGlsZS13YXJuaW5n
cy5tNCAgfCAxNDYgLS0tLS0tLS0tCj4gIG00L3dhcm5pbmdzLm00ICAgICAgICAgICAgICAgIHwg
IDc5IC0tLS0tCj4gIG1hbi9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgIHwgIDE3IC0KPiAgcG8v
Q2hhbmdlTG9nICAgICAgICAgICAgICAgICAgfCAgIDggLQo+ICBwby9NYWtldmFycyAgICAgICAg
ICAgICAgICAgICB8ICA5NSAtLS0tLS0KPiAgcG8ve1BPVEZJTEVTLmluID0+IFBPVEZJTEVTfSAg
fCAgIDAKPiAgcG8vUE9URklMRVMuc2tpcCAgICAgICAgICAgICAgfCAgIDIgLQo+ICBzcGljZS1j
bGllbnQtZ2xpYi0yLjAucGMuaW4gICB8ICAxNCAtCj4gIHNwaWNlLWNsaWVudC1ndGstMy4wLnBj
LmluICAgIHwgIDEyIC0KPiAgc3JjL01ha2VmaWxlLmFtICAgICAgICAgICAgICAgfCA1OTMgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICB0ZXN0cy9NYWtlZmlsZS5hbSAgICAg
ICAgICAgICB8ICA0OSAtLS0KPiAgdG9vbHMvTWFrZWZpbGUuYW0gICAgICAgICAgICAgfCAgNzcg
LS0tLS0KPiAgdmFwaS9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgfCAgNDMgLS0tCj4gIDI3IGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjg1OSBkZWxldGlvbnMoLSkKPiAgZGVsZXRl
IG1vZGUgMTAwNjQ0IE1ha2VmaWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDc1NSBhdXRvZ2VuLnNo
Cj4gIGRlbGV0ZSBtb2RlIDEwMDc1NSBidWlsZC1hdXgvZ2l0LXZlcnNpb24tZ2VuCj4gIGRlbGV0
ZSBtb2RlIDEwMDY0NCBjb25maWd1cmUuYWMKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRhdGEvTWFr
ZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRvYy9NYWtlZmlsZS5hbQo+ICBkZWxldGUg
bW9kZSAxMDA2NDQgZG9jL3JlZmVyZW5jZS9NYWtlZmlsZS5hbQo+ICBkZWxldGUgbW9kZSAxMDA2
NDQgZG9jL3JlZmVyZW5jZS9zcGljZS1ndGsudHlwZXMKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGdp
dC5tawo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbTQvbGQtdmVyc2lvbi5tNAo+ICBkZWxldGUgbW9k
ZSAxMDA2NDQgbTQvbWFueXdhcm5pbmdzLm00Cj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBtNC9zcGlj
ZS1jb21waWxlLXdhcm5pbmdzLm00Cj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBtNC93YXJuaW5ncy5t
NAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWFuL01ha2VmaWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEw
MDY0NCBwby9DaGFuZ2VMb2cKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHBvL01ha2V2YXJzCj4gIHJl
bmFtZSBwby97UE9URklMRVMuaW4gPT4gUE9URklMRVN9ICgxMDAlKQo+ICBkZWxldGUgbW9kZSAx
MDA2NDQgcG8vUE9URklMRVMuc2tpcAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3BpY2UtY2xpZW50
LWdsaWItMi4wLnBjLmluCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcGljZS1jbGllbnQtZ3RrLTMu
MC5wYy5pbgo+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3JjL01ha2VmaWxlLmFtCj4gIGRlbGV0ZSBt
b2RlIDEwMDY0NCB0ZXN0cy9NYWtlZmlsZS5hbQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgdG9vbHMv
TWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHZhcGkvTWFrZWZpbGUuYW0KPiAKPiAt
LQo+IDIuMjAuMQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
