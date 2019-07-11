Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D67B65784
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD9B6E228;
	Thu, 11 Jul 2019 13:01:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE8F6E22A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 06BF2308FBB1
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:05 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F7E11800D;
 Thu, 11 Jul 2019 13:01:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:54 +0100
Message-Id: <20190711130054.17867-7-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 11 Jul 2019 13:01:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 7/7] usb-device-manager: Last chance
 to avoid deadlock handling libusb events
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

QXR0ZW1wdCB0byBiZXR0ZXIgaW50ZXJydXB0IGV2ZW50IGhhbmRsaW5nIGxvb3AuCklmIHRoZSB0
aHJlYWQgaGFuZGxpbmcgZXZlbnRzIGlzIHN0dWNrIHdhaXRpbmcgZXZlbnRzIG9yIGhhbmRsaW5n
IGFuCmV2ZW50IHRyeSB0byBpbnRlcnJ1cHQgYmVmb3JlIGpvaW5pbmcgdGhlIHRocmVhZC4KClNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNy
Yy91c2ItYmFja2VuZC5jICAgICAgICB8IDcgKysrKysrKwogc3JjL3VzYi1iYWNrZW5kLmggICAg
ICAgIHwgMSArCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCA0ICsrKysKIDMgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIv
c3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggNDhhNjJjZDEuLmEyYzUwMmRhIDEwMDY0NAotLS0gYS9z
cmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAtMjMwLDYgKzIzMCwx
MyBAQCBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9oYW5kbGVfZXZlbnRzKFNwaWNlVXNiQmFj
a2VuZCAqYmUpCiAgICAgcmV0dXJuIG9rOwogfQogCit2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2lu
dGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNlVXNiQmFja2VuZCAqYmUpCit7CisgICAgaWYgKGJl
LT5saWJ1c2JfY29udGV4dCkgeworICAgICAgICBsaWJ1c2JfaW50ZXJydXB0X2V2ZW50X2hhbmRs
ZXIoYmUtPmxpYnVzYl9jb250ZXh0KTsKKyAgICB9Cit9CisKIHN0YXRpYyBpbnQgTElCVVNCX0NB
TEwgaG90cGx1Z19jYWxsYmFjayhsaWJ1c2JfY29udGV4dCAqY3R4LAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGxpYnVzYl9kZXZpY2UgKmRldmljZSwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaWJ1c2JfaG90cGx1Z19ldmVudCBldmVu
dCwKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKaW5k
ZXggOWYyYTk3YTYuLmNiYjczYzIyIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuaAorKysg
Yi9zcmMvdXNiLWJhY2tlbmQuaApAQCAtNjUsNiArNjUsNyBAQCBhZnRlciBpdCBmaW5pc2hlcyBs
aXN0IHByb2Nlc3NpbmcKIFNwaWNlVXNiQmFja2VuZERldmljZSAqKnNwaWNlX3VzYl9iYWNrZW5k
X2dldF9kZXZpY2VfbGlzdChTcGljZVVzYkJhY2tlbmQgKmJhY2tlbmQpOwogdm9pZCBzcGljZV91
c2JfYmFja2VuZF9mcmVlX2RldmljZV9saXN0KFNwaWNlVXNiQmFja2VuZERldmljZSAqKmRldmxp
c3QpOwogZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfaGFuZGxlX2V2ZW50cyhTcGljZVVzYkJh
Y2tlbmQgKmJlKTsKK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfaW50ZXJydXB0X2V2ZW50X2hhbmRs
ZXIoU3BpY2VVc2JCYWNrZW5kICpiZSk7CiBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9yZWdp
c3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKnVzZXJfZGF0YSwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIHByb2MpOwpk
aWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jCmluZGV4IDQ5NjA2NjdlLi4wZDEyNDMyZiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtMzI4LDYgKzMy
OCw4IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9kaXNwb3NlKEdPYmpl
Y3QgKmdvYmplY3QpCiAjZW5kaWYKICAgICBpZiAocHJpdi0+ZXZlbnRfdGhyZWFkKSB7CiAgICAg
ICAgIGdfd2Fybl9pZl9mYWlsKGdfYXRvbWljX2ludF9nZXQoJnByaXYtPmV2ZW50X3RocmVhZF9y
dW4pID09IEZBTFNFKTsKKyAgICAgICAgZ19hdG9taWNfaW50X3NldCgmcHJpdi0+ZXZlbnRfdGhy
ZWFkX3J1biwgRkFMU0UpOworICAgICAgICBzcGljZV91c2JfYmFja2VuZF9pbnRlcnJ1cHRfZXZl
bnRfaGFuZGxlcihwcml2LT5jb250ZXh0KTsKICAgICAgICAgZ190aHJlYWRfam9pbihwcml2LT5l
dmVudF90aHJlYWQpOwogICAgICAgICBwcml2LT5ldmVudF90aHJlYWQgPSBOVUxMOwogICAgIH0K
QEAgLTk4OCw2ICs5OTAsOCBAQCBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc3Rh
cnRfZXZlbnRfbGlzdGVuaW5nKAogICAgICAgIGxpYnVzYl9oYW5kbGVfZXZlbnRzIGNhbGwgaW4g
dGhlIHRocmVhZCB3b24ndCBleGl0IHVudGlsIHRoZQogICAgICAgIGxpYnVzYl9jbG9zZSBjYWxs
IGZvciB0aGUgZGV2aWNlIGlzIG1hZGUgZnJvbSB1c2JyZWRpcmhvc3RfY2xvc2UuICovCiAgICAg
aWYgKHByaXYtPmV2ZW50X3RocmVhZCkgeworICAgICAgICBnX2F0b21pY19pbnRfc2V0KCZwcml2
LT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7CisgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2lu
dGVycnVwdF9ldmVudF9oYW5kbGVyKHByaXYtPmNvbnRleHQpOwogICAgICAgICAgZ190aHJlYWRf
am9pbihwcml2LT5ldmVudF90aHJlYWQpOwogICAgICAgICAgcHJpdi0+ZXZlbnRfdGhyZWFkID0g
TlVMTDsKICAgICB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
