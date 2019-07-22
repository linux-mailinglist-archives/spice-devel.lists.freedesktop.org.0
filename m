Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED76FE95
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221AF898F5;
	Mon, 22 Jul 2019 11:15:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92941898F5
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:15:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3E2083082A8D
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:15:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CEC319C77;
 Mon, 22 Jul 2019 11:15:25 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 12:15:22 +0100
Message-Id: <20190722111522.400-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 22 Jul 2019 11:15:26 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2] usb-device-manager: Do not give
 warnings for supported configuration
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
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMTQgKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKQ2hhbmdlcyBzaW5jZSB2MToK
LSBjb252ZXIgYSBkZWJ1ZyBpbnRvIHdhcm5pbmcgdG8gaW5mb3JtIHRoZSB1c2VyIGF0IGxlYXN0
IG9uZSB0aW1lCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDlhYmEyNzVmLi5hMzhlM2MwZCAxMDA2NDQKLS0tIGEv
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwpA
QCAtMjQzLDcgKzI0Myw3IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9p
bml0KFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZikKICAgICBpZiAodXNiZGtfaXNfZHJpdmVy
X2luc3RhbGxlZCgpKSB7CiAgICAgICAgIHByaXYtPnVzYmRrX2FwaSA9IHVzYmRrX2FwaV9sb2Fk
KCk7CiAgICAgfSBlbHNlIHsKLSAgICAgICAgc3BpY2VfZGVidWcoIlVzYkRrIGRyaXZlciBpcyBu
b3QgaW5zdGFsbGVkIik7CisgICAgICAgIGdfd2FybmluZygiVXNiRGsgZHJpdmVyIGlzIG5vdCBp
bnN0YWxsZWQiKTsKICAgICB9CiAjZW5kaWYKICNpZmRlZiBVU0VfVVNCUkVESVIKQEAgLTE2Njgs
NyArMTY2OCw5IEBAIGdib29sZWFuIF91c2Jka19oaWRlcl9wcmVwYXJlKFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqbWFuYWdlcikKIHsKICAgICBTcGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpw
cml2ID0gbWFuYWdlci0+cHJpdjsKIAotICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKHByaXYtPnVz
YmRrX2FwaSAhPSBOVUxMLCBGQUxTRSk7CisgICAgaWYgKHByaXYtPnVzYmRrX2FwaSA9PSBOVUxM
KSB7CisgICAgICAgIHJldHVybiBGQUxTRTsKKyAgICB9CiAKICAgICBpZiAocHJpdi0+dXNiZGtf
aGlkZXJfaGFuZGxlID09IE5VTEwpIHsKICAgICAgICAgcHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxl
ID0gdXNiZGtfY3JlYXRlX2hpZGVyX2hhbmRsZShwcml2LT51c2Jka19hcGkpOwpAQCAtMTY4Niw3
ICsxNjg4LDkgQEAgdm9pZCBfdXNiZGtfaGlkZXJfY2xlYXIoU3BpY2VVc2JEZXZpY2VNYW5hZ2Vy
ICptYW5hZ2VyKQogewogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBt
YW5hZ2VyLT5wcml2OwogCi0gICAgZ19yZXR1cm5faWZfZmFpbChwcml2LT51c2Jka19hcGkgIT0g
TlVMTCk7CisgICAgaWYgKHByaXYtPnVzYmRrX2FwaSA9PSBOVUxMKSB7CisgICAgICAgIHJldHVy
bjsKKyAgICB9CiAKICAgICBpZiAocHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlICE9IE5VTEwpIHsK
ICAgICAgICAgdXNiZGtfY2xlYXJfaGlkZV9ydWxlcyhwcml2LT51c2Jka19hcGksIHByaXYtPnVz
YmRrX2hpZGVyX2hhbmRsZSk7CkBAIC0xNzAwLDcgKzE3MDQsOSBAQCB2b2lkIF91c2Jka19oaWRl
cl91cGRhdGUoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyKQogewogICAgIFNwaWNlVXNi
RGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBtYW5hZ2VyLT5wcml2OwogCi0gICAgZ19yZXR1
cm5faWZfZmFpbChwcml2LT51c2Jka19hcGkgIT0gTlVMTCk7CisgICAgaWYgKHByaXYtPnVzYmRr
X2FwaSA9PSBOVUxMKSB7CisgICAgICAgIHJldHVybjsKKyAgICB9CiAKICAgICBpZiAocHJpdi0+
YXV0b19jb25uZWN0X2ZpbHRlciA9PSBOVUxMKSB7CiAgICAgICAgIFNQSUNFX0RFQlVHKCJObyBh
dXRvcmVkaXJlY3QgcnVsZXMsIG5vIGhpZGVyIHNldHVwIG5lZWRlZCIpOwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
