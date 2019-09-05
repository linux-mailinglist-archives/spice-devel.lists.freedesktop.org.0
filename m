Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB78AA4DE
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948E06E0DC;
	Thu,  5 Sep 2019 13:43:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BD46E0F0
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1035A10C0323
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:17 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E90CE5C22C;
 Thu,  5 Sep 2019 13:43:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:42:37 +0100
Message-Id: <20190905134241.28873-15-fziglio@redhat.com>
In-Reply-To: <20190905134241.28873-1-fziglio@redhat.com>
References: <20190905134241.28873-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 05 Sep 2019 13:43:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v6 14/18] build: Use a convenience
 library for tests
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

SW5zdGVhZCBvZiBsaW5raW5nIGFsbCBvYmplY3QgaW5zaWRlIHNwaWNlLWNsaWVudC1nbGliIGJ1
aWxkIGEgbGlicmFyeQpmcm9tIHRoZXNlIG9iamVjdCBhbmQgbGluayB0byBlYWNoIHRlc3QuClRo
aXMgd2lsbCBhbGxvdyB0byBvdmVycmlkZSBzb21lIG9iamVjdCBmaWxlIGZvciBtb2NraW5nIHB1
cnBvc2VzLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Ci0tLQogdGVzdHMvbWVzb24uYnVpbGQgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvbWVzb24u
YnVpbGQgYi90ZXN0cy9tZXNvbi5idWlsZAppbmRleCAzOWVhYzljOS4uNTdiZDJjYzUgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL21lc29uLmJ1aWxkCisrKyBiL3Rlc3RzL21lc29uLmJ1aWxkCkBAIC0yMSwx
MiArMjEsMTggQEAgaWYgc3BpY2VfZ3RrX2hhc19wb2xraXQKICAgXQogZW5kaWYKIAorIyBjcmVh
dGUgYSBzdGF0aWMgbGlicmFyeSBmcm9tIGEgc2hhcmVkIG9uZSBleHRyYWN0aW5nIGFsbCBvYmpl
Y3RzCisjIHRoaXMgYWxsb3dzIHRvIHJld3JpdGUgcGFydCBvZiBpdCBpZiBuZWNlc3NhcnkgZm9y
IG1vY2tpbmcKK3Rlc3RfbGliID0gXAorICBzdGF0aWNfbGlicmFyeSgndGVzdC1saWInLAorICAg
ICAgICAgICAgICAgICBvYmplY3RzIDogc3BpY2VfY2xpZW50X2dsaWJfbGliLmV4dHJhY3RfYWxs
X29iamVjdHMoKSkKKwogZm9yZWFjaCBzcmMgOiB0ZXN0c19zb3VyY2VzCiAgIG5hbWUgPSAndGVz
dC1AMEAnLmZvcm1hdChzcmMpLnNwbGl0KCcuJylbMF0KICAgZXhlID0gZXhlY3V0YWJsZShuYW1l
LAogICAgICAgICAgICAgICAgICAgIHNvdXJjZXMgOiBzcmMsCiAgICAgICAgICAgICAgICAgICAg
Y19hcmdzIDogJy1EVEVTVERJUj0iQDBAIicuZm9ybWF0KG1lc29uLmN1cnJlbnRfYnVpbGRfZGly
KCkpLAotICAgICAgICAgICAgICAgICAgIG9iamVjdHMgOiBzcGljZV9jbGllbnRfZ2xpYl9saWIu
ZXh0cmFjdF9hbGxfb2JqZWN0cygpLAorICAgICAgICAgICAgICAgICAgIGxpbmtfd2l0aCA6IHRl
c3RfbGliLAogICAgICAgICAgICAgICAgICAgIGRlcGVuZGVuY2llcyA6IHNwaWNlX2NsaWVudF9n
bGliX2RlcCkKICAgaWYgbm90IG5hbWUuY29udGFpbnMoJ21vY2stYWNsLWhlbHBlcicpCiAgICAg
dGVzdChuYW1lLCBleGUpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
