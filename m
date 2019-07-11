Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B65166577F
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B84E6E220;
	Thu, 11 Jul 2019 13:01:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E0A66E220
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:00:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EFEAC59449
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:00:58 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 327065C220;
 Thu, 11 Jul 2019 13:00:57 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:49 +0100
Message-Id: <20190711130054.17867-2-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 11 Jul 2019 13:00:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/7] usb-device-manager: Reduce some
 conditional code handling !USE_USBREDIR first
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMjAgKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwppbmRl
eCA0Nzk1NThmNC4uMGE5NzkyMTAgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIu
YworKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTIxMywxOSArMjEzLDE1IEBAIEdf
REVGSU5FX0JPWEVEX1RZUEUoU3BpY2VVc2JEZXZpY2UsIHNwaWNlX3VzYl9kZXZpY2UsIGdfb2Jq
ZWN0X3JlZiwgZ19vYmplY3RfdW5yCiAgKi8KIGdib29sZWFuIHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9pc19yZWRpcmVjdGluZyhTcGljZVVzYkRldmljZU1hbmFnZXIgKnNlbGYpCiB7Ci0jaWZk
ZWYgVVNFX1VTQlJFRElSCi0KLSNpZmRlZiBHX09TX1dJTjMyCisjaWZuZGVmIFVTRV9VU0JSRURJ
UgorICAgIHJldHVybiBGQUxTRTsKKyNlbGlmIGRlZmluZWQoR19PU19XSU4zMikKICAgICBnYm9v
bGVhbiByZWRpcmVjdGluZzsKICAgICBnX29iamVjdF9nZXQoc2VsZi0+cHJpdi0+dWRldiwgInJl
ZGlyZWN0aW5nIiwgJnJlZGlyZWN0aW5nLCBOVUxMKTsKICAgICByZXR1cm4gcmVkaXJlY3Rpbmc7
CiAjZWxzZQogICAgIHJldHVybiBzZWxmLT5wcml2LT5yZWRpcmVjdGluZzsKICNlbmRpZgotCi0j
ZWxzZQotICAgIHJldHVybiBGQUxTRTsKLSNlbmRpZgogfQogCiBzdGF0aWMgdm9pZCBzcGljZV91
c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaWZhY2VfaW5pdChHSW5pdGFibGVJZmFjZSAqaWZh
Y2UpOwpAQCAtMjYxLDcgKzI1NywxMSBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2luaXRhYmxlX2luaXQoR0luaXRhYmxlICAqaW5pdGFibGUsCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0NhbmNlbGxhYmxl
ICAqY2FuY2VsbGFibGUsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0Vycm9yICAgICAgICAqKmVycikKIHsKLSNpZmRlZiBVU0VfVVNCUkVE
SVIKKyNpZm5kZWYgVVNFX1VTQlJFRElSCisgICAgZ19zZXRfZXJyb3JfbGl0ZXJhbChlcnIsIFNQ
SUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKKyAgICAgICAgICAg
ICAgICAgICAgICAgIF8oIlVTQiByZWRpcmVjdGlvbiBzdXBwb3J0IG5vdCBjb21waWxlZCBpbiIp
KTsKKyAgICByZXR1cm4gRkFMU0U7CisjZWxzZQogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAq
c2VsZiA9IFNQSUNFX1VTQl9ERVZJQ0VfTUFOQUdFUihpbml0YWJsZSk7CiAgICAgU3BpY2VVc2JE
ZXZpY2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7CiAgICAgR0xpc3QgKmxpc3Q7
CkBAIC0zMDYsMTAgKzMwNiw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKICAgICBnX2xpc3RfZnJl
ZShsaXN0KTsKIAogICAgIHJldHVybiBUUlVFOwotI2Vsc2UKLSAgICBnX3NldF9lcnJvcl9saXRl
cmFsKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVELAot
ICAgICAgICAgICAgICAgICAgICAgICAgXygiVVNCIHJlZGlyZWN0aW9uIHN1cHBvcnQgbm90IGNv
bXBpbGVkIGluIikpOwotICAgIHJldHVybiBGQUxTRTsKICNlbmRpZgogfQogCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
