Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF8161F58
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 15:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B6689B55;
	Mon,  8 Jul 2019 13:10:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185B289B55
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:10:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B3D04307D90E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:10:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A7A3D2D1BC
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:10:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D7B341F40;
 Mon,  8 Jul 2019 13:10:01 +0000 (UTC)
Date: Mon, 8 Jul 2019 09:10:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1446620457.26640799.1562591400184.JavaMail.zimbra@redhat.com>
In-Reply-To: <f5b051a4-d046-5426-a402-0cbbd38bedbe@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-5-fziglio@redhat.com>
 <f5b051a4-d046-5426-a402-0cbbd38bedbe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.5]
Thread-Topic: Try Meson dist
Thread-Index: Hh4REbESjhpH0ewxGTg/7tIU+p8cUQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 08 Jul 2019 13:10:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 4/4] ci: Try Meson dist
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

PiAKPiBPbiA1LzIwLzE5IDEwOjM5IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBNYWtl
IHN1cmUgTWVzb24gaXMgYWJsZSB0byBnZW5lcmF0ZSBhIGNvcnJlY3QgdGFyYmFsbC4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4g
PiAtLS0KPiA+ICAgLmdpdGxhYi1jaS55bWwgfCA2ICsrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBi
Ly5naXRsYWItY2kueW1sCj4gPiBpbmRleCBhNmNiMmNkYS4uNWRkYjRkYjggMTAwNjQ0Cj4gPiAt
LS0gYS8uZ2l0bGFiLWNpLnltbAo+ID4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiA+IEBAIC04Miw2
ICs4MiwxMiBAQCBmZWRvcmEtbWVzb246Cj4gPiAgIAo+ID4gICAgIHNjcmlwdDoKPiA+ICAgICAg
IC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1kZWZhdWx0Cj4gPiArICAgICMgTWVz
b24gZG9lcyBub3QgdXBkYXRlIHN1Ym1vZHVsZXMgcmVjdXJzaXZlbHkKPiAKPiBBdXRvdG9vbHMg
ZG8gbm90IGRvIHRoYXQgZWl0aGVyLCBpdCdzIGRvbmUgaW4gdGhlIGF1dG9nZW4uc2ggc2NyaXB0
Cj4gCgpCdXQgTWVzb24gaXMgc3VwcG9zZWQgdG8gZGVhbCB3aXRoIHN1Ym1vZHVsZXMsIEF1dG90
b29scyBoYXMgbm90aGluZwp0byBkbyB3aXRoIHRoZSByZXBvc2l0b3JpZXMsIGl0J3MgcXVpdGUg
YSBkaWZmZXJlbnQgbWluZHNldC4KCj4gPiArICAgIC0gZ2l0IHN1Ym1vZHVsZSB1cGRhdGUgLS1p
bml0IC0tcmVjdXJzaXZlCj4gPiArICAgICMgdGhpcyBmaXggYW4gaXNzdWUgd2l0aCBNZXNvbiBk
aXN0Cj4gPiArICAgIC0gaWYgISB0ZXN0IC1yIC4uL3NwaWNlLWNvbW1vbi5naXQ7IHRoZW4gRElS
PWBiYXNlbmFtZSAiJFBXRCJgOyBsbiAtcwo+ID4gIiRESVIvLmdpdC9tb2R1bGVzL3NwaWNlLWNv
bW1vbiIgLi4vc3BpY2UtY29tbW9uLmdpdDsgZmkKPiAKPiBUaGF0J3Mgd2VpcmQuIEl0IGRvZXMg
d29yayBmb3IgbWUgbG9jYWxseS4KCk1heWJlIHlvdSBhbHJlYWR5IGhhdmUgdGhlIGxpbmsuIE9y
IHRoZXkgZml4ZWQgdGhlIGlzc3VlIG9uIGEgbGF0ZXIgdmVyc2lvbi4KCj4gSXQgaXMgZXhwZWN0
ZWQgdGhhdCAuLi9zcGljZS1jb21tb24uZ2l0IHdvdWxkIGJlIHJlbGF0aXZlIHRvICdvcmlnaW4n
Lgo+IAoKV2hhdCBkbyB5b3UgbWVhbj8gLi4vc3BpY2UtY29tbW9uLmdpdCBpcyBhIGRpcmVjdG9y
eSBsaW5rIGFuZCBvcmlnaW4KaXMgYSBicmFuY2guCgo+ID4gKyAgICAtIHJtIC1yZiBtZXNvbi1k
aXN0Cj4gPiArICAgIC0gbmluamEgLUMgYnVpbGQtZGVmYXVsdCBkaXN0Cj4gCj4gTm90ZSwgdGhh
dCB0aGUgZ2VuZXJhdGVkIHRhcmJhbGwgZG9lcyBub3QgY29udGFpbiBhIGNvbmZpZ3VyZSBzY3Jp
cHQuCj4gVGhpcyBpcyBwcm9iYWJseSBleHBlY3RlZCBhcyBhdXRvdG9vbHMgYXJlIG5vdCB1c2Vk
LCBidXQgSSB3YW50ZWQKPiB0byBlbXBoYXNpemUgdGhhdCB0aGUgdHdvIHRhcmJhbGxzIGFyZSBk
aWZmZXJlbnQuCj4gCj4gVXJpLgo+IAoKWWVzLCBNZXNvbiAiZGlzdCIgaXMgbm90IHBvd2VyZnVs
IGVub3VnaCB0byBnZW5lcmF0ZWQgc3VjaCBhIHRhcmJhbGwKYW5kIGEgbWFudWFsIHNjcmlwdCB3
b3VsZCBiZSBxdWl0ZSBhbiBoYWNrLgoKPiA+ICAgICAgIC0gbmluamEgLUMgYnVpbGQtZGVmYXVs
dAo+ID4gICAgICAgLSBuaW5qYSAtQyBidWlsZC1kZWZhdWx0IHRlc3QKPiA+ICAgCj4gPiAKPiAK
PiAKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
