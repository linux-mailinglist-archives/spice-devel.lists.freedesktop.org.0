Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D807D63A2
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 15:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0913C6E2DE;
	Mon, 14 Oct 2019 13:18:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02AC6E2DE
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 13:18:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 97EF0315C027
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 13:18:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F8E160BE2
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 13:18:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 876C818089C8;
 Mon, 14 Oct 2019 13:18:51 +0000 (UTC)
Date: Mon, 14 Oct 2019 09:18:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191014104027.6guigds4d3ohr66x@wingsuit>
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191014104027.6guigds4d3ohr66x@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.8]
Thread-Topic: SPEC integration
Thread-Index: juk304ZRqW3iawKS/tY96PbdqYx+oQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 14 Oct 2019 13:18:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 0/5] SPEC integration
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

PiAKPiBIaSwKPiAKPiBPbiBGcmksIE9jdCAxMSwgMjAxOSBhdCAxMDo1NjoyNEFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBUaGlzIHNlcmllcyBpcyBwYXJ0IGZyb20gYSBmb3Jt
ZXIgc2VyaWVzLgo+ID4gVGhlcmUncyBhbiBpbml0aWFsIGltcG9ydCBjb21taXQgdG8gYmV0dGVy
IHVuZGVyc3RhbmQgdGhlIGNoYW5nZXMuCj4gPiBJdCBjb250YWlucyBzb21lIHdvcmsgZnJvbSBF
ZHVhcmRvIGZvciBNaW5nVyBwYWNrYWdpbmcuCj4gPiBGaW5hbCBwYXRjaGVzIGFyZSByZWFsbHkg
bWlub3IuCj4gCj4gU2hvdWxkIEkvd2Ugd2FpdCBmb3IgRWR1YXJkbydzIHJldmlldz8KPiAKCk5v
IGlkZWEgd2hhdCB0byBzdWdnZXN0IGhlcmUuIEJ1dCBzdXJlbHkgSSdkIGxpa2Ugc29tZSBjb21t
ZW50cyBmcm9tCmhpbS4gUGFydCBvZiB0aGUgaW1wbGVtZW50YXRpb24gY2FtZSBmcm9tIGhpcyBq
b2IuCgo+ID4gRnJlZGlhbm8gWmlnbGlvICg1KToKPiA+ICAgYnVpbGQtc3lzOiBJbXBvcnQgc3Bl
YyBmaWxlIGZyb20gRmVkb3JhCj4gPiAgIGJ1aWxkLXN5czogUHJvdmlkZSBzcGVjIGZpbGUgZHVy
aW5nIGJ1aWxkCj4gPiAgIGJ1aWxkLXN5czogQWxsb3dzIHNwZWMgZmlsZSB0byBidWlsZCBNaW5n
VyBwYWNrYWdlcwo+ID4gICBidWlsZC1zeXM6IFVwZGF0ZSBVUkwgaW4gU1BFQyBmaWxlCj4gPiAg
IGJ1aWxkLXN5czogUmVxdWlyZXMgcHJvcGVyIHBrZy1jb25maWcgZm9yIE1pbmdXCj4gPiAKPiA+
ICBNYWtlZmlsZS5hbSAgICAgICAgICAgIHwgICAxICsKPiA+ICBjb25maWd1cmUuYWMgICAgICAg
ICAgIHwgICAxICsKPiA+ICBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgMjI0ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gCj4gTGV0J3MgYWRkIHRvIG1lc29uIHRv
bz8KPiAKCkkgZGlkbid0IHRob3VnaCBhYm91dC4gQWxsIFNQRUMgZmlsZXMgSSBzdGFydGVkIHdp
dGggYXJlIHVzaW5nIGF1dG9jb25mCmFuZCBJIG5ldmVyIHRlc3RlZCBkaXN0cmlidXRpb24gd2l0
aCBNZXNvbiAoSSBkaWQgaW5zdGVhZCB3aXRoIHNwaWNlLWd0aykuCkJ1dCBpdCBzZWVtcyBhIGJp
dCBvZiBhIGZvbGxvdyB1cCBhdCB0aGUgbW9tZW50LCBpdCB3b3VsZCByZXF1aXJlIHNvbWUKYWRk
aXRpb25hbCBzY3JpcHRzIHRvIG1ha2UgTWVzb24gZGlzdHJpYnV0ZSBwcm9jZXNzZWQgZmlsZXMg
YW5kIG90aGVyIGNoYW5nZXMuCk5vdCBjb25zaWRlcmluZyB0aGF0IGlmIHRoZSBTUEVDIGF0IHRo
ZSBlbmQgaXMgdXNpbmcgYXV0b2NvbmYgYSBNZXNvbgpidWlsZCB3b3VsZCBoYXZlIHRvIGFkZCBn
ZW5lcmF0ZWQgImNvbmZpZ3VyZSIgYW5kIG90aGVyIHJlbGF0aXZlIGZpbGVzCndoaWNoIGlzIGEg
Yml0IG9kZCBhbmQgY29tcGxleC4KCj4gQ2hlZXJzLAo+IFZpY3Rvcgo+IAoKRnJlZGlhbm8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
