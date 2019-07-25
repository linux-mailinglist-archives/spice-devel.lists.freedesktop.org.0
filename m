Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D409974FE0
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 15:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1596E783;
	Thu, 25 Jul 2019 13:43:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28FA6E783
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 13:43:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 672EE8E233
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 13:43:58 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 79B6660C18;
 Thu, 25 Jul 2019 13:43:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 25 Jul 2019 14:43:51 +0100
Message-Id: <20190725134353.23174-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 25 Jul 2019 13:43:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/3] usb-backend: Cache isochronous
 value
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

QWxsb3dzIHRvIHJlbW92ZSBfU3BpY2VVc2JEZXZpY2Ugc3RydWN0dXJlLgpfU3BpY2VVc2JEZXZp
Y2UgaXMgb25seSBjYWNoaW5nIHRoaXMgdmFsdWUgZnJvbSBTcGljZVVzYkJhY2tlbmREZXZpY2Uu
CgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0t
CiBzcmMvdXNiLWJhY2tlbmQuYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tl
bmQuYwppbmRleCA5YWM4NTk1Yy4uN2UwZTRhOGEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2Vu
ZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC01MCw2ICs1MCw4IEBAIHN0cnVjdCBfU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlCiAgICAgZ2ludCByZWZfY291bnQ7CiAgICAgU3BpY2VVc2JCYWNr
ZW5kQ2hhbm5lbCAqYXR0YWNoZWRfdG87CiAgICAgVXNiRGV2aWNlSW5mb3JtYXRpb24gZGV2aWNl
X2luZm87CisgICAgdWludDhfdCBjYWNoZWRfaXNvY2hyb25vdXNfdmFsaWQgOiAxOworICAgIHVp
bnQ4X3QgY2FjaGVkX2lzb2Nocm9ub3VzIDogMTsKIH07CiAKIHN0cnVjdCBfU3BpY2VVc2JCYWNr
ZW5kCkBAIC0zNDEsNiArMzQzLDEwIEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2Rldmlj
ZV9pc29jaChTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKICAgICBnaW50IGksIGosIGs7CiAg
ICAgaW50IHJjOwogCisgICAgaWYgKGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzX3ZhbGlkKSB7Cisg
ICAgICAgIHJldHVybiBkZXYtPmNhY2hlZF9pc29jaHJvbm91czsKKyAgICB9CisKICAgICBnX3Jl
dHVybl92YWxfaWZfZmFpbChsaWJkZXYgIT0gTlVMTCwgMCk7CiAKICAgICByYyA9IGxpYnVzYl9n
ZXRfYWN0aXZlX2NvbmZpZ19kZXNjcmlwdG9yKGxpYmRldiwgJmNvbmZfZGVzYyk7CkBAIC0zNjIs
NiArMzY4LDkgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNl
VXNiQmFja2VuZERldmljZSAqZGV2KQogICAgICAgICB9CiAgICAgfQogCisgICAgZGV2LT5jYWNo
ZWRfaXNvY2hyb25vdXNfdmFsaWQgPSBUUlVFOworICAgIGRldi0+Y2FjaGVkX2lzb2Nocm9ub3Vz
ID0gaXNvY19mb3VuZDsKKwogICAgIGxpYnVzYl9mcmVlX2NvbmZpZ19kZXNjcmlwdG9yKGNvbmZf
ZGVzYyk7CiAgICAgcmV0dXJuIGlzb2NfZm91bmQ7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
