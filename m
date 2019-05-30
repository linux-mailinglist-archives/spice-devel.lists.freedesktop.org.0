Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAA02FDA0
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018FB6E35D;
	Thu, 30 May 2019 14:23:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A67B6E35D
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E95346EB80
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:02 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D63C81001E86;
 Thu, 30 May 2019 14:23:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:44 +0100
Message-Id: <20190530142254.28937-3-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 30 May 2019 14:23:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 03/13] char-device: Allocate all
 write buffer in a single block
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

VGhlcmUgYXJlIG5vIG11Y2ggZGF0YSBvdGhlciB0aGFuIHRoZSBidWZmZXIsIHJlZHVjZSB0aGUK
YWxsb2NhdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KLS0tCiBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDI3ICsrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLQogc2VydmVyL2NoYXItZGV2aWNlLmggfCAgMiArLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIv
Y2hhci1kZXZpY2UuYyBiL3NlcnZlci9jaGFyLWRldmljZS5jCmluZGV4IDg5NTgxZWE0Mi4uMDU5
ZThlNWY2IDEwMDY0NAotLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYworKysgYi9zZXJ2ZXIvY2hh
ci1kZXZpY2UuYwpAQCAtMTQ5LDExICsxNDksOSBAQCByZWRfY2hhcl9kZXZpY2VfcmVtb3ZlX2Ns
aWVudChSZWRDaGFyRGV2aWNlICpkZXYsIFJlZENsaWVudCAqY2xpZW50KQogCiBzdGF0aWMgdm9p
ZCByZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2ZyZWUoUmVkQ2hhckRldmljZVdyaXRlQnVm
ZmVyICpidWYpCiB7Ci0gICAgaWYgKGJ1ZiA9PSBOVUxMKQotICAgICAgICByZXR1cm47Ci0KLSAg
ICBnX2ZyZWUoYnVmLT5idWYpOwotICAgIGdfZnJlZShidWYpOworICAgIGlmIChidWYpIHsKKyAg
ICAgICAgZ19mcmVlKGJ1Zi0+cHJpdik7CisgICAgfQogfQogCiBzdGF0aWMgdm9pZCB3cml0ZV9i
dWZmZXJzX3F1ZXVlX2ZyZWUoR1F1ZXVlICp3cml0ZV9xdWV1ZSkKQEAgLTU0MiwyMiArNTQwLDI3
IEBAIHJlZF9jaGFyX2RldmljZV93cml0ZV9idWZmZXJfZ2V0KFJlZENoYXJEZXZpY2UgKmRldiwg
UmVkQ2xpZW50ICpjbGllbnQsIGludCBzaXplCiAgICAgcmV0ID0gZ19xdWV1ZV9wb3BfdGFpbCgm
ZGV2LT5wcml2LT53cml0ZV9idWZzX3Bvb2wpOwogICAgIGlmIChyZXQpIHsKICAgICAgICAgZGV2
LT5wcml2LT5jdXJfcG9vbF9zaXplIC09IHJldC0+YnVmX3NpemU7Ci0gICAgfSBlbHNlIHsKKyAg
ICAgICAgaWYgKHJldC0+YnVmX3NpemUgPCBzaXplKSB7CisgICAgICAgICAgICBzcGljZV9hc3Nl
cnQoIXNwaWNlX2V4dHJhX2NoZWNrcyB8fCByZXQtPnByaXYtPnJlZnMgPT0gMSk7CisgICAgICAg
ICAgICByZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2ZyZWUocmV0KTsKKyAgICAgICAgICAg
IHJldCA9IE5VTEw7CisgICAgICAgIH0KKyAgICB9CisgICAgaWYgKHJldCA9PSBOVUxMKSB7CiAg
ICAgICAgIHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJGdWxsIHsKLSAgICAgICAgICAg
IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciBidWZmZXI7CiAgICAgICAgICAgICBSZWRDaGFyRGV2
aWNlV3JpdGVCdWZmZXJQcml2YXRlIHByaXY7CisgICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3Jp
dGVCdWZmZXIgYnVmZmVyOwogICAgICAgICB9ICp3cml0ZV9idWY7Ci0gICAgICAgIHdyaXRlX2J1
ZiA9IGdfbmV3MChzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyRnVsbCwgMSk7CisgICAg
ICAgIHdyaXRlX2J1ZiA9IGdfbWFsbG9jKHNpemVvZihzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRl
QnVmZmVyRnVsbCkgKyBzaXplKTsKKyAgICAgICAgbWVtc2V0KHdyaXRlX2J1ZiwgMCwgc2l6ZW9m
KCp3cml0ZV9idWYpKTsKKyAgICAgICAgd3JpdGVfYnVmLT5wcml2LnJlZnMgPSAxOwogICAgICAg
ICByZXQgPSAmd3JpdGVfYnVmLT5idWZmZXI7CisgICAgICAgIHJldC0+YnVmX3NpemUgPSBzaXpl
OwogICAgICAgICByZXQtPnByaXYgPSAmd3JpdGVfYnVmLT5wcml2OwogICAgIH0KIAogICAgIHNw
aWNlX2Fzc2VydCghcmV0LT5idWZfdXNlZCk7CiAKLSAgICBpZiAocmV0LT5idWZfc2l6ZSA8IHNp
emUpIHsKLSAgICAgICAgcmV0LT5idWYgPSBnX3JlYWxsb2MocmV0LT5idWYsIHNpemUpOwotICAg
ICAgICByZXQtPmJ1Zl9zaXplID0gc2l6ZTsKLSAgICB9CiAgICAgcmV0LT5wcml2LT5vcmlnaW4g
PSBvcmlnaW47CiAKICAgICBpZiAob3JpZ2luID09IFdSSVRFX0JVRkZFUl9PUklHSU5fQ0xJRU5U
KSB7CmRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBiL3NlcnZlci9jaGFyLWRldmlj
ZS5oCmluZGV4IDdkM2FkOGIzYS4uNTMyN2MyNWU1IDEwMDY0NAotLS0gYS9zZXJ2ZXIvY2hhci1k
ZXZpY2UuaAorKysgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaApAQCAtMTUxLDExICsxNTEsMTEgQEAg
R1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpIEdfR05VQ19DT05TVDsKIC8qIGJ1
ZmZlciB0aGF0IGlzIHVzZWQgZm9yIHdyaXRpbmcgdG8gdGhlIGRldmljZSAqLwogdHlwZWRlZiBz
dHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyUHJpdmF0ZSBSZWRDaGFyRGV2aWNlV3JpdGVC
dWZmZXJQcml2YXRlOwogdHlwZWRlZiBzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyIHsK
LSAgICB1aW50OF90ICpidWY7CiAgICAgdWludDMyX3QgYnVmX3NpemU7CiAgICAgdWludDMyX3Qg
YnVmX3VzZWQ7CiAKICAgICBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJQcml2YXRlICpwcml2Owor
ICAgIHVpbnQ4X3QgYnVmWzBdOwogfSBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXI7CiAKIHZvaWQg
cmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNlICpkZXYsCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
