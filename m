Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E2AA9F27
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 12:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9BA66E02B;
	Thu,  5 Sep 2019 10:02:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE316E02A
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 10:02:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3925D10C051E
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 10:02:50 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F3D9194B9;
 Thu,  5 Sep 2019 10:02:48 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 11:02:44 +0100
Message-Id: <20190905100245.2244-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 05 Sep 2019 10:02:50 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] channel-usbredir: Rename
 spice_usbredir_write_callback
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

UmVtb3ZlICJfY2FsbGJhY2siIHN1ZmZpeC4KVGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCBkaXJlY3Rs
eSwgbm8gbXVjaCByZWFzb25zIHRvIGtlZXAgdGhhdApzdWZmaXguCgpTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC11c2Jy
ZWRpci1wcml2LmggfCAyICstCiBzcmMvY2hhbm5lbC11c2JyZWRpci5jICAgICAgfCAyICstCiBz
cmMvdXNiLWJhY2tlbmQuYyAgICAgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2Jy
ZWRpci1wcml2LmggYi9zcmMvY2hhbm5lbC11c2JyZWRpci1wcml2LmgKaW5kZXggYTM2ZjVkOWIu
LjEyMzA2MjhjIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci1wcml2LmgKKysrIGIv
c3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oCkBAIC03MCw3ICs3MCw3IEBAIHZvaWQgc3BpY2Vf
dXNicmVkaXJfY2hhbm5lbF9nZXRfZ3Vlc3RfZmlsdGVyKAogICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbnQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICpydWxlc19jb3VudF9yZXQp
OwogCiAvKiBDYWxsYmFjayBmb3IgVVNCIGJhY2tlbmQgKi8KLWludCBzcGljZV91c2JyZWRpcl93
cml0ZV9jYWxsYmFjayhTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCwgdWludDhfdCAqZGF0
YSwgaW50IGNvdW50KTsKK2ludCBzcGljZV91c2JyZWRpcl93cml0ZShTcGljZVVzYnJlZGlyQ2hh
bm5lbCAqY2hhbm5lbCwgdWludDhfdCAqZGF0YSwgaW50IGNvdW50KTsKIAogR19FTkRfREVDTFMK
IApkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYyBiL3NyYy9jaGFubmVsLXVzYnJl
ZGlyLmMKaW5kZXggOGQ0Y2Q2NjQuLjBhNzExYzI1IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11
c2JyZWRpci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTU3Miw3ICs1NzIsNyBA
QCBzdGF0aWMgaW50IHRyeV93cml0ZV9jb21wcmVzc19MWjQoU3BpY2VVc2JyZWRpckNoYW5uZWwg
KmNoYW5uZWwsIHVpbnQ4X3QgKmRhdGEsCiAjZW5kaWYKIAogR19HTlVDX0lOVEVSTkFMCi1pbnQg
c3BpY2VfdXNicmVkaXJfd3JpdGVfY2FsbGJhY2soU3BpY2VVc2JyZWRpckNoYW5uZWwgKmNoYW5u
ZWwsIHVpbnQ4X3QgKmRhdGEsIGludCBjb3VudCkKK2ludCBzcGljZV91c2JyZWRpcl93cml0ZShT
cGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCwgdWludDhfdCAqZGF0YSwgaW50IGNvdW50KQog
ewogICAgIFNwaWNlTXNnT3V0ICptc2dfb3V0OwogCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tl
bmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGNmZDE0ZTJjLi5kYmM5NjE5NCAxMDA2NDQK
LS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTYxNCw3
ICs2MTQsNyBAQCBzdGF0aWMgaW50IHVzYnJlZGlyX3dyaXRlX2NhbGxiYWNrKHZvaWQgKnVzZXJf
ZGF0YSwgdWludDhfdCAqZGF0YSwgaW50IGNvdW50KQogICAgIFNwaWNlVXNiQmFja2VuZENoYW5u
ZWwgKmNoID0gdXNlcl9kYXRhOwogICAgIGludCByZXM7CiAgICAgU1BJQ0VfREVCVUcoIiVzIGNo
ICVwLCAlZCBieXRlcyIsIF9fRlVOQ1RJT05fXywgY2gsIGNvdW50KTsKLSAgICByZXMgPSBzcGlj
ZV91c2JyZWRpcl93cml0ZV9jYWxsYmFjayhjaC0+dXNlcl9kYXRhLCBkYXRhLCBjb3VudCk7Cisg
ICAgcmVzID0gc3BpY2VfdXNicmVkaXJfd3JpdGUoY2gtPnVzZXJfZGF0YSwgZGF0YSwgY291bnQp
OwogICAgIHJldHVybiByZXM7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
