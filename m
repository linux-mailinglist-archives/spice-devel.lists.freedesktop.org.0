Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB54E65783
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8A66E22A;
	Thu, 11 Jul 2019 13:01:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBB86E222
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBF453082134
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F2845C220;
 Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:53 +0100
Message-Id: <20190711130054.17867-6-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 11 Jul 2019 13:01:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 6/7] usb-device-manager: Do not give
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
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMTIgKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwppbmRleCBjMjcwZTFj
Zi4uNDk2MDY2N2UgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9z
cmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTE2NjQsNyArMTY2NCw5IEBAIGdib29sZWFuIF91
c2Jka19oaWRlcl9wcmVwYXJlKFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlcikKIHsKICAg
ICBTcGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0gbWFuYWdlci0+cHJpdjsKIAot
ICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKHByaXYtPnVzYmRrX2FwaSAhPSBOVUxMLCBGQUxTRSk7
CisgICAgaWYgKHByaXYtPnVzYmRrX2FwaSA9PSBOVUxMKSB7CisgICAgICAgIHJldHVybiBGQUxT
RTsKKyAgICB9CiAKICAgICBpZiAocHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlID09IE5VTEwpIHsK
ICAgICAgICAgcHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlID0gdXNiZGtfY3JlYXRlX2hpZGVyX2hh
bmRsZShwcml2LT51c2Jka19hcGkpOwpAQCAtMTY4Miw3ICsxNjg0LDkgQEAgdm9pZCBfdXNiZGtf
aGlkZXJfY2xlYXIoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyKQogewogICAgIFNwaWNl
VXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBtYW5hZ2VyLT5wcml2OwogCi0gICAgZ19y
ZXR1cm5faWZfZmFpbChwcml2LT51c2Jka19hcGkgIT0gTlVMTCk7CisgICAgaWYgKHByaXYtPnVz
YmRrX2FwaSA9PSBOVUxMKSB7CisgICAgICAgIHJldHVybjsKKyAgICB9CiAKICAgICBpZiAocHJp
di0+dXNiZGtfaGlkZXJfaGFuZGxlICE9IE5VTEwpIHsKICAgICAgICAgdXNiZGtfY2xlYXJfaGlk
ZV9ydWxlcyhwcml2LT51c2Jka19hcGksIHByaXYtPnVzYmRrX2hpZGVyX2hhbmRsZSk7CkBAIC0x
Njk2LDcgKzE3MDAsOSBAQCB2b2lkIF91c2Jka19oaWRlcl91cGRhdGUoU3BpY2VVc2JEZXZpY2VN
YW5hZ2VyICptYW5hZ2VyKQogewogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnBy
aXYgPSBtYW5hZ2VyLT5wcml2OwogCi0gICAgZ19yZXR1cm5faWZfZmFpbChwcml2LT51c2Jka19h
cGkgIT0gTlVMTCk7CisgICAgaWYgKHByaXYtPnVzYmRrX2FwaSA9PSBOVUxMKSB7CisgICAgICAg
IHJldHVybjsKKyAgICB9CiAKICAgICBpZiAocHJpdi0+YXV0b19jb25uZWN0X2ZpbHRlciA9PSBO
VUxMKSB7CiAgICAgICAgIFNQSUNFX0RFQlVHKCJObyBhdXRvcmVkaXJlY3QgcnVsZXMsIG5vIGhp
ZGVyIHNldHVwIG5lZWRlZCIpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
