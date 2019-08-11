Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF63D89118
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023898914C;
	Sun, 11 Aug 2019 09:34:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB6D89070
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:34:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2384546288;
 Sun, 11 Aug 2019 09:34:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AFDB7B9D9;
 Sun, 11 Aug 2019 09:34:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0DDFB18089C8;
 Sun, 11 Aug 2019 09:34:27 +0000 (UTC)
Date: Sun, 11 Aug 2019 05:34:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Pavel Grunt <pgrunt@redhat.com>
Message-ID: <1789750244.5452196.1565516067004.JavaMail.zimbra@redhat.com>
In-Reply-To: <1484043820.2373.9.camel@redhat.com>
References: <1482512033-27607-1-git-send-email-jwhite@codeweavers.com>
 <1484043820.2373.9.camel@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.4]
Thread-Topic: Make the audio and video uids different.
Thread-Index: Xz1AjR0PgQk0JTjBHU6OIUylWl9AnA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sun, 11 Aug 2019 09:34:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-html5] Make the audio and video uids
 different.
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

SGksCiAgSSBzYXcgbm8gdXBkYXRlZCBzaW5jZSB0aGUgcmV2aWV3LgpJcyB0aGlzIHBhdGNoIHN0
aWxsIHVzZWZ1bD8KCkZyZWRpYW5vCgo+IAo+IEhpLAo+IAo+IE9uIEZyaSwgMjAxNi0xMi0yMyBh
dCAxMDo1MyAtMDYwMCwgSmVyZW15IFdoaXRlIHdyb3RlOgo+ID4gVGhpcyBkb2VzIG5vdCBhcHBl
YXIgdG8gbWF0dGVyLCBidXQgbGV0J3MganVzdCBiZSBzYWZlLgo+ID4gCj4gc3VyZQo+IAo+IAo+
ID4gU2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgo+
ID4gLS0tCj4gPiDCoHdlYm0uanMgfCAyICstCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvd2VibS5qcyBiL3dl
Ym0uanMKPiA+IGluZGV4IDcyYzE4NTMuLjYyNDU0OTggMTAwNjQ0Cj4gPiAtLS0gYS93ZWJtLmpz
Cj4gPiArKysgYi93ZWJtLmpzCj4gPiBAQCAtNDA2LDcgKzQwNiw3IEBAIGZ1bmN0aW9uIHdlYm1f
QXVkaW9UcmFja0VudHJ5KCkKPiA+IMKgwqDCoMKgwqAqLwo+ID4gwqDCoMKgwqDCoHRoaXMuaWQg
PSBXRUJNX1RSQUNLX0VOVFJZOwo+ID4gwqDCoMKgwqDCoHRoaXMubnVtYmVyID0gMTsKPiA+IC3C
oMKgwqDCoHRoaXMudWlkID0gMTsKPiA+ICvCoMKgwqDCoHRoaXMudWlkID0gMjsKPiAKPiBXaGF0
IGFib3V0IHVzaW5nIHNvbWUgdmFyaWFibGUgaW5zdGVhZCBvZiBudW1iZXIgKGxpa2UKPiBXRUJN
X0FVRElPX1VJRCk/Cj4gCj4gUGF2ZWwKPiAKPiA+IMKgwqDCoMKgwqB0aGlzLnR5cGUgPSAyOyAv
LyBBdWRpbwo+ID4gwqDCoMKgwqDCoHRoaXMuZmxhZ19lbmFibGVkID0gMTsKPiA+IMKgwqDCoMKg
wqB0aGlzLmZsYWdfZGVmYXVsdCA9IDE7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
