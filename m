Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC96EB37F5
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61C66E8EC;
	Mon, 16 Sep 2019 10:21:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39D46E215
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6D79A10DCC90
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:08 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBC975D6A3
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:07 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:20:47 +0200
Message-Id: <20190916102104.20943-5-victortoso@redhat.com>
In-Reply-To: <20190916102104.20943-1-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Mon, 16 Sep 2019 10:21:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 04/20] usb-backend: no emulated isoch
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
bGF0ZWQgZGV2aWNlcyBzdXBwb3J0LgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3Rv
cnRvc29AcmVkaGF0LmNvbT4KCnQjCi0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCA4ICsrKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCA1YjUyYTQw
Li4zMjU4MjQwIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJh
Y2tlbmQuYwpAQCAtMzU3LDExICszNTcsMTcgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogICAgIGdpbnQgaSwgaiwg
azsKICAgICBpbnQgcmM7CiAKKyAgICBnX3JldHVybl92YWxfaWZfZmFpbChsaWJkZXYgIT0gTlVM
TCB8fCBkZXYtPmVkZXYgIT0gTlVMTCwgRkFMU0UpOworCisgICAgaWYgKGRldi0+ZWRldikgewor
ICAgICAgICAvKiBjdXJyZW50bHkgd2UgZG8gbm90IGVtdWxhdGUgaXNvY2ggZGV2aWNlcyAqLwor
ICAgICAgICByZXR1cm4gRkFMU0U7CisgICAgfQorCiAgICAgaWYgKGRldi0+Y2FjaGVkX2lzb2No
cm9ub3VzX3ZhbGlkKSB7CiAgICAgICAgIHJldHVybiBkZXYtPmNhY2hlZF9pc29jaHJvbm91czsK
ICAgICB9CiAKLSAgICBnX3JldHVybl92YWxfaWZfZmFpbChsaWJkZXYgIT0gTlVMTCwgMCk7CiAK
ICAgICByYyA9IGxpYnVzYl9nZXRfYWN0aXZlX2NvbmZpZ19kZXNjcmlwdG9yKGxpYmRldiwgJmNv
bmZfZGVzYyk7CiAgICAgaWYgKHJjKSB7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
