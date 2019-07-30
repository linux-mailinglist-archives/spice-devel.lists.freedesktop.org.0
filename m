Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D267A7A776
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D3B6E4C5;
	Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78AC76E4C5
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 259FCDF26
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:53 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4CE635D6A7;
 Tue, 30 Jul 2019 12:03:52 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:59 +0100
Message-Id: <20190730120331.17967-11-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 30 Jul 2019 12:03:53 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 10/44] fixup! usb-redir: define
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

UmVuYW1lIGRlbGV0ZSB0byB1bnJlYWxpemUgYXMgZGlzY3Vzc2VkIG9uIE1MCi0tLQogc3JjL3Vz
Yi1iYWNrZW5kLmMgICB8IDIgKy0KIHNyYy91c2ItZW11bGF0aW9uLmggfCAyICstCiAyIGZpbGVz
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9z
cmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDc1Y2UxMmJhLi5hYTg0
MzQ2NSAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5k
LmMKQEAgLTU0NSw3ICs1NDUsNyBAQCB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJl
ZihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKICAgICAgICAgICAgIExPVURfREVCVUcoIiVz
IGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBfX0ZVTkNUSU9OX18sIGRldiwgZGV2LT5saWJ1c2Jf
ZGV2aWNlKTsKICAgICAgICAgfQogICAgICAgICBpZiAoZGV2LT5lZGV2KSB7Ci0gICAgICAgICAg
ICBkZXZpY2Vfb3BzKGRldi0+ZWRldiktPmRlbGV0ZShkZXYtPmVkZXYpOworICAgICAgICAgICAg
ZGV2aWNlX29wcyhkZXYtPmVkZXYpLT51bnJlYWxpemUoZGV2LT5lZGV2KTsKICAgICAgICAgfQog
ICAgICAgICBnX2ZyZWUoZGV2KTsKICAgICB9CmRpZmYgLS1naXQgYS9zcmMvdXNiLWVtdWxhdGlv
bi5oIGIvc3JjL3VzYi1lbXVsYXRpb24uaAppbmRleCA5ZWE4MTlhNC4uNmZmNTdiODAgMTAwNjQ0
Ci0tLSBhL3NyYy91c2ItZW11bGF0aW9uLmgKKysrIGIvc3JjL3VzYi1lbXVsYXRpb24uaApAQCAt
NzIsNyArNzIsNyBAQCB0eXBlZGVmIHN0cnVjdCBVc2JEZXZpY2VPcHMgewogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyICpidWxr
X2hlYWRlcik7CiAgICAgdm9pZCAoKmNhbmNlbF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVkRGV2
aWNlICpkZXZpY2UsIHVpbnQ2NF90IGlkKTsKICAgICB2b2lkICgqZGV0YWNoKShTcGljZVVzYkVt
dWxhdGVkRGV2aWNlICpkZXZpY2UpOwotICAgIHZvaWQgKCpkZWxldGUpKFNwaWNlVXNiRW11bGF0
ZWREZXZpY2UgKmRldmljZSk7CisgICAgdm9pZCAoKnVucmVhbGl6ZSkoU3BpY2VVc2JFbXVsYXRl
ZERldmljZSAqZGV2aWNlKTsKIH0gVXNiRGV2aWNlT3BzOwogCiBzdGF0aWMgaW5saW5lIGNvbnN0
IFVzYkRldmljZU9wcyAqZGV2aWNlX29wcyhTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXYpCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
