Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7626CFF8
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D046E3E1;
	Thu, 18 Jul 2019 14:39:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91296E3E1
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:39:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4285130655E3
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:39:12 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A01D019C5B;
 Thu, 18 Jul 2019 14:39:11 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190718073225.13190-1-fziglio@redhat.com>
 <20190718073225.13190-4-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <ae84cbe4-3162-59d4-2746-c81516e92539@redhat.com>
Date: Thu, 18 Jul 2019 17:39:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718073225.13190-4-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 18 Jul 2019 14:39:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 3/3] ci: Add some Valgrind
 suppressions for Fedora 30
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

T24gNy8xOC8xOSAxMDozMiBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKSGkgRnJlZGlhbm8sCgpJ
J3ZlIGJlZW4gcGxheWluZyB3aXRoIGl0IHRvby4KSGFkIHNpbWlsYXIgcnVsZXMgYnV0IGRpZmZl
cmVudC4KCllvdXIgdmVyc2lvbiB3b3JrcyBmb3IgbWUuClNvbWUgbWlub3IgY29tbWVudHMgYmVs
b3cuCgo+IC0tLQo+ICAgc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAgfCAyNSArKysr
KysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcCBiL3Nl
cnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCj4gaW5kZXggMWJmZTgxMDA2Li5kZDM2NjNj
NjggMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAKPiArKysg
Yi9zZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcAo+IEBAIC0zNiwzICszNiwyOCBAQAo+
ICAgCS4uLgo+ICAgCWZ1bjpwMTFfa2l0X21vZHVsZXNfbG9hZAo+ICAgfQo+ICsKPiArewo+ICsJ
Z251dGxzX3g1MDlfZXh0X2ltcG9ydF9zdWJqZWN0X2FsdF9uYW1lcwo+ICsJTWVtY2hlY2s6Q29u
ZAo+ICsJLi4uCj4gKwlmdW46Z251dGxzX3g1MDlfZXh0X2ltcG9ydF9zdWJqZWN0X2FsdF9uYW1l
cwo+ICsJZnVuOmdudXRsc194NTA5X2NydF9pbXBvcnQKPiArCWZ1bjpnbnV0bHNfeDUwOV90cnVz
dF9saXN0X2l0ZXJfZ2V0X2NhCj4gKwkuLi4KPiArCWZ1bjpnX2luaXRhYmxlX25ld192YWxpc3QK
PiArCWZ1bjpnX2luaXRhYmxlX25ldwo+ICsJLi4uCgpwb3NzaWJseSB5b3UgY2FuIHJlbW92ZSB0
aGUgbGFzdCA0IGxpbmVzIChub3QgaW1wb3J0YW50KQoKPiArfQo+ICsKPiArewo+ICsJZ2xpYl9n
X3NvY2tldF9jbGllbnRfY2xhc3NfaW5pdAoKQXJlIGFsbCBnbGliIHNvY2tldHMgbGVha2luZyB3
aGVuIGluaXRpYWxpemVkID8KCj4gKwlNZW1jaGVjazpMZWFrCj4gKwlmdW46Y2FsbG9jCj4gKwku
Li4KPiArCWZ1bjp0eXBlX2NsYXNzX2luaXRfV20KPiArCS4uLgo+ICsJZnVuOmdfc29ja2V0X2Ns
aWVudF9jbGFzc19pbml0Cj4gKwkuLi4KPiArCWZ1bjp0eXBlX2NsYXNzX2luaXRfV20KCllvdSBj
YW4gcHJvYmFibHkgcmVtb3ZlIHRoZSB0eXBlX2NsYXNzX2luaXRfV20gYW5kIC4uLgoKVXJpLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
