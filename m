Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38395B825
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 11:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D763F89BB3;
	Mon,  1 Jul 2019 09:37:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A6889BB3
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 09:37:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5F399307D913
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 09:37:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 55D877DF5F
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 09:37:12 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4BEF81833001;
 Mon,  1 Jul 2019 09:37:12 +0000 (UTC)
Date: Mon, 1 Jul 2019 05:37:10 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <852266844.25935059.1561973830546.JavaMail.zimbra@redhat.com>
In-Reply-To: <0192f4de-0e61-97b7-a755-4181053c4799@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
 <0192f4de-0e61-97b7-a755-4181053c4799@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.30]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: snTjYEJOgPVdlhavwSf0MB4iMuoTxg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 01 Jul 2019 09:37:12 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiA1LzEzLzE5IDEyOjQ1IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBEbyBu
b3QgZGVjbGFyZSB0aGUgc3RydWN0dXJlIGFzIGFsaWduZWQuCj4gPiBUaGUgc3RhcnQvZW5kLXBh
Y2tlZC5oIGhlYWRlcnMgYWZmZWN0cyBvbmx5IE1pbmdXIG9yIE1pY3Jvc29mdAo+ID4gY29tcGls
ZXJzLgo+IAo+IFRoZXkgYWxzbyBkZWZpbmUvdW5kZWYgU1BJQ0VfQVRUUl9QQUNLRUQgd2hpY2gg
YWZmZWN0cyBMaW51eC4KPgoKTWF5IGJlOgoKVGhlIHN0YXJ0L2VuZC1wYWNrZWQuaCBoZWFkZXJz
IGFmZmVjdHMgc3RydWN0dXJlcyB3aXRob3V0IHNwZWNpZmljYXRpb24Kb25seSB1c2luZyBNaW5n
VyBvciBNaWNyb3NvZnQgY29tcGlsZXJzLiBGb3Igb3RoZXIgcGxhdGZvcm0gClNQSUNFX0FUVFJf
UEFDS0VEIG1hY3JvIHNob3VsZCBiZSB1c2VkLgogCj4gQlRXLCBpZiB3ZSBkZWZpbmUgUEFDS0VE
IGFzIEFMSUdORUQoMSkgZG9lcyB0aGF0IHdvcmsgZm9yIFdpbmRvd3MKPiB0b28gKEkgbWVhbiBp
bnN0ZWFkIG9mIHByYWdtYSBwYWNrKSA/Cj4gCgpNb3JlIHRoYW4gQlRXIGxvb2tzIE9UIHRvIG1l
LiBObywgYWxpZ25lZCBpcyB1c2VkIHRvIHNwZWNpZnkgdGhhdAp0aGUgdG90YWwgc3RydWN0dXJl
IGlzIGFsaWduZWQgd2hpbGUgcGFjay9wYWNrZWQgYWZmZWN0cyBhbGwgZmllbGRzLgpBY3R1YWxs
eSBJIHRoaW5nIHRoYXQgcHJhZ21hIHBhY2socHVzaCAsMSkgZm9yIGNvbXBhdGliaWxpdHkgc2hv
dWxkCndvcmsgb24gYWxsIGNvbXBpbGVycyB3ZSBzdXBwb3J0LgoKPiA+IFRvIGhhdmUgdW5hbGln
bmVkIHN0cnVjdHVyZSB3aXRoIEdDQyBjb21waWxlciB5b3UgaGF2ZQo+ID4gdG8gdXNlIFNQSUNF
X0FUVFJfUEFDS0VELiBUaGlzIHdheSB0aGUgZGVmaW5pdGlvbiBhcmUgdGhlIHNhbWUgZm9yCj4g
PiBhbGwgY29tcGlsZXIuCj4gCj4gPiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9m
IFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKPiA+IGFsaWduZWQgY2F1c2luZyB0byBoYXZl
IGFuIGFsaWduZWQgc3RydWN0dXJlIHRvIGJlIHBvdGVudGlhbGx5Cj4gPiB1bmFsaWduZWQuCj4g
PiBBcyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3QgbWFr
ZSBhbnkgc2l6ZQo+ID4gY2hhbmdlIHVzaW5nIGFueSBjb21waWxlci4KPiAKPiBGb3IgdGhpcyBy
ZWFzb24sIHRoaXMgY2hhbmdlIGxvb2tzIHNhZmUgdG8gbWUuCj4gCgpJdCBkZXBlbmRzLCBpZiBh
IHN0cnVjdHVyZSB0aGF0IGRlZmluZXMgYW4gQUJJIGlzIGxpa2UKCnN0cnVjdCBmb28gewogICBp
bnQgeDsKICAgUVhMUmVsZWFzZUluZm8gcmVsZWFzZV9pbmZvOwp9Cgp0aGlzIHBhdGNoIHdvdWxk
IGNoYW5nZSBBQkkuCgo+ID4gVGhlIGNoYW5nZSB3aWxsIG9ubHkgY2hhbmdlIHRoZSBhbGlnbm1l
bnQgZnJvbSA0LzggdG8gMS4KPiA+IFRoaXMgY291bGQgYWZmZWN0IHN0cnVjdHVyZXMgY29udGFp
bmluZyB0aGlzIHVuaW9uIGhvd2V2ZXIgYmVzaWRlCj4gPiBwYWNrZWQgc3RydWN0dXJlIGluIHF4
bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4gPiBvdGhlciB1
c2FnZXMgYXMgc3VjaCBieSBzcGljZS1ndGssIFFlbXUgb3Igc3BpY2Utc2VydmVyLgo+IAo+IEl0
IGlzIHVzZWQgaW4gUWVtdSwgaW4gaHcvZGlzcGxheS9xeGwuaCwgc3RydWN0IFBDSVFYTERldmlj
ZS4KPiBBbHNvIGl0J3MgdXNlZCBpbiBzcGljZS1zZXJ2ZXIgYW5kIGxpa2VseSBRWEwgZHJpdmVy
cyB0b28uCj4gCgpZZXMsIEkgd2FzIHRhbGtpbmcgYWJvdXQgc3RydWN0dXJlcyB3aGljaCBoYXZl
IEFCSSByZXF1aXJlbWVudHMsCnNvIG5vdCBpbnRlcm5hbCBRZW11IG9uZXMuCgpNYXliZToKClRo
aXMgY291bGQgYWZmZWN0IHN0cnVjdHVyZXMgY29udGFpbmluZyB0aGlzIHVuaW9uIGhvd2V2ZXIg
YmVzaWRlCnBhY2tlZCBzdHJ1Y3R1cmUgaW4gcXhsX2Rldi5oICh3aGljaCBhcmUgbm90IGFmZmVj
dGVkKSB0aGVyZSBhcmUgbm8Kb3RoZXIgdXNhZ2VzIGFmZmVjdGluZyBBQkkgYnkgc3BpY2UtZ3Rr
LCBRZW11IG9yIHNwaWNlLXNlcnZlci4KCj4gVXJpLgo+IAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gICBzcGlj
ZS9xeGxfZGV2LmggfCAyICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3Bp
Y2UvcXhsX2Rldi5oCj4gPiBpbmRleCBhOWNjNGY0Li42NTlmOTMwIDEwMDY0NAo+ID4gLS0tIGEv
c3BpY2UvcXhsX2Rldi5oCj4gPiArKysgYi9zcGljZS9xeGxfZGV2LmgKPiA+IEBAIC0yNzUsNyAr
Mjc1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9BTElHTkVEKDQpIFNQSUNFX0FUVFJf
UEFDS0VECj4gPiBRWExSYW0gewo+ID4gICAKPiA+ICAgfSBRWExSYW07Cj4gPiAgIAo+ID4gLXR5
cGVkZWYgdW5pb24gUVhMUmVsZWFzZUluZm8gewo+ID4gK3R5cGVkZWYgdW5pb24gU1BJQ0VfQVRU
Ul9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ID4gICAgICAgdWludDY0X3QgaWQ7ICAgICAgLy8g
aW4KPiA+ICAgICAgIHVpbnQ2NF90IG5leHQ7ICAgIC8vIG91dAo+ID4gICB9IFFYTFJlbGVhc2VJ
bmZvOwo+ID4gIAoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
