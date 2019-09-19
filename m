Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF35B7BC6
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DE76F879;
	Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6916F6F495
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1443F20FE
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91F0F5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:35 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:15 +0200
Message-Id: <20190919141133.10691-3-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 02/20] usb-redir: move implementation of
 device description to USB backend
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKRm9y
IGxvY2FsIFVTQiBkZXZpY2UgdGhlIFVTQiBiYWNrZW5kIHJldHVybnMgdGhlIHNhbWUgZGV2aWNl
CmRlc2NyaXB0aW9uIGFzIHNwaWNlLXVzYi1tYW5hZ2VyIGRpZCwgZm9yIGVtdWxhdGVkIGRldmlj
ZXMgaXQKdXNlcyB0aGUgZGVzY3JpcHRpb24gcHJvdmlkZWQgYnkgZGV2aWNlJ3MgaW1wbGVtZW50
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNo
QGRheW5peC5jb20+CkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCA0MSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgMSArCiBz
cmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAyOSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAzIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggY2I0
MWY3MS4uNWI1MmE0MCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3Vz
Yi1iYWNrZW5kLmMKQEAgLTQyLDYgKzQyLDcgQEAKICNpbmNsdWRlICJ1c2ItZW11bGF0aW9uLmgi
CiAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2LmgiCiAjaW5jbHVkZSAic3BpY2UtY2hh
bm5lbC1wcml2LmgiCisjaW5jbHVkZSAidXNidXRpbC5oIgogCiAjZGVmaW5lIExPVURfREVCVUco
eCwgLi4uKQogCkBAIC04NTIsNiArODUzLDQ2IEBAIHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxf
Z2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwKICAgICB9CiB9CiAK
K2djaGFyICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNi
QmFja2VuZERldmljZSAqZGV2LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3QgZ2NoYXIgKmZvcm1hdCkKK3sKKyAgICBndWludDE2IGJ1cywgYWRk
cmVzcywgdmlkLCBwaWQ7CisgICAgZ2NoYXIgKmRlc2NyaXB0aW9uLCAqZGVzY3JpcHRvciwgKm1h
bnVmYWN0dXJlciA9IE5VTEwsICpwcm9kdWN0ID0gTlVMTDsKKworICAgIGdfcmV0dXJuX3ZhbF9p
Zl9mYWlsKGRldiAhPSBOVUxMLCBOVUxMKTsKKworICAgIGJ1cyAgICAgPSBkZXYtPmRldmljZV9p
bmZvLmJ1czsKKyAgICBhZGRyZXNzID0gZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzOworICAgIHZp
ZCAgICAgPSBkZXYtPmRldmljZV9pbmZvLnZpZDsKKyAgICBwaWQgICAgID0gZGV2LT5kZXZpY2Vf
aW5mby5waWQ7CisKKyAgICBpZiAoKHZpZCA+IDApICYmIChwaWQgPiAwKSkgeworICAgICAgICBk
ZXNjcmlwdG9yID0gZ19zdHJkdXBfcHJpbnRmKCJbJTA0eDolMDR4XSIsIHZpZCwgcGlkKTsKKyAg
ICB9IGVsc2UgeworICAgICAgICBkZXNjcmlwdG9yID0gZ19zdHJkdXAoIiIpOworICAgIH0KKwor
ICAgIGlmIChkZXYtPmxpYnVzYl9kZXZpY2UpIHsKKyAgICAgICAgc3BpY2VfdXNiX3V0aWxfZ2V0
X2RldmljZV9zdHJpbmdzKGJ1cywgYWRkcmVzcywgdmlkLCBwaWQsCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAmbWFudWZhY3R1cmVyLCAmcHJvZHVjdCk7CisgICAg
fSBlbHNlIHsKKyAgICAgICAgcHJvZHVjdCA9IGRldmljZV9vcHMoZGV2LT5lZGV2KS0+Z2V0X3By
b2R1Y3RfZGVzY3JpcHRpb24oZGV2LT5lZGV2KTsKKyAgICB9CisKKyAgICBpZiAoIWZvcm1hdCkg
eworICAgICAgICBmb3JtYXQgPSBfKCIlcyAlcyAlcyBhdCAlZC0lZCIpOworICAgIH0KKworICAg
IGRlc2NyaXB0aW9uID0gZ19zdHJkdXBfcHJpbnRmKGZvcm1hdCwgbWFudWZhY3R1cmVyID8gbWFu
dWZhY3R1cmVyIDogIiIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJvZHVj
dCwgZGVzY3JpcHRvciwgYnVzLCBhZGRyZXNzKTsKKworICAgIGdfZnJlZShtYW51ZmFjdHVyZXIp
OworICAgIGdfZnJlZShkZXNjcmlwdG9yKTsKKyAgICBnX2ZyZWUocHJvZHVjdCk7CisKKyAgICBy
ZXR1cm4gZGVzY3JpcHRpb247Cit9CisKIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3Jl
cG9ydF9jaGFuZ2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCiB7CmRpZmYg
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDgzMzE5
ZGMuLjQ2Yjc0MmUgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2It
YmFja2VuZC5oCkBAIC05MCw1ICs5MCw2IEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5l
bF9nZXRfZ3Vlc3RfZmlsdGVyKFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHVzYnJl
ZGlyZmlsdGVyX3J1bGUgICoqcnVsZXMsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnQgKmNvdW50KTsKIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfcmV0
dXJuX3dyaXRlX2RhdGEoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsIHZvaWQgKmRhdGEpOwor
Z2NoYXIgKnNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICpkZXYsIGNvbnN0IGdjaGFyICpmb3JtYXQpOwogCiBHX0VORF9ERUNMUwpk
aWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jCmluZGV4IDE3YmNhMDkuLjNhOTU0MmEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNl
LW1hbmFnZXIuYworKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTMyLDcgKzMyLDYg
QEAKICNlbmRpZgogCiAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2LmgiCi0jaW5jbHVk
ZSAidXNidXRpbC5oIgogI2VuZGlmCiAKICNpbmNsdWRlICJzcGljZS1zZXNzaW9uLXByaXYuaCIK
QEAgLTE0MzIsMzUgKzE0MzEsOSBAQCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2FuX3JlZGly
ZWN0X2RldmljZShTcGljZVVzYkRldmljZU1hbmFnZXIgICpzZWxmLAogZ2NoYXIgKnNwaWNlX3Vz
Yl9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNiRGV2aWNlICpkZXZpY2UsIGNvbnN0IGdj
aGFyICpmb3JtYXQpCiB7CiAjaWZkZWYgVVNFX1VTQlJFRElSCi0gICAgZ3VpbnQxNiBidXMsIGFk
ZHJlc3MsIHZpZCwgcGlkOwotICAgIGdjaGFyICpkZXNjcmlwdGlvbiwgKmRlc2NyaXB0b3IsICpt
YW51ZmFjdHVyZXIgPSBOVUxMLCAqcHJvZHVjdCA9IE5VTEw7Ci0KICAgICBnX3JldHVybl92YWxf
aWZfZmFpbChkZXZpY2UgIT0gTlVMTCwgTlVMTCk7CiAKLSAgICBidXMgICAgID0gc3BpY2VfdXNi
X2RldmljZV9nZXRfYnVzbnVtKGRldmljZSk7Ci0gICAgYWRkcmVzcyA9IHNwaWNlX3VzYl9kZXZp
Y2VfZ2V0X2RldmFkZHIoZGV2aWNlKTsKLSAgICB2aWQgICAgID0gc3BpY2VfdXNiX2RldmljZV9n
ZXRfdmlkKGRldmljZSk7Ci0gICAgcGlkICAgICA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3BpZChk
ZXZpY2UpOwotCi0gICAgaWYgKCh2aWQgPiAwKSAmJiAocGlkID4gMCkpIHsKLSAgICAgICAgZGVz
Y3JpcHRvciA9IGdfc3RyZHVwX3ByaW50ZigiWyUwNHg6JTA0eF0iLCB2aWQsIHBpZCk7Ci0gICAg
fSBlbHNlIHsKLSAgICAgICAgZGVzY3JpcHRvciA9IGdfc3RyZHVwKCIiKTsKLSAgICB9Ci0KLSAg
ICBzcGljZV91c2JfdXRpbF9nZXRfZGV2aWNlX3N0cmluZ3MoYnVzLCBhZGRyZXNzLCB2aWQsIHBp
ZCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJm1hbnVmYWN0dXJlciwg
JnByb2R1Y3QpOwotCi0gICAgaWYgKCFmb3JtYXQpCi0gICAgICAgIGZvcm1hdCA9IF8oIiVzICVz
ICVzIGF0ICVkLSVkIik7Ci0KLSAgICBkZXNjcmlwdGlvbiA9IGdfc3RyZHVwX3ByaW50Zihmb3Jt
YXQsIG1hbnVmYWN0dXJlciwgcHJvZHVjdCwgZGVzY3JpcHRvciwgYnVzLCBhZGRyZXNzKTsKLQot
ICAgIGdfZnJlZShtYW51ZmFjdHVyZXIpOwotICAgIGdfZnJlZShkZXNjcmlwdG9yKTsKLSAgICBn
X2ZyZWUocHJvZHVjdCk7Ci0KLSAgICByZXR1cm4gZGVzY3JpcHRpb247CisgICAgcmV0dXJuIHNw
aWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfZGVzY3JpcHRpb24oZGV2aWNlLCBmb3JtYXQpOwog
I2Vsc2UKICAgICByZXR1cm4gTlVMTDsKICNlbmRpZgotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
