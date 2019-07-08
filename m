Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 575DF61F64
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 15:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEFD89C7F;
	Mon,  8 Jul 2019 13:15:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C470A89C7F
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:15:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 683A630C34D1
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:15:12 +0000 (UTC)
Received: from lub.tlv (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C560A196A8;
 Mon,  8 Jul 2019 13:15:11 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-5-fziglio@redhat.com>
 <f5b051a4-d046-5426-a402-0cbbd38bedbe@redhat.com>
 <1446620457.26640799.1562591400184.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <fa810a84-56e0-4fbf-2d4a-2445a150e2cc@redhat.com>
Date: Mon, 8 Jul 2019 16:15:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1446620457.26640799.1562591400184.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 08 Jul 2019 13:15:12 +0000 (UTC)
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
Reply-To: uril@redhat.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy84LzE5IDQ6MTAgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gT24gNS8yMC8x
OSAxMDozOSBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pj4gTWFrZSBzdXJlIE1lc29uIGlz
IGFibGUgdG8gZ2VuZXJhdGUgYSBjb3JyZWN0IHRhcmJhbGwuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+ICAgIC5n
aXRsYWItY2kueW1sIHwgNiArKysrKysKPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnlt
bAo+Pj4gaW5kZXggYTZjYjJjZGEuLjVkZGI0ZGI4IDEwMDY0NAo+Pj4gLS0tIGEvLmdpdGxhYi1j
aS55bWwKPj4+ICsrKyBiLy5naXRsYWItY2kueW1sCj4+PiBAQCAtODIsNiArODIsMTIgQEAgZmVk
b3JhLW1lc29uOgo+Pj4gICAgCj4+PiAgICAgIHNjcmlwdDoKPj4+ICAgICAgICAtIG1lc29uIC0t
YnVpbGR0eXBlPXJlbGVhc2UgYnVpbGQtZGVmYXVsdAo+Pj4gKyAgICAjIE1lc29uIGRvZXMgbm90
IHVwZGF0ZSBzdWJtb2R1bGVzIHJlY3Vyc2l2ZWx5Cj4+Cj4+IEF1dG90b29scyBkbyBub3QgZG8g
dGhhdCBlaXRoZXIsIGl0J3MgZG9uZSBpbiB0aGUgYXV0b2dlbi5zaCBzY3JpcHQKPj4KPiAKPiBC
dXQgTWVzb24gaXMgc3VwcG9zZWQgdG8gZGVhbCB3aXRoIHN1Ym1vZHVsZXMsIEF1dG90b29scyBo
YXMgbm90aGluZwo+IHRvIGRvIHdpdGggdGhlIHJlcG9zaXRvcmllcywgaXQncyBxdWl0ZSBhIGRp
ZmZlcmVudCBtaW5kc2V0Lgo+IAo+Pj4gKyAgICAtIGdpdCBzdWJtb2R1bGUgdXBkYXRlIC0taW5p
dCAtLXJlY3Vyc2l2ZQo+Pj4gKyAgICAjIHRoaXMgZml4IGFuIGlzc3VlIHdpdGggTWVzb24gZGlz
dAo+Pj4gKyAgICAtIGlmICEgdGVzdCAtciAuLi9zcGljZS1jb21tb24uZ2l0OyB0aGVuIERJUj1g
YmFzZW5hbWUgIiRQV0QiYDsgbG4gLXMKPj4+ICIkRElSLy5naXQvbW9kdWxlcy9zcGljZS1jb21t
b24iIC4uL3NwaWNlLWNvbW1vbi5naXQ7IGZpCj4+Cj4+IFRoYXQncyB3ZWlyZC4gSXQgZG9lcyB3
b3JrIGZvciBtZSBsb2NhbGx5Lgo+IAo+IE1heWJlIHlvdSBhbHJlYWR5IGhhdmUgdGhlIGxpbmsu
IE9yIHRoZXkgZml4ZWQgdGhlIGlzc3VlIG9uIGEgbGF0ZXIgdmVyc2lvbi4KClNvcnJ5LiBJIG1l
YW50IHRoYXQgeW91ciBmaXggd29ya3MgZm9yIG1lIChhbmQgd2l0aG91dCBpdCwgdGhlCmJ1aWxk
IGZhaWxzKS4KCj4gCj4+IEl0IGlzIGV4cGVjdGVkIHRoYXQgLi4vc3BpY2UtY29tbW9uLmdpdCB3
b3VsZCBiZSByZWxhdGl2ZSB0byAnb3JpZ2luJy4KPj4KPiAKPiBXaGF0IGRvIHlvdSBtZWFuPyAu
Li9zcGljZS1jb21tb24uZ2l0IGlzIGEgZGlyZWN0b3J5IGxpbmsgYW5kIG9yaWdpbgo+IGlzIGEg
YnJhbmNoLgoKSSBtZWFuIEkgZXhwZWN0IC4uL3NwaWNlLWNvbW1vbi5naXQgdG8gbm90IGJlIGEg
ZGlyZWN0b3J5IGJ1dCBhIChyZW1vdGUpCmdpdCByZXBvc2l0b3J5IHRoYXQgaXQncyBsb2NhdGlv
biBpcyBiYXNlZCBvbiByZW1vdGUgJ29yaWdpbicgdXJsCgo+IAo+Pj4gKyAgICAtIHJtIC1yZiBt
ZXNvbi1kaXN0Cj4+PiArICAgIC0gbmluamEgLUMgYnVpbGQtZGVmYXVsdCBkaXN0Cj4+Cj4+IE5v
dGUsIHRoYXQgdGhlIGdlbmVyYXRlZCB0YXJiYWxsIGRvZXMgbm90IGNvbnRhaW4gYSBjb25maWd1
cmUgc2NyaXB0Lgo+PiBUaGlzIGlzIHByb2JhYmx5IGV4cGVjdGVkIGFzIGF1dG90b29scyBhcmUg
bm90IHVzZWQsIGJ1dCBJIHdhbnRlZAo+PiB0byBlbXBoYXNpemUgdGhhdCB0aGUgdHdvIHRhcmJh
bGxzIGFyZSBkaWZmZXJlbnQuCj4+Cj4gCj4gWWVzLCBNZXNvbiAiZGlzdCIgaXMgbm90IHBvd2Vy
ZnVsIGVub3VnaCB0byBnZW5lcmF0ZWQgc3VjaCBhIHRhcmJhbGwKPiBhbmQgYSBtYW51YWwgc2Ny
aXB0IHdvdWxkIGJlIHF1aXRlIGFuIGhhY2suCgpPSywgbm8gcHJvYmxlbSwgYXMgbG9uZyBhcyB3
ZSBrZWVwIHRoYXQgaW4gbWluZC4KClRoYW5rcywKICAgICBVcmkuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
