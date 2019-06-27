Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83F457EEC
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E839B6E838;
	Thu, 27 Jun 2019 09:05:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD306E823
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:05:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A75183002729
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:05:31 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB49B600CC;
 Thu, 27 Jun 2019 09:05:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 10:05:26 +0100
Message-Id: <20190627090527.7748-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 27 Jun 2019 09:05:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] display-channel: Initialise
 variable as soon as possible
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

QXZvaWRzIHRvIGhhdmUgbm90IGluaXRpYWxpc2VkIHZhcmlhYmxlcyBiZWZvcmUgY29uc3RydWN0
ZWQgaXMgY2FsbGVkLgpUaGlzIGF2b2lkIHBvdGVudGlhbGx5IG1lbW9yeSBlcnJvcnMgd2hpbGUg
c2V0dGluZyBwcm9wZXJ0aWVzLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jIHwgMTAgKysrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFu
bmVsLmMKaW5kZXggN2RkZDQ0YzE0Li5mOTlmZDhmYWYgMTAwNjQ0Ci0tLSBhL3NlcnZlci9kaXNw
bGF5LWNoYW5uZWwuYworKysgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKQEAgLTIyNzcsMTIg
KzIyNzcsMTcgQEAgZGlzcGxheV9jaGFubmVsX2luaXQoRGlzcGxheUNoYW5uZWwgKnNlbGYpCiAg
ICAgc2VsZi0+cHJpdiA9IGdfbmV3MChEaXNwbGF5Q2hhbm5lbFByaXZhdGUsIDEpOwogICAgIHNl
bGYtPnByaXYtPmltYWdlX2NvbXByZXNzaW9uID0gU1BJQ0VfSU1BR0VfQ09NUFJFU1NJT05fQVVU
T19HTFo7CiAgICAgc2VsZi0+cHJpdi0+cHViID0gc2VsZjsKKyAgICBzZWxmLT5wcml2LT5yZW5k
ZXJlciA9IFJFRF9SRU5ERVJFUl9JTlZBTElEOworICAgIHNlbGYtPnByaXYtPnN0cmVhbV92aWRl
byA9IFNQSUNFX1NUUkVBTV9WSURFT19PRkY7CiAKICAgICBpbWFnZV9lbmNvZGVyX3NoYXJlZF9p
bml0KCZzZWxmLT5wcml2LT5lbmNvZGVyX3NoYXJlZF9kYXRhKTsKIAogICAgIHJpbmdfaW5pdCgm
c2VsZi0+cHJpdi0+Y3VycmVudF9saXN0KTsKICAgICBkcmF3YWJsZXNfaW5pdChzZWxmKTsKICAg
ICBzZWxmLT5wcml2LT5pbWFnZV9zdXJmYWNlcy5vcHMgPSAmaW1hZ2Vfc3VyZmFjZXNfb3BzOwor
CisgICAgaW1hZ2VfY2FjaGVfaW5pdCgmc2VsZi0+cHJpdi0+aW1hZ2VfY2FjaGUpOworICAgIGRp
c3BsYXlfY2hhbm5lbF9pbml0X3ZpZGVvX3N0cmVhbXMoc2VsZik7CiB9CiAKIHN0YXRpYyB2b2lk
CkBAIC0yMjk1LDggKzIzMDAsNiBAQCBkaXNwbGF5X2NoYW5uZWxfY29uc3RydWN0ZWQoR09iamVj
dCAqb2JqZWN0KQogCiAgICAgc3BpY2VfYXNzZXJ0KHNlbGYtPnByaXYtPnZpZGVvX2NvZGVjcyk7
CiAKLSAgICBzZWxmLT5wcml2LT5yZW5kZXJlciA9IFJFRF9SRU5ERVJFUl9JTlZBTElEOwotCiAg
ICAgc3RhdF9pbml0KCZzZWxmLT5wcml2LT5hZGRfc3RhdCwgImFkZCIsIENMT0NLX1RIUkVBRF9D
UFVUSU1FX0lEKTsKICAgICBzdGF0X2luaXQoJnNlbGYtPnByaXYtPmV4Y2x1ZGVfc3RhdCwgImV4
Y2x1ZGUiLCBDTE9DS19USFJFQURfQ1BVVElNRV9JRCk7CiAgICAgc3RhdF9pbml0KCZzZWxmLT5w
cml2LT5fX2V4Y2x1ZGVfc3RhdCwgIl9fZXhjbHVkZSIsIENMT0NLX1RIUkVBRF9DUFVUSU1FX0lE
KTsKQEAgLTIzMDgsOSArMjMxMSw2IEBAIGRpc3BsYXlfY2hhbm5lbF9jb25zdHJ1Y3RlZChHT2Jq
ZWN0ICpvYmplY3QpCiAgICAgICAgICAgICAgICAgICAgICAgImFkZF90b19jYWNoZSIsIFRSVUUp
OwogICAgIHN0YXRfaW5pdF9jb3VudGVyKCZzZWxmLT5wcml2LT5ub25fY2FjaGVfY291bnRlciwg
cmVkcywgc3RhdCwKICAgICAgICAgICAgICAgICAgICAgICAibm9uX2NhY2hlIiwgVFJVRSk7Ci0g
ICAgaW1hZ2VfY2FjaGVfaW5pdCgmc2VsZi0+cHJpdi0+aW1hZ2VfY2FjaGUpOwotICAgIHNlbGYt
PnByaXYtPnN0cmVhbV92aWRlbyA9IFNQSUNFX1NUUkVBTV9WSURFT19PRkY7Ci0gICAgZGlzcGxh
eV9jaGFubmVsX2luaXRfdmlkZW9fc3RyZWFtcyhzZWxmKTsKIAogICAgIHJlZF9jaGFubmVsX3Nl
dF9jYXAoY2hhbm5lbCwgU1BJQ0VfRElTUExBWV9DQVBfTU9OSVRPUlNfQ09ORklHKTsKICAgICBy
ZWRfY2hhbm5lbF9zZXRfY2FwKGNoYW5uZWwsIFNQSUNFX0RJU1BMQVlfQ0FQX1BSRUZfQ09NUFJF
U1NJT04pOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
