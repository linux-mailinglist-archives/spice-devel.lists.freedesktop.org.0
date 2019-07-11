Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA71465781
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7B26E226;
	Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF006E222
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 30355C057F3D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:00 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 410585C220;
 Thu, 11 Jul 2019 13:00:59 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:50 +0100
Message-Id: <20190711130054.17867-3-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 11 Jul 2019 13:01:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 3/7] usb-device-manager: Put all
 Unix code in spice_usb_device_manager_initable_init together
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

VGhpcyByZWR1Y2VzIGNvbmRpdGlvbmFsIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMg
fCAxNCArKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMv
dXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggMGE5NzkyMTAuLjRiMTI2ODk2IDEwMDY0NAotLS0g
YS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
CkBAIC0yNjcsMTQgKzI2Nyw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKICAgICBHTGlzdCAqbGlz
dDsKICAgICBHTGlzdCAqaXQ7CiAKLSNpZm5kZWYgR19PU19XSU4zMgotICAgIC8qIEluaXRpYWxp
emUgbGlidXNiICovCi0gICAgcHJpdi0+Y29udGV4dCA9IHNwaWNlX3VzYl9iYWNrZW5kX25ldyhl
cnIpOwotICAgIGlmICghcHJpdi0+Y29udGV4dCkgewotICAgICAgICByZXR1cm4gRkFMU0U7Ci0g
ICAgfQotI2VuZGlmCi0KICAgICAvKiBTdGFydCBsaXN0ZW5pbmcgZm9yIHVzYiBkZXZpY2VzIHBs
dWcgLyB1bnBsdWcgKi8KICNpZmRlZiBHX09TX1dJTjMyCiAgICAgcHJpdi0+dWRldiA9IGdfdWRl
dl9jbGllbnRfbmV3KCk7CkBAIC0yODgsNiArMjgwLDEyIEBAIHN0YXRpYyBnYm9vbGVhbiBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwK
ICAgICAvKiBEbyBjb2xkcGx1ZyAoZGV0ZWN0aW9uIG9mIGFscmVhZHkgY29ubmVjdGVkIGRldmlj
ZXMpICovCiAgICAgZ191ZGV2X2NsaWVudF9yZXBvcnRfZGV2aWNlcyhwcml2LT51ZGV2KTsKICNl
bHNlCisgICAgLyogSW5pdGlhbGl6ZSBsaWJ1c2IgKi8KKyAgICBwcml2LT5jb250ZXh0ID0gc3Bp
Y2VfdXNiX2JhY2tlbmRfbmV3KGVycik7CisgICAgaWYgKCFwcml2LT5jb250ZXh0KSB7CisgICAg
ICAgIHJldHVybiBGQUxTRTsKKyAgICB9CisKICAgICBpZiAoIXNwaWNlX3VzYl9iYWNrZW5kX3Jl
Z2lzdGVyX2hvdHBsdWcocHJpdi0+Y29udGV4dCwgc2VsZiwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2hvdHBsdWdf
Y2IpKSB7CiAgICAgICAgIHJldHVybiBGQUxTRTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
