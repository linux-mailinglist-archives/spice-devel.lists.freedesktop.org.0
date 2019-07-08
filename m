Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6CD62069
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 16:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC3689E50;
	Mon,  8 Jul 2019 14:23:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF55789E50
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 14:23:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8FA2630C746E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 14:23:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D35A61001938;
 Mon,  8 Jul 2019 14:23:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  8 Jul 2019 15:23:49 +0100
Message-Id: <20190708142349.21297-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 08 Jul 2019 14:23:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-common: Add a comment for
 GLIST_FOREACH_GENERIC
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
c2VydmVyL3JlZC1jb21tb24uaCB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtY29tbW9uLmggYi9zZXJ2ZXIvcmVkLWNvbW1v
bi5oCmluZGV4IDZiNWQwYjJlMC4uMDNlZmJkYWNiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLWNv
bW1vbi5oCisrKyBiL3NlcnZlci9yZWQtY29tbW9uLmgKQEAgLTc5LDYgKzc5LDEwIEBAIHR5cGVk
ZWYgc3RydWN0IEdMaXN0SXRlciB7CiAgICAgR0xpc3QgKm5leHQ7CiB9IEdMaXN0SXRlcjsKIAor
LyogSXRlcmF0ZSB0aG91Z3RoIGEgR0xpc3QuIE5vdGUgdGhhdCB0aGUgaXRlcmF0aW9uIGlzICJz
YWZlIiBtZWFuaW5nIHRoYXQgdGhlCisgKiBjdXJyZW50IGl0ZW0gY2FuIGJlIHJlbW92ZWQgd2hp
bGUgdGhlIGxpc3QgaXMgc2Nhbm5lZC4gVGhpcyBpcyByZXF1aXJlZCBhcworICogdGhlIGNvZGUg
aW5zaWRlIHRoZSBsb29wIGluIHNvbWUgY2FzZXMgY2FuIHJlbW92ZSB0aGUgZWxlbWVudCB3ZSBh
cmUKKyAqIHByb2Nlc3NpbmcgKi8KICNkZWZpbmUgR0xJU1RfRk9SRUFDSF9HRU5FUklDKF9saXN0
LCBfaXRlciwgX3R5cGUsIF9kYXRhLCBfZGlyKSBcCiAgICAgZm9yIChHTGlzdEl0ZXIgX2l0ZXIg
PSB7IC5saW5rID0gX2xpc3QgfTsgXAogICAgICAgICAoX2RhdGEgPSAoX3R5cGUgKikgKF9pdGVy
LmxpbmsgPyBfaXRlci5saW5rLT5kYXRhIDogTlVMTCksIFwKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
