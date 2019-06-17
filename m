Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F23491A2
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 22:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7006789FDD;
	Mon, 17 Jun 2019 20:46:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5116089FC9
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F1CE43087930
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:40 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-54.brq.redhat.com
 [10.40.204.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 357E890AC;
 Mon, 17 Jun 2019 20:46:40 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 22:46:29 +0200
Message-Id: <20190617204630.22420-4-jjanku@redhat.com>
In-Reply-To: <20190617204630.22420-1-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 17 Jun 2019 20:46:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 4/5] webdav: remove client on empty
 message
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

TWVzc2FnZSB3aXRoIG5vIGRhdGEgZnJvbSBzcGljZS13ZWJkYXYgZGFlbW9uIG1lYW5zCnRoZSBj
bGllbnQgZGlzY29ubmVjdGVkLgoKSW4gdGhpcyBjYXNlLCB0aGUgY2xpZW50IGNvbm5lY3Rpb24g
dG8gcGhvZGF2CnNob3VsZCBiZSBjbG9zZWQgYXMgd2VsbC4KClRoaXMgY2FuIGhhcHBlbiBlLmcu
IHdoZW4gZmlsZSB0cmFuc2ZlciBnZXRzIGNhbmNlbGxlZC4KClNpZ25lZC1vZmYtYnk6IEpha3Vi
IEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtd2ViZGF2LmMgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMgYi9zcmMvY2hhbm5lbC13ZWJkYXYuYwpp
bmRleCBlYTI4N2YxLi4zNGQ4OGE5IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC13ZWJkYXYuYwor
KysgYi9zcmMvY2hhbm5lbC13ZWJkYXYuYwpAQCAtMzQxLDggKzM0MSw4IEBAIHN0YXRpYyB2b2lk
IGRlbXV4X3RvX2NsaWVudChDbGllbnQgKmNsaWVudCkKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjLT5jYW5jZWxsYWJsZSwgZGVtdXhfdG9fY2xpZW50X2NiLCBjbGll
bnQpOwogICAgICAgICByZXR1cm47CiAgICAgfSBlbHNlIHsKLSAgICAgICAgLyogTm90aGluZyB0
byB3cml0ZSAqLwotICAgICAgICBkZW11eF90b19jbGllbnRfZmluaXNoKGNsaWVudCwgRkFMU0Up
OworICAgICAgICAvKiBDbGllbnQgZGlzY29ubmVjdGVkICovCisgICAgICAgIGRlbXV4X3RvX2Ns
aWVudF9maW5pc2goY2xpZW50LCBUUlVFKTsKICAgICB9CiAjZW5kaWYKIH0KLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
