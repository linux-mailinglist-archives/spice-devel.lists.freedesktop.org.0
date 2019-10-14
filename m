Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8019D6317
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 14:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F606E2CA;
	Mon, 14 Oct 2019 12:52:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5766E2CA
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 12:52:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 06C1610C0945
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 12:52:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F141460BE2
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 12:52:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E77C518089C8;
 Mon, 14 Oct 2019 12:52:19 +0000 (UTC)
Date: Mon, 14 Oct 2019 08:52:19 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1689905564.6541020.1571057539754.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191014114043.31988-2-victortoso@redhat.com>
References: <20191014114043.31988-1-victortoso@redhat.com>
 <20191014114043.31988-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.30]
Thread-Topic: docs: update Makefile to match meson dist
Thread-Index: 05TibR1pKSHgWnDmOdmltgJWUNGfsw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Mon, 14 Oct 2019 12:52:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 2/2] docs: update Makefile to match
 meson dist
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU29ydCB0aGUg
ZmlsZXMgbmFtZXMgaW4gYWxwaGFiZXRpYyBvcmRlciBhbmQgaW5jbHVkZSB0aGUgLmh0bWwKPiB2
ZXJzaW9uIGZvciBzcGljZV9mb3JfbmV3YmllcyBhbmQgc3BpY2VfcHJvdG9jb2wKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgoKQWNrZWQKCj4g
LS0tCj4gIC5naXRpZ25vcmUgICAgICAgfCAgMyArLS0KPiAgZG9jcy9NYWtlZmlsZS5hbSB8IDEx
ICsrKysrKystLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS8uZ2l0aWdub3JlIGIvLmdpdGlnbm9yZQo+IGluZGV4
IGJmNjE4OTMyLi45NjVlMmRmNyAxMDA2NDQKPiAtLS0gYS8uZ2l0aWdub3JlCj4gKysrIGIvLmdp
dGlnbm9yZQo+IEBAIC0zNCw4ICszNCw3IEBAIElOU1RBTEwKPiAgLnRhcmJhbGwtdmVyc2lvbgo+
ICBkb2NzL21hbnVhbC9tYW51YWwuY2h1bmtlZC8KPiAgZG9jcy9tYW51YWwvbWFudWFsLmh0bWwK
PiAtZG9jcy9zcGljZV9zdHlsZS5odG1sCj4gLWRvY3Mvc3BpY2VfdGhyZWFkaW5nX21vZGVsLmh0
bWwKPiArZG9jcy8qLmh0bWwKPiAgLmRpcnN0YW1wCj4gIC5kZXBzCj4gIC5saWJzCj4gZGlmZiAt
LWdpdCBhL2RvY3MvTWFrZWZpbGUuYW0gYi9kb2NzL01ha2VmaWxlLmFtCj4gaW5kZXggMTVmYmJk
YzAuLjFjOTZiY2FlIDEwMDY0NAo+IC0tLSBhL2RvY3MvTWFrZWZpbGUuYW0KPiArKysgYi9kb2Nz
L01ha2VmaWxlLmFtCj4gQEAgLTMsMTMgKzMsMTYgQEAgQVNDSUlET0NfRkxBR1MgPSAtYSBpY29u
cyAtYSB0b2MKPiAgCj4gIEVYVFJBX0RJU1QgPQkJCQkJXAo+ICAJbWVzb24uYnVpbGQJCQkJXAo+
ICsJc3BpY2VfZm9yX25ld2JpZXMuaHRtbAkJCVwKPiArCXNwaWNlX2Zvcl9uZXdiaWVzLnR4dAkJ
CVwKPiArCXNwaWNlX3Byb3RvY29sLmh0bWwJCQlcCj4gKwlzcGljZV9wcm90b2NvbC50eHQJCQlc
Cj4gIAlzcGljZV9zdHlsZS5odG1sCQkJXAo+ICAJc3BpY2Vfc3R5bGUudHh0CQkJCVwKPiAgCXNw
aWNlX3RocmVhZGluZ19tb2RlbC5odG1sCQlcCj4gIAlzcGljZV90aHJlYWRpbmdfbW9kZWwudHh0
CQlcCj4gKwl2ZF9pbnRlcmZhY2VzLmh0bWwJCQlcCj4gIAl2ZF9pbnRlcmZhY2VzLnR4dAkJCVwK
PiAtCXNwaWNlX3Byb3RvY29sLnR4dAkJCVwKPiAtCXNwaWNlX2Zvcl9uZXdiaWVzLnR4dAkJCVwK
PiAgCWltYWdlcy9uZXdiaWVzL2dfY21kX2Zsb3cucG5nCQlcCj4gIAlpbWFnZXMvbmV3Ymllcy9n
X3N1Yi5wbmcJCVwKPiAgCWltYWdlcy9uZXdiaWVzL2NsaV9ic2Nfc3RjLnBuZwkJXAo+IEBAIC0x
OCwxMSArMjEsMTEgQEAgRVhUUkFfRElTVCA9CQkJCQlcCj4gIAkkKE5VTEwpCj4gIAo+ICBIVE1M
X0ZJTEVTID0gXAo+ICsJc3BpY2VfZm9yX25ld2JpZXMuaHRtbCBcCj4gKwlzcGljZV9wcm90b2Nv
bC5odG1sIFwKPiAgCXNwaWNlX3N0eWxlLmh0bWwgXAo+ICAJc3BpY2VfdGhyZWFkaW5nX21vZGVs
Lmh0bWwgXAo+ICAJdmRfaW50ZXJmYWNlcy5odG1sIFwKPiAtCXNwaWNlX3Byb3RvY29sLmh0bWwg
XAo+IC0Jc3BpY2VfZm9yX25ld2JpZXMuaHRtbCBcCj4gIAkkKE5VTEwpCj4gIAo+ICBpZiBCVUlM
RF9NQU5VQUwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
