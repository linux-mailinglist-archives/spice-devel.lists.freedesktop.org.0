Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C281622F86
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 10:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608F389241;
	Mon, 20 May 2019 08:57:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F11A89241
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0021587633
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E8D26600C6
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:16 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DFC77E160
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:57:16 +0000 (UTC)
Date: Mon, 20 May 2019 04:57:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190513094556.14035-2-fziglio@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.25]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: PLj9rM9LIj7bcjiBJXa27vRLE5QkWg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 20 May 2019 08:57:17 +0000 (UTC)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBEbyBub3QgZGVjbGFyZSB0aGUgc3RydWN0dXJlIGFzIGFsaWduZWQuCj4gVGhl
IHN0YXJ0L2VuZC1wYWNrZWQuaCBoZWFkZXJzIGFmZmVjdHMgb25seSBNaW5nVyBvciBNaWNyb3Nv
ZnQKPiBjb21waWxlcnMuIFRvIGhhdmUgdW5hbGlnbmVkIHN0cnVjdHVyZSB3aXRoIEdDQyBjb21w
aWxlciB5b3UgaGF2ZQo+IHRvIHVzZSBTUElDRV9BVFRSX1BBQ0tFRC4gVGhpcyB3YXkgdGhlIGRl
ZmluaXRpb24gYXJlIHRoZSBzYW1lIGZvcgo+IGFsbCBjb21waWxlci4KPiBUaGlzIHN0cnVjdHVy
ZSBpcyB1c2VkIGluIGEgbG90IG9mIFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKPiBhbGln
bmVkIGNhdXNpbmcgdG8gaGF2ZSBhbiBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRpYWxs
eQo+IHVuYWxpZ25lZC4KPiBBcyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFu
Z2UgZG9lcyBub3QgbWFrZSBhbnkgc2l6ZQo+IGNoYW5nZSB1c2luZyBhbnkgY29tcGlsZXIuCj4g
VGhlIGNoYW5nZSB3aWxsIG9ubHkgY2hhbmdlIHRoZSBhbGlnbm1lbnQgZnJvbSA0LzggdG8gMS4K
PiBUaGlzIGNvdWxkIGFmZmVjdCBzdHJ1Y3R1cmVzIGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dl
dmVyIGJlc2lkZQo+IHBhY2tlZCBzdHJ1Y3R1cmUgaW4gcXhsX2Rldi5oICh3aGljaCBhcmUgbm90
IGFmZmVjdGVkKSB0aGVyZSBhcmUgbm8KPiBvdGhlciB1c2FnZXMgYXMgc3VjaCBieSBzcGljZS1n
dGssIFFlbXUgb3Igc3BpY2Utc2VydmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzcGljZS9xeGxfZGV2LmggfCAyICst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9zcGljZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKPiBpbmRleCBhOWNj
NGY0Li42NTlmOTMwIDEwMDY0NAo+IC0tLSBhL3NwaWNlL3F4bF9kZXYuaAo+ICsrKyBiL3NwaWNl
L3F4bF9kZXYuaAo+IEBAIC0yNzUsNyArMjc1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRU
Ul9BTElHTkVEKDQpIFNQSUNFX0FUVFJfUEFDS0VECj4gUVhMUmFtIHsKPiAgCj4gIH0gUVhMUmFt
Owo+ICAKPiAtdHlwZWRlZiB1bmlvbiBRWExSZWxlYXNlSW5mbyB7Cj4gK3R5cGVkZWYgdW5pb24g
U1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ICAgICAgdWludDY0X3QgaWQ7ICAg
ICAgLy8gaW4KPiAgICAgIHVpbnQ2NF90IG5leHQ7ICAgIC8vIG91dAo+ICB9IFFYTFJlbGVhc2VJ
bmZvOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
