Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A427974B62
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2839F6E6C8;
	Thu, 25 Jul 2019 10:19:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CE06E6C8
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:19:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 499438553D
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:19:48 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C5D5619D70
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:19:47 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 25 Jul 2019 12:19:47 +0200
Message-Id: <20190725101947.17341-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 25 Jul 2019 10:19:48 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk] spice-option: warn on command line
 failures of usbredir
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQXMgc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2dldCgpIGNhbiBmYWlsIGZvciBkaWZmZXJlbnQgcmVhc29ucywgd2UKc2hvdWxk
IHNpbGVudGx5IGlnbm9yZSBpdCBhbmQgaXRzIGVycm9yLgoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvc3BpY2Utb3B0aW9uLmMgfCAx
OCArKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1vcHRpb24uYyBiL3NyYy9zcGlj
ZS1vcHRpb24uYwppbmRleCBjMmIwNTllLi5jNmM1MWE5IDEwMDY0NAotLS0gYS9zcmMvc3BpY2Ut
b3B0aW9uLmMKKysrIGIvc3JjL3NwaWNlLW9wdGlvbi5jCkBAIC0yNjEsMTYgKzI2MSwyNiBAQCB2
b2lkIHNwaWNlX3NldF9zZXNzaW9uX29wdGlvbihTcGljZVNlc3Npb24gKnNlc3Npb24pCiAgICAg
ICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgInNtYXJ0Y2FyZC1kYiIsIHNtYXJ0Y2FyZF9k
YiwgTlVMTCk7CiAgICAgfQogICAgIGlmICh1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2ZpbHRlcikg
ewotICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfZ2V0KHNlc3Npb24sIE5VTEwpOwotICAgICAgICBpZiAobSkKKyAgICAgICAgR0Vycm9y
ICplcnIgPSBOVUxMOworICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBzcGljZV91
c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sICZlcnIpOworICAgICAgICBpZiAobSkgewog
ICAgICAgICAgICAgZ19vYmplY3Rfc2V0KG0sICJhdXRvLWNvbm5lY3QtZmlsdGVyIiwKICAgICAg
ICAgICAgICAgICAgICAgICAgICB1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2ZpbHRlciwgTlVMTCk7
CisgICAgICAgIH0gZWxzZSB7CisgICAgICAgICAgICBnX3dhcm5pbmcoIk9wdGlvbiAtLXNwaWNl
LXVzYnJlZGlyLWF1dG8tcmVkaXJlY3QtZmlsdGVyIGlzIHNldCBidXQgZmFpbGVkOiAlcyIsIGVy
ci0+bWVzc2FnZSk7CisgICAgICAgICAgICBnX2Vycm9yX2ZyZWUoZXJyKTsKKyAgICAgICAgfQog
ICAgIH0KICAgICBpZiAodXNicmVkaXJfcmVkaXJlY3Rfb25fY29ubmVjdCkgewotICAgICAgICBT
cGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNl
c3Npb24sIE5VTEwpOwotICAgICAgICBpZiAobSkKKyAgICAgICAgR0Vycm9yICplcnIgPSBOVUxM
OworICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfZ2V0KHNlc3Npb24sICZlcnIpOworICAgICAgICBpZiAobSkgewogICAgICAgICAgICAg
Z19vYmplY3Rfc2V0KG0sICJyZWRpcmVjdC1vbi1jb25uZWN0IiwKICAgICAgICAgICAgICAgICAg
ICAgICAgICB1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LCBOVUxMKTsKKyAgICAgICAgfSBl
bHNlIHsKKyAgICAgICAgICAgIGdfd2FybmluZygiT3B0aW9uIC0tc3BpY2UtdXNicmVkaXItcmVk
aXJlY3Qtb24tY29ubmVjdCBpcyBzZXQgYnV0IGZhaWxlZDogJXMiLCBlcnItPm1lc3NhZ2UpOwor
ICAgICAgICAgICAgZ19lcnJvcl9mcmVlKGVycik7CisgICAgICAgIH0KICAgICB9CiAgICAgaWYg
KGRpc2FibGVfdXNicmVkaXIpCiAgICAgICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAiZW5hYmxl
LXVzYnJlZGlyIiwgRkFMU0UsIE5VTEwpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
