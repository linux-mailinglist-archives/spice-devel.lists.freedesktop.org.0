Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAB8669B0
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D79C6E32A;
	Fri, 12 Jul 2019 09:12:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E2E6E329
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D4357C05D419
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C7C7101E666
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:39 +0200
Message-Id: <20190712091242.13214-5-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 4/7] x11-randr: use glib's MAX and
 MIN
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2luY2UgMjg2MTg2OCAicmFu
ZHI6IHJlbW92ZSBtb25pdG9ycy54bWwgb24gYXV0by1jb25maWd1cmF0aW9uIiBpbgoyMDE1LTA0
LTEwIGJ5IE1hcmMtQW5kcmUgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+IHRo
aXMKZmlsZSBpbmNsdWRlcyBnbGliLmggYW5kIGNhbiByZW1vdmUgdGhvc2UgaGVscGVycy4KClNp
Z25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3ZkYWdlbnQveDExLXJhbmRyLmMgfCAxOCArKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy92
ZGFnZW50L3gxMS1yYW5kci5jIGIvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKaW5kZXggODg4NTdj
OC4uZDAwMGUyOCAxMDA2NDQKLS0tIGEvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKKysrIGIvc3Jj
L3ZkYWdlbnQveDExLXJhbmRyLmMKQEAgLTU1NSwxNiArNTU1LDYgQEAgaW50IHZkYWdlbnRfeDEx
X3JhbmRyX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKICAgICByZXR1cm4g
aGFuZGxlZDsKIH0KIAotc3RhdGljIGludCBtaW5faW50KGludCB4LCBpbnQgeSkKLXsKLSAgICBy
ZXR1cm4geCA+IHkgPyB5IDogeDsKLX0KLQotc3RhdGljIGludCBtYXhfaW50KGludCB4LCBpbnQg
eSkKLXsKLSAgICByZXR1cm4geCA+IHkgPyB4IDogeTsKLX0KLQogc3RhdGljIGludCBjb25zdHJh
aW5fdG9fcmFuZ2UoaW50IGxvdywgaW50ICp2YWwsIGludCBoaWdoKQogewogICAgIGlmIChsb3cg
PD0gKnZhbCAmJiAqdmFsIDw9IGhpZ2gpIHsKQEAgLTYzMSwxMCArNjIxLDEwIEBAIHN0YXRpYyB2
b2lkIHplcm9fYmFzZV9tb25pdG9ycyhzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKICAgICAgICAg
bW9uX3dpZHRoID0gKGludCAqKSZtb25fY29uZmlnLT5tb25pdG9yc1tpXS53aWR0aDsKICAgICAg
ICAgbW9uX2hlaWdodCA9IChpbnQgKikmbW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0uaGVpZ2h0Owog
ICAgICAgICBjb25zdHJhaW5fdG9fc2NyZWVuKHgxMSwgbW9uX3dpZHRoLCBtb25faGVpZ2h0KTsK
LSAgICAgICAgbWluX3ggPSBtaW5faW50KG1vbl9jb25maWctPm1vbml0b3JzW2ldLngsIG1pbl94
KTsKLSAgICAgICAgbWluX3kgPSBtaW5faW50KG1vbl9jb25maWctPm1vbml0b3JzW2ldLnksIG1p
bl95KTsKLSAgICAgICAgbWF4X3ggPSBtYXhfaW50KG1vbl9jb25maWctPm1vbml0b3JzW2ldLngg
KyAqbW9uX3dpZHRoLCBtYXhfeCk7Ci0gICAgICAgIG1heF95ID0gbWF4X2ludChtb25fY29uZmln
LT5tb25pdG9yc1tpXS55ICsgKm1vbl9oZWlnaHQsIG1heF95KTsKKyAgICAgICAgbWluX3ggPSBN
SU4obW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ueCwgbWluX3gpOworICAgICAgICBtaW5feSA9IE1J
Tihtb25fY29uZmlnLT5tb25pdG9yc1tpXS55LCBtaW5feSk7CisgICAgICAgIG1heF94ID0gTUFY
KG1vbl9jb25maWctPm1vbml0b3JzW2ldLnggKyAqbW9uX3dpZHRoLCBtYXhfeCk7CisgICAgICAg
IG1heF95ID0gTUFYKG1vbl9jb25maWctPm1vbml0b3JzW2ldLnkgKyAqbW9uX2hlaWdodCwgbWF4
X3kpOwogICAgIH0KICAgICBpZiAobWluX3ggIT0gMCB8fCBtaW5feSAhPSAwKSB7CiAgICAgICAg
IHN5c2xvZyhMT0dfRVJSLCAiJXM6IGFnZW50IGNvbmZpZyAlZCwlZCByb290ZWQsIGFkanVzdGlu
ZyB0byAwLDAuIiwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
