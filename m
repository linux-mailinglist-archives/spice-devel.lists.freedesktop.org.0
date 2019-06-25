Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5735152524
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 09:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F6F6E073;
	Tue, 25 Jun 2019 07:47:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17FF6E073
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 07:47:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7C28C99C1D;
 Tue, 25 Jun 2019 07:47:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 70FD460BE5;
 Tue, 25 Jun 2019 07:47:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 654261806B16;
 Tue, 25 Jun 2019 07:47:29 +0000 (UTC)
Date: Tue, 25 Jun 2019 03:47:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
In-Reply-To: <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.30]
Thread-Topic: utils: Remove the LL suffix from NSEC_PER_SEC
Thread-Index: urL44bctTu2qwy+1OsLpqJPrmGajAQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 25 Jun 2019 07:47:29 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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

PiAKPiBPbiBNb24sIDE3IEp1biAyMDE5LCBVcmkgTHVibGluIHdyb3RlOgo+IAo+ID4gT24gNi8x
NS8xOSAyOjU5IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gVGhpcyBj
b25zdGFudCBmaXRzIGluIGEgMzIgYml0IHNpZ25lZCBpbnRlZ2VyIHNvIGl0IGRvZXMgbm90IG5l
ZWQgdGhlCj4gPiA+PiBzdWZmaXguIEhvd2V2ZXIgc29tZSBvZiB0aGUgZGVyaXZlZCBjb25zdGFu
dHMgZG9uJ3Qgc28gdXNlIGFuIHVpbnQ2NF90Cj4gPiA+PiBjYXN0IHRvIGF2b2lkIHRoZSBsb25n
IHZzIGxvbmcgbG9uZyBjb25mdXNpb24gKHN1Y2ggYXMgaW4gcHJpbnQKPiA+ID4+IHN0YXRlbWVu
dHMpLgo+ID4gPj4gQWxzbyBzb21lIG9mIHRoZSBleHByZXNzaW9ucyB0aGVzZSBjb25zdGFudHMg
YXJlIHVzZWQgaW4gbWF5IG92ZXJmbG93IHNvCj4gPiA+PiBwZXJmb3JtIHRoZSBhcHByb3ByaWF0
ZSBjYXN0cyBpbiB0aG9zZSBsb2NhdGlvbnMuIFRoaXMgbWFrZXMgaXQgY2xlYXJlcgo+ID4gPj4g
dGhhdCB0aGVzZSBvcGVyYXRpb25zIGFyZSA2NCBiaXQuCj4gPiA+Pgo+ID4gPj4gU2lnbmVkLW9m
Zi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KPiA+ID4gCj4g
PiA+IGFjayBmb3IgbWUsIHdhaXRpbmcgVXJpIHRvIGNvbmZpcm0KPiA+IAo+ID4gSG9uZXN0bHks
IEkgZG8gbm90IHNlZSB0aGUgdmFsdWUgb2YgbWFraW5nIE5TRUNfUEVSX1NFQyBhIDMyYml0IGlu
dGVnZXIuCj4gPiBNb3N0IG9mIGl0cyB1c2FnZSBpcyBpbiA2NGJpdCBleHByZXNzaW9ucy4KPiAK
PiBJdCdzIG5vdCBhIDMyIGJpdCB2cy4gNjQgYml0IGlzc3VlLiBJdCdzIGEgbG9uZyB2cy4gbG9u
ZyBsb25nIG9uZS4KPiAKCkJ1dCBpbiBhbGwgYXJjaGl0ZWN0dXJlcyB3ZSBzdXBwb3J0IGxvbmcg
bG9uZyBpcyA2NCBiaXQuClRlY2huaWNhbGx5IGlzIG5vdCBsb25nIHZzIGxvbmcgbG9uZyBidXQg
aW50IGFuZCBsb25nIGxvbmcuCgo+IFdoZW5ldmVyIE5TRUNfUEVSX01JTExJU0VDIG9yIE5TRUNf
UEVSX1NFQyBhcmUgdXNlZCBpbiBhIHNwaWNlX2RlYnVnKCkKPiBwYXJhbWV0ZXIgb25lIGNhbm5v
dCB1c2UgJXUgb3IgJWx1IGFzIHRoZSBmb3JtYXQuIEJ1dCBub3Qgc28gZm9yCgpCZWluZyBzaWdu
ZWQgeW91IHdvdWxkIHVzZSAlbGxkIG9yIHNpbWlsYXJzLgoKPiBOU0VDX1BFUl9NSUNST1NFQyBv
ciBNU0VDX1BFUl9TRUMuIFRoaXMgaXMgaW5jb25zaXN0ZW50IHNvIHRoYXQgdGltaW5nCgpObywg
eW91IGNhbm5vdCB1c2UgbG9uZyBvciBub3QgbG9uZyBmb3Igb3RoZXIgY29uc3RhbnRzIHRvbywg
dGhleSBhcmUKZGlmZmVyZW50IGZvciAzMi1iaXQgc28gd2l0aCBib3RoIHlvdSBjYW5ub3QgbWl4
LgoKPiB0cmFjZXMgcmVxdWlyZSBsb3RzIG9mIGd1ZXNzaW5nIGFuZCByZWNvbXBpbGF0aW9ucy4K
PiAKClRoYXQncyB3aHkgd2UgdXNlIC1XZm9ybWF0IHNvIGNvbXBpbGVyIHdpbGwgdGVsbCB5b3Ug
d2hpY2ggb25lcyBhcmUgd3JvbmcuCkkgZG9uJ3Qgc2VlIHdoeSB5b3UgbmVlZCB0byBndWVzcyBh
bmQgcmVjb21waWxlLCBiZXNpZGUgSSBzdXBwb3NlIHRoZQpmaXJzdCB0aW1lIHlvdSBhcmUgd3Jp
dGluZyB0aGUgY29kZS4gQW5kIGlmIHlvdSBuZWVkIHRvIGd1ZXNzIGl0IG1lYW5zCnlvdSBkb24n
dCBrbm93IHRoZSB0eXBlcyB5b3UgYXJlIHVzaW5nIGFuZCBzbyB5b3UgYXJlIG5vdCBzdXJlIGFi
b3V0Cm92ZXJmbG93cyBzbyB5b3UgYXJlIG5vdCBwYXlpbmcgbXVjaCBhdHRlbnRpb24gdG8gdGhl
IGNvZGUgeW91IGFyZQp3cml0aW5nLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
