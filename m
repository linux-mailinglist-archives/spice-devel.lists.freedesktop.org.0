Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B18ED6181
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD258990D;
	Mon, 14 Oct 2019 11:40:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C6889834
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DF40418CB8FC
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B82A5DA8D
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 13:40:43 +0200
Message-Id: <20191014114043.31988-2-victortoso@redhat.com>
In-Reply-To: <20191014114043.31988-1-victortoso@redhat.com>
References: <20191014114043.31988-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH v2 2/2] docs: update Makefile to match meson
 dist
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU29ydCB0aGUgZmlsZXMgbmFt
ZXMgaW4gYWxwaGFiZXRpYyBvcmRlciBhbmQgaW5jbHVkZSB0aGUgLmh0bWwKdmVyc2lvbiBmb3Ig
c3BpY2VfZm9yX25ld2JpZXMgYW5kIHNwaWNlX3Byb3RvY29sCgpTaWduZWQtb2ZmLWJ5OiBWaWN0
b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIC5naXRpZ25vcmUgICAgICAgfCAg
MyArLS0KIGRvY3MvTWFrZWZpbGUuYW0gfCAxMSArKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvLmdpdGlnbm9y
ZSBiLy5naXRpZ25vcmUKaW5kZXggYmY2MTg5MzIuLjk2NWUyZGY3IDEwMDY0NAotLS0gYS8uZ2l0
aWdub3JlCisrKyBiLy5naXRpZ25vcmUKQEAgLTM0LDggKzM0LDcgQEAgSU5TVEFMTAogLnRhcmJh
bGwtdmVyc2lvbgogZG9jcy9tYW51YWwvbWFudWFsLmNodW5rZWQvCiBkb2NzL21hbnVhbC9tYW51
YWwuaHRtbAotZG9jcy9zcGljZV9zdHlsZS5odG1sCi1kb2NzL3NwaWNlX3RocmVhZGluZ19tb2Rl
bC5odG1sCitkb2NzLyouaHRtbAogLmRpcnN0YW1wCiAuZGVwcwogLmxpYnMKZGlmZiAtLWdpdCBh
L2RvY3MvTWFrZWZpbGUuYW0gYi9kb2NzL01ha2VmaWxlLmFtCmluZGV4IDE1ZmJiZGMwLi4xYzk2
YmNhZSAxMDA2NDQKLS0tIGEvZG9jcy9NYWtlZmlsZS5hbQorKysgYi9kb2NzL01ha2VmaWxlLmFt
CkBAIC0zLDEzICszLDE2IEBAIEFTQ0lJRE9DX0ZMQUdTID0gLWEgaWNvbnMgLWEgdG9jCiAKIEVY
VFJBX0RJU1QgPQkJCQkJXAogCW1lc29uLmJ1aWxkCQkJCVwKKwlzcGljZV9mb3JfbmV3Ymllcy5o
dG1sCQkJXAorCXNwaWNlX2Zvcl9uZXdiaWVzLnR4dAkJCVwKKwlzcGljZV9wcm90b2NvbC5odG1s
CQkJXAorCXNwaWNlX3Byb3RvY29sLnR4dAkJCVwKIAlzcGljZV9zdHlsZS5odG1sCQkJXAogCXNw
aWNlX3N0eWxlLnR4dAkJCQlcCiAJc3BpY2VfdGhyZWFkaW5nX21vZGVsLmh0bWwJCVwKIAlzcGlj
ZV90aHJlYWRpbmdfbW9kZWwudHh0CQlcCisJdmRfaW50ZXJmYWNlcy5odG1sCQkJXAogCXZkX2lu
dGVyZmFjZXMudHh0CQkJXAotCXNwaWNlX3Byb3RvY29sLnR4dAkJCVwKLQlzcGljZV9mb3JfbmV3
Ymllcy50eHQJCQlcCiAJaW1hZ2VzL25ld2JpZXMvZ19jbWRfZmxvdy5wbmcJCVwKIAlpbWFnZXMv
bmV3Ymllcy9nX3N1Yi5wbmcJCVwKIAlpbWFnZXMvbmV3Ymllcy9jbGlfYnNjX3N0Yy5wbmcJCVwK
QEAgLTE4LDExICsyMSwxMSBAQCBFWFRSQV9ESVNUID0JCQkJCVwKIAkkKE5VTEwpCiAKIEhUTUxf
RklMRVMgPSBcCisJc3BpY2VfZm9yX25ld2JpZXMuaHRtbCBcCisJc3BpY2VfcHJvdG9jb2wuaHRt
bCBcCiAJc3BpY2Vfc3R5bGUuaHRtbCBcCiAJc3BpY2VfdGhyZWFkaW5nX21vZGVsLmh0bWwgXAog
CXZkX2ludGVyZmFjZXMuaHRtbCBcCi0Jc3BpY2VfcHJvdG9jb2wuaHRtbCBcCi0Jc3BpY2VfZm9y
X25ld2JpZXMuaHRtbCBcCiAJJChOVUxMKQogCiBpZiBCVUlMRF9NQU5VQUwKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
