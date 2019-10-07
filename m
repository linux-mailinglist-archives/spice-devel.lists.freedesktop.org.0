Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83743CDF79
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2ED6E52E;
	Mon,  7 Oct 2019 10:39:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3033B6E52E
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF3775945E
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D1C795D6D0;
 Mon,  7 Oct 2019 10:39:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:06 +0100
Message-Id: <20191007103906.30517-9-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 07 Oct 2019 10:39:26 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 8/8] red-channel-client: Use
 SpiceMsgcAckSync structure
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

cmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdlIGlzIGNhbGxlZCBhZnRlciBwYXJzaW5n
IHRoZQptZXNzYWdlIHNvIGl0J3Mgbm90IG5lY2Vzc2FyeSB0byBjaGVjayBpdCBhZ2FpbiBvciBw
YXJzZSBtYW51YWxseS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgotLS0KIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Nl
cnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyBiL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwpp
bmRleCA4MzJiNDE3NS4uYzNhZDY4MTggMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1j
bGllbnQuYworKysgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKQEAgLTE0NjQsNyArMTQ2
NCw3IEBAIGJvb2wgcmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdlKFJlZENoYW5uZWxD
bGllbnQgKnJjYywgdWludDE2X3QgdHlwZSwKIHsKICAgICBzd2l0Y2ggKHR5cGUpIHsKICAgICBj
YXNlIFNQSUNFX01TR0NfQUNLX1NZTkM6Ci0gICAgICAgIHJjYy0+cHJpdi0+YWNrX2RhdGEuY2xp
ZW50X2dlbmVyYXRpb24gPSAqKHVpbnQzMl90ICopKG1lc3NhZ2UpOworICAgICAgICByY2MtPnBy
aXYtPmFja19kYXRhLmNsaWVudF9nZW5lcmF0aW9uID0gKChTcGljZU1zZ2NBY2tTeW5jICopIG1l
c3NhZ2UpLT5nZW5lcmF0aW9uOwogICAgICAgICBicmVhazsKICAgICBjYXNlIFNQSUNFX01TR0Nf
QUNLOgogICAgICAgICBpZiAocmNjLT5wcml2LT5hY2tfZGF0YS5jbGllbnRfZ2VuZXJhdGlvbiA9
PSByY2MtPnByaXYtPmFja19kYXRhLmdlbmVyYXRpb24pIHsKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
