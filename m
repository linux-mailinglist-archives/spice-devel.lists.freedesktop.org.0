Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B79FB98C6E
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 09:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACBC6E47A;
	Thu, 22 Aug 2019 07:31:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278EB6E47A
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:31:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C3BC4C028329
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:31:06 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-109.brq.redhat.com [10.40.204.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1E0545C22C;
 Thu, 22 Aug 2019 07:31:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 22 Aug 2019 08:30:56 +0100
Message-Id: <20190822073056.12480-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 22 Aug 2019 07:31:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] stat-file: Use proper macro for
 container computation
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

VGhpcyBpcyBjdXJyZW50bHkgbW9yZSBzdHlsZSBwYXRjaCBhcyB0aGUgInZhbHVlIiBmaWVsZCBp
cyB0aGUKZmlyc3QgZmllbGQgb2YgU3BpY2VTdGF0Tm9kZSBzdHJ1Y3R1cmUsIHNvIGhhcyBvZmZz
ZXQgMC4gSG93ZXZlcgp0byBjb21wdXRlIHRoZSBjb250YWluaW5nIHN0cnVjdHVyZSBpdCBiZXR0
ZXIgdG8gdXNlIHRoZSBwcm9wZXIKbWFjcm8gdG8gYXZvaWQgY29uZnVzaW9uLgpJZiB0aGUgb2Zm
c2V0IHdvbid0IGJlIDAgdGhlIHN1YnRyYWN0aW9uIHdvdWxkIGNvbXB1dGUgdGhlCndyb25nIHBv
aW50ZXIgYXMgdGhlIG9mZnNldCBpcyBleHByZXNzZWQgaW4gYnl0ZXMgYnV0IHRoZQplbGVtZW50
IHNpemUgYXJlIHVpbnQ2NF90LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3N0YXQtZmlsZS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVy
L3N0YXQtZmlsZS5jIGIvc2VydmVyL3N0YXQtZmlsZS5jCmluZGV4IDQyMjhiZTMxMC4uMzhjMzkz
Mzg5IDEwMDY0NAotLS0gYS9zZXJ2ZXIvc3RhdC1maWxlLmMKKysrIGIvc2VydmVyL3N0YXQtZmls
ZS5jCkBAIC0yMzMsNiArMjMzLDYgQEAgdm9pZCBzdGF0X2ZpbGVfcmVtb3ZlX25vZGUoUmVkU3Rh
dEZpbGUgKnN0YXRfZmlsZSwgU3RhdE5vZGVSZWYgcmVmKQogCiB2b2lkIHN0YXRfZmlsZV9yZW1v
dmVfY291bnRlcihSZWRTdGF0RmlsZSAqc3RhdF9maWxlLCB1aW50NjRfdCAqY291bnRlcikKIHsK
LSAgICBzdGF0X2ZpbGVfcmVtb3ZlKHN0YXRfZmlsZSwgKFNwaWNlU3RhdE5vZGUgKikoY291bnRl
ciAtIFNQSUNFX09GRlNFVE9GKFNwaWNlU3RhdE5vZGUsIHZhbHVlKSkpOworICAgIHN0YXRfZmls
ZV9yZW1vdmUoc3RhdF9maWxlLCBTUElDRV9DT05UQUlORVJPRihjb3VudGVyLCBTcGljZVN0YXRO
b2RlLCB2YWx1ZSkpOwogfQogI2VuZGlmCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
