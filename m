Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93015B3804
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C5F6E907;
	Mon, 16 Sep 2019 10:21:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AE66E8FF
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 226A1369C4
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:18 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A083E5D6B2
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:17 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:20:59 +0200
Message-Id: <20190916102104.20943-17-victortoso@redhat.com>
In-Reply-To: <20190916102104.20943-1-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 16 Sep 2019 10:21:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 16/20] build: Use a convenience library for
 tests
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpJbnN0ZWFkIG9mIGxp
bmtpbmcgYWxsIG9iamVjdCBpbnNpZGUgc3BpY2UtY2xpZW50LWdsaWIgYnVpbGQgYSBsaWJyYXJ5
CmZyb20gdGhlc2Ugb2JqZWN0IGFuZCBsaW5rIHRvIGVhY2ggdGVzdC4KVGhpcyB3aWxsIGFsbG93
IHRvIG92ZXJyaWRlIHNvbWUgb2JqZWN0IGZpbGUgZm9yIG1vY2tpbmcgcHVycG9zZXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0
cy9tZXNvbi5idWlsZCB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3Rz
L21lc29uLmJ1aWxkCmluZGV4IDM5ZWFjOWMuLjU3YmQyY2MgMTAwNjQ0Ci0tLSBhL3Rlc3RzL21l
c29uLmJ1aWxkCisrKyBiL3Rlc3RzL21lc29uLmJ1aWxkCkBAIC0yMSwxMiArMjEsMTggQEAgaWYg
c3BpY2VfZ3RrX2hhc19wb2xraXQKICAgXQogZW5kaWYKIAorIyBjcmVhdGUgYSBzdGF0aWMgbGli
cmFyeSBmcm9tIGEgc2hhcmVkIG9uZSBleHRyYWN0aW5nIGFsbCBvYmplY3RzCisjIHRoaXMgYWxs
b3dzIHRvIHJld3JpdGUgcGFydCBvZiBpdCBpZiBuZWNlc3NhcnkgZm9yIG1vY2tpbmcKK3Rlc3Rf
bGliID0gXAorICBzdGF0aWNfbGlicmFyeSgndGVzdC1saWInLAorICAgICAgICAgICAgICAgICBv
YmplY3RzIDogc3BpY2VfY2xpZW50X2dsaWJfbGliLmV4dHJhY3RfYWxsX29iamVjdHMoKSkKKwog
Zm9yZWFjaCBzcmMgOiB0ZXN0c19zb3VyY2VzCiAgIG5hbWUgPSAndGVzdC1AMEAnLmZvcm1hdChz
cmMpLnNwbGl0KCcuJylbMF0KICAgZXhlID0gZXhlY3V0YWJsZShuYW1lLAogICAgICAgICAgICAg
ICAgICAgIHNvdXJjZXMgOiBzcmMsCiAgICAgICAgICAgICAgICAgICAgY19hcmdzIDogJy1EVEVT
VERJUj0iQDBAIicuZm9ybWF0KG1lc29uLmN1cnJlbnRfYnVpbGRfZGlyKCkpLAotICAgICAgICAg
ICAgICAgICAgIG9iamVjdHMgOiBzcGljZV9jbGllbnRfZ2xpYl9saWIuZXh0cmFjdF9hbGxfb2Jq
ZWN0cygpLAorICAgICAgICAgICAgICAgICAgIGxpbmtfd2l0aCA6IHRlc3RfbGliLAogICAgICAg
ICAgICAgICAgICAgIGRlcGVuZGVuY2llcyA6IHNwaWNlX2NsaWVudF9nbGliX2RlcCkKICAgaWYg
bm90IG5hbWUuY29udGFpbnMoJ21vY2stYWNsLWhlbHBlcicpCiAgICAgdGVzdChuYW1lLCBleGUp
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
