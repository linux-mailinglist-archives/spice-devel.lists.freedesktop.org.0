Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018D4AA4D9
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8012A6E0E3;
	Thu,  5 Sep 2019 13:43:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559546E0EC
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EABE010C031A
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:11 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B87785C1D4;
 Thu,  5 Sep 2019 13:43:08 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:42:33 +0100
Message-Id: <20190905134241.28873-11-fziglio@redhat.com>
In-Reply-To: <20190905134241.28873-1-fziglio@redhat.com>
References: <20190905134241.28873-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 05 Sep 2019 13:43:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v6 10/18] build: Do not build
 usbredir dependent file is usbredir disabled
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

VGhlc2UgZmlsZXMgd291bGQgZW5kIHVwIHRvIGNvbXBpbGUgZW1wdHkgY29kZSwgbm8gcmVhc29u
CnRvIGNvbXBpbGUgYW5kIGxpbmsgdGhlbS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9tZXNvbi5idWlsZCAgIHwgMTAgKysrKyst
LS0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAgNCAtLS0tCiBzcmMvdXNidXRpbC5jICAgICB8ICAz
IC0tLQogc3JjL3VzYnV0aWwuaCAgICAgfCAgNCAtLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL21lc29uLmJ1aWxk
IGIvc3JjL21lc29uLmJ1aWxkCmluZGV4IDAwZWIyNzc4Li4wNDYxZGVhNiAxMDA2NDQKLS0tIGEv
c3JjL21lc29uLmJ1aWxkCisrKyBiL3NyYy9tZXNvbi5idWlsZApAQCAtMTE5LDExICsxMTksNiBA
QCBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzID0gWwogICAnc3BpY2UtdXJpLXByaXYuaCcsCiAg
ICdzcGljZS11dGlsLXByaXYuaCcsCiAgICd1c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oJywKLSAg
J3VzYnV0aWwuYycsCi0gICd1c2J1dGlsLmgnLAotICAndXNiLWJhY2tlbmQuYycsCi0gICd1c2It
ZW11bGF0aW9uLmgnLAotICAndXNiLWJhY2tlbmQuaCcsCiAgICd2bWNzdHJlYW0uYycsCiAgICd2
bWNzdHJlYW0uaCcsCiBdCkBAIC0xNTksNiArMTU0LDExIEBAIGVuZGlmCiAKIGlmIHNwaWNlX2d0
a19oYXNfdXNicmVkaXIKICAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyArPSBbCisgICAgJ3Vz
YnV0aWwuYycsCisgICAgJ3VzYnV0aWwuaCcsCisgICAgJ3VzYi1iYWNrZW5kLmMnLAorICAgICd1
c2ItZW11bGF0aW9uLmgnLAorICAgICd1c2ItYmFja2VuZC5oJywKICAgICAndXNiLWRldmljZS1j
ZC5jJywKICAgICAndXNiLWRldmljZS1jZC5oJywKICAgICAnY2Qtc2NzaS5jJywKZGlmZiAtLWdp
dCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggOTBlMDBmM2Iu
LjAyZWQ4YmI1IDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJh
Y2tlbmQuYwpAQCAtMjIsOCArMjIsNiBAQAogCiAjaW5jbHVkZSAiY29uZmlnLmgiCiAKLSNpZmRl
ZiBVU0VfVVNCUkVESVIKLQogI2luY2x1ZGUgPGdsaWItb2JqZWN0Lmg+CiAjaW5jbHVkZSA8aW50
dHlwZXMuaD4KICNpbmNsdWRlIDxnaW8vZ2lvLmg+CkBAIC0xNTIxLDUgKzE1MTksMyBAQCBzcGlj
ZV91c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUs
CiAKICAgICByZXR1cm4gVFJVRTsKIH0KLQotI2VuZGlmIC8qIFVTQl9SRURJUiAqLwpkaWZmIC0t
Z2l0IGEvc3JjL3VzYnV0aWwuYyBiL3NyYy91c2J1dGlsLmMKaW5kZXggNTA1MmVmMzYuLmFlYmVk
MzUwIDEwMDY0NAotLS0gYS9zcmMvdXNidXRpbC5jCisrKyBiL3NyYy91c2J1dGlsLmMKQEAgLTI2
LDcgKzI2LDYgQEAKICNpbmNsdWRlIDxjdHlwZS5oPgogI2luY2x1ZGUgPHN0ZGxpYi5oPgogCi0j
aWZkZWYgVVNFX1VTQlJFRElSCiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpZmRlZiBfX2xpbnV4X18K
ICNpbmNsdWRlIDx1bmlzdGQuaD4KQEAgLTI3NSw4ICsyNzQsNiBAQCB2b2lkIHNwaWNlX3VzYl91
dGlsX2dldF9kZXZpY2Vfc3RyaW5ncyhpbnQgYnVzLCBpbnQgYWRkcmVzcywKICAgICB9CiB9CiAK
LSNlbmRpZgotCiAjaWZkZWYgVVNCVVRJTF9URVNUCiBpbnQgbWFpbigpCiB7CmRpZmYgLS1naXQg
YS9zcmMvdXNidXRpbC5oIGIvc3JjL3VzYnV0aWwuaAppbmRleCA2YzU3MGQ5NC4uMmY2ODNmYTgg
MTAwNjQ0Ci0tLSBhL3NyYy91c2J1dGlsLmgKKysrIGIvc3JjL3VzYnV0aWwuaApAQCAtMjEsOCAr
MjEsNiBAQAogI3ByYWdtYSBvbmNlCiAKICNpbmNsdWRlIDxnbGliLmg+Ci0KLSNpZmRlZiBVU0Vf
VVNCUkVESVIKICNpbmNsdWRlIDxsaWJ1c2IuaD4KIAogR19CRUdJTl9ERUNMUwpAQCAtMzIsNSAr
MzAsMyBAQCB2b2lkIHNwaWNlX3VzYl91dGlsX2dldF9kZXZpY2Vfc3RyaW5ncyhpbnQgYnVzLCBp
bnQgYWRkcmVzcywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdjaGFy
ICoqbWFudWZhY3R1cmVyLCBnY2hhciAqKnByb2R1Y3QpOwogCiBHX0VORF9ERUNMUwotCi0jZW5k
aWYgLyogVVNFX1VTQlJFRElSICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
