Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C05D85DC3
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 11:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047D06E69C;
	Thu,  8 Aug 2019 09:03:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ABA6E69C
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 09:03:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 93E58C009DE9
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 09:03:20 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C1828194B9;
 Thu,  8 Aug 2019 09:03:19 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  8 Aug 2019 11:03:14 +0200
Message-Id: <20190808090314.28167-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 08 Aug 2019 09:03:20 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] webdav: fix usecase with multiple
 concurrent connections
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

R091dHB1dFN0cmVhbSBkb2VzIG5vdCBhbGxvdyBzaW11bHRhbmVvdXMgdGFza3Mgb24gYSBzaW5n
bGUKc3RyZWFtLiBBbiBhdHRlbXB0IHRvIHRyYW5zZmVyIHR3byBmaWxlcyB0aGVyZWZvcmUKcmVz
dWx0cyBpbnRvIG9uZSBvZiB0aGUgY2xpZW50cyBiZWluZyByZW1vdmVkIGluCm11eF9tc2dfZmx1
c2hlZF9jYigpIHdpdGggdGhlIGVycm9yCiJTdHJlYW0gaGFzIG91dHN0YW5kaW5nIG9wZXJhdGlv
biIuCgpUbyBmaXggdGhpcywgdXNlIHNwaWNlX3ZtY193cml0ZV9hc3luYygpIGRpcmVjdGx5LgoK
U2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcmMv
Y2hhbm5lbC13ZWJkYXYuYyB8IDE3ICsrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5l
bC13ZWJkYXYuYyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCmluZGV4IDE0ZDRlMDUuLjA5ZWY5Zjcg
MTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXdlYmRhdi5jCisrKyBiL3NyYy9jaGFubmVsLXdlYmRh
di5jCkBAIC0yMzUsNyArMjM1LDcgQEAgbXV4X21zZ19mbHVzaGVkX2NiKEdPYmplY3QgKnNvdXJj
ZV9vYmplY3QsCiB7CiAgICAgQ2xpZW50ICpjbGllbnQgPSB1c2VyX2RhdGE7CiAKLSAgICBpZiAo
IWdfb3V0cHV0X3N0cmVhbV93cml0ZV9hbGxfZmluaXNoKEdfT1VUUFVUX1NUUkVBTShzb3VyY2Vf
b2JqZWN0KSwgcmVzdWx0LCBOVUxMLCBOVUxMKSB8fAorICAgIGlmIChzcGljZV92bWNfd3JpdGVf
ZmluaXNoKFNQSUNFX0NIQU5ORUwoc291cmNlX29iamVjdCksIHJlc3VsdCwgTlVMTCkgPT0gLTEg
fHwKICAgICAgICAgY2xpZW50LT5tdXguc2l6ZSA9PSAwIHx8CiAgICAgICAgICFjbGllbnRfc3Rh
cnRfcmVhZChjbGllbnQpKSB7CiAgICAgICAgIHJlbW92ZV9jbGllbnQoY2xpZW50KTsKQEAgLTI0
OSw4ICsyNDksNiBAQCBzdGF0aWMgdm9pZCBzZXJ2ZXJfcmVwbHlfY2IoR09iamVjdCAqc291cmNl
X29iamVjdCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICBncG9pbnRlciB1c2VyX2RhdGEp
CiB7CiAgICAgQ2xpZW50ICpjbGllbnQgPSB1c2VyX2RhdGE7Ci0gICAgU3BpY2VXZWJkYXZDaGFu
bmVsUHJpdmF0ZSAqYyA9IGNsaWVudC0+c2VsZi0+cHJpdjsKLSAgICBHT3V0cHV0U3RyZWFtICpt
dXhfb3V0OwogICAgIEdFcnJvciAqZXJyID0gTlVMTDsKICAgICBnc3NpemUgc2l6ZTsKIApAQCAt
MjYyLDEzICsyNjAsMTIgQEAgc3RhdGljIHZvaWQgc2VydmVyX3JlcGx5X2NiKEdPYmplY3QgKnNv
dXJjZV9vYmplY3QsCiAgICAgZ19yZXR1cm5faWZfZmFpbChzaXplID49IDApOwogICAgIGNsaWVu
dC0+bXV4LnNpemUgPSBHVUlOVDE2X1RPX0xFKHNpemUpOwogCi0gICAgbXV4X291dCA9IGdfaW9f
c3RyZWFtX2dldF9vdXRwdXRfc3RyZWFtKEdfSU9fU1RSRUFNKGMtPnN0cmVhbSkpOwotCi0gICAg
LyogdGhpcyBpbnRlcm5hbGx5IHVzZXMgc3BpY2Vfdm1jX3dyaXRlX2FzeW5jKCksIHByaW9yaXR5
IGlzIGlnbm9yZWQ7Ci0gICAgICogdGhlIGNhbGxiYWNrIGlzIGludm9rZWQgb25jZSB0aGUgbXNn
IGlzIHdyaXR0ZW4gb3V0IHRvIHRoZSBzb2NrZXQgKi8KLSAgICBnX291dHB1dF9zdHJlYW1fd3Jp
dGVfYWxsX2FzeW5jKG11eF9vdXQsIChndWludDggKikmY2xpZW50LT5tdXgsIHNpemVvZihnaW50
NjQpICsgc2l6ZW9mKGd1aW50MTYpICsgc2l6ZSwKLSAgICAgICAgR19QUklPUklUWV9ERUZBVUxU
LCBjbGllbnQtPmNhbmNlbGxhYmxlLCBtdXhfbXNnX2ZsdXNoZWRfY2IsIGNsaWVudCk7Ci0KKyAg
ICBzcGljZV92bWNfd3JpdGVfYXN5bmMoU1BJQ0VfQ0hBTk5FTChjbGllbnQtPnNlbGYpLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAmY2xpZW50LT5tdXgsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNpemVvZihnaW50NjQpICsgc2l6ZW9mKGd1aW50MTYpICsgc2l6ZSwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xpZW50LT5jYW5jZWxsYWJsZSwKKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgbXV4X21zZ19mbHVzaGVkX2NiLAorICAgICAgICAgICAgICAgICAgICAgICAgICBj
bGllbnQpOwogICAgIHJldHVybjsKIAogZW5kOgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
