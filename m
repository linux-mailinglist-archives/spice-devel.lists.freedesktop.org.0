Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3127D8D2
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 11:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0A86E445;
	Thu,  1 Aug 2019 09:52:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1E56E445
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 09:52:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 64CDD3086222
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 09:52:29 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FB9C60852;
 Thu,  1 Aug 2019 09:52:28 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 10:52:22 +0100
Message-Id: <20190801095222.17475-2-fziglio@redhat.com>
In-Reply-To: <20190801095222.17475-1-fziglio@redhat.com>
References: <20190801095222.17475-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 01 Aug 2019 09:52:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/2] usb-device-manager: Fix
 reference counting getting devices
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

c3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2RldmljZV90b19iZGV2IGluY3JlbWVudHMgdXNiIGRl
dmljZQpjb3VudGVyLiBUaGUgZnVuY3Rpb24gaXMganVzdCB1c2VkIHRvIGNoZWNrIGZvciBmaWx0
ZXIgYnV0CnRoYW4gdGhlIGNvdW50ZXIgaXMgbm90IGRlY3JlbWVudGVkIGNhdXNpbmcgdGhlIG9i
amVjdCB0byBiZQpsZWFrZWQgbGF0ZXIgKG9yIGludmFsaWQgcmVmZXJlbmNlIGNvdW50ZXIgYW55
d2F5KS4KRGVjcmVtZW50IHRoZSBjb3VudGVyIGluIGFueSBjYXNlLgoKU2lnbmVkLW9mZi1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3JjL3VzYi1kZXZpY2Ut
bWFuYWdlci5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMv
dXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggYTAzNTY4M2QuLjBhMDRiMTE5IDEwMDY0NAotLS0g
YS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
CkBAIC0xMDEyLDggKzEwMTIsMTIgQEAgR1B0ckFycmF5KiBzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfZ2V0X2RldmljZXNfd2l0aF9maWx0ZXIoCiAgICAgICAgIGlmIChydWxlcykgewogICAgICAg
ICAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpiZGV2ID0KICAgICAgICAgICAgICAgICBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfZGV2aWNlX3RvX2JkZXYoc2VsZiwgZGV2aWNlKTsKLSAgICAg
ICAgICAgIGlmIChzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKGJkZXYsIHJ1
bGVzLCBjb3VudCkgIT0gMCkKKyAgICAgICAgICAgIGdib29sZWFuIGZpbHRlcl9vayA9CisgICAg
ICAgICAgICAgICAgKHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9jaGVja19maWx0ZXIoYmRldiwg
cnVsZXMsIGNvdW50KSA9PSAwKTsKKyAgICAgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2Rldmlj
ZV91bnJlZihiZGV2KTsKKyAgICAgICAgICAgIGlmICghZmlsdGVyX29rKSB7CiAgICAgICAgICAg
ICAgICAgY29udGludWU7CisgICAgICAgICAgICB9CiAgICAgICAgIH0KICAgICAgICAgZ19wdHJf
YXJyYXlfYWRkKGRldmljZXNfY29weSwgc3BpY2VfdXNiX2RldmljZV9yZWYoZGV2aWNlKSk7CiAg
ICAgfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
