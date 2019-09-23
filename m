Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AE1BB522
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 15:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1046E8FF;
	Mon, 23 Sep 2019 13:23:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 496 seconds by postgrey-1.36 at gabe;
 Mon, 23 Sep 2019 13:01:44 UTC
Received: from smtphy.263.net (syd-smtp02.263.net [13.237.61.158])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E023B6E8D8
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 13:01:44 +0000 (UTC)
Received: from regular2.263xmail.com (unknown [211.157.147.162])
 by smtphy.263.net (Postfix) with ESMTPS id 686641200BC
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 20:53:23 +0800 (CST)
Received: from regular1.263xmail.com (unknown [192.168.165.233])
 by regular2.263xmail.com (Postfix) with ESMTP id 87D301A8E
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 20:53:17 +0800 (CST)
Received: from hjc?rock-chips.com (unknown [192.168.167.76])
 by regular1.263xmail.com (Postfix) with ESMTP id 3CDB225F;
 Mon, 23 Sep 2019 20:53:15 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32757T140634167924480S1569243191006336_; 
 Mon, 23 Sep 2019 20:53:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <af08d0d1a88de418102cc211dc241298>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 Gerd Hoffmann <kraxel@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 23 Sep 2019 20:53:01 +0800
Message-Id: <1569243189-183445-3-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569243189-183445-1-git-send-email-hjc@rock-chips.com>
References: <1569243189-183445-1-git-send-email-hjc@rock-chips.com>
X-Mailman-Approved-At: Mon, 23 Sep 2019 13:23:30 +0000
Subject: [Spice-devel] [PATCH 28/36] drm/qxl: use bpp instead of cpp for
 drm_format_info
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
Cc: spice-devel@lists.freedesktop.org, hjc@rock-chips.com,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Y3BwW0J5dGVQZXJQbGFuZV0gY2FuJ3QgZGVzY3JpYmUgdGhlIDEwYml0IGRhdGEgZm9ybWF0IGNv
cnJlY3RseSwKU28gd2UgdXNlIGJwcFtCaXRQZXJQbGFuZV0gdG8gaW5zdGVhZCBjcHAuCgpTaWdu
ZWQtb2ZmLWJ5OiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX2RyYXcuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhs
X2RyYXcuYyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2RyYXcuYwppbmRleCA1YmViZjFlLi43
MWMxOGU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kcmF3LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZHJhdy5jCkBAIC0xNDEsNyArMTQxLDcgQEAgdm9pZCBx
eGxfZHJhd19kaXJ0eV9mYihzdHJ1Y3QgcXhsX2RldmljZSAqcWRldiwKIAlzdHJ1Y3QgcXhsX3Jl
Y3QgKnJlY3RzOwogCWludCBzdHJpZGUgPSBmYi0+cGl0Y2hlc1swXTsKIAkvKiBkZXB0aCBpcyBu
b3QgYWN0dWFsbHkgaW50ZXJlc3RpbmcsIHdlIGRvbid0IG1hc2sgd2l0aCBpdCAqLwotCWludCBk
ZXB0aCA9IGZiLT5mb3JtYXQtPmNwcFswXSAqIDg7CisJaW50IGRlcHRoID0gZmItPmZvcm1hdC0+
YnBwWzBdOwogCXVpbnQ4X3QgKnN1cmZhY2VfYmFzZTsKIAlzdHJ1Y3QgcXhsX3JlbGVhc2UgKnJl
bGVhc2U7CiAJc3RydWN0IHF4bF9ibyAqY2xpcHNfYm87Ci0tIAoyLjcuNAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
