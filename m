Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06232481
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 19:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C73F89A44;
	Sun,  2 Jun 2019 17:54:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3B089A1E
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 17:54:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD73B3082A28
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 17:54:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D0B2917CCB;
 Sun,  2 Jun 2019 17:54:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  2 Jun 2019 18:53:59 +0100
Message-Id: <20190602175359.24499-2-fziglio@redhat.com>
In-Reply-To: <20190602175359.24499-1-fziglio@redhat.com>
References: <20190602175359.24499-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Sun, 02 Jun 2019 17:54:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] smartcard-channel-client: Fix
 some typos in a comment
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVy
L3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNs
aWVudC5jCmluZGV4IGUyMmIzOWFkZi4uZTQ2MjQwMWUwIDEwMDY0NAotLS0gYS9zZXJ2ZXIvc21h
cnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNs
aWVudC5jCkBAIC0xMjMsOSArMTIzLDkgQEAgc21hcnRjYXJkX2NoYW5uZWxfY2xpZW50X2FsbG9j
X21zZ19yY3ZfYnVmKFJlZENoYW5uZWxDbGllbnQgKnJjYywKICAgICBTbWFydENhcmRDaGFubmVs
Q2xpZW50ICpzY2MgPSBTTUFSVENBUkRfQ0hBTk5FTF9DTElFTlQocmNjKTsKICAgICBSZWRDbGll
bnQgKmNsaWVudCA9IHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2xpZW50KHJjYyk7CiAKLSAgICAv
KiB0b2RvOiBvbmx5IG9uZSByZWFkZXIgaXMgYWN0dWFsbHkgc3VwcG9ydGVkLiBXaGVuIHdlIGZp
eCB0aGUgY29kZSB0byBzdXBwb3J0Ci0gICAgICogbXVsdGlwbGUgcmVhZGVycywgd2Ugd2lsbCBw
b3JiYWJseSBhc3NvY2lhdGUgZGlmZmVyZW50IGRldmljZXMgdG8KLSAgICAgKiBkaWZmZXJlbmMg
Y2hhbm5lbHMgKi8KKyAgICAvKiBUT0RPOiBvbmx5IG9uZSByZWFkZXIgaXMgYWN0dWFsbHkgc3Vw
cG9ydGVkLiBXaGVuIHdlIGZpeCB0aGUgY29kZSB0byBzdXBwb3J0CisgICAgICogbXVsdGlwbGUg
cmVhZGVycywgd2Ugd2lsbCBwcm9iYWJseSBhc3NvY2lhdGUgZGlmZmVyZW50IGRldmljZXMgdG8K
KyAgICAgKiBkaWZmZXJlbnQgY2hhbm5lbHMgKi8KICAgICBpZiAoIXNjYy0+cHJpdi0+c21hcnRj
YXJkKSB7CiAgICAgICAgIHNjYy0+cHJpdi0+bXNnX2luX3dyaXRlX2J1ZiA9IEZBTFNFOwogICAg
ICAgICByZXR1cm4gZ19tYWxsb2Moc2l6ZSk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
