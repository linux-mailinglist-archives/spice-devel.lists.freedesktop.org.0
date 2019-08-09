Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E8887CA4
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6616EE28;
	Fri,  9 Aug 2019 14:27:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97896EE28
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 62AE930027DA
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:29 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 14B84100034E;
 Fri,  9 Aug 2019 14:27:25 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:27 +0100
Message-Id: <20190809142651.2967-10-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 09 Aug 2019 14:27:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 09/33] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

TWlub3IsIHByaW50ZiBmb3JtYXQKLS0tCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKaW5kZXggOTUz
NjUxNjMuLjM4N2E0MmE3IDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKKysrIGIv
c3JjL2NkLXVzYi1idWxrLW1zZC5jCkBAIC0zMDYsNyArMzA2LDcgQEAgc3RhdGljIGludCBwYXJz
ZV91c2JfbXNkX2NtZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50OF90ICpidWYsIHVpbnQz
Ml90IGNid18KICAgICBzY3NpX3JlcS0+dGFnID0gdXNiX3JlcS0+dXNiX3RhZzsKICAgICBzY3Np
X3JlcS0+bHVuID0gdXNiX3JlcS0+bHVuOwogCi0gICAgU1BJQ0VfREVCVUcoIkNNRCBsdW46JSIg
R19HVUlOVDMyX0ZPUk1BVCAiIHRhZzoweCV4IGZsYWdzOiUwOHggIgorICAgIFNQSUNFX0RFQlVH
KCJDTUQgbHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQgIiB0YWc6JSN4IGZsYWdzOiUwOHggIgogICAg
ICAgICAiY2RiX2xlbjolIiBHX0dVSU5UMzJfRk9STUFUICIgcmVxX2xlbjolIiBHX0dVSU5UMzJf
Rk9STUFULAogICAgICAgICB1c2JfcmVxLT5sdW4sIHVzYl9yZXEtPnVzYl90YWcsIGNidy0+Zmxh
Z3MsCiAgICAgICAgIHNjc2lfcmVxLT5jZGJfbGVuLCB1c2JfcmVxLT51c2JfcmVxX2xlbik7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
