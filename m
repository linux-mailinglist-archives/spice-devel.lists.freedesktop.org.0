Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F926CFB0
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F59A6E3DD;
	Thu, 18 Jul 2019 14:30:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F876E3DD
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:30:47 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1ho7R7-0007Po-1V
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 09:31:10 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 09:30:43 -0500
Message-Id: <20190718143043.16204-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e1XqaplxkbnJLshepwbvVU00mN0p07j59nuQTfTJLL8=; b=DHYIj1qQVTls77mtTJ//xDUXqO
 4vxt8Ro5n5QdGWRAaNYZhJu9x0Rx4i9PUr6bz4+UYSpLTQi9ol+Ez3FIc7HbqLhPWvxikIF25gECD
 SFGcUTGEPFAkBINAmjsUJCrT21zA9rByd1Prbo+Ur6VjB32ea7o3IvcUpyFH2XpAzdYY=;
Subject: [Spice-devel] [PATCH x11spice] Use C99 struct initializiers instead
 of memset for local structures.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9ndWkuYyAgICB8IDMgKy0tCiBzcmMvbGlzdGVuLmMgfCAzICstLQogc3JjL21haW4uYyAg
IHwgNCArLS0tCiBzcmMvc3BpY2UuYyAgfCAzICstLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2d1aS5jIGIvc3JjL2d1
aS5jCmluZGV4IDY3NDhmNjZlLi44OGFjZjVjOSAxMDA2NDQKLS0tIGEvc3JjL2d1aS5jCisrKyBi
L3NyYy9ndWkuYwpAQCAtMTQ3LDEwICsxNDcsOSBAQCB2b2lkIHNlc3Npb25fZGlzY29ubmVjdF9j
bGllbnQoc2Vzc2lvbl90ICpzZXNzaW9uKQogaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3Zb
XSkKIHsKICAgICBndWlfdCBndWk7Ci0gICAgc2Vzc2lvbl90IHNlc3Npb247CisgICAgc2Vzc2lv
bl90IHNlc3Npb24gPSB7IDAgfTsKIAogICAgIHNldGxvY2FsZShMQ19BTEwsICIiKTsKLSAgICBt
ZW1zZXQoJnNlc3Npb24sIDAsIHNpemVvZihzZXNzaW9uKSk7CiAgICAgZ3VpX2NyZWF0ZSgmZ3Vp
LCAmc2Vzc2lvbiwgYXJnYywgYXJndik7CiAgICAgZ3VpX3J1bigmZ3VpKTsKICAgICBndWlfZGVz
dHJveSgmZ3VpKTsKZGlmZiAtLWdpdCBhL3NyYy9saXN0ZW4uYyBiL3NyYy9saXN0ZW4uYwppbmRl
eCAxYmRkZjdlZC4uNDUyZmQ4MWYgMTAwNjQ0Ci0tLSBhL3NyYy9saXN0ZW4uYworKysgYi9zcmMv
bGlzdGVuLmMKQEAgLTExNywxMSArMTE3LDEwIEBAIGludCBsaXN0ZW5fcGFyc2UoY29uc3QgY2hh
ciAqbGlzdGVuX3NwZWMsIGNoYXIgKiphZGRyLCBpbnQgKnBvcnRfc3RhcnQsIGludCAqcG9yCiBz
dGF0aWMgaW50IHRyeV9wb3J0KGNvbnN0IGNoYXIgKmFkZHIsIGludCBwb3J0KQogewogICAgIHN0
YXRpYyBjb25zdCBpbnQgb24gPSAxLCBvZmYgPSAwOwotICAgIHN0cnVjdCBhZGRyaW5mbyBhaSwg
KnJlcywgKmU7CisgICAgc3RydWN0IGFkZHJpbmZvIGFpID0geyAwIH0sICpyZXMsICplOwogICAg
IGNoYXIgcG9ydGJ1ZlszM107CiAgICAgaW50IHNvY2ssIHJjOwogCi0gICAgbWVtc2V0KCZhaSwg
MCwgc2l6ZW9mKGFpKSk7CiAgICAgYWkuYWlfZmxhZ3MgPSBBSV9QQVNTSVZFIHwgQUlfQUREUkNP
TkZJRzsKICAgICBhaS5haV9zb2NrdHlwZSA9IFNPQ0tfU1RSRUFNOwogICAgIGFpLmFpX2ZhbWls
eSA9IDA7CmRpZmYgLS1naXQgYS9zcmMvbWFpbi5jIGIvc3JjL21haW4uYwppbmRleCA3ZjMyMWFm
OS4uZjE4MzExYzkgMTAwNjQ0Ci0tLSBhL3NyYy9tYWluLmMKKysrIGIvc3JjL21haW4uYwpAQCAt
NTUsNyArNTUsNyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogewogICAgIGlu
dCByYzsKIAotICAgIHNlc3Npb25fdCBzZXNzaW9uOworICAgIHNlc3Npb25fdCBzZXNzaW9uID0g
eyAwIH07CiAKICAgICBpbnQgZGlzcGxheV9vcGVuZWQgPSAwOwogICAgIGludCBzcGljZV9zdGFy
dGVkID0gMDsKQEAgLTYzLDggKzYzLDYgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3Zb
XSkKICAgICBpbnQgc2Vzc2lvbl9jcmVhdGVkID0gMDsKICAgICBpbnQgc2Vzc2lvbl9zdGFydGVk
ID0gMDsKIAotICAgIG1lbXNldCgmc2Vzc2lvbiwgMCwgc2l6ZW9mKHNlc3Npb24pKTsKLQogICAg
IC8qLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgKiogIFBhcnNlIGFyZ3VtZW50cwogICAgICoqLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSovCmRpZmYgLS1naXQgYS9zcmMvc3BpY2UuYyBiL3NyYy9zcGljZS5jCmluZGV4IGQ5
NjY2NDQxLi40MzBkZjQwNSAxMDA2NDQKLS0tIGEvc3JjL3NwaWNlLmMKKysrIGIvc3JjL3NwaWNl
LmMKQEAgLTQ3NCw5ICs0NzQsOCBAQCBzdGF0aWMgaW50IHNlbmRfbW9uaXRvcnNfY29uZmlnKHNw
aWNlX3QgKnMsIGludCB3LCBpbnQgaCkKIAogaW50IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KHNwaWNl
X3QgKnMsIGludCB3LCBpbnQgaCwgaW50IGJ5dGVzX3Blcl9saW5lLCB2b2lkICpzaG1hZGRyKQog
ewotICAgIFFYTERldlN1cmZhY2VDcmVhdGUgc3VyZmFjZTsKKyAgICBRWExEZXZTdXJmYWNlQ3Jl
YXRlIHN1cmZhY2UgPSB7IDAgfTsKIAotICAgIG1lbXNldCgmc3VyZmFjZSwgMCwgc2l6ZW9mKHN1
cmZhY2UpKTsKICAgICBzdXJmYWNlLmhlaWdodCA9IGg7CiAgICAgc3VyZmFjZS53aWR0aCA9IHc7
CiAKLS0gCjIuMTEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
