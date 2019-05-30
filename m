Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626522FDA1
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854D06E362;
	Thu, 30 May 2019 14:23:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E326E35D
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5D08C9FFCB
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DC741001E86;
 Thu, 30 May 2019 14:23:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:45 +0100
Message-Id: <20190530142254.28937-4-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 30 May 2019 14:23:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 04/13] spicevmc: Remove reds
 parameter from spicevmc_device_disconnect
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

VW51c2VkLgpBbHNvIHRoZSBkZXZpY2VzIHNob3VsZCBiZSBhYmxlIHRvIHJlbGVhc2UgdGhlbXNl
bHZlcy4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
PgotLS0KIHNlcnZlci9jaGFyLWRldmljZS5oIHwgMyArLS0KIHNlcnZlci9yZWRzLmMgICAgICAg
IHwgMiArLQogc2VydmVyL3NwaWNldm1jLmMgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1k
ZXZpY2UuaCBiL3NlcnZlci9jaGFyLWRldmljZS5oCmluZGV4IDUzMjdjMjVlNS4uOTcwMGRmOTk3
IDEwMDY0NAotLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAorKysgYi9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaApAQCAtMjM3LDggKzIzNyw3IEBAIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZl
cl9yZWxlYXNlKFJlZENoYXJEZXZpY2UgKmRldiwKIFJlZENoYXJEZXZpY2UgKnNwaWNldm1jX2Rl
dmljZV9jb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90IGNoYW5uZWxfdHlwZSk7Ci12b2lkIHNw
aWNldm1jX2RldmljZV9kaXNjb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmNoYXJfZGV2aWNlKTsK
K3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2Ug
KmNoYXJfZGV2aWNlKTsKIAogU3BpY2VDaGFyRGV2aWNlSW50ZXJmYWNlICpzcGljZV9jaGFyX2Rl
dmljZV9nZXRfaW50ZXJmYWNlKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICppbnN0YW5jZSk7CiAK
ZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmMgYi9zZXJ2ZXIvcmVkcy5jCmluZGV4IDc5MmU5ODM4
MS4uNzA0M2U0ZDJhIDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkcy5jCisrKyBiL3NlcnZlci9yZWRz
LmMKQEAgLTMzNzksNyArMzM3OSw3IEBAIHN0YXRpYyBpbnQgc3BpY2Vfc2VydmVyX2NoYXJfZGV2
aWNlX3JlbW92ZV9pbnRlcmZhY2UoUmVkc1N0YXRlICpyZWRzLCBTcGljZUJhc2VJCiAjZW5kaWYK
ICAgICBlbHNlIGlmIChzdHJjbXAoY2hhcl9kZXZpY2UtPnN1YnR5cGUsIFNVQlRZUEVfVVNCUkVE
SVIpID09IDAgfHwKICAgICAgICAgICAgICBzdHJjbXAoY2hhcl9kZXZpY2UtPnN1YnR5cGUsIFNV
QlRZUEVfUE9SVCkgPT0gMCkgewotICAgICAgICBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChy
ZWRzLCBjaGFyX2RldmljZSk7CisgICAgICAgIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0KGNo
YXJfZGV2aWNlKTsKICAgICB9IGVsc2UgewogICAgICAgICBzcGljZV93YXJuaW5nKCJmYWlsZWQg
dG8gcmVtb3ZlIGNoYXIgZGV2aWNlICVzIiwgY2hhcl9kZXZpY2UtPnN1YnR5cGUpOwogICAgIH0K
ZGlmZiAtLWdpdCBhL3NlcnZlci9zcGljZXZtYy5jIGIvc2VydmVyL3NwaWNldm1jLmMKaW5kZXgg
NDYwZWRiMDRmLi5iZmUzY2Y2ZTUgMTAwNjQ0Ci0tLSBhL3NlcnZlci9zcGljZXZtYy5jCisrKyBi
L3NlcnZlci9zcGljZXZtYy5jCkBAIC04MTIsNyArODEyLDcgQEAgUmVkQ2hhckRldmljZSAqc3Bp
Y2V2bWNfZGV2aWNlX2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLAogfQogCiAvKiBNdXN0IGJlIGNh
bGxlZCBmcm9tIFJlZENsaWVudCBoYW5kbGluZyB0aHJlYWQuICovCi12b2lkIHNwaWNldm1jX2Rl
dmljZV9kaXNjb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2Ug
KnNpbikKK3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFyRGV2aWNlSW5z
dGFuY2UgKnNpbikKIHsKICAgICBnX29iamVjdF91bnJlZihSRURfQ0hBUl9ERVZJQ0Uoc2luLT5z
dCkpOwogICAgIHNpbi0+c3QgPSBOVUxMOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
