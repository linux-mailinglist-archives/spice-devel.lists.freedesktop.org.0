Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A71BF7A770
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCD36E4B3;
	Tue, 30 Jul 2019 12:03:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AADC66E4B7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4B30F30C1E1D
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:43 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2C0FC5D6A7;
 Tue, 30 Jul 2019 12:03:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:53 +0100
Message-Id: <20190730120331.17967-5-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 30 Jul 2019 12:03:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 04/44] fixup! usb-redir: define
 interfaces to support emulated devices
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

RnJlZSBsaWJ1c2JfZGV2aWNlIGFuZCBlZGV2IGFueXdheSwgZXZlbiBpZiB0aGV5IHNob3VsZCBi
ZQpleGNsdXNpdmVseSBzZXQKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDMgKystCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3Jj
L3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCBlYzBhZTNlOC4uMGIzNzI3
NGUgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5j
CkBAIC01NDMsNyArNTQzLDggQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYo
U3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCiAgICAgICAgIGlmIChkZXYtPmxpYnVzYl9kZXZp
Y2UpIHsKICAgICAgICAgICAgIGxpYnVzYl91bnJlZl9kZXZpY2UoZGV2LT5saWJ1c2JfZGV2aWNl
KTsKICAgICAgICAgICAgIExPVURfREVCVUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBf
X0ZVTkNUSU9OX18sIGRldiwgZGV2LT5saWJ1c2JfZGV2aWNlKTsKLSAgICAgICAgfSBlbHNlIGlm
IChkZXYtPmVkZXYpIHsKKyAgICAgICAgfQorICAgICAgICBpZiAoZGV2LT5lZGV2KSB7CiAgICAg
ICAgICAgICBkZXZpY2Vfb3BzKGRldi0+ZWRldiktPmRlbGV0ZShkZXYtPmVkZXYpOwogICAgICAg
ICB9CiAgICAgICAgIGdfZnJlZShkZXYpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
