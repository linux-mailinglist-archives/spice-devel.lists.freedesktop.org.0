Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB587A793
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C079A6E4CD;
	Tue, 30 Jul 2019 12:04:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9EEF6E4CD
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8423A12BD
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 39A375D6B7;
 Tue, 30 Jul 2019 12:04:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:25 +0100
Message-Id: <20190730120331.17967-37-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:04:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 38/44] fixup! usb-redir: add
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

LS0tCiBzcmMvdXNiLWRldmljZS1jZC5jIHwgMTQgKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3Vz
Yi1kZXZpY2UtY2QuYyBiL3NyYy91c2ItZGV2aWNlLWNkLmMKaW5kZXggYTIyOThiODAuLjdlZjVi
Y2E0IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1jZC5jCisrKyBiL3NyYy91c2ItZGV2aWNl
LWNkLmMKQEAgLTQ2LDggKzQ2LDcgQEAKICNpbmNsdWRlICJ1c2ItZGV2aWNlLWNkLmgiCiAjaW5j
bHVkZSAiY2QtdXNiLWJ1bGstbXNkLmgiCiAKLXR5cGVkZWYgc3RydWN0IFNwaWNlQ2RMVQotewor
dHlwZWRlZiBzdHJ1Y3QgU3BpY2VDZExVIHsKICAgICBjaGFyICpmaWxlbmFtZTsKICAgICBHRmls
ZSAqZmlsZV9vYmplY3Q7CiAgICAgR0ZpbGVJbnB1dFN0cmVhbSAqc3RyZWFtOwpAQCAtNjksMTQg
KzY4LDEyIEBAIHR5cGVkZWYgc3RydWN0IFNwaWNlQ2RMVQogI2RlZmluZSBEVkRfREVWX0JMT0NL
X1NJWkUgICAgICAgICAgICAgIDB4ODAwCiAjZGVmaW5lIE1BWF9CVUxLX0lOX1JFUVVFU1RTICAg
ICAgICAgICAgNjQKIAotc3RydWN0IEJ1ZmZlcmVkQnVsa1JlYWQKLXsKK3N0cnVjdCBCdWZmZXJl
ZEJ1bGtSZWFkIHsKICAgICBzdHJ1Y3QgdXNiX3JlZGlyX2J1bGtfcGFja2V0X2hlYWRlciBob3V0
OwogICAgIHVpbnQ2NF90IGlkOwogfTsKIAotc3RydWN0IFNwaWNlVXNiRW11bGF0ZWREZXZpY2UK
LXsKK3N0cnVjdCBTcGljZVVzYkVtdWxhdGVkRGV2aWNlIHsKICAgICBVc2JEZXZpY2VPcHMgZGV2
X29wczsKICAgICBTcGljZVVzYkJhY2tlbmQgKmJhY2tlbmQ7CiAgICAgU3BpY2VVc2JCYWNrZW5k
RGV2aWNlICpwYXJlbnQ7CkBAIC05Miw3ICs4OSw3IEBAIHN0cnVjdCBTcGljZVVzYkVtdWxhdGVk
RGV2aWNlCiAgICAgdWludDhfdCAgbWF4X2x1bl9pbmRleDsKIH07CiAKLXR5cGVkZWYgU3BpY2VV
c2JFbXVsYXRlZERldmljZSBVc2JDZDsKK3R5cGVkZWYgc3RydWN0IFNwaWNlVXNiRW11bGF0ZWRE
ZXZpY2UgVXNiQ2Q7CiAKICNpZm5kZWYgR19PU19XSU4zMgogCkBAIC00MDYsOCArNDAzLDcgQEAg
c3RhdGljIHZvaWQgdXNiX2NkX3VucmVhbGl6ZShVc2JDZCAqZCkKIHN0YXRpYyBnYm9vbGVhbiB1
c2JfY2RfZ2V0X2Rlc2NyaXB0b3IoVXNiQ2QgKmQsIHVpbnQ4X3QgdHlwZSwgdWludDhfdCBpbmRl
eCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqKmJ1ZmZlciwg
dWludDE2X3QgKnNpemUpCiB7Ci0gICAgc3RhdGljIHN0cnVjdCBsaWJ1c2JfZGV2aWNlX2Rlc2Ny
aXB0b3IgZGVzYyA9Ci0gICAgeworICAgIHN0YXRpYyBzdHJ1Y3QgbGlidXNiX2RldmljZV9kZXNj
cmlwdG9yIGRlc2MgPSB7CiAgICAgICAgIC5iTGVuZ3RoID0gMTgsCiAgICAgICAgIC5iRGVzY3Jp
cHRvclR5cGUgPSBMSUJVU0JfRFRfREVWSUNFLAogICAgICAgICAuYmNkVVNCID0gVVNCMl9CQ0Qs
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
