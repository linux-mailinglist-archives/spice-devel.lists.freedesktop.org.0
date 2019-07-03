Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA3F5E241
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 12:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CF66E113;
	Wed,  3 Jul 2019 10:43:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC8C6E113
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 10:43:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D6E1307F5FF;
 Wed,  3 Jul 2019 10:43:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 413D47FD19;
 Wed,  3 Jul 2019 10:43:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3694918184AD;
 Wed,  3 Jul 2019 10:43:28 +0000 (UTC)
Date: Wed, 3 Jul 2019 06:43:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <181012575.26269398.1562150606782.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hicaU-00076f-Nf@amboise>
References: <E1hicaU-00076f-Nf@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.6]
Thread-Topic: utils: Make all the NSEC_PER_XXX constants 64 bit
Thread-Index: VjdLFOP3Ct4UfEoPOT+X9NeQk5avow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 03 Jul 2019 10:43:28 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v4] utils: Make all the NSEC_PER_XXX
 constants 64 bit
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBDb2RlIGRlYWxpbmcgd2l0aCBuYW5vc2Vjb25kIHRpbWVzdGFtcHMgbm9ybWFsbHkgdXNl
cyA2NCBiaXQgaW50ZWdlcnMKPiBhbmQgbm90IGxvbmcgbG9uZyBpbnRzLiBTbyB0aGlzIG1ha2Vz
IGl0IGVhc2llciB0byBwcmludCB0aGUgdmFsdWUgb2YKPiBleHByZXNzaW9ucyB1c2luZyB0aGVz
ZSBjb25zdGFudHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0
QGNvZGV3ZWF2ZXJzLmNvbT4KPiAtLS0KPiAKPiB2MzogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvYXJjaGl2ZXMvc3BpY2UtZGV2ZWwvMjAxOS1KdW5lLzA0OTM2MS5odG1sCj4gdjQ6IEZv
bGxvd2luZyB0aGUgZGlzY3Vzc2lvbiBhYm92ZSwgc3dpdGNoIHRvIHVzaW5nIElOVDY0X0MoKS4K
PiAgICAgVGhpcyBkb2VzIG5vdCBtb2RpZnkgTVNFQ19QRVJfU0VDLgo+IAo+ICBzZXJ2ZXIvdXRp
bHMuaCB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci91dGlscy5oIGIvc2VydmVyL3V0aWxz
LmgKPiBpbmRleCA1NGJjOWQ0OTAuLjJjYmQ3NzljMyAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvdXRp
bHMuaAo+ICsrKyBiL3NlcnZlci91dGlscy5oCj4gQEAgLTUyLDkgKzUyLDkgQEAgc3RhdGljIGlu
bGluZSBpbnQgdGVzdF9iaXQoaW50IGluZGV4LCB1aW50MzJfdCB2YWwpCj4gIAo+ICB0eXBlZGVm
IGludDY0X3QgcmVkX3RpbWVfdDsKPiAgCj4gLSNkZWZpbmUgTlNFQ19QRVJfU0VDICAgICAgMTAw
MDAwMDAwMExMCj4gLSNkZWZpbmUgTlNFQ19QRVJfTUlMTElTRUMgMTAwMDAwMAo+IC0jZGVmaW5l
IE5TRUNfUEVSX01JQ1JPU0VDIDEwMDAKPiArI2RlZmluZSBOU0VDX1BFUl9TRUMgICAgICBJTlQ2
NF9DKDEwMDAwMDAwMDApCj4gKyNkZWZpbmUgTlNFQ19QRVJfTUlMTElTRUMgSU5UNjRfQygxMDAw
MDAwKQo+ICsjZGVmaW5lIE5TRUNfUEVSX01JQ1JPU0VDIElOVDY0X0MoMTAwMCkKPiAgCj4gIC8q
IGdfZ2V0X21vbm90b25pY190aW1lKCkgZG9lcyBub3QgaGF2ZSBlbm91Z2ggcHJlY2lzaW9uICov
Cj4gIHN0YXRpYyBpbmxpbmUgcmVkX3RpbWVfdCBzcGljZV9nZXRfbW9ub3RvbmljX3RpbWVfbnMo
dm9pZCkKCkFjayBmb3IgbWUKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
