Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97326CFFFF
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 19:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61776E87E;
	Tue,  8 Oct 2019 17:39:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2D06E87E
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C4547EBC1
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:29 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A06A819C7F;
 Tue,  8 Oct 2019 17:39:28 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  8 Oct 2019 18:39:17 +0100
Message-Id: <20191008173924.12388-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 08 Oct 2019 17:39:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 0/7] Multiple improvements for
 Smartcard code
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

TXVsdGlwbGUgZml4ZXMgYW5kIGF1dG9tYXRpYyB0ZXN0IG9mIHRoZSBkZXZpY2UvY2hhbm5lbC4K
SW1wcm92ZSBwcmV2aW91cyBzZXJpZXMuCk1vc3QgZml4ZXMgY2FtZSBmcm9tIGF1dG9tYXRpYyB0
ZXN0LgoKRnJlZGlhbm8gWmlnbGlvICg3KToKICBzbWFydGNhcmQtY2hhbm5lbC1jbGllbnQ6IFJl
bW92ZSBwcm9wZXJ0aWVzIGNvZGUKICBzbWFydGNhcmQtY2hhbm5lbC1jbGllbnQ6IFVzZSBsb2cg
aW5zdGVhZCBvZiBwcmludGYKICBzbWFydGNhcmQ6IERvIG5vdCBjcmFzaCBpZiByZWFkZXJfaWQg
aXMgaW52YWxpZAogIHNtYXJ0Y2FyZDogRml4IHBhcnNpbmcgbXVsdGlwbGUgbWVzc2FnZXMgZnJv
bSB0aGUgZGV2aWNlCiAgdGVzdC1zdHJlYW0tZGV2aWNlOiBGYWN0b3Igb3V0IFZNQyBlbXVsYXRp
b24KICB0ZXN0LXNtYXJ0Y2FyZDogQWRkIHRlc3QgZm9yIFNtYXJ0Y2FyZCBkZXZpY2UKICB0ZXN0
LXNtYXJkY2FyZDogSW1wcm92ZSB0ZXN0IGNvdmVyYWdlCgogc2VydmVyL3NtYXJ0Y2FyZC1jaGFu
bmVsLWNsaWVudC5jIHwgIDI5ICstLQogc2VydmVyL3NtYXJ0Y2FyZC5jICAgICAgICAgICAgICAg
IHwgIDMxICsrLQogc2VydmVyL3Rlc3RzLy5naXRpZ25vcmUgICAgICAgICAgIHwgICAxICsKIHNl
cnZlci90ZXN0cy9NYWtlZmlsZS5hbSAgICAgICAgICB8ICAgNiArCiBzZXJ2ZXIvdGVzdHMvbWVz
b24uYnVpbGQgICAgICAgICAgfCAgIDYgKwogc2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMg
ICAgIHwgMzc4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogc2VydmVyL3Rlc3RzL3Rl
c3Qtc3RyZWFtLWRldmljZS5jIHwgMjI0ICsrKysrLS0tLS0tLS0tLS0tLQogc2VydmVyL3Rlc3Rz
L3ZtYy1lbXUuYyAgICAgICAgICAgIHwgMTI0ICsrKysrKysrKysKIHNlcnZlci90ZXN0cy92bWMt
ZW11LmggICAgICAgICAgICB8ICA1MSArKysrCiA5IGZpbGVzIGNoYW5nZWQsIDY1MiBpbnNlcnRp
b25zKCspLCAxOTggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3Rlc3Rz
L3Rlc3Qtc21hcnRjYXJkLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzZXJ2ZXIvdGVzdHMvdm1jLWVt
dS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3Rlc3RzL3ZtYy1lbXUuaAoKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
