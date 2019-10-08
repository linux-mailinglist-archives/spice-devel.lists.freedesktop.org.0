Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3B0D0002
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 19:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88676E883;
	Tue,  8 Oct 2019 17:39:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5926E883
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 05969A2668E
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:36 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2701719C7F;
 Tue,  8 Oct 2019 17:39:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  8 Oct 2019 18:39:20 +0100
Message-Id: <20191008173924.12388-4-fziglio@redhat.com>
In-Reply-To: <20191008173924.12388-1-fziglio@redhat.com>
References: <20191008173924.12388-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 08 Oct 2019 17:39:36 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 3/7] smartcard: Do not crash
 if reader_id is invalid
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

QXZvaWQgY2xpZW50IHRvIHRyaWdnZXIgY3Jhc2guIFRoZSB2YWx1ZSBvZiBzbWFydGNhcmRfcmVh
ZGVyc19nZXQKaXMgY2hlY2tlZCBmb3IgTlVMTCBzbyByZXR1cm5pbmcgaXQgaXQncyBub3QgYW4g
aXNzdWUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBzZXJ2ZXIvc21hcnRjYXJkLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc21hcnRjYXJk
LmMgYi9zZXJ2ZXIvc21hcnRjYXJkLmMKaW5kZXggM2Y1MWY1Mjk4Li40YzViYmEwN2QgMTAwNjQ0
Ci0tLSBhL3NlcnZlci9zbWFydGNhcmQuYworKysgYi9zZXJ2ZXIvc21hcnRjYXJkLmMKQEAgLTIy
Miw3ICsyMjIsOSBAQCBzdGF0aWMgaW50IHNtYXJ0Y2FyZF9jaGFyX2RldmljZV9hZGRfdG9fcmVh
ZGVycyhSZWRzU3RhdGUgKnJlZHMsIFNwaWNlQ2hhckRldmljZQogCiBTcGljZUNoYXJEZXZpY2VJ
bnN0YW5jZSAqc21hcnRjYXJkX3JlYWRlcnNfZ2V0KHVpbnQzMl90IHJlYWRlcl9pZCkKIHsKLSAg
ICBzcGljZV9hc3NlcnQocmVhZGVyX2lkIDwgZ19zbWFydGNhcmRfcmVhZGVycy5udW0pOworICAg
IGlmIChyZWFkZXJfaWQgPj0gZ19zbWFydGNhcmRfcmVhZGVycy5udW0pIHsKKyAgICAgICAgcmV0
dXJuIE5VTEw7CisgICAgfQogICAgIHJldHVybiBnX3NtYXJ0Y2FyZF9yZWFkZXJzLnNpbltyZWFk
ZXJfaWRdOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
