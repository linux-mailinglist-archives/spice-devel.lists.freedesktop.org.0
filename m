Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CABFD9552
	for <lists+spice-devel@lfdr.de>; Wed, 16 Oct 2019 17:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C43B6E3E3;
	Wed, 16 Oct 2019 15:18:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73986E3E3
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Oct 2019 15:18:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 16CF98A1C8B
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Oct 2019 15:18:31 +0000 (UTC)
Received: from [10.97.116.52] (ovpn-116-52.gru2.redhat.com [10.97.116.52])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9EAB51001B33;
 Wed, 16 Oct 2019 15:18:27 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, Victor Toso <victortoso@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191014104027.6guigds4d3ohr66x@wingsuit>
 <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <6cc92fa9-c5d2-4543-30c2-0073b83544b0@redhat.com>
Date: Wed, 16 Oct 2019 12:18:26 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Wed, 16 Oct 2019 15:18:31 +0000 (UTC)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMTQvMTkgMTA6MTggQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gSGksCj4+
Cj4+IE9uIEZyaSwgT2N0IDExLCAyMDE5IGF0IDEwOjU2OjI0QU0gKzAxMDAsIEZyZWRpYW5vIFpp
Z2xpbyB3cm90ZToKPj4+IFRoaXMgc2VyaWVzIGlzIHBhcnQgZnJvbSBhIGZvcm1lciBzZXJpZXMu
Cj4+PiBUaGVyZSdzIGFuIGluaXRpYWwgaW1wb3J0IGNvbW1pdCB0byBiZXR0ZXIgdW5kZXJzdGFu
ZCB0aGUgY2hhbmdlcy4KPj4+IEl0IGNvbnRhaW5zIHNvbWUgd29yayBmcm9tIEVkdWFyZG8gZm9y
IE1pbmdXIHBhY2thZ2luZy4KPj4+IEZpbmFsIHBhdGNoZXMgYXJlIHJlYWxseSBtaW5vci4KPj4K
Pj4gU2hvdWxkIEkvd2Ugd2FpdCBmb3IgRWR1YXJkbydzIHJldmlldz8KPj4KPiAKPiBObyBpZGVh
IHdoYXQgdG8gc3VnZ2VzdCBoZXJlLiBCdXQgc3VyZWx5IEknZCBsaWtlIHNvbWUgY29tbWVudHMg
ZnJvbQo+IGhpbS4gUGFydCBvZiB0aGUgaW1wbGVtZW50YXRpb24gY2FtZSBmcm9tIGhpcyBqb2Iu
CgoKU29ycnksIEkgbWlzc2VkIHRoaXMgdGhyZWFkIGNvbXBsZXRlbHkuCgpUaGUgdGhpbmcgdGhh
dCBtYXkgYmUgaW1wb3J0YW50IHRvIHRoaW5rIGFib3V0IGhhdmluZyBhIHNwZWMgZmlsZSBpbiB0
aGUgCnVwc3RyZWFtIHNvdXJjZSBjb2RlIGlzIHRoYXQgd2UgbmVlZCB0byBiZSBvcGVuIHRvIGNv
bnRyaWJ1dGlvbnMgZnJvbSAKb3RoZXIgZGlzdHJvcyBhcyB3ZWxsLgoKPiAKPj4+IEZyZWRpYW5v
IFppZ2xpbyAoNSk6Cj4+PiAgICBidWlsZC1zeXM6IEltcG9ydCBzcGVjIGZpbGUgZnJvbSBGZWRv
cmEKPj4+ICAgIGJ1aWxkLXN5czogUHJvdmlkZSBzcGVjIGZpbGUgZHVyaW5nIGJ1aWxkCj4+PiAg
ICBidWlsZC1zeXM6IEFsbG93cyBzcGVjIGZpbGUgdG8gYnVpbGQgTWluZ1cgcGFja2FnZXMKPj4+
ICAgIGJ1aWxkLXN5czogVXBkYXRlIFVSTCBpbiBTUEVDIGZpbGUKPj4+ICAgIGJ1aWxkLXN5czog
UmVxdWlyZXMgcHJvcGVyIHBrZy1jb25maWcgZm9yIE1pbmdXCj4+Pgo+Pj4gICBNYWtlZmlsZS5h
bSAgICAgICAgICAgIHwgICAxICsKPj4+ICAgY29uZmlndXJlLmFjICAgICAgICAgICB8ICAgMSAr
Cj4+PiAgIHNwaWNlLXByb3RvY29sLnNwZWMuaW4gfCAyMjQgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4KPj4gTGV0J3MgYWRkIHRvIG1lc29uIHRvbz8KPj4KPiAK
PiBJIGRpZG4ndCB0aG91Z2ggYWJvdXQuIEFsbCBTUEVDIGZpbGVzIEkgc3RhcnRlZCB3aXRoIGFy
ZSB1c2luZyBhdXRvY29uZgo+IGFuZCBJIG5ldmVyIHRlc3RlZCBkaXN0cmlidXRpb24gd2l0aCBN
ZXNvbiAoSSBkaWQgaW5zdGVhZCB3aXRoIHNwaWNlLWd0aykuCj4gQnV0IGl0IHNlZW1zIGEgYml0
IG9mIGEgZm9sbG93IHVwIGF0IHRoZSBtb21lbnQsIGl0IHdvdWxkIHJlcXVpcmUgc29tZQo+IGFk
ZGl0aW9uYWwgc2NyaXB0cyB0byBtYWtlIE1lc29uIGRpc3RyaWJ1dGUgcHJvY2Vzc2VkIGZpbGVz
IGFuZCBvdGhlciBjaGFuZ2VzLgo+IE5vdCBjb25zaWRlcmluZyB0aGF0IGlmIHRoZSBTUEVDIGF0
IHRoZSBlbmQgaXMgdXNpbmcgYXV0b2NvbmYgYSBNZXNvbgo+IGJ1aWxkIHdvdWxkIGhhdmUgdG8g
YWRkIGdlbmVyYXRlZCAiY29uZmlndXJlIiBhbmQgb3RoZXIgcmVsYXRpdmUgZmlsZXMKPiB3aGlj
aCBpcyBhIGJpdCBvZGQgYW5kIGNvbXBsZXguCj4gCgpXaHkgbm90IHRha2luZyB0aGlzIG9wcG9y
dHVuaXR5IGFuZCBkcm9wcGluZyB0aGUgYXV0b3Rvb2xzIHN1cHBvcnQgaW4gCmZhdm9yIG9mIG1l
c29uLCBhdCBsZWFzdCBmb3IgcHJvdG9jb2w/IFNwaWNlLWd0ayBhbHJlYWR5IGRpZCBpdCwgYW5k
IGl0IAppcyBtdWNoIG1vcmUgY29tcGxleCB0aGFuIHRoaXMgb25lLgoKLS0gCkVkdWFyZG8gZGUg
QmFycm9zIExpbWEgKEV0cnVua28pClNvZnR3YXJlIEVuZ2luZWVyIC0gUmVkIEhhdApldHJ1bmtv
QHJlZGhhdC5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
