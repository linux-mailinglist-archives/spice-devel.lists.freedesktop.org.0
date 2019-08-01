Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 688997D892
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 11:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC986E43B;
	Thu,  1 Aug 2019 09:27:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCCA6E43B
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 09:27:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8A04530B96FC;
 Thu,  1 Aug 2019 09:27:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8040F60A9F;
 Thu,  1 Aug 2019 09:27:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 702AA1800202;
 Thu,  1 Aug 2019 09:27:46 +0000 (UTC)
Date: Thu, 1 Aug 2019 05:27:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1153184053.4121952.1564651664813.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190731162720.27387-1-jwhite@codeweavers.com>
References: <20190731162720.27387-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.4]
Thread-Topic: Provide compatibility for Glamor in Xorg 1.17.
Thread-Index: M5BwzzdU+J81L1+IJicAXjWqpTg3Yg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 01 Aug 2019 09:27:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 x11spice 2/2] Provide compatibility for
 Glamor in Xorg 1.17.
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

PiAKPiBJbiBYb3JnIDEuMTgsIFggY2hhbmdlZCBzbyB0aGF0IEdMQU1PUl9VU0VfRUdMX1NDUkVF
TiB3YXMgdGhlIG9ubHkKPiBmbGFnIHJlcXVpcmVkIGFuZCBpdCBpbXBsaWVzIHRoZSBiZWhhdmlv
ciBwcmV2aW91c2x5IHJlcXVlc3RlZAo+IHdpdGggdGhlIEdMQU1PUl9VU0VfU0NSRUVOIGFuZCBH
TEFNT1JFX1VTRV9QSUNUVVJFX1NDUkVFTiBmbGFncy4KPiBUaHVzLCBpZiB3ZSBhcmUgYnVpbGRp
bmcgYWdhaW5zdCBhbiBvbGRlciBYb3JnLCB3ZSBuZWVkIHRvIHNwZWNpZnkKPiB0aG9zZSBub3cg
ZGVwcmVjYXRlZCBmbGFncy4KPiAKPiBBZGRpdGlvbmFsbHksIHRoZSBjb21wYXQtYXBpIGhlYWRl
ciBjb25mbGljdHMgd2l0aCB0aGUgb2xkZXIKPiBnbGFtb3IgaGVhZGVyIGZpbGUsIHNvIGl0IG5l
ZWRzIHRvIGJlIG1vdmVkIHRvIGJlIGluY2x1ZGVkCj4gYWZ0ZXIgZ2xhbW9yLmguCj4gCj4gU2ln
bmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgoKQWNrZWQK
Cj4gLS0tCj4gdjI6IFByb3ZpZGUgbW9yZSBleHBsYW5hdGlvbgo+IC0tLQo+ICBzcGljZS12aWRl
by1kdW1teS9zcmMvZHVtbXkuaCAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgc3BpY2UtdmlkZW8t
ZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMgfCAxNSArKysrKysrKysrKysrKy0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9zcGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaCBiL3NwaWNlLXZpZGVvLWR1bW15
L3NyYy9kdW1teS5oCj4gaW5kZXggYTI1MDI5MDIuLmFmNzdjMTc3IDEwMDY0NAo+IC0tLSBhL3Nw
aWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oCj4gKysrIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3Jj
L2R1bW15LmgKPiBAQCAtMTEsMTEgKzExLDExIEBACj4gICNlbmRpZgo+ICAjaW5jbHVkZSA8c3Ry
aW5nLmg+Cj4gIAo+IC0jaW5jbHVkZSAiY29tcGF0LWFwaS5oIgo+IC0KPiAgI2RlZmluZSBHTEFN
T1JfRk9SX1hPUkcgMQo+ICAjaW5jbHVkZSAiZ2xhbW9yLmgiCj4gIAo+ICsjaW5jbHVkZSAiY29t
cGF0LWFwaS5oIgo+ICsKPiAgLyogU3VwcG9ydGVkIGNoaXBzZXRzICovCj4gIHR5cGVkZWYgZW51
bSB7Cj4gICAgICBEVU1NWV9DSElQCj4gZGlmZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3Ny
Yy9zcGljZWR1bW15X2RyaXZlci5jCj4gYi9zcGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1t
eV9kcml2ZXIuYwo+IGluZGV4IGZjMzU1Zjg1Li4xZGJlODdiMiAxMDA2NDQKPiAtLS0gYS9zcGlj
ZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYwo+ICsrKyBiL3NwaWNlLXZpZGVv
LWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jCj4gQEAgLTU1OCw2ICs1NTgsMTkgQEAgRFVN
TVlTY3JlZW5Jbml0KFNDUkVFTl9JTklUX0FSR1NfREVDTCkKPiAgICAgIGludCByZXQ7Cj4gICAg
ICBWaXN1YWxQdHIgdmlzdWFsOwo+ICAgICAgdm9pZCAqcGl4ZWxzOwo+ICsgICAgaW50IGdsYW1v
cl9mbGFncyA9IEdMQU1PUl9VU0VfRUdMX1NDUkVFTjsKPiArCj4gKyAgICAvKiBJbiBYb3JnIDEu
MTgsIFggY2hhbmdlZCBzbyB0aGF0IEdMQU1PUl9VU0VfRUdMX1NDUkVFTiB3YXMgdGhlIG9ubHkK
PiArICAgICAgIGZsYWcgcmVxdWlyZWQgYW5kIGl0IGltcGxpZXMgdGhlIGJlaGF2aW9yIHByZXZp
b3VzbHkgcmVxdWVzdGVkCj4gKyAgICAgICB3aXRoIHRoZSBHTEFNT1JfVVNFX1NDUkVFTiBhbmQg
R0xBTU9SRV9VU0VfUElDVFVSRV9TQ1JFRU4gZmxhZ3MuCj4gKyAgICAgICBUaHVzLCBpZiB3ZSBh
cmUgYnVpbGRpbmcgYWdhaW5zdCBhbiBvbGRlciBYb3JnLCB3ZSBuZWVkIHRvIHNwZWNpZnkKPiAr
ICAgICAgIHRob3NlIG5vdyBkZXByZWNhdGVkIGZsYWdzLiAqLwo+ICsjaWYgZGVmaW5lZChHTEFN
T1JfVVNFX1NDUkVFTikKPiArICAgIGdsYW1vcl9mbGFncyB8PSBHTEFNT1JfVVNFX1NDUkVFTjsK
PiArI2VuZGlmCj4gKyNpZiBkZWZpbmVkKEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JFRU4pCj4gKyAg
ICBnbGFtb3JfZmxhZ3MgfD0gR0xBTU9SX1VTRV9QSUNUVVJFX1NDUkVFTjsKPiArI2VuZGlmCj4g
IAo+ICAgICAgLyoKPiAgICAgICAqIHdlIG5lZWQgdG8gZ2V0IHRoZSBTY3JuSW5mb1JlYyBmb3Ig
dGhpcyBzY3JlZW4sIHNvIGxldCdzIGFsbG9jYXRlCj4gQEAgLTYxOCw3ICs2MzEsNyBAQCBEVU1N
WVNjcmVlbkluaXQoU0NSRUVOX0lOSVRfQVJHU19ERUNMKQo+ICAgICAgLyogbXVzdCBiZSBhZnRl
ciBSR0Igb3JkZXJpbmcgZml4ZWQgKi8KPiAgICAgIGZiUGljdHVyZUluaXQocFNjcmVlbiwgMCwg
MCk7Cj4gIAo+IC0gICAgaWYgKGRQdHItPmdsYW1vciAmJiAhZ2xhbW9yX2luaXQocFNjcmVlbiwg
R0xBTU9SX1VTRV9FR0xfU0NSRUVOKSkgewo+ICsgICAgaWYgKGRQdHItPmdsYW1vciAmJiAhZ2xh
bW9yX2luaXQocFNjcmVlbiwgZ2xhbW9yX2ZsYWdzKSkgewo+ICAgICAgICAgIHhmODZEcnZNc2co
cFNjcm4tPnNjcm5JbmRleCwgWF9FUlJPUiwKPiAgICAgICAgICAgICAgICAgICAgICJGYWlsZWQg
dG8gaW5pdGlhbGlzZSBnbGFtb3IgYXQgU2NyZWVuSW5pdCgpIHRpbWUuXG4iKTsKPiAgICAgICAg
ICByZXR1cm4gRkFMU0U7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
