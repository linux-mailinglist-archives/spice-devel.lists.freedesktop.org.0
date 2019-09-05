Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99339A9C31
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 09:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C84E89F77;
	Thu,  5 Sep 2019 07:51:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A17889F77
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:51:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 140AD64132
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:51:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 08966194B2
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:51:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3BB818089C8;
 Thu,  5 Sep 2019 07:51:40 +0000 (UTC)
Date: Thu, 5 Sep 2019 03:51:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <318391988.10754741.1567669900818.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190904122041.23408-2-victortoso@redhat.com>
References: <20190904122041.23408-1-victortoso@redhat.com>
 <20190904122041.23408-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.10]
Thread-Topic: main: migration: check return value to count channels
Thread-Index: X+1EgsiiK3Jje5cwopLxjnW+xKdqHg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 05 Sep 2019 07:51:41 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 2/3] main: migration: check return
 value to count channels
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gQWx0aG91Z2gg
c3BpY2VfY2hhbm5lbF9jb25uZWN0KCkgd29ya3MgaW4gaWRsZSwgaWYgaXQgcmV0dXJucyBmYWxz
ZQo+IGl0J2xsIG5vdCBlbWl0IGFueSBzaWduYWwgZnVydGhlciBhbmQgd2Ugd291bGQgYmUgY291
bnRpbmcgYQo+ICdjb25uZWN0ZWQnIGNoYW5uZWwgdGhhdCB3b3VsZG4ndCBiZSBlbWl0dGluZyBh
bnl0aGluZy4KPiAKPiBBcyBvdGhlciBjYWxsYmFja3MgdGFrZSB0aGlzIGluIGNvbnNpZGVyYXRp
b24sIHdlIHNob3VsZCBvbmx5Cj4gaW5jcmVtZW50IHRoZSBjb3VudGVyIGlmIHdlIHJlYWNoZWQg
c3BpY2UtY2hhbm5lbDo6Y29ubmVjdF9kZWxheWVkKCkKPiBjYWxsYmFjay4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMv
Y2hhbm5lbC1tYWluLmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLW1haW4uYyBi
L3NyYy9jaGFubmVsLW1haW4uYwo+IGluZGV4IGExZTU0OTguLjNkMWIxYjUgMTAwNjQ0Cj4gLS0t
IGEvc3JjL2NoYW5uZWwtbWFpbi5jCj4gKysrIGIvc3JjL2NoYW5uZWwtbWFpbi5jCj4gQEAgLTIx
NzQsOCArMjE3NCw5IEBAIG1pZ3JhdGVfY2hhbm5lbF9jb25uZWN0KHNwaWNlX21pZ3JhdGUgKm1p
ZywgaW50IHR5cGUsCj4gaW50IGlkKQo+ICAgICAgU1BJQ0VfREVCVUcoIm1pZ3JhdGVfY2hhbm5l
bF9jb25uZWN0ICVkOiVkIiwgdHlwZSwgaWQpOwo+ICAKPiAgICAgIFNwaWNlQ2hhbm5lbCAqbmV3
YyA9IHNwaWNlX2NoYW5uZWxfbmV3KG1pZy0+c2Vzc2lvbiwgdHlwZSwgaWQpOwo+IC0gICAgc3Bp
Y2VfY2hhbm5lbF9jb25uZWN0KG5ld2MpOwo+IC0gICAgbWlnLT5uY2hhbm5lbHMrKzsKPiArICAg
IGlmIChuZXdjICE9IE5VTEwgJiYgc3BpY2VfY2hhbm5lbF9jb25uZWN0KG5ld2MpKSB7Cj4gKyAg
ICAgICAgbWlnLT5uY2hhbm5lbHMrKzsKPiArICAgIH0KPiAgfQo+ICAKPiAgLyogY29yb3V0aW5l
IGNvbnRleHQgKi8KCkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KCkl0IG1ha2VzIHNlbnNlIGJ1dCBpZiBzcGljZV9jaGFubmVsX2Nvbm5lY3QgZm9yIGFueSBy
ZWFzb24gZmFpbHMgdGhlIGNoYW5uZWwKd2lsbCBnbyB0byB1bmNvbm5lY3RlZCBzdGF0ZSBhbmQg
d2Ugd2lsbCAiZm9yZ2V0IiB0aGUgcG9pbnRlciBzbyBiYXNpY2FsbHkKbG9va3MgbGlrZSBhIGxl
YWsuCkF0IGxlYXN0IEkgd291bGQgZXhwZWN0IHRoYXQgaWYgSSBhdHRlbXB0IHRvIGRpc2Nvbm5l
Y3QgaXQgdGhlIG9iamVjdAppcyBmcmVlZC4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
