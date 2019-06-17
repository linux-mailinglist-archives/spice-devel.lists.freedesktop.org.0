Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A19BD491A4
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 22:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43A36E0AC;
	Mon, 17 Jun 2019 20:46:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737D26E090
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E49FB2DD2
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:44 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-54.brq.redhat.com
 [10.40.204.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 542D890AC;
 Mon, 17 Jun 2019 20:46:41 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 22:46:30 +0200
Message-Id: <20190617204630.22420-5-jjanku@redhat.com>
In-Reply-To: <20190617204630.22420-1-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 17 Jun 2019 20:46:44 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 5/5] webdav: don't warn on cancel
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
YyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwt
d2ViZGF2LmMKaW5kZXggMzRkODhhOS4uN2JlYzJhMCAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwt
d2ViZGF2LmMKKysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKQEAgLTQwOSw3ICs0MDksOCBAQCBz
dGF0aWMgdm9pZCBkYXRhX3JlYWRfY2IoR09iamVjdCAqc291cmNlX29iamVjdCwKIAogICAgIHNp
emUgPSBzcGljZV92bWNfaW5wdXRfc3RyZWFtX3JlYWRfYWxsX2ZpbmlzaChHX0lOUFVUX1NUUkVB
TShzb3VyY2Vfb2JqZWN0KSwgcmVzLCAmZXJyb3IpOwogICAgIGlmIChlcnJvcikgewotICAgICAg
ICBnX3dhcm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKKyAgICAgICAgaWYgKCFn
X2Vycm9yX21hdGNoZXMoZXJyb3IsIEdfSU9fRVJST1IsIEdfSU9fRVJST1JfQ0FOQ0VMTEVEKSkK
KyAgICAgICAgICAgIGdfd2FybmluZygiZXJyb3I6ICVzIiwgZXJyb3ItPm1lc3NhZ2UpOwogICAg
ICAgICBnX2NsZWFyX2Vycm9yKCZlcnJvcik7CiAgICAgICAgIHJldHVybjsKICAgICB9CkBAIC00
NTMsNyArNDU0LDggQEAgc3RhdGljIHZvaWQgc2l6ZV9yZWFkX2NiKEdPYmplY3QgKnNvdXJjZV9v
YmplY3QsCiAKIGVuZDoKICAgICBpZiAoZXJyb3IpIHsKLSAgICAgICAgZ193YXJuaW5nKCJlcnJv
cjogJXMiLCBlcnJvci0+bWVzc2FnZSk7CisgICAgICAgIGlmICghZ19lcnJvcl9tYXRjaGVzKGVy
cm9yLCBHX0lPX0VSUk9SLCBHX0lPX0VSUk9SX0NBTkNFTExFRCkpCisgICAgICAgICAgICBnX3dh
cm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKICAgICAgICAgZ19jbGVhcl9lcnJv
cigmZXJyb3IpOwogICAgIH0KIH0KQEAgLTQ4MCw3ICs0ODIsOCBAQCBzdGF0aWMgdm9pZCBjbGll
bnRfcmVhZF9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAogCiBlbmQ6CiAgICAgaWYgKGVycm9y
KSB7Ci0gICAgICAgIGdfd2FybmluZygiZXJyb3I6ICVzIiwgZXJyb3ItPm1lc3NhZ2UpOworICAg
ICAgICBpZiAoIWdfZXJyb3JfbWF0Y2hlcyhlcnJvciwgR19JT19FUlJPUiwgR19JT19FUlJPUl9D
QU5DRUxMRUQpKQorICAgICAgICAgICAgZ193YXJuaW5nKCJlcnJvcjogJXMiLCBlcnJvci0+bWVz
c2FnZSk7CiAgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycm9yKTsKICAgICB9CiB9Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
