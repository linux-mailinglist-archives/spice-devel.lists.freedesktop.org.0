Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1774886E
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 18:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E9B89229;
	Mon, 17 Jun 2019 16:13:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C506A89229
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 16:13:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F0AC7F769
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 16:13:14 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 241EF3789;
 Mon, 17 Jun 2019 16:13:12 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 17:13:06 +0100
Message-Id: <20190617161306.21602-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 17 Jun 2019 16:13:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] display-channel: Avoid potential
 crash from buggy guest driver
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

VGhpcyBmaXhlcyBodHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTE1
ODIxMzcuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMgfCA2ICsrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9k
aXNwbGF5LWNoYW5uZWwuYyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwppbmRleCAwNzFjMDE0
MDkuLjdkZGQ0NGMxNCAxMDA2NDQKLS0tIGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCisrKyBi
L3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwpAQCAtMjAzMiw3ICsyMDMyLDExIEBAIHZvaWQgZGlz
cGxheV9jaGFubmVsX3VwZGF0ZShEaXNwbGF5Q2hhbm5lbCAqZGlzcGxheSwKICAgICBTcGljZVJl
Y3QgcmVjdDsKICAgICBSZWRTdXJmYWNlICpzdXJmYWNlOwogCi0gICAgc3BpY2VfcmV0dXJuX2lm
X2ZhaWwoZGlzcGxheV9jaGFubmVsX3ZhbGlkYXRlX3N1cmZhY2UoZGlzcGxheSwgc3VyZmFjZV9p
ZCkpOworICAgIC8vIENoZWNrIHRoYXQgdGhlIHJlcXVlc3QgaXMgdmFsaWQsIHRoZSBzdXJmYWNl
X2lkIGNvbWVzIGRpcmVjdGx5IGZyb20gdGhlIGd1ZXN0CisgICAgaWYgKCFkaXNwbGF5X2NoYW5u
ZWxfdmFsaWRhdGVfc3VyZmFjZShkaXNwbGF5LCBzdXJmYWNlX2lkKSkgeworICAgICAgICAvLyBq
dXN0IHJldHVybiwgZGlzcGxheV9jaGFubmVsX3ZhbGlkYXRlX3N1cmZhY2UgYWxyZWFkeSBsb2dn
ZWQgYSB3YXJuaW5nCisgICAgICAgIHJldHVybjsKKyAgICB9CiAKICAgICByZWRfZ2V0X3JlY3Rf
cHRyKCZyZWN0LCBhcmVhKTsKICAgICBkaXNwbGF5X2NoYW5uZWxfZHJhdyhkaXNwbGF5LCAmcmVj
dCwgc3VyZmFjZV9pZCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
