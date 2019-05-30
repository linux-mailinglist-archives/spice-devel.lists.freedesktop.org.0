Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E982FD9E
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A146E35B;
	Thu, 30 May 2019 14:23:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8CC6E35B
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 17378300C033
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:00 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA9C21001DFA;
 Thu, 30 May 2019 14:22:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:42 +0100
Message-Id: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 30 May 2019 14:23:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 01/13] char-device: Remove unused
 red_char_device_destroy function
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

Z19vYmplY3RfdW5yZWYgaXMgZGlyZWN0bHkgdXNlZC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9jaGFyLWRldmljZS5jIHwg
NiAtLS0tLS0KIHNlcnZlci9jaGFyLWRldmljZS5oIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIv
Y2hhci1kZXZpY2UuYwppbmRleCA5ZWUyNTU2NjQuLjBmNmEyOWQ2ZiAxMDA2NDQKLS0tIGEvc2Vy
dmVyL2NoYXItZGV2aWNlLmMKKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKQEAgLTY5NywxMiAr
Njk3LDYgQEAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJlZENoYXJE
ZXZpY2UgKmRldiwKICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1QoZGV2KSwgInNpbiIpOwog
fQogCi12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2UgKmNoYXJfZGV2
KQotewotICAgIGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NIQVJfREVWSUNFKGNoYXJfZGV2KSk7
Ci0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9kZXYpOwotfQotCiBzdGF0aWMgUmVkQ2hhckRldmlj
ZUNsaWVudCAqcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXcoUmVkQ2xpZW50ICpjbGllbnQsCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50
IGRvX2Zsb3dfY29udHJvbCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50MzJfdCBtYXhfc2VuZF9xdWV1ZV9zaXplLApkaWZmIC0tZ2l0
IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAppbmRleCA4OTNk
M2U0YjEuLjdkM2FkOGIzYSAxMDA2NDQKLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmgKKysrIGIv
c2VydmVyL2NoYXItZGV2aWNlLmgKQEAgLTE2MCw3ICsxNjAsNiBAQCB0eXBlZGVmIHN0cnVjdCBS
ZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIgewogCiB2b2lkIHJlZF9jaGFyX2RldmljZV9yZXNldF9k
ZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2LAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4pOwotdm9pZCByZWRf
Y2hhcl9kZXZpY2VfZGVzdHJveShSZWRDaGFyRGV2aWNlICpkZXYpOwogCiAvKiBvbmx5IG9uZSBj
bGllbnQgaXMgc3VwcG9ydGVkICovCiB2b2lkIHJlZF9jaGFyX2RldmljZV9taWdyYXRlX2RhdGFf
bWFyc2hhbGwoUmVkQ2hhckRldmljZSAqZGV2LAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
