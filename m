Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C3D300D1
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 19:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292F46E3D0;
	Thu, 30 May 2019 17:17:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6006E3D0
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 17:17:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 59F653006372
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 17:17:51 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 37CF510027B6;
 Thu, 30 May 2019 17:17:49 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 18:17:46 +0100
Message-Id: <20190530171746.14635-1-fziglio@redhat.com>
In-Reply-To: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 30 May 2019 17:17:51 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2] char-device: Remove unused
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
NiAtLS0tLS0KIHNlcnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2No
YXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwppbmRleCA5ZWUyNTU2NjQuLjBmNmEy
OWQ2ZiAxMDA2NDQKLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKKysrIGIvc2VydmVyL2NoYXIt
ZGV2aWNlLmMKQEAgLTY5NywxMiArNjk3LDYgQEAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXRf
ZGV2X2luc3RhbmNlKFJlZENoYXJEZXZpY2UgKmRldiwKICAgICBnX29iamVjdF9ub3RpZnkoR19P
QkpFQ1QoZGV2KSwgInNpbiIpOwogfQogCi12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJl
ZENoYXJEZXZpY2UgKmNoYXJfZGV2KQotewotICAgIGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NI
QVJfREVWSUNFKGNoYXJfZGV2KSk7Ci0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9kZXYpOwotfQot
CiBzdGF0aWMgUmVkQ2hhckRldmljZUNsaWVudCAqcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXco
UmVkQ2xpZW50ICpjbGllbnQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IGRvX2Zsb3dfY29udHJvbCwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCBtYXhfc2VuZF9x
dWV1ZV9zaXplLApkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9zZXJ2ZXIvY2hh
ci1kZXZpY2UuaAppbmRleCA4OTNkM2U0YjEuLjQxNWQ0ZjE3YyAxMDA2NDQKLS0tIGEvc2VydmVy
L2NoYXItZGV2aWNlLmgKKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKQEAgLTkxLDcgKzkxLDcg
QEAgR1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpIEdfR05VQ19DT05TVDsKICAq
IEhvdyB0byB1c2UgdGhlIGFwaToKICAqID09PT09PT09PT09PT09PT09PQogICogZGV2aWNlIGF0
dGFjaGVkOiBjcmVhdGUgbmV3IG9iamVjdCBpbnN0YW50aWF0aW5nIGEgUmVkQ2hhckRldmljZSBj
aGlsZCBjbGFzcwotICogZGV2aWNlIGRldGFjaGVkOiBjYWxsIHJlZF9jaGFyX2RldmljZV9kZXN0
cm95L3Jlc2V0CisgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3RfdW5yZWYvcmVkX2No
YXJfZGV2aWNlX3Jlc2V0CiAgKgogICogY2xpZW50IGNvbm5lY3RlZCBhbmQgYXNzb2NpYXRlZCB3
aXRoIGEgZGV2aWNlOiByZWRfY2hhcl9kZXZpY2VfX2FkZAogICogY2xpZW50IGRpc2Nvbm5lY3Rl
ZDogcmVkX2NoYXJfZGV2aWNlX19yZW1vdmUKQEAgLTEyMCw3ICsxMjAsNyBAQCBHVHlwZSByZWRf
Y2hhcl9kZXZpY2VfZ2V0X3R5cGUodm9pZCkgR19HTlVDX0NPTlNUOwogICogcmVkX2NoYXJfZGV2
aWNlX3dha2V1cCAoZm9yIHJlYWRpbmcgZnJvbSB0aGUgZGV2aWNlKQogICovCiAvKiByZWZjb3Vu
dGluZyBpcyB1c2VkIHRvIHByb3RlY3QgdGhlIGNoYXJfZGV2IGZyb20gYmVpbmcgZGVhbGxvY2F0
ZWQgaW4KLSAqIGNhc2UgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3kgaGFzIGJlZW4gY2FsbGVkCisg
KiBjYXNlIGdfb2JqZWN0X3VucmVmIGhhcyBiZWVuIGNhbGxlZAogICogZHVyaW5nIGEgY2FsbGJh
Y2ssIGFuZCB3ZSBtaWdodCBzdGlsbCBhY2Nlc3MgdGhlIGNoYXJfZGV2IGFmdGVyd2FyZHMuCiAg
Ki8KIApAQCAtMTYwLDcgKzE2MCw2IEBAIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0
ZUJ1ZmZlciB7CiAKIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRD
aGFyRGV2aWNlICpkZXYsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
U3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKnNpbik7Ci12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0
cm95KFJlZENoYXJEZXZpY2UgKmRldik7CiAKIC8qIG9ubHkgb25lIGNsaWVudCBpcyBzdXBwb3J0
ZWQgKi8KIHZvaWQgcmVkX2NoYXJfZGV2aWNlX21pZ3JhdGVfZGF0YV9tYXJzaGFsbChSZWRDaGFy
RGV2aWNlICpkZXYsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
