Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB9B3801
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127656E8FF;
	Mon, 16 Sep 2019 10:21:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476336E8FF
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CD49783F3B
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:15 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 580A05D6B2
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:15 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:20:56 +0200
Message-Id: <20190916102104.20943-14-victortoso@redhat.com>
In-Reply-To: <20190916102104.20943-1-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 16 Sep 2019 10:21:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 13/20] build: Do not build usbredir
 dependent file is usbredir disabled
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpUaGVzZSBmaWxlcyB3
b3VsZCBlbmQgdXAgdG8gY29tcGlsZSBlbXB0eSBjb2RlLCBubyByZWFzb24KdG8gY29tcGlsZSBh
bmQgbGluayB0aGVtLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJl
ZGhhdC5jb20+Ci0tLQogc3JjL21lc29uLmJ1aWxkICAgfCAxMCArKysrKy0tLS0tCiBzcmMvdXNi
LWJhY2tlbmQuYyB8ICA0IC0tLS0KIHNyYy91c2J1dGlsLmMgICAgIHwgIDMgLS0tCiBzcmMvdXNi
dXRpbC5oICAgICB8ICA0IC0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAx
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVpbGQgYi9zcmMvbWVzb24u
YnVpbGQKaW5kZXggMDBlYjI3Ny4uMDQ2MWRlYSAxMDA2NDQKLS0tIGEvc3JjL21lc29uLmJ1aWxk
CisrKyBiL3NyYy9tZXNvbi5idWlsZApAQCAtMTE5LDExICsxMTksNiBAQCBzcGljZV9jbGllbnRf
Z2xpYl9zb3VyY2VzID0gWwogICAnc3BpY2UtdXJpLXByaXYuaCcsCiAgICdzcGljZS11dGlsLXBy
aXYuaCcsCiAgICd1c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oJywKLSAgJ3VzYnV0aWwuYycsCi0g
ICd1c2J1dGlsLmgnLAotICAndXNiLWJhY2tlbmQuYycsCi0gICd1c2ItZW11bGF0aW9uLmgnLAot
ICAndXNiLWJhY2tlbmQuaCcsCiAgICd2bWNzdHJlYW0uYycsCiAgICd2bWNzdHJlYW0uaCcsCiBd
CkBAIC0xNTksNiArMTU0LDExIEBAIGVuZGlmCiAKIGlmIHNwaWNlX2d0a19oYXNfdXNicmVkaXIK
ICAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyArPSBbCisgICAgJ3VzYnV0aWwuYycsCisgICAg
J3VzYnV0aWwuaCcsCisgICAgJ3VzYi1iYWNrZW5kLmMnLAorICAgICd1c2ItZW11bGF0aW9uLmgn
LAorICAgICd1c2ItYmFja2VuZC5oJywKICAgICAndXNiLWRldmljZS1jZC5jJywKICAgICAndXNi
LWRldmljZS1jZC5oJywKICAgICAnY2Qtc2NzaS5jJywKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFj
a2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggODFkN2M5ZS4uM2E1YTg3MyAxMDA2NDQK
LS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTIyLDgg
KzIyLDYgQEAKIAogI2luY2x1ZGUgImNvbmZpZy5oIgogCi0jaWZkZWYgVVNFX1VTQlJFRElSCi0K
ICNpbmNsdWRlIDxnbGliLW9iamVjdC5oPgogI2luY2x1ZGUgPGludHR5cGVzLmg+CiAjaW5jbHVk
ZSA8Z2lvL2dpby5oPgpAQCAtMTUyMiw1ICsxNTIwLDMgQEAgc3BpY2VfdXNiX2JhY2tlbmRfY3Jl
YXRlX2VtdWxhdGVkX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAogCiAgICAgcmV0dXJuIFRS
VUU7CiB9Ci0KLSNlbmRpZiAvKiBVU0JfUkVESVIgKi8KZGlmZiAtLWdpdCBhL3NyYy91c2J1dGls
LmMgYi9zcmMvdXNidXRpbC5jCmluZGV4IDUwNTJlZjMuLmFlYmVkMzUgMTAwNjQ0Ci0tLSBhL3Ny
Yy91c2J1dGlsLmMKKysrIGIvc3JjL3VzYnV0aWwuYwpAQCAtMjYsNyArMjYsNiBAQAogI2luY2x1
ZGUgPGN0eXBlLmg+CiAjaW5jbHVkZSA8c3RkbGliLmg+CiAKLSNpZmRlZiBVU0VfVVNCUkVESVIK
ICNpbmNsdWRlIDxzdGRpby5oPgogI2lmZGVmIF9fbGludXhfXwogI2luY2x1ZGUgPHVuaXN0ZC5o
PgpAQCAtMjc1LDggKzI3NCw2IEBAIHZvaWQgc3BpY2VfdXNiX3V0aWxfZ2V0X2RldmljZV9zdHJp
bmdzKGludCBidXMsIGludCBhZGRyZXNzLAogICAgIH0KIH0KIAotI2VuZGlmCi0KICNpZmRlZiBV
U0JVVElMX1RFU1QKIGludCBtYWluKCkKIHsKZGlmZiAtLWdpdCBhL3NyYy91c2J1dGlsLmggYi9z
cmMvdXNidXRpbC5oCmluZGV4IDZjNTcwZDkuLjJmNjgzZmEgMTAwNjQ0Ci0tLSBhL3NyYy91c2J1
dGlsLmgKKysrIGIvc3JjL3VzYnV0aWwuaApAQCAtMjEsOCArMjEsNiBAQAogI3ByYWdtYSBvbmNl
CiAKICNpbmNsdWRlIDxnbGliLmg+Ci0KLSNpZmRlZiBVU0VfVVNCUkVESVIKICNpbmNsdWRlIDxs
aWJ1c2IuaD4KIAogR19CRUdJTl9ERUNMUwpAQCAtMzIsNSArMzAsMyBAQCB2b2lkIHNwaWNlX3Vz
Yl91dGlsX2dldF9kZXZpY2Vfc3RyaW5ncyhpbnQgYnVzLCBpbnQgYWRkcmVzcywKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdjaGFyICoqbWFudWZhY3R1cmVyLCBnY2hh
ciAqKnByb2R1Y3QpOwogCiBHX0VORF9ERUNMUwotCi0jZW5kaWYgLyogVVNFX1VTQlJFRElSICov
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
