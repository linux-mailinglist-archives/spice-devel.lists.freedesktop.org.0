Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C6E69153
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 16:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181258952F;
	Mon, 15 Jul 2019 14:28:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D418952F
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 14:28:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 285A8BB9C1;
 Mon, 15 Jul 2019 14:28:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 19CB41001DC5;
 Mon, 15 Jul 2019 14:28:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F458410AD;
 Mon, 15 Jul 2019 14:28:26 +0000 (UTC)
Date: Mon, 15 Jul 2019 10:28:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <924676003.191096.1563200906023.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5Oc6=WgcAeuNcHDHaXoxcuArnzk3bRgxYXtH5ifGS1t0uA@mail.gmail.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-5-yuri.benditovich@daynix.com>
 <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc6=WgcAeuNcHDHaXoxcuArnzk3bRgxYXtH5ifGS1t0uA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.4]
Thread-Topic: usb-redir: delete usb-backend context on initialization error
Thread-Index: BdW+dAROqaA3AUiDKxYeJMND36F+jw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 15 Jul 2019 14:28:26 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 4/5] usb-redir: delete usb-backend
 context on initialization error
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBNb24sIEp1bCAxNSwgMjAxOSBhdCA1OjA0IFBNIEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiA+Cj4gPiA+IFRoZSBkZWxldGUgaW4gZXJy
b3IgZmxvdyB3YXMgbWlzc2luZy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5k
aXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNy
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDEgKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKPiA+ID4gaW5kZXggODU3ZDA1Ny4uNzEwNWZm
MSAxMDA2NDQKPiA+ID4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gPiA+ICsrKyBi
L3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gPiBAQCAtMjU5LDYgKzI1OSw3IEBAIHN0YXRp
YyBnYm9vbGVhbgo+ID4gPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChH
SW5pdGFibGUgICppbml0YWJsZSwKPiA+ID4gICAgICBpZiAoIXNwaWNlX3VzYl9iYWNrZW5kX3Jl
Z2lzdGVyX2hvdHBsdWcocHJpdi0+Y29udGV4dCwgc2VsZiwKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2hv
dHBsdWdfY2IsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGVycikpIHsKPiA+ID4gKyAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGVsZXRlKHByaXYt
PmNvbnRleHQpOwo+ID4KPiA+IFNob3VsZCBub3QgaGF2ZSBhIGZvbGxvd2luZyAicHJpdi0+Y29u
dGV4dCA9IE5VTEwiID8KPiAKPiBUaGlzIGlzIGEgY29uc3RydWN0b3I7IGlmIGl0IGZhaWxzIHRo
ZSBkZXN0cnVjdG9yIGlzIG5vdCBjYWxsZWQuCj4gQnV0IG5vIHByb2JsZW0gdG8gYWRkIHRoaXMg
Zm9yIGJlYXV0eS4KPiAKCk5vLCB0aGlzIGlzIHRoZSBJbml0aWFibGU6OmluaXQuIElmIHRoaXMg
cmV0dXJucyBGQUxTRSB0aGUgb2JqZWN0IGRlc3RydWN0aW9uCihzbyBzcGljZV91c2JfZGV2aWNl
X21hbmFnZXJfZmluYWxpemUgZm9yIGluc3RhbmNlKSB3aWxsIGJlIGV4ZWN1dGVkLgpDdXJyZW50
bHkgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2ZpbmFsaXplIGlzIGNhbGxpbmcgc3BpY2VfdXNi
X2JhY2tlbmRfZGVsZXRlCmFsc28gc28gaW4gdGhlb3J5IHRoaXMgY2FsbCBzaG91bGQgbm90IGJl
IG5lY2Vzc2FyeSAobm90IHRlc3RlZCkuCgo+ID4KPiA+ID4gICAgICAgICAgcmV0dXJuIEZBTFNF
Owo+ID4gPiAgICAgIH0KPiA+ID4gICNpZm5kZWYgR19PU19XSU4zMgo+ID4KCkZyZWRpYW5vCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
