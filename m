Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5727EB7BC7
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2FA6F883;
	Thu, 19 Sep 2019 14:11:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84276F87A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 940D430821EC
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1D2F15C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:17 +0200
Message-Id: <20190919141133.10691-5-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 04/20] usb-backend: no emulated isoch
 devices
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlIGRlYWxzIHdpdGggcmVhbCBhbmQgZW11bGF0ZWQgZGV2aWNlcyBi
dXQgdGhlcmUKaXMgbm8gcGxhbnMgdG8gaW1wbGVtZW50IGVtdWxhdGVkIGlzb2Nocm9ub3VzIGRl
dmljZXMuCgpUaGlzIHBhdGNoIGFkZHMgY2hlY2sgdG8gZWRldiAoZW11bGF0ZWQgZGV2aWNlKSBp
biB0aGUgZ3VhcmQsIGZpeCB0aGUKcmV0dXJuIHZhbHVlIHRvIEZBTFNFIGluc3RlYWQgb2YgcGxh
aW4gMCBhbmQgcmV0dXJuIGVhcmx5IGluIGNhc2UgdGhlCmNvZGUgcGF0aCBpcyBhcm91bmQgZW11
bGF0ZWQgZGV2aWNlcy4KClRoaXMgaXMgYSBwcmVwYXJhdG9yeSBwYXRjaCB0byBleHRlbmQgZW11
bGF0ZWQgZGV2aWNlcyBzdXBwb3J0LgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8
eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8
dmljdG9ydG9zb0ByZWRoYXQuY29tPgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCA4ICsrKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3Jj
L3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCA1YjUyYTQwLi5hNmI1ZjA3
IDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpA
QCAtMzU3LDExICszNTcsMTcgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lz
b2NoKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogICAgIGdpbnQgaSwgaiwgazsKICAgICBp
bnQgcmM7CiAKKyAgICBnX3JldHVybl92YWxfaWZfZmFpbChsaWJkZXYgIT0gTlVMTCB8fCBkZXYt
PmVkZXYgIT0gTlVMTCwgRkFMU0UpOworCisgICAgaWYgKGRldi0+ZWRldiAhPSBOVUxMKSB7Cisg
ICAgICAgIC8qIGN1cnJlbnRseSB3ZSBkbyBub3QgZW11bGF0ZSBpc29jaCBkZXZpY2VzICovCisg
ICAgICAgIHJldHVybiBGQUxTRTsKKyAgICB9CisKICAgICBpZiAoZGV2LT5jYWNoZWRfaXNvY2hy
b25vdXNfdmFsaWQpIHsKICAgICAgICAgcmV0dXJuIGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzOwog
ICAgIH0KIAotICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGxpYmRldiAhPSBOVUxMLCAwKTsKIAog
ICAgIHJjID0gbGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rlc2NyaXB0b3IobGliZGV2LCAmY29u
Zl9kZXNjKTsKICAgICBpZiAocmMpIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
