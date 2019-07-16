Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08F06A98E
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 15:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4F389D64;
	Tue, 16 Jul 2019 13:24:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEDF89D44
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:24:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3D1DA81F19
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:24:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3125A5DAA4
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:24:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 258371800202
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:24:15 +0000 (UTC)
Date: Tue, 16 Jul 2019 09:24:14 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <752805014.414588.1563283454969.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190704135610.15771-1-fziglio@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.12]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: 4gd+cc4yV2ScJVUEYQh5NejCjkMb5w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 16 Jul 2019 13:24:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 1/2 v2] qxl_dev: Fix
 alignment for QXLReleaseInfo
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

cGluZyBzZXJpZXMKCj4gCj4gRG8gbm90IGRlY2xhcmUgdGhlIHN0cnVjdHVyZSBhcyBhbGlnbmVk
Lgo+IFRoZSBzdGFydC9lbmQtcGFja2VkLmggaGVhZGVycyBhZmZlY3RzIHN0cnVjdHVyZXMgd2l0
aG91dAo+IHNwZWNpZmljYXRpb24gb25seSB1c2luZyBNaW5nVyBvciBNaWNyb3NvZnQgY29tcGls
ZXJzLiBGb3Igb3RoZXIKPiBwbGF0Zm9ybSBTUElDRV9BVFRSX1BBQ0tFRCBtYWNybyBzaG91bGQg
YmUgdXNlZC4gIFRoaXMgd2F5IHRoZQo+IGRlZmluaXRpb24gYXJlIHRoZSBzYW1lIGZvciBhbGwg
Y29tcGlsZXIuCj4gVGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCBpbiBhIGxvdCBvZiBRWEwgc3RydWN0
dXJlcyB3aGljaCBhcmUgbm90Cj4gYWxpZ25lZCBjYXVzaW5nIHRvIGhhdmUgYW4gYWxpZ25lZCBz
dHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKPiB1bmFsaWduZWQuCj4gQXMgdGhpcyBzdHJ1Y3R1
cmUgaGFzIG5vIGhvbGVzIHRoaXMgY2hhbmdlIGRvZXMgbm90IG1ha2UgYW55IHNpemUKPiBjaGFu
Z2UgdXNpbmcgYW55IGNvbXBpbGVyLgo+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5IGNoYW5nZSB0aGUg
YWxpZ25tZW50IGZyb20gNC84IHRvIDEuCj4gVGhpcyBjb3VsZCBhZmZlY3Qgc3RydWN0dXJlcyBj
b250YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNpZGUKPiBwYWNrZWQgc3RydWN0dXJlIGlu
IHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4gb3RoZXIg
dXNhZ2VzIGFmZmVjdGluZyBBQkkgYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNwaWNlLXNlcnZlci4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
PiAtLS0KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gdXBkYXRlIGNvbW1pdCBtZXNzYWdlCj4gLS0t
Cj4gIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3Nw
aWNlL3F4bF9kZXYuaAo+IGluZGV4IGE5Y2M0ZjQuLjY1OWY5MzAgMTAwNjQ0Cj4gLS0tIGEvc3Bp
Y2UvcXhsX2Rldi5oCj4gKysrIGIvc3BpY2UvcXhsX2Rldi5oCj4gQEAgLTI3NSw3ICsyNzUsNyBA
QCB0eXBlZGVmIHN0cnVjdCBTUElDRV9BVFRSX0FMSUdORUQoNCkgU1BJQ0VfQVRUUl9QQUNLRUQK
PiBRWExSYW0gewo+ICAKPiAgfSBRWExSYW07Cj4gIAo+IC10eXBlZGVmIHVuaW9uIFFYTFJlbGVh
c2VJbmZvIHsKPiArdHlwZWRlZiB1bmlvbiBTUElDRV9BVFRSX1BBQ0tFRCBRWExSZWxlYXNlSW5m
byB7Cj4gICAgICB1aW50NjRfdCBpZDsgICAgICAvLyBpbgo+ICAgICAgdWludDY0X3QgbmV4dDsg
ICAgLy8gb3V0Cj4gIH0gUVhMUmVsZWFzZUluZm87Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
