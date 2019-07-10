Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A09D64B9F
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 19:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3BD89873;
	Wed, 10 Jul 2019 17:44:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E0989309
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D7CE451032
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:39 +0000 (UTC)
Received: from lub.com (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 45C7660BFC
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:39 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 20:44:33 +0300
Message-Id: <20190710174435.15833-2-uril@redhat.com>
In-Reply-To: <20190710174435.15833-1-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 10 Jul 2019 17:44:39 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH v2 1/3] dcc-send: remove useless
 pipe_item assignment pipe_item
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

SW4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMsIHRoZQp2
YWx1ZSBvZiBwaXBlX2l0ZW0gaXMgcmUtd3JpdHRlbiBvbiB0aGUgbmV4dCBpdGVyYXRpb24uCgpT
aW5jZSBhNzhhN2QyNTEwNDI4OTIxODJiMTU4NjUwMjkxZDE5YTg1YmJkNmIxIHBpcGVfaXRlbQpp
cyBubyBsb25nZXIgdXNlZCB0byBjb250cm9sIHRoZSBsb29wLgoKRm91bmQgYnkgQ292c2Nhbi4K
ClNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIv
ZGNjLXNlbmQuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9zZXJ2ZXIvZGNjLXNlbmQuYyBiL3NlcnZlci9kY2Mtc2VuZC5jCmluZGV4IGIxNDYxOWEy
Yi4uNTY1YTc5ZjMzIDEwMDY0NAotLS0gYS9zZXJ2ZXIvZGNjLXNlbmQuYworKysgYi9zZXJ2ZXIv
ZGNjLXNlbmQuYwpAQCAtNzUzLDcgKzc1Myw2IEBAIHN0YXRpYyB2b2lkIHJlZF9waXBlX3JlcGxh
Y2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVsQ2xpZW50CiAK
ICAgICAgICAgc3BpY2VfYXNzZXJ0KGltYWdlKTsKICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50
X3BpcGVfcmVtb3ZlX2FuZF9yZWxlYXNlX3BvcyhSRURfQ0hBTk5FTF9DTElFTlQoZGNjKSwgbCk7
Ci0gICAgICAgIHBpcGVfaXRlbSA9ICZpbWFnZS0+YmFzZTsKICAgICB9CiB9CiAKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
