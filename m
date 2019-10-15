Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F547D72A5
	for <lists+spice-devel@lfdr.de>; Tue, 15 Oct 2019 11:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81AB6898C2;
	Tue, 15 Oct 2019 09:58:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3B96898C2
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 09:58:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2D5C93090FC3
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 09:58:05 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABAF25D6A9
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 09:58:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 15 Oct 2019 11:58:03 +0200
Message-Id: <20191015095803.8559-1-victortoso@redhat.com>
In-Reply-To: <20190506103156.14925-1-victortoso@redhat.com>
References: <20190506103156.14925-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 15 Oct 2019 09:58:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH] channel-webdav: avoid possible crash
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gY2FzZSBQaG9kYXZTZXJ2
ZXIgb3IgU291cFNlcnZlciBhcmUgTlVMTCwgd2Ugc2hvdWxkIHN0b3AgYW5kCnJldHVybi4KClNp
Z25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQoKUmVi
YXNlZC4gUGF0Y2ggd2FzIHJlbGF0ZWQgdXNlciByZXBvcnQgb2YgY3Jhc2ggaW4gRmxleFZESSBj
bGllbnQgWzBdLgpCZWluZyBjYXJlZnVsIGluIHRoaXMgbm90LWhvdCBwYXRoIHNob3VsZCBiZSBv
a2F5IElNSE8uCgpbMF0gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvc3Bp
Y2UtZGV2ZWwvMjAxOS1NYXkvMDQ5MDcwLmh0bWwKCiBzcmMvY2hhbm5lbC13ZWJkYXYuYyB8IDcg
KysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMK
aW5kZXggZmIyNTA4NC4uZGUyODQzZSAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMK
KysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKQEAgLTM2MSwxMiArMzYxLDE3IEBAIHN0YXRpYyB2
b2lkIHN0YXJ0X2NsaWVudChTcGljZVdlYmRhdkNoYW5uZWwgKnNlbGYpCiAgICAgR0lPU3RyZWFt
ICpwZWVyID0gTlVMTDsKICAgICBTcGljZVNlc3Npb24gKnNlc3Npb247CiAgICAgU291cFNlcnZl
ciAqc2VydmVyOworICAgIFBob2RhdlNlcnZlciogcGhvZGF2X3NlcnZlcjsKICAgICBHU29ja2V0
QWRkcmVzcyAqYWRkcjsKICAgICBHRXJyb3IgKmVycm9yID0gTlVMTDsKICAgICBib29sIHN0YXJ0
ZWQ7CiAKICAgICBzZXNzaW9uID0gc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lvbihTUElDRV9DSEFO
TkVMKHNlbGYpKTsKLSAgICBzZXJ2ZXIgPSBwaG9kYXZfc2VydmVyX2dldF9zb3VwX3NlcnZlcihz
cGljZV9zZXNzaW9uX2dldF93ZWJkYXZfc2VydmVyKHNlc3Npb24pKTsKKyAgICBwaG9kYXZfc2Vy
dmVyID0gc3BpY2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcihzZXNzaW9uKTsKKyAgICBnX3Jl
dHVybl9pZl9mYWlsKHBob2Rhdl9zZXJ2ZXIgIT0gTlVMTCk7CisKKyAgICBzZXJ2ZXIgPSBwaG9k
YXZfc2VydmVyX2dldF9zb3VwX3NlcnZlcihwaG9kYXZfc2VydmVyKTsKKyAgICBnX3JldHVybl9p
Zl9mYWlsKHNlcnZlciAhPSBOVUxMKTsKIAogICAgIENIQU5ORUxfREVCVUcoc2VsZiwgInN0YXJ0
aW5nIGNsaWVudCAlIiBHX0dJTlQ2NF9GT1JNQVQsIGMtPmRlbXV4LmNsaWVudCk7CiAKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
