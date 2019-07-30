Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD97A78C
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E366E4F0;
	Tue, 30 Jul 2019 12:04:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D2789356
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 22D6499C43
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:25 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5309C5D6B2;
 Tue, 30 Jul 2019 12:04:24 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:19 +0100
Message-Id: <20190730120331.17967-31-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 30 Jul 2019 12:04:25 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 31/44] fixup! usb-redir: add
 implementation of emulated CD device
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

UmVuYW1lIGRlbGV0ZSB0byB1bnJlYWxpemUgYXMgZGlzY3Vzc2VkIG9uIE1MLgotLS0KIHNyYy91
c2ItZGV2aWNlLWNkLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtY2QuYyBiL3NyYy91
c2ItZGV2aWNlLWNkLmMKaW5kZXggMThkYmNlYTguLjc4ZThmNDA4IDEwMDY0NAotLS0gYS9zcmMv
dXNiLWRldmljZS1jZC5jCisrKyBiL3NyYy91c2ItZGV2aWNlLWNkLmMKQEAgLTQwMCw3ICs0MDAs
NyBAQCBzdGF0aWMgZ2Jvb2xlYW4gbG9hZF9sdW4oVXNiQ2QgKmQsIGludCB1bml0LCBnYm9vbGVh
biBsb2FkKQogICAgIHJldHVybiBiOwogfQogCi1zdGF0aWMgdm9pZCB1c2JfY2RfZGVsZXRlKFVz
YkNkICpkKQorc3RhdGljIHZvaWQgdXNiX2NkX3VucmVhbGl6ZShVc2JDZCAqZCkKIHsKICAgICB1
aW50MzJfdCB1bml0ID0gMDsKICAgICBjZF91c2JfYnVsa19tc2RfdW5yZWFsaXplKGQtPm1zYywg
dW5pdCk7CkBAIC03MjIsNyArNzIyLDcgQEAgc3RhdGljIGNvbnN0IFVzYkRldmljZU9wcyBkZXZv
cHMgPQogICAgIC5idWxrX291dF9yZXF1ZXN0ID0gdXNiX2NkX2J1bGtfb3V0X3JlcXVlc3QsCiAg
ICAgLmJ1bGtfaW5fcmVxdWVzdCA9IHVzYl9jZF9idWxrX2luX3JlcXVlc3QsCiAgICAgLmNhbmNl
bF9yZXF1ZXN0ID0gdXNiX2NkX2NhbmNlbF9yZXF1ZXN0LAotICAgIC5kZWxldGUgPSB1c2JfY2Rf
ZGVsZXRlLAorICAgIC51bnJlYWxpemUgPSB1c2JfY2RfdW5yZWFsaXplLAogfTsKIAogc3RhdGlj
IGludCB1c2JfY2RfY3JlYXRlKFNwaWNlVXNiQmFja2VuZCAqYmUsCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
