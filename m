Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F497DC23
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 15:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36306E5CD;
	Thu,  1 Aug 2019 13:04:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D816E5CD
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 13:04:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 881C4300BCE9
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 13:04:31 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A38BD1001281;
 Thu,  1 Aug 2019 13:04:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 14:04:26 +0100
Message-Id: <20190801130426.25562-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 01 Aug 2019 13:04:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] usb-device-manager: Remove unused
 parameter from spice_usb_device_manager_device_match
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
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2Ut
bWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDBhMDRiMTE5Li40MjZh
MGNkNyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYwpAQCAtNzMzLDggKzczMyw4IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3Vz
Yl9kZXZpY2VfbWFuYWdlcl9hdXRvX2Nvbm5lY3RfY2IoR09iamVjdCAgICAgICpnb2JqZWN0LAog
fQogCiBzdGF0aWMgZ2Jvb2xlYW4KLXNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9kZXZpY2VfbWF0
Y2goU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmLCBTcGljZVVzYkRldmljZSAqZGV2aWNlLAot
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBpbnQgYnVzLCBjb25z
dCBpbnQgYWRkcmVzcykKK3NwaWNlX3VzYl9kZXZpY2VfbWF0Y2goU3BpY2VVc2JEZXZpY2UgKmRl
dmljZSwKKyAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgaW50IGJ1cywgY29uc3QgaW50IGFk
ZHJlc3MpCiB7CiAgICAgcmV0dXJuIChzcGljZV91c2JfZGV2aWNlX2dldF9idXNudW0oZGV2aWNl
KSA9PSBidXMgJiYKICAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfZ2V0X2RldmFkZHIoZGV2
aWNlKSA9PSBhZGRyZXNzKTsKQEAgLTc1MCw3ICs3NTAsNyBAQCBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfZmluZF9kZXZpY2UoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmLAogCiAgICAgZm9y
IChpID0gMDsgaSA8IHByaXYtPmRldmljZXMtPmxlbjsgaSsrKSB7CiAgICAgICAgIGN1cnIgPSBn
X3B0cl9hcnJheV9pbmRleChwcml2LT5kZXZpY2VzLCBpKTsKLSAgICAgICAgaWYgKHNwaWNlX3Vz
Yl9kZXZpY2VfbWFuYWdlcl9kZXZpY2VfbWF0Y2goc2VsZiwgY3VyciwgYnVzLCBhZGRyZXNzKSkg
eworICAgICAgICBpZiAoc3BpY2VfdXNiX2RldmljZV9tYXRjaChjdXJyLCBidXMsIGFkZHJlc3Mp
KSB7CiAgICAgICAgICAgICBkZXZpY2UgPSBjdXJyOwogICAgICAgICAgICAgYnJlYWs7CiAgICAg
ICAgIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
