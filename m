Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1295F8B497
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 11:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993A16E0D7;
	Tue, 13 Aug 2019 09:50:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DFB6E0D7
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 09:50:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13C422BF73
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 09:50:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 949477EB82;
 Tue, 13 Aug 2019 09:50:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 10:50:32 +0100
Message-Id: <20190813095032.10191-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 13 Aug 2019 09:50:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol] qxl_dev: Add comment to
 QXLQUICData->data field
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

UmVjZW50bHkgYSBidWcgdXNpbmcgdGhpcyBzdHJ1Y3R1cmUgd2FzIGZpeGVkLgpUaGUgYnVnIGlu
dm9sdmVkIHVuZGVyc3RhbmQgdGhlIHVzYWdlIG9mIHRoaXMgZmllbGQgc28gYWRkIHNvbWUKbm90
ZSBvbiB0aGUgZmllbGQgZm9yIGZ1dHVyZSByZWZlcmVuY2UuCgpTaWduZWQtb2ZmLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcGljZS9xeGxfZGV2LmggfCAz
ICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NwaWNl
L3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAppbmRleCBjODQ0ZDdiLi4zZjU2YWFlIDEwMDY0
NAotLS0gYS9zcGljZS9xeGxfZGV2LmgKKysrIGIvc3BpY2UvcXhsX2Rldi5oCkBAIC03NDAsNiAr
NzQwLDkgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMU3VyZmFjZUlkIHsK
IAogdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUVVJQ0RhdGEgewogICAgIHVp
bnQzMl90IGRhdGFfc2l6ZTsKKyAgICAvKiBUaGlzIGRhdGEgZm9yIFFVSUMgaXMgYSBRWExEYXRh
Q2h1bmsuCisgICAgICogVGhpcyBkaWZmZXJzIGZyb20gUVhMQml0bWFwIHdoZXJlIGl0J3MgYSBy
ZWZlcmVuY2UgdG8gYml0bWFwIGRhdGEgb3IKKyAgICAgKiBhIHJlZmVyZW5jZSB0byBRWExEYXRh
Q2h1bmsgKi8KICAgICB1aW50OF90IGRhdGFbMF07CiB9IFFYTFFVSUNEYXRhLCBRWExMWlJHQkRh
dGEsIFFYTEpQRUdEYXRhOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
