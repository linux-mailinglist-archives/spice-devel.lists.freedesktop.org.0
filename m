Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B7161E2D
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 14:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0257089CA4;
	Mon,  8 Jul 2019 12:07:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA6D89CA4
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5715520276
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:50 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0180B18ACB;
 Mon,  8 Jul 2019 12:07:49 +0000 (UTC)
Date: Mon, 8 Jul 2019 14:07:49 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190708120749.mf6jd2ttda4nfktw@wingsuit>
References: <20190708120016.27270-1-fziglio@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708120016.27270-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 08 Jul 2019 12:07:50 +0000 (UTC)
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

SGksCgpPbiBNb24sIEp1bCAwOCwgMjAxOSBhdCAwMTowMDoxNFBNICswMTAwLCBGcmVkaWFubyBa
aWdsaW8gd3JvdGU6Cj4gVGhpcyBzZXJpZXMgaXMgZnJvbSBNYXJjLUFuZHLDqSwgSSBqdXN0IHJl
YmFzZWQgaXQgb24gY3VycmVudCBtYXN0ZXIuCj4gTm90IG11Y2ggbGVmdCBvZiB0aGUgb3JpZ2lu
YWwgc2VyaWVzLgo+IEkgdGhpbmsgaXQncyB0aW1lIHRvIGdldCBiYWNrIHRvIGl0LgoKWWVzLiBJ
J20gY29tcGxldGVseSBmaW5lIHdpdGggdGhpcyBub3csIGp1c3QgbmVlZCB0byBiZSBzdXJlCnRo
YXQgbWVzb24ncyB0YXJiYWxsIGlzIDEwMCUgKEkgdGhpbmsgaSBoYWQgc29tZSB0d2VhayBuZWVk
ZWQKYmVmb3JlIGxhc3QgcmVsZWFzZSwgSSBkb24ndCByZWNhbGwgZXhhY3RseSB3aGF0KS4KCkRv
IHlvdSBoYXZlIENJIHJ1bm5pbmcgZm9yIHRoaXMgYnJhbmNoPwpEbyB5b3UgcGxhbiB0byBkcm9w
IGF1dG90b29scyBpbiB0aGUgb3RoZXIgY29tcG9uZW50cyB0b28/CkBldHJ1bmtvLCBhbnkgb2Jq
ZWN0aW9ucz8gOikKCj4gTWFyYy1BbmRyw6kgTHVyZWF1ICgyKToKPiAgIERyb3AgYXV0b3Rvb2xz
Cj4gICBtZXNvbjogdXNlIGd0ay1kb2MgLS1yZWJ1aWxkLXR5cGVzCj4gCj4gIC5naXRsYWItY2ku
eW1sICAgICAgICAgICAgICAgIHwgIDY2ICstLS0KPiAgTWFrZWZpbGUuYW0gICAgICAgICAgICAg
ICAgICAgfCAgNzQgLS0tLS0KPiAgUkVBRE1FLm1kICAgICAgICAgICAgICAgICAgICAgfCAgMTEg
Ky0KPiAgYXV0b2dlbi5zaCAgICAgICAgICAgICAgICAgICAgfCAgMjAgLS0KPiAgYnVpbGQtYXV4
L2dpdC12ZXJzaW9uLWdlbiAgICAgfCAxNTggLS0tLS0tLS0tCj4gIGNvbmZpZ3VyZS5hYyAgICAg
ICAgICAgICAgICAgIHwgNTQ3IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZGF0
YS9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgfCAgMTEgLQo+ICBkb2MvTWFrZWZpbGUuYW0gICAg
ICAgICAgICAgICB8ICAgNSAtCj4gIGRvYy9yZWZlcmVuY2UvTWFrZWZpbGUuYW0gICAgIHwgIDgw
IC0tLS0tCj4gIGRvYy9yZWZlcmVuY2UvbWVzb24uYnVpbGQgICAgIHwgICAyICstCj4gIGRvYy9y
ZWZlcmVuY2Uvc3BpY2UtZ3RrLnR5cGVzIHwgIDQ5IC0tLQo+ICBnaXQubWsgICAgICAgICAgICAg
ICAgICAgICAgICB8IDQwMCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBtNC9sZC12ZXJzaW9u
Lm00ICAgICAgICAgICAgICB8ICAzNCAtLQo+ICBtNC9tYW55d2FybmluZ3MubTQgICAgICAgICAg
ICB8IDI3MyAtLS0tLS0tLS0tLS0tLS0tCj4gIG00L3NwaWNlLWNvbXBpbGUtd2FybmluZ3MubTQg
IHwgMTQ2IC0tLS0tLS0tLQo+ICBtNC93YXJuaW5ncy5tNCAgICAgICAgICAgICAgICB8ICA3OSAt
LS0tLQo+ICBtYW4vTWFrZWZpbGUuYW0gICAgICAgICAgICAgICB8ICAxNyAtCj4gIHBvL0NoYW5n
ZUxvZyAgICAgICAgICAgICAgICAgIHwgICA4IC0KPiAgcG8vTWFrZXZhcnMgICAgICAgICAgICAg
ICAgICAgfCAgOTUgLS0tLS0tCj4gIHBvL3tQT1RGSUxFUy5pbiA9PiBQT1RGSUxFU30gIHwgICAw
Cj4gIHBvL1BPVEZJTEVTLnNraXAgICAgICAgICAgICAgIHwgICAyIC0KPiAgc3BpY2UtY2xpZW50
LWdsaWItMi4wLnBjLmluICAgfCAgMTQgLQo+ICBzcGljZS1jbGllbnQtZ3RrLTMuMC5wYy5pbiAg
ICB8ICAxMiAtCj4gIHNyYy9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgIHwgNTkzIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgICAg
ICAgfCAgNDkgLS0tCj4gIHRvb2xzL01ha2VmaWxlLmFtICAgICAgICAgICAgIHwgIDc3IC0tLS0t
Cj4gIHZhcGkvTWFrZWZpbGUuYW0gICAgICAgICAgICAgIHwgIDQzIC0tLQo+ICAyNyBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDI4NTkgZGVsZXRpb25zKC0pCj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBNYWtlZmlsZS5hbQo+ICBkZWxldGUgbW9kZSAxMDA3NTUgYXV0b2dlbi5zaAo+ICBk
ZWxldGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L2dpdC12ZXJzaW9uLWdlbgo+ICBkZWxldGUgbW9k
ZSAxMDA2NDQgY29uZmlndXJlLmFjCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkYXRhL01ha2VmaWxl
LmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkb2MvTWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUg
MTAwNjQ0IGRvYy9yZWZlcmVuY2UvTWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRv
Yy9yZWZlcmVuY2Uvc3BpY2UtZ3RrLnR5cGVzCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBnaXQubWsK
PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG00L2xkLXZlcnNpb24ubTQKPiAgZGVsZXRlIG1vZGUgMTAw
NjQ0IG00L21hbnl3YXJuaW5ncy5tNAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbTQvc3BpY2UtY29t
cGlsZS13YXJuaW5ncy5tNAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbTQvd2FybmluZ3MubTQKPiAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IG1hbi9NYWtlZmlsZS5hbQo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
cG8vQ2hhbmdlTG9nCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBwby9NYWtldmFycwo+ICByZW5hbWUg
cG8ve1BPVEZJTEVTLmluID0+IFBPVEZJTEVTfSAoMTAwJSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IHBvL1BPVEZJTEVTLnNraXAKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHNwaWNlLWNsaWVudC1nbGli
LTIuMC5wYy5pbgo+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3BpY2UtY2xpZW50LWd0ay0zLjAucGMu
aW4KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHNyYy9NYWtlZmlsZS5hbQo+ICBkZWxldGUgbW9kZSAx
MDA2NDQgdGVzdHMvTWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHRvb2xzL01ha2Vm
aWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCB2YXBpL01ha2VmaWxlLmFtCj4gCj4gLS0gCj4g
Mi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
