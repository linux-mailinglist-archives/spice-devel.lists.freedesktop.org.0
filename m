Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF362625
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 18:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6452489F73;
	Mon,  8 Jul 2019 16:23:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7213189F73
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 16:23:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DDF0851471
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 16:23:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D65145DA34
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 16:23:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id CB9C518184A4;
 Mon,  8 Jul 2019 16:23:28 +0000 (UTC)
Date: Mon, 8 Jul 2019 12:23:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1097579440.26677462.1562603007362.JavaMail.zimbra@redhat.com>
In-Reply-To: <fa810a84-56e0-4fbf-2d4a-2445a150e2cc@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-5-fziglio@redhat.com>
 <f5b051a4-d046-5426-a402-0cbbd38bedbe@redhat.com>
 <1446620457.26640799.1562591400184.JavaMail.zimbra@redhat.com>
 <fa810a84-56e0-4fbf-2d4a-2445a150e2cc@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.1]
Thread-Topic: Try Meson dist
Thread-Index: oJKOzy6RkFWtkF80Jg4PJq2ZswEO4A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 08 Jul 2019 16:23:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 4/4] ci: Try Meson dist
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

PiBPbiA3LzgvMTkgNDoxMCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+Cj4gPj4gT24g
NS8yMC8xOSAxMDozOSBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+PiBNYWtlIHN1cmUg
TWVzb24gaXMgYWJsZSB0byBnZW5lcmF0ZSBhIGNvcnJlY3QgdGFyYmFsbC4KPiA+Pj4KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPj4+
IC0tLQo+ID4+PiAgICAuZ2l0bGFiLWNpLnltbCB8IDYgKysrKysrCj4gPj4+ICAgIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhLy5naXRsYWIt
Y2kueW1sIGIvLmdpdGxhYi1jaS55bWwKPiA+Pj4gaW5kZXggYTZjYjJjZGEuLjVkZGI0ZGI4IDEw
MDY0NAo+ID4+PiAtLS0gYS8uZ2l0bGFiLWNpLnltbAo+ID4+PiArKysgYi8uZ2l0bGFiLWNpLnlt
bAo+ID4+PiBAQCAtODIsNiArODIsMTIgQEAgZmVkb3JhLW1lc29uOgo+ID4+PiAgICAKPiA+Pj4g
ICAgICBzY3JpcHQ6Cj4gPj4+ICAgICAgICAtIG1lc29uIC0tYnVpbGR0eXBlPXJlbGVhc2UgYnVp
bGQtZGVmYXVsdAo+ID4+PiArICAgICMgTWVzb24gZG9lcyBub3QgdXBkYXRlIHN1Ym1vZHVsZXMg
cmVjdXJzaXZlbHkKPiA+Pgo+ID4+IEF1dG90b29scyBkbyBub3QgZG8gdGhhdCBlaXRoZXIsIGl0
J3MgZG9uZSBpbiB0aGUgYXV0b2dlbi5zaCBzY3JpcHQKPiA+Pgo+ID4gCj4gPiBCdXQgTWVzb24g
aXMgc3VwcG9zZWQgdG8gZGVhbCB3aXRoIHN1Ym1vZHVsZXMsIEF1dG90b29scyBoYXMgbm90aGlu
Zwo+ID4gdG8gZG8gd2l0aCB0aGUgcmVwb3NpdG9yaWVzLCBpdCdzIHF1aXRlIGEgZGlmZmVyZW50
IG1pbmRzZXQuCj4gPiAKPiA+Pj4gKyAgICAtIGdpdCBzdWJtb2R1bGUgdXBkYXRlIC0taW5pdCAt
LXJlY3Vyc2l2ZQo+ID4+PiArICAgICMgdGhpcyBmaXggYW4gaXNzdWUgd2l0aCBNZXNvbiBkaXN0
Cj4gPj4+ICsgICAgLSBpZiAhIHRlc3QgLXIgLi4vc3BpY2UtY29tbW9uLmdpdDsgdGhlbiBESVI9
YGJhc2VuYW1lICIkUFdEImA7IGxuCj4gPj4+IC1zCj4gPj4+ICIkRElSLy5naXQvbW9kdWxlcy9z
cGljZS1jb21tb24iIC4uL3NwaWNlLWNvbW1vbi5naXQ7IGZpCj4gPj4KPiA+PiBUaGF0J3Mgd2Vp
cmQuIEl0IGRvZXMgd29yayBmb3IgbWUgbG9jYWxseS4KPiA+IAo+ID4gTWF5YmUgeW91IGFscmVh
ZHkgaGF2ZSB0aGUgbGluay4gT3IgdGhleSBmaXhlZCB0aGUgaXNzdWUgb24gYSBsYXRlcgo+ID4g
dmVyc2lvbi4KPiAKPiBTb3JyeS4gSSBtZWFudCB0aGF0IHlvdXIgZml4IHdvcmtzIGZvciBtZSAo
YW5kIHdpdGhvdXQgaXQsIHRoZQo+IGJ1aWxkIGZhaWxzKS4KPiAKPiA+IAo+ID4+IEl0IGlzIGV4
cGVjdGVkIHRoYXQgLi4vc3BpY2UtY29tbW9uLmdpdCB3b3VsZCBiZSByZWxhdGl2ZSB0byAnb3Jp
Z2luJy4KPiA+Pgo+ID4gCj4gPiBXaGF0IGRvIHlvdSBtZWFuPyAuLi9zcGljZS1jb21tb24uZ2l0
IGlzIGEgZGlyZWN0b3J5IGxpbmsgYW5kIG9yaWdpbgo+ID4gaXMgYSBicmFuY2guCj4gCj4gSSBt
ZWFuIEkgZXhwZWN0IC4uL3NwaWNlLWNvbW1vbi5naXQgdG8gbm90IGJlIGEgZGlyZWN0b3J5IGJ1
dCBhIChyZW1vdGUpCj4gZ2l0IHJlcG9zaXRvcnkgdGhhdCBpdCdzIGxvY2F0aW9uIGlzIGJhc2Vk
IG9uIHJlbW90ZSAnb3JpZ2luJyB1cmwKPiAKClllcywgaXQncyBhIGJ1ZyBpbiBNZXNvbi4gSXQg
dHJpZXMgdG8gY2xvbmUgZnJvbSB0aGUgbG9jYWwgcmVwb3NpdG9yeQpidXQgc29tZXRoaW5nIGlz
IHdyb25nIGZvciBzdWJtb2R1bGVzLiBJIGhhZCBzb21lIHBhdGNoZXMgYnV0IEkgbmVlZCB0bwpy
ZXdvcmsgdGhlbSBhbmQgd3JpdGUgYWxzbyBhIHRlc3QgZm9yIHRoZSBpc3N1ZS4KCj4gPiAKPiA+
Pj4gKyAgICAtIHJtIC1yZiBtZXNvbi1kaXN0Cj4gPj4+ICsgICAgLSBuaW5qYSAtQyBidWlsZC1k
ZWZhdWx0IGRpc3QKPiA+Pgo+ID4+IE5vdGUsIHRoYXQgdGhlIGdlbmVyYXRlZCB0YXJiYWxsIGRv
ZXMgbm90IGNvbnRhaW4gYSBjb25maWd1cmUgc2NyaXB0Lgo+ID4+IFRoaXMgaXMgcHJvYmFibHkg
ZXhwZWN0ZWQgYXMgYXV0b3Rvb2xzIGFyZSBub3QgdXNlZCwgYnV0IEkgd2FudGVkCj4gPj4gdG8g
ZW1waGFzaXplIHRoYXQgdGhlIHR3byB0YXJiYWxscyBhcmUgZGlmZmVyZW50Lgo+ID4+Cj4gPiAK
PiA+IFllcywgTWVzb24gImRpc3QiIGlzIG5vdCBwb3dlcmZ1bCBlbm91Z2ggdG8gZ2VuZXJhdGVk
IHN1Y2ggYSB0YXJiYWxsCj4gPiBhbmQgYSBtYW51YWwgc2NyaXB0IHdvdWxkIGJlIHF1aXRlIGFu
IGhhY2suCj4gCj4gT0ssIG5vIHByb2JsZW0sIGFzIGxvbmcgYXMgd2Uga2VlcCB0aGF0IGluIG1p
bmQuCj4gCj4gVGhhbmtzLAo+ICAgICAgVXJpLgo+IAoKV2UgaGFkIHNvbWUgdGFsayBhbmQgd2Ug
YXJlIG9mIHRoZSBpZGVhIG9mIHJlbW92aW5nIEF1dG90b29scyBmcm9tIHNwaWNlLWd0ay4KSWYg
bm90IHRoZSBvZmZpY2lhbCBkaXN0cmlidXRpb24gd2lsbCBzdGF5IHdpdGggQXV0b3Rvb2xzIChh
bmQgaW4gdGhpcyBjYXNlCnllcywgd2UgaGF2ZSB0byByZW1lbWJlciBpdCkuCgpXZWxjb21lLAog
IEZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
