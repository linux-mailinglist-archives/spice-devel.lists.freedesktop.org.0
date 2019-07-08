Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6661E2C
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 14:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE10289CB2;
	Mon,  8 Jul 2019 12:07:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AFCF89CA4
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2CF23B0ABB
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 249241B457
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D47241F40
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:07:36 +0000 (UTC)
Date: Mon, 8 Jul 2019 08:07:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <566035761.26632399.1562587656069.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190708120016.27270-2-fziglio@redhat.com>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <20190708120016.27270-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.12]
Thread-Topic: Drop autotools
Thread-Index: rWqoQb5ixKy11ig/Tsxj81+ZL+B5Ng==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 08 Jul 2019 12:07:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] Drop autotools
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

PiAKPiBGcm9tOiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNv
bT4KPiAKPiBNYWludGFpbmluZyAxIGJ1aWxkIHN5c3RlbSBpcyBoYXJkLiBNYWludGFpbmluZyAy
IGlzIGV2ZW4gaGFyZGVyLgo+IAo+IEl0IHNlZW1zIHRoZSBtZXNvbiBidWlsZCBzeXN0ZW0gaXMg
bm93IGluIGdvb2Qgc2hhcGUgdG8gcmVwbGFjZQo+IGF1dG90b29scy4gTGlrZSBtYW55IGRlc2t0
b3AgcHJvamVjdHMsIGxldCdzIG1vdmUgZW50aXJlbHkgdG8gbWVzb24KPiBhbmQgZHJvcCBhdXRv
dG9vbHMgc3VwcG9ydC4KPiAKPiBLbm93biBjaGFuZ2VzOgo+IC0gbm8gZ2l0IHZlcnNpb246IGEg
Zm9sbG93aW5nIHBhdGNoIHdpbGwgYWRkIGl0IGJhY2sgaW4gYSBsaW1pdGVkIGZvcm0KCkkgZGlk
bid0IGNoYW5nZSB0aGUgY29tbWl0IG1lc3NhZ2UuClRoaXMgc2VudGVuY2UgaXMgbm93IG9ic29s
ZXRlLCBnaXQgdmVyc2lvbiB3YXMgYWRkZWQgYmFjay4KCj4gLSBnZW5lcmF0aW5nIGNoYW5nZWxv
ZyAmIHRoYW5rcyBmaWxlcyBpbiB0aGUgZGlzdCB0YXJiYWxsLiBUaGlzIGlzIG5vdAo+ICAgc3Ry
aWN0bHkgcmVxdWlyZWQsIGFuZCBjYW4gYmUgYWRkZWQgYmFjayBsYXRlci4KClRoZSBUSEFOS1Mg
ZmlsZSB3YXMgYWRkZWQgbGF0ZXIsIHNvIHdpbGwgYmUKCi0gZ2VuZXJhdGluZyBjaGFuZ2Vsb2cg
ZmlsZXMgaW4gdGhlIGRpc3QgdGFyYmFsbC4gVGhpcyBpcyBub3QKICBzdHJpY3RseSByZXF1aXJl
ZCwgYW5kIGNhbiBiZSBhZGRlZCBiYWNrIGxhdGVyLgoKPiAtIGdlbmVyYXRlZCBmaWxlcyBhcmUg
bm90IGluY2x1ZGVkIGluIHRoZSBkaXN0IHRhcmJhbGwuIEluIHNvbWUgd2F5cywKPiAgIHRoaXMg
Y2FuIGJlIGNvbnNpZGVyZWQgYSBnb29kIHRoaW5nLiBTaW5jZSBjb2RlIGdlbmVyYXRpb24gaXMg
ZG9uZQo+ICAgd2l0aCBweXRob24sIGFuZCBtZXNvbiByZXF1aXJlcyBweXRob24gYW55d2F5LCB0
aGlzIGlzIG5vdCBhbiBpc3N1ZS4KPiAKClRydWUgYW5kIGZhbHNlLCBzb21lIGFkZGl0aW9uYWwg
ZGVwZW5kZW5jaWVzIChsaWtlIHB5cGFyc2luZyBhbmQgc2l4KSBhcmUKbmVjZXNzYXJ5IGJlc2lk
ZSBwdXJlIFB5dGhvbi4gQWxzbyBwb3RlbnRpYWxseSBzb21lIG90aGVyIGdlbmVyYXRpb25zCihs
aWtlIGZvciBtYW51YWwpIGhhdmUgYWRkaXRpb25hbCByZXF1aXJlbWVudHMuCkJ1dCB0aGUgcGxh
dGZvcm0gd2Ugc3VwcG9ydCBtYWlubHkgaGF2ZSBubyBtdWNoIHRyb3VibGUgd2l0aCB0aGF0LgoK
UmVhbGx5IG1pbm9yOiBweXRob24gLT4gUHl0aG9uLCBtZXNvbiAtPiBNZXNvbgoKPiBTaWduZWQt
b2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4K
PiAtLS0KPiAgLmdpdGxhYi1jaS55bWwgICAgICAgICAgICAgICB8ICA2NiArLS0tCj4gIE1ha2Vm
aWxlLmFtICAgICAgICAgICAgICAgICAgfCAgNzQgLS0tLS0KPiAgUkVBRE1FLm1kICAgICAgICAg
ICAgICAgICAgICB8ICAxMSArLQo+ICBhdXRvZ2VuLnNoICAgICAgICAgICAgICAgICAgIHwgIDIw
IC0tCj4gIGJ1aWxkLWF1eC9naXQtdmVyc2lvbi1nZW4gICAgfCAxNTggLS0tLS0tLS0tLQo+ICBj
b25maWd1cmUuYWMgICAgICAgICAgICAgICAgIHwgNTQ3IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gIGRhdGEvTWFrZWZpbGUuYW0gICAgICAgICAgICAgfCAgMTEgLQo+ICBkb2Mv
TWFrZWZpbGUuYW0gICAgICAgICAgICAgIHwgICA1IC0KPiAgZG9jL3JlZmVyZW5jZS9NYWtlZmls
ZS5hbSAgICB8ICA4MCAtLS0tLQo+ICBnaXQubWsgICAgICAgICAgICAgICAgICAgICAgIHwgNDAw
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIG00L2xkLXZlcnNpb24ubTQgICAgICAgICAgICAg
fCAgMzQgLS0KPiAgbTQvbWFueXdhcm5pbmdzLm00ICAgICAgICAgICB8IDI3MyAtLS0tLS0tLS0t
LS0tLS0tCj4gIG00L3NwaWNlLWNvbXBpbGUtd2FybmluZ3MubTQgfCAxNDYgLS0tLS0tLS0tCj4g
IG00L3dhcm5pbmdzLm00ICAgICAgICAgICAgICAgfCAgNzkgLS0tLS0KPiAgbWFuL01ha2VmaWxl
LmFtICAgICAgICAgICAgICB8ICAxNyAtCj4gIHBvL0NoYW5nZUxvZyAgICAgICAgICAgICAgICAg
fCAgIDggLQo+ICBwby9NYWtldmFycyAgICAgICAgICAgICAgICAgIHwgIDk1IC0tLS0tLQo+ICBw
by97UE9URklMRVMuaW4gPT4gUE9URklMRVN9IHwgICAwCj4gIHBvL1BPVEZJTEVTLnNraXAgICAg
ICAgICAgICAgfCAgIDIgLQo+ICBzcGljZS1jbGllbnQtZ2xpYi0yLjAucGMuaW4gIHwgIDE0IC0K
PiAgc3BpY2UtY2xpZW50LWd0ay0zLjAucGMuaW4gICB8ICAxMiAtCj4gIHNyYy9NYWtlZmlsZS5h
bSAgICAgICAgICAgICAgfCA1OTMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgICAgICB8ICA0OSAtLS0KPiAgdG9vbHMvTWFrZWZp
bGUuYW0gICAgICAgICAgICB8ICA3NyAtLS0tLQo+ICB2YXBpL01ha2VmaWxlLmFtICAgICAgICAg
ICAgIHwgIDQzIC0tLQo+ICAyNSBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDI4MDkg
ZGVsZXRpb25zKC0pCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBNYWtlZmlsZS5hbQo+ICBkZWxldGUg
bW9kZSAxMDA3NTUgYXV0b2dlbi5zaAo+ICBkZWxldGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L2dp
dC12ZXJzaW9uLWdlbgo+ICBkZWxldGUgbW9kZSAxMDA2NDQgY29uZmlndXJlLmFjCj4gIGRlbGV0
ZSBtb2RlIDEwMDY0NCBkYXRhL01ha2VmaWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkb2Mv
TWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRvYy9yZWZlcmVuY2UvTWFrZWZpbGUu
YW0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGdpdC5tawo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbTQv
bGQtdmVyc2lvbi5tNAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbTQvbWFueXdhcm5pbmdzLm00Cj4g
IGRlbGV0ZSBtb2RlIDEwMDY0NCBtNC9zcGljZS1jb21waWxlLXdhcm5pbmdzLm00Cj4gIGRlbGV0
ZSBtb2RlIDEwMDY0NCBtNC93YXJuaW5ncy5tNAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWFuL01h
a2VmaWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBwby9DaGFuZ2VMb2cKPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IHBvL01ha2V2YXJzCj4gIHJlbmFtZSBwby97UE9URklMRVMuaW4gPT4gUE9URklM
RVN9ICgxMDAlKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgcG8vUE9URklMRVMuc2tpcAo+ICBkZWxl
dGUgbW9kZSAxMDA2NDQgc3BpY2UtY2xpZW50LWdsaWItMi4wLnBjLmluCj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBzcGljZS1jbGllbnQtZ3RrLTMuMC5wYy5pbgo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
c3JjL01ha2VmaWxlLmFtCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9NYWtlZmlsZS5hbQo+
ICBkZWxldGUgbW9kZSAxMDA2NDQgdG9vbHMvTWFrZWZpbGUuYW0KPiAgZGVsZXRlIG1vZGUgMTAw
NjQ0IHZhcGkvTWFrZWZpbGUuYW0KPiAKCi4uLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
