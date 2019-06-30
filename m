Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC445AFEC
	for <lists+spice-devel@lfdr.de>; Sun, 30 Jun 2019 15:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325AF89D9B;
	Sun, 30 Jun 2019 13:44:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311D589D9B
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jun 2019 13:44:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A03E9C057F2B
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jun 2019 13:44:51 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D3DF5C1B4;
 Sun, 30 Jun 2019 13:44:50 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <0192f4de-0e61-97b7-a755-4181053c4799@redhat.com>
Date: Sun, 30 Jun 2019 16:44:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190513094556.14035-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Sun, 30 Jun 2019 13:44:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 2/3] qxl_dev: Fix alignment
 for QXLReleaseInfo
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS8xMy8xOSAxMjo0NSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IERvIG5vdCBkZWNs
YXJlIHRoZSBzdHJ1Y3R1cmUgYXMgYWxpZ25lZC4KPiBUaGUgc3RhcnQvZW5kLXBhY2tlZC5oIGhl
YWRlcnMgYWZmZWN0cyBvbmx5IE1pbmdXIG9yIE1pY3Jvc29mdAo+IGNvbXBpbGVycy4KClRoZXkg
YWxzbyBkZWZpbmUvdW5kZWYgU1BJQ0VfQVRUUl9QQUNLRUQgd2hpY2ggYWZmZWN0cyBMaW51eC4K
CkJUVywgaWYgd2UgZGVmaW5lIFBBQ0tFRCBhcyBBTElHTkVEKDEpIGRvZXMgdGhhdCB3b3JrIGZv
ciBXaW5kb3dzCnRvbyAoSSBtZWFuIGluc3RlYWQgb2YgcHJhZ21hIHBhY2spID8KCj4gVG8gaGF2
ZSB1bmFsaWduZWQgc3RydWN0dXJlIHdpdGggR0NDIGNvbXBpbGVyIHlvdSBoYXZlCj4gdG8gdXNl
IFNQSUNFX0FUVFJfUEFDS0VELiBUaGlzIHdheSB0aGUgZGVmaW5pdGlvbiBhcmUgdGhlIHNhbWUg
Zm9yCj4gYWxsIGNvbXBpbGVyLgoKPiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9m
IFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKPiBhbGlnbmVkIGNhdXNpbmcgdG8gaGF2ZSBh
biBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRpYWxseQo+IHVuYWxpZ25lZC4KPiBBcyB0
aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3QgbWFrZSBhbnkg
c2l6ZQo+IGNoYW5nZSB1c2luZyBhbnkgY29tcGlsZXIuCgpGb3IgdGhpcyByZWFzb24sIHRoaXMg
Y2hhbmdlIGxvb2tzIHNhZmUgdG8gbWUuCgo+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5IGNoYW5nZSB0
aGUgYWxpZ25tZW50IGZyb20gNC84IHRvIDEuCj4gVGhpcyBjb3VsZCBhZmZlY3Qgc3RydWN0dXJl
cyBjb250YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNpZGUKPiBwYWNrZWQgc3RydWN0dXJl
IGluIHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4gb3Ro
ZXIgdXNhZ2VzIGFzIHN1Y2ggYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNwaWNlLXNlcnZlci4KCkl0
IGlzIHVzZWQgaW4gUWVtdSwgaW4gaHcvZGlzcGxheS9xeGwuaCwgc3RydWN0IFBDSVFYTERldmlj
ZS4KQWxzbyBpdCdzIHVzZWQgaW4gc3BpY2Utc2VydmVyIGFuZCBsaWtlbHkgUVhMIGRyaXZlcnMg
dG9vLgoKVXJpLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9z
cGljZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKPiBpbmRleCBhOWNjNGY0Li42NTlmOTMw
IDEwMDY0NAo+IC0tLSBhL3NwaWNlL3F4bF9kZXYuaAo+ICsrKyBiL3NwaWNlL3F4bF9kZXYuaAo+
IEBAIC0yNzUsNyArMjc1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9BTElHTkVEKDQp
IFNQSUNFX0FUVFJfUEFDS0VEIFFYTFJhbSB7Cj4gICAKPiAgIH0gUVhMUmFtOwo+ICAgCj4gLXR5
cGVkZWYgdW5pb24gUVhMUmVsZWFzZUluZm8gewo+ICt0eXBlZGVmIHVuaW9uIFNQSUNFX0FUVFJf
UEFDS0VEIFFYTFJlbGVhc2VJbmZvIHsKPiAgICAgICB1aW50NjRfdCBpZDsgICAgICAvLyBpbgo+
ICAgICAgIHVpbnQ2NF90IG5leHQ7ICAgIC8vIG91dAo+ICAgfSBRWExSZWxlYXNlSW5mbzsKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
