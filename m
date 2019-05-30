Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 157742FDA2
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7D46E365;
	Thu, 30 May 2019 14:23:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523C56E365
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE01F2E97D9
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:05 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B44C31001E86;
 Thu, 30 May 2019 14:23:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:46 +0100
Message-Id: <20190530142254.28937-5-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 30 May 2019 14:23:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 05/13] red-worker: Remove warning
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

SW4gc29tZSBjb25maWd1cmF0aW9uIF9HTlVfU09VUkNFIGlzIGRlZmluZWQgYnkgdGhlIGNvbXBp
bGVyCmFuZCBkZWZpbmluZyBhZ2FpbiBjYXVzZSBhIHdhcm5pbmcuCkRvIG5vdCBkZWZpbmUgYWdh
aW4gdG8gYXZvaWQgdGhlIHdhcm5pbmcuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvcmVkLXdvcmtlci5jIHwgMiArKwogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtd29y
a2VyLmMgYi9zZXJ2ZXIvcmVkLXdvcmtlci5jCmluZGV4IGQ2NGMyNmU4My4uYjMzMzVhNTNhIDEw
MDY0NAotLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCisrKyBiL3NlcnZlci9yZWQtd29ya2VyLmMK
QEAgLTE3LDcgKzE3LDkgQEAKICovCiAjaW5jbHVkZSA8Y29uZmlnLmg+CiAKKyNpZm5kZWYgX0dO
VV9TT1VSQ0UKICNkZWZpbmUgX0dOVV9TT1VSQ0UKKyNlbmRpZgogI2luY2x1ZGUgPHN0ZGlvLmg+
CiAjaW5jbHVkZSA8c3RkYXJnLmg+CiAjaW5jbHVkZSA8c3RkbGliLmg+Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
