Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E1DA8204
	for <lists+spice-devel@lfdr.de>; Wed,  4 Sep 2019 14:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E4F89A16;
	Wed,  4 Sep 2019 12:20:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB16889857
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 582D5C08E2B0
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:44 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D53A91001944
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:43 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:20:41 +0200
Message-Id: <20190904122041.23408-3-victortoso@redhat.com>
In-Reply-To: <20190904122041.23408-1-victortoso@redhat.com>
References: <20190904122041.23408-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 04 Sep 2019 12:20:44 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 3/3] main: code style on
 main_migrate_connect()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKMSkgTWFrZSBvbmUgYXJndW1l
bnQgcGVyIGxpbmUsIGluc3RlYWQgb2YgMSwgMiwgMQoyKSBVc2Ugc2Vzc2lvbiB2YXJpYWJsZSB0
aGF0IGFscmVhZHkgZXhpc3RzCjMpIERvbid0IGNhc3QgYWdhaW4gdG8gU3BpY2VDaGFubmVsCgpT
aWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNy
Yy9jaGFubmVsLW1haW4uYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtbWFpbi5jIGIv
c3JjL2NoYW5uZWwtbWFpbi5jCmluZGV4IDNkMWIxYjUuLjMzNGJlN2QgMTAwNjQ0Ci0tLSBhL3Ny
Yy9jaGFubmVsLW1haW4uYworKysgYi9zcmMvY2hhbm5lbC1tYWluLmMKQEAgLTIzMzcsNyArMjMz
Nyw4IEBAIHN0YXRpYyBnYm9vbGVhbiBtaWdyYXRlX2Nvbm5lY3QoZ3BvaW50ZXIgZGF0YSkKIAog
LyogY29yb3V0aW5lIGNvbnRleHQgKi8KIHN0YXRpYyB2b2lkIG1haW5fbWlncmF0ZV9jb25uZWN0
KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFNwaWNlTWlncmF0aW9uRHN0SW5mbyAqZHN0X2luZm8sIGJvb2wgZG9fc2VhbWxlc3MsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZU1pZ3JhdGlvbkRzdEluZm8gKmRzdF9p
bmZvLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBkb19zZWFtbGVzcywK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHNyY19taWdfdmVyc2lv
bikKIHsKICAgICBTcGljZU1haW5DaGFubmVsUHJpdmF0ZSAqbWFpbl9wcml2ID0gU1BJQ0VfTUFJ
Tl9DSEFOTkVMKGNoYW5uZWwpLT5wcml2OwpAQCAtMjM3OSwxMyArMjM4MCwxMiBAQCBzdGF0aWMg
dm9pZCBtYWluX21pZ3JhdGVfY29ubmVjdChTcGljZUNoYW5uZWwgKmNoYW5uZWwsCiAgICAgICAg
ICAgICBTUElDRV9ERUJVRygibWlncmF0aW9uIChzZW1pLXNlYW1sZXNzKTogY29ubmVjdGlvbnMg
YWxsIG9rIik7CiAgICAgICAgICAgICByZXBseV90eXBlID0gU1BJQ0VfTVNHQ19NQUlOX01JR1JB
VEVfQ09OTkVDVEVEOwogICAgICAgICB9Ci0gICAgICAgIHNwaWNlX3Nlc3Npb25fc3RhcnRfbWln
cmF0aW5nKHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oY2hhbm5lbCksCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIG1pZy5kb19zZWFtbGVzcyk7CisgICAgICAgIHNwaWNl
X3Nlc3Npb25fc3RhcnRfbWlncmF0aW5nKHNlc3Npb24sIG1pZy5kb19zZWFtbGVzcyk7CiAgICAg
fQogCiBlbmQ6CiAgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAibWlncmF0ZSBjb25uZWN0IHJl
cGx5ICVkIiwgcmVwbHlfdHlwZSk7Ci0gICAgb3V0ID0gc3BpY2VfbXNnX291dF9uZXcoU1BJQ0Vf
Q0hBTk5FTChjaGFubmVsKSwgcmVwbHlfdHlwZSk7CisgICAgb3V0ID0gc3BpY2VfbXNnX291dF9u
ZXcoY2hhbm5lbCwgcmVwbHlfdHlwZSk7CiAgICAgc3BpY2VfbXNnX291dF9zZW5kKG91dCk7CiB9
CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
