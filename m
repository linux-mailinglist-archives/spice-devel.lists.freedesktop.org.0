Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D3E7630D
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7193E6ED0C;
	Fri, 26 Jul 2019 10:04:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B376ED0C
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:04:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5275C308C387
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:04:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CCBF60A35;
 Fri, 26 Jul 2019 10:04:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 11:04:02 +0100
Message-Id: <20190726100402.16725-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 26 Jul 2019 10:04:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] usb-device-manager: Remove useless
 cast
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

c3BpY2VfdXNiX2RldmljZV9uZXcgaXMgYWxyZWFkeSByZXR1cm5pbmcgYSBTcGljZVVzYkRldmlj
ZSBwb2ludGVyLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Ci0tLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IGE1MzBiZTll
Li41NDRlNTY4NyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtNzc2LDcgKzc3Niw3IEBAIHN0YXRpYyB2b2lkIHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9hZGRfZGV2KFNwaWNlVXNiRGV2aWNlTWFuYWdlciAgKnNl
bGYsCiAgICAgICAgIHJldHVybjsKICAgICB9CiAKLSAgICBkZXZpY2UgPSAoU3BpY2VVc2JEZXZp
Y2UqKXNwaWNlX3VzYl9kZXZpY2VfbmV3KGJkZXYpOworICAgIGRldmljZSA9IHNwaWNlX3VzYl9k
ZXZpY2VfbmV3KGJkZXYpOwogICAgIGlmICghZGV2aWNlKQogICAgICAgICByZXR1cm47CiAKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
