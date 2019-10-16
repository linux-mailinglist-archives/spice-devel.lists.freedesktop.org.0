Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07842D97B3
	for <lists+spice-devel@lfdr.de>; Wed, 16 Oct 2019 18:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BE26E9AF;
	Wed, 16 Oct 2019 16:43:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5B36E9AF
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Oct 2019 16:43:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BC5243090FD6
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Oct 2019 16:42:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B11A619C70
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Oct 2019 16:42:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A637618089DC;
 Wed, 16 Oct 2019 16:42:59 +0000 (UTC)
Date: Wed, 16 Oct 2019 12:42:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Message-ID: <634174717.6924596.1571244179437.JavaMail.zimbra@redhat.com>
In-Reply-To: <6cc92fa9-c5d2-4543-30c2-0073b83544b0@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191014104027.6guigds4d3ohr66x@wingsuit>
 <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
 <6cc92fa9-c5d2-4543-30c2-0073b83544b0@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.10]
Thread-Topic: SPEC integration
Thread-Index: xVEKxR4mfluG/RxcC47N737n1MYQ4A==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 16 Oct 2019 16:42:59 +0000 (UTC)
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

PiAKPiBPbiAxMC8xNC8xOSAxMDoxOCBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+Cj4g
Pj4gSGksCj4gPj4KPiA+PiBPbiBGcmksIE9jdCAxMSwgMjAxOSBhdCAxMDo1NjoyNEFNICswMTAw
LCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPj4+IFRoaXMgc2VyaWVzIGlzIHBhcnQgZnJvbSBh
IGZvcm1lciBzZXJpZXMuCj4gPj4+IFRoZXJlJ3MgYW4gaW5pdGlhbCBpbXBvcnQgY29tbWl0IHRv
IGJldHRlciB1bmRlcnN0YW5kIHRoZSBjaGFuZ2VzLgo+ID4+PiBJdCBjb250YWlucyBzb21lIHdv
cmsgZnJvbSBFZHVhcmRvIGZvciBNaW5nVyBwYWNrYWdpbmcuCj4gPj4+IEZpbmFsIHBhdGNoZXMg
YXJlIHJlYWxseSBtaW5vci4KPiA+Pgo+ID4+IFNob3VsZCBJL3dlIHdhaXQgZm9yIEVkdWFyZG8n
cyByZXZpZXc/Cj4gPj4KPiA+IAo+ID4gTm8gaWRlYSB3aGF0IHRvIHN1Z2dlc3QgaGVyZS4gQnV0
IHN1cmVseSBJJ2QgbGlrZSBzb21lIGNvbW1lbnRzIGZyb20KPiA+IGhpbS4gUGFydCBvZiB0aGUg
aW1wbGVtZW50YXRpb24gY2FtZSBmcm9tIGhpcyBqb2IuCj4gCj4gCj4gU29ycnksIEkgbWlzc2Vk
IHRoaXMgdGhyZWFkIGNvbXBsZXRlbHkuCj4gCj4gVGhlIHRoaW5nIHRoYXQgbWF5IGJlIGltcG9y
dGFudCB0byB0aGluayBhYm91dCBoYXZpbmcgYSBzcGVjIGZpbGUgaW4gdGhlCj4gdXBzdHJlYW0g
c291cmNlIGNvZGUgaXMgdGhhdCB3ZSBuZWVkIHRvIGJlIG9wZW4gdG8gY29udHJpYnV0aW9ucyBm
cm9tCj4gb3RoZXIgZGlzdHJvcyBhcyB3ZWxsLgo+IAoKTm90aGluZyB3cm9uZyBhYm91dC4gSSBo
YXZlIHNvbWUgU1BFQyBmaWxlIGluIG90aGVyIHByb2plY3RzIHdoaWNoIGFyZQptdWx0aS1kaXN0
cm8uIFVzdWFsbHkgdGhlcmUncyBubyBtdWNoIGNoYW5nZXMgYmV0d2VlbiBvbmUgZGlzdHJvIG9y
CmFub3RoZXIsIGFsc28gY29uc2lkZXJpbmcgdGhhdCBvbmUgb2YgdGhlIGJpZyBkaWZmZXJlbmNl
IGFyZSBwYXRocwphbmQgcGF0aHMgYXJlIGNoYW5nZXMgdXNpbmcgbWFjcm9zIGxpa2UgJWNvbmZp
Z3VyZSwgYWxyZWFkeSB1c2VkIGluCnRoaXMgU1BFQy4gVXN1YWxseSB0aGUgZGlmZmVyZW5jZXMg
YXJlIGluIHBhY2thZ2VzIG5hbWVzIGJ1dCB0aGVzZSBjYW4KYmUgZml4ZWQgaW4gbW9zdCBjYXNl
cyB1c2luZyBmaWxlIG5hbWVzIGluc3RlYWQgb2YgcGFja2FnZSBuYW1lcyBvcgpyZXF1aXJlIHN0
cmluZ3MgKGxpa2UgInBrZ2NvbmZpZyhnbGliMikiIG9yIHNpbWlsYXIpLgoKPiA+IAo+ID4+PiBG
cmVkaWFubyBaaWdsaW8gKDUpOgo+ID4+PiAgICBidWlsZC1zeXM6IEltcG9ydCBzcGVjIGZpbGUg
ZnJvbSBGZWRvcmEKPiA+Pj4gICAgYnVpbGQtc3lzOiBQcm92aWRlIHNwZWMgZmlsZSBkdXJpbmcg
YnVpbGQKPiA+Pj4gICAgYnVpbGQtc3lzOiBBbGxvd3Mgc3BlYyBmaWxlIHRvIGJ1aWxkIE1pbmdX
IHBhY2thZ2VzCj4gPj4+ICAgIGJ1aWxkLXN5czogVXBkYXRlIFVSTCBpbiBTUEVDIGZpbGUKPiA+
Pj4gICAgYnVpbGQtc3lzOiBSZXF1aXJlcyBwcm9wZXIgcGtnLWNvbmZpZyBmb3IgTWluZ1cKPiA+
Pj4KPiA+Pj4gICBNYWtlZmlsZS5hbSAgICAgICAgICAgIHwgICAxICsKPiA+Pj4gICBjb25maWd1
cmUuYWMgICAgICAgICAgIHwgICAxICsKPiA+Pj4gICBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwg
MjI0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4KPiA+PiBM
ZXQncyBhZGQgdG8gbWVzb24gdG9vPwo+ID4+Cj4gPiAKPiA+IEkgZGlkbid0IHRob3VnaCBhYm91
dC4gQWxsIFNQRUMgZmlsZXMgSSBzdGFydGVkIHdpdGggYXJlIHVzaW5nIGF1dG9jb25mCj4gPiBh
bmQgSSBuZXZlciB0ZXN0ZWQgZGlzdHJpYnV0aW9uIHdpdGggTWVzb24gKEkgZGlkIGluc3RlYWQg
d2l0aCBzcGljZS1ndGspLgo+ID4gQnV0IGl0IHNlZW1zIGEgYml0IG9mIGEgZm9sbG93IHVwIGF0
IHRoZSBtb21lbnQsIGl0IHdvdWxkIHJlcXVpcmUgc29tZQo+ID4gYWRkaXRpb25hbCBzY3JpcHRz
IHRvIG1ha2UgTWVzb24gZGlzdHJpYnV0ZSBwcm9jZXNzZWQgZmlsZXMgYW5kIG90aGVyCj4gPiBj
aGFuZ2VzLgo+ID4gTm90IGNvbnNpZGVyaW5nIHRoYXQgaWYgdGhlIFNQRUMgYXQgdGhlIGVuZCBp
cyB1c2luZyBhdXRvY29uZiBhIE1lc29uCj4gPiBidWlsZCB3b3VsZCBoYXZlIHRvIGFkZCBnZW5l
cmF0ZWQgImNvbmZpZ3VyZSIgYW5kIG90aGVyIHJlbGF0aXZlIGZpbGVzCj4gPiB3aGljaCBpcyBh
IGJpdCBvZGQgYW5kIGNvbXBsZXguCj4gPiAKPiAKPiBXaHkgbm90IHRha2luZyB0aGlzIG9wcG9y
dHVuaXR5IGFuZCBkcm9wcGluZyB0aGUgYXV0b3Rvb2xzIHN1cHBvcnQgaW4KPiBmYXZvciBvZiBt
ZXNvbiwgYXQgbGVhc3QgZm9yIHByb3RvY29sPyBTcGljZS1ndGsgYWxyZWFkeSBkaWQgaXQsIGFu
ZCBpdAo+IGlzIG11Y2ggbW9yZSBjb21wbGV4IHRoYW4gdGhpcyBvbmUuCj4gCgpNb3JlIHRoYW4g
dGhlIG9wcG9ydHVuaXR5IHRvIG1lIGl0IHNlZW1zIGFkZGluZyBwcmVzc2lvbiBhbmQgc3RvcG92
ZXJzLgpUaGUgaW5pdGlhbCBTUEVDIGZpbGUgd2FzIGltcG9ydGVkIGZyb20gRmVkb3JhIGZvciB0
aGlzIHJlYXNvbiwgdG8KYXZvaWQgcG9zc2libHkgYnJlYWtpbmcgZXZlcnl0aGluZyBhbmQgZG8g
dGhpbmdzIHN0ZXAgYnkgc3RlcC4KCldoZW4gd2UgcmVtb3ZlZCBhdXRvY29uZiBmcm9tIHNwaWNl
LWd0ayB3ZSBhbHJlYWR5IHRlc3RlZCBpbiBkaWZmZXJlbnQKY29uZmlndXJhdGlvbnMgYm90aCB0
aGUgZGlzdHJpYnV0aW9uIGFuZCBwYWNrYWdpbmcsIGZvciBzcGljZS1wcm90b2NvbAp3ZSBkaWRu
J3QgZG8gYW55dGhpbmcgb2YgdGhpcywgdGhlIGN1cnJlbnQgcGFja2FnaW5nIGlzIHN0aWxsCmF1
dG9jb25mIGJhc2VkIGZvciBpbnN0YW5jZS4KCj4gLS0KPiBFZHVhcmRvIGRlIEJhcnJvcyBMaW1h
IChFdHJ1bmtvKQo+IFNvZnR3YXJlIEVuZ2luZWVyIC0gUmVkIEhhdAo+IGV0cnVua29AcmVkaGF0
LmNvbQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
