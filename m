Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D34BD13
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 17:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BC16E3FB;
	Wed, 19 Jun 2019 15:38:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 409AE6E3FB
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C9503003C70
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:13 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-26.brq.redhat.com
 [10.40.204.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C06E05C22C;
 Wed, 19 Jun 2019 15:38:12 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 19 Jun 2019 17:37:50 +0200
Message-Id: <20190619153750.29921-5-jjanku@redhat.com>
In-Reply-To: <20190619153750.29921-1-jjanku@redhat.com>
References: <20190619153750.29921-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 19 Jun 2019 15:38:13 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 5/5] webdav: don't warn on cancel
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

VGhlIElPIG9wZXJhdGlvbiBpcyBjYW5jZWxsZWQgb24gY2hhbm5lbCBkaXNwb3NlCmFuZCBpdCBp
cyBub3QgYW4gZXJyb3IsIHNvIHNpbGVuY2UgdGhlIHdhcm5pbmdzLgoKU2lnbmVkLW9mZi1ieTog
SmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC13ZWJkYXYu
YyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC13ZWJkYXYuYyBiL3NyYy9jaGFu
bmVsLXdlYmRhdi5jCmluZGV4IGE4Y2RjYmMuLmY1YTM4YWQgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFu
bmVsLXdlYmRhdi5jCisrKyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCkBAIC00MDksNyArNDA5LDkg
QEAgc3RhdGljIHZvaWQgZGF0YV9yZWFkX2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3QsCiAKICAg
ICBzaXplID0gc3BpY2Vfdm1jX2lucHV0X3N0cmVhbV9yZWFkX2FsbF9maW5pc2goR19JTlBVVF9T
VFJFQU0oc291cmNlX29iamVjdCksIHJlcywgJmVycm9yKTsKICAgICBpZiAoZXJyb3IpIHsKLSAg
ICAgICAgZ193YXJuaW5nKCJlcnJvcjogJXMiLCBlcnJvci0+bWVzc2FnZSk7CisgICAgICAgIGlm
ICghZ19lcnJvcl9tYXRjaGVzKGVycm9yLCBHX0lPX0VSUk9SLCBHX0lPX0VSUk9SX0NBTkNFTExF
RCkpIHsKKyAgICAgICAgICAgIGdfd2FybmluZygiZXJyb3I6ICVzIiwgZXJyb3ItPm1lc3NhZ2Up
OworICAgICAgICB9CiAgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycm9yKTsKICAgICAgICAgcmV0
dXJuOwogICAgIH0KQEAgLTQ1Myw3ICs0NTUsOSBAQCBzdGF0aWMgdm9pZCBzaXplX3JlYWRfY2Io
R09iamVjdCAqc291cmNlX29iamVjdCwKIAogZW5kOgogICAgIGlmIChlcnJvcikgewotICAgICAg
ICBnX3dhcm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKKyAgICAgICAgaWYgKCFn
X2Vycm9yX21hdGNoZXMoZXJyb3IsIEdfSU9fRVJST1IsIEdfSU9fRVJST1JfQ0FOQ0VMTEVEKSkg
eworICAgICAgICAgICAgZ193YXJuaW5nKCJlcnJvcjogJXMiLCBlcnJvci0+bWVzc2FnZSk7Cisg
ICAgICAgIH0KICAgICAgICAgZ19jbGVhcl9lcnJvcigmZXJyb3IpOwogICAgIH0KIH0KQEAgLTQ4
MCw3ICs0ODQsOSBAQCBzdGF0aWMgdm9pZCBjbGllbnRfcmVhZF9jYihHT2JqZWN0ICpzb3VyY2Vf
b2JqZWN0LAogCiBlbmQ6CiAgICAgaWYgKGVycm9yKSB7Ci0gICAgICAgIGdfd2FybmluZygiZXJy
b3I6ICVzIiwgZXJyb3ItPm1lc3NhZ2UpOworICAgICAgICBpZiAoIWdfZXJyb3JfbWF0Y2hlcyhl
cnJvciwgR19JT19FUlJPUiwgR19JT19FUlJPUl9DQU5DRUxMRUQpKSB7CisgICAgICAgICAgICBn
X3dhcm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKKyAgICAgICAgfQogICAgICAg
ICBnX2NsZWFyX2Vycm9yKCZlcnJvcik7CiAgICAgfQogfQotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
