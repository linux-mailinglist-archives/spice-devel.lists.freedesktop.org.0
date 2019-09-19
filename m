Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BC3B7737
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 12:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B6886F815;
	Thu, 19 Sep 2019 10:17:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A67C6F815
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 10:17:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DC55C3082132
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 10:17:30 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E21F560167;
 Thu, 19 Sep 2019 10:17:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 11:17:25 +0100
Message-Id: <20190919101725.20686-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 19 Sep 2019 10:17:30 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-qxl: Make sure we have at
 least one monitor
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

SXQgZG9lcyBub3QgbWFrZSBzZW5zZSB0byBoYXZlIGEgZ3JhcGhpYyBjYXJkIHdpdGhvdXQgYSBt
b25pdG9yLgpJbiBzcGljZV9xeGxfc2V0X21heF9tb25pdG9ycyB3ZSBwcmV2ZW50IHRvIHNldCAw
IG1vbml0b3JzLCBkbwp0aGUgc2FtZSBpbiBzcGljZV9xeGxfc2V0X2RldmljZV9pbmZvLgoKVGhp
cyBmaXhlcyBodHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTE2OTE3
MjEuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
LS0tCiBzZXJ2ZXIvcmVkLXF4bC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1xeGwuYyBiL3NlcnZl
ci9yZWQtcXhsLmMKaW5kZXggMDMzNDgyNzAuLmRiZmNkNDQwIDEwMDY0NAotLS0gYS9zZXJ2ZXIv
cmVkLXF4bC5jCisrKyBiL3NlcnZlci9yZWQtcXhsLmMKQEAgLTgwNCw3ICs4MDQsNyBAQCB2b2lk
IHNwaWNlX3F4bF9zZXRfZGV2aWNlX2luZm8oUVhMSW5zdGFuY2UgKmluc3RhbmNlLAogICAgIH0K
IAogICAgIGluc3RhbmNlLT5zdC0+bW9uaXRvcnNfY291bnQgPSBkZXZpY2VfZGlzcGxheV9pZF9j
b3VudDsKLSAgICBpbnN0YW5jZS0+c3QtPm1heF9tb25pdG9ycyA9IGRldmljZV9kaXNwbGF5X2lk
X2NvdW50OworICAgIGluc3RhbmNlLT5zdC0+bWF4X21vbml0b3JzID0gTUFYKDF1LCBkZXZpY2Vf
ZGlzcGxheV9pZF9jb3VudCk7CiAKICAgICByZWRzX3NlbmRfZGV2aWNlX2Rpc3BsYXlfaW5mbyhy
ZWRfcXhsX2dldF9zZXJ2ZXIoaW5zdGFuY2UtPnN0KSk7CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
