Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1862C669B1
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF606E32C;
	Fri, 12 Jul 2019 09:12:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D146E329
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9AC77B2DCE
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:47 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 247C01001DDE
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:40 +0200
Message-Id: <20190712091242.13214-6-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 12 Jul 2019 09:12:47 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 5/7] coverity: allow pass by value
 with XEvent
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdmRhZ2VudC94MTEtcmFu
ZHIuYyB8IDQgKystLQogc3JjL3ZkYWdlbnQveDExLmMgICAgICAgfCAxICsKIDIgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy92
ZGFnZW50L3gxMS1yYW5kci5jIGIvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKaW5kZXggZDAwMGUy
OC4uOTI0ZjVlYyAxMDA2NDQKLS0tIGEvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKKysrIGIvc3Jj
L3ZkYWdlbnQveDExLXJhbmRyLmMKQEAgLTUyOCw4ICs1MjgsOCBAQCB2b2lkIHZkYWdlbnRfeDEx
X3JhbmRyX2hhbmRsZV9yb290X3NpemVfY2hhbmdlKHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAog
ICAgIH0KIH0KIAotaW50IHZkYWdlbnRfeDExX3JhbmRyX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRh
Z2VudF94MTEgKngxMSwKLSAgICBYRXZlbnQgZXZlbnQpCisvKiBjb3Zlcml0eVtwYXNzX2J5X3Zh
bHVlXSAqLworaW50IHZkYWdlbnRfeDExX3JhbmRyX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRhZ2Vu
dF94MTEgKngxMSwgWEV2ZW50IGV2ZW50KQogewogICAgIGludCBoYW5kbGVkID0gVFJVRTsKIApk
aWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnQveDExLmMgYi9zcmMvdmRhZ2VudC94MTEuYwppbmRleCBj
MjUxNWE4Li45MGQwOGExIDEwMDY0NAotLS0gYS9zcmMvdmRhZ2VudC94MTEuYworKysgYi9zcmMv
dmRhZ2VudC94MTEuYwpAQCAtNDk0LDYgKzQ5NCw3IEBAIHN0YXRpYyBpbnQgdmRhZ2VudF94MTFf
Z2V0X2NsaXBib2FyZF9zZWxlY3Rpb24oc3RydWN0IHZkYWdlbnRfeDExICp4MTEsCiB9CiAjZW5k
aWYKIAorLyogY292ZXJpdHlbcGFzc19ieV92YWx1ZV0gKi8KIHN0YXRpYyB2b2lkIHZkYWdlbnRf
eDExX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwgWEV2ZW50IGV2ZW50KQog
ewogICAgIGludCBpLCBoYW5kbGVkID0gMDsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
