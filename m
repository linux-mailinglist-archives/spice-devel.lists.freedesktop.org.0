Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C76BA20FE
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5589B6E118;
	Thu, 29 Aug 2019 16:35:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DAB46E118
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9F7B1308A9E0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:27 +0000 (UTC)
Received: from lub.com (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10ACB60872
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:26 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 19:35:23 +0300
Message-Id: <20190829163524.25992-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 29 Aug 2019 16:35:27 +0000 (UTC)
Subject: [Spice-devel] [spice-vdagent PATCH v2 1/2] vdagentd: daemonize:
 check fopen/fprintf return value
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

VXBvbiBmYWlsdXJlLCB3cml0ZSBhIHdhcm5pbmcgbWVzc2FnZSBhbmQgY29udGludWUKCkZvdW5k
LWJ5OiBjb3ZzY2FuCgpTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluICA8dXJpbEByZWRoYXQuY29t
PgotLS0KCnYxLT52MjogYWRkZWQgYSBjaGVjayBmb3IgZm9wZW4gdG9vLgoKLS0tCiBzcmMvdmRh
Z2VudGQvdmRhZ2VudGQuYyB8IDcgKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50ZC92ZGFnZW50ZC5j
IGIvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMKaW5kZXggNzJhM2UxMy4uYmExYjBjNyAxMDA2NDQK
LS0tIGEvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMKKysrIGIvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRk
LmMKQEAgLTk5Niw4ICs5OTYsMTMgQEAgc3RhdGljIHZvaWQgZGFlbW9uaXplKHZvaWQpCiAgICAg
ICAgIH0KICAgICAgICAgcGlkZmlsZSA9IGZvcGVuKHBpZGZpbGVuYW1lLCAidyIpOwogICAgICAg
ICBpZiAocGlkZmlsZSkgewotICAgICAgICAgICAgZnByaW50ZihwaWRmaWxlLCAiJWRcbiIsIChp
bnQpZ2V0cGlkKCkpOworICAgICAgICAgICAgaW50IHIgPSBmcHJpbnRmKHBpZGZpbGUsICIlZFxu
IiwgKGludClnZXRwaWQoKSk7CisgICAgICAgICAgICBpZiAociA8IDApIHsKKyAgICAgICAgICAg
ICAgICBzeXNsb2coTE9HX1dBUk5JTkcsICJFcnJvciB3cml0aW5nIHRvICVzOiAlbSIsIHBpZGZp
bGVuYW1lKTsKKyAgICAgICAgICAgIH0KICAgICAgICAgICAgIGZjbG9zZShwaWRmaWxlKTsKKyAg
ICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgIHN5c2xvZyhMT0dfV0FSTklORywgIkZhaWxlZCB0
byBjcmVhdGUgcGlkZmlsZSAlczogJW0iLCBwaWRmaWxlbmFtZSk7CiAgICAgICAgIH0KICAgICAg
ICAgYnJlYWs7CiAgICAgY2FzZSAtMToKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
