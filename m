Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF4EBC49A
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 11:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72EA89B33;
	Tue, 24 Sep 2019 09:15:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4477189B55
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DF19088309
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 648D15D9D5
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 11:14:59 +0200
Message-Id: <20190924091502.16038-4-victortoso@redhat.com>
In-Reply-To: <20190924091502.16038-1-victortoso@redhat.com>
References: <20190924091502.16038-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 3/6] usbredir: use g_object_get() for
 socket access
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW5zdGVhZCBvZiBhY2Nlc3Np
bmcgUHJpdmF0ZSBvZiBTcGljZUNoYW5uZWwuCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8
dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCA5ICsr
KysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3JjL2NoYW5uZWwtdXNicmVk
aXIuYwppbmRleCBlNDA3YmFjLi5mZWQ5YmQ0IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11c2Jy
ZWRpci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTUxMSw3ICs1MTEsNiBAQCBz
dGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX3dyaXRlX2NiX2RhdGEodWludDhfdCAqZGF0YSwgdm9p
ZCAqdXNlcl9kYXRhKQogI2lmZGVmIFVTRV9MWjQKIHN0YXRpYyBpbnQgdHJ5X3dyaXRlX2NvbXBy
ZXNzX0xaNChTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCwgdWludDhfdCAqZGF0YSwgaW50
IGNvdW50KQogewotICAgIFNwaWNlQ2hhbm5lbFByaXZhdGUgKmM7CiAgICAgU3BpY2VNc2dPdXQg
Km1zZ19vdXRfY29tcHJlc3NlZDsKICAgICBpbnQgYm91bmQsIGNvbXByZXNzZWRfZGF0YV9jb3Vu
dDsKICAgICB1aW50OF90ICpjb21wcmVzc2VkX2J1ZjsKQEAgLTUyMCwxMSArNTE5LDE1IEBAIHN0
YXRpYyBpbnQgdHJ5X3dyaXRlX2NvbXByZXNzX0xaNChTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hh
bm5lbCwgdWludDhfdCAqZGF0YSwKICAgICAgICAgLnVuY29tcHJlc3NlZF9zaXplID0gY291bnQK
ICAgICB9OwogCi0gICAgYyA9IFNQSUNFX0NIQU5ORUwoY2hhbm5lbCktPnByaXY7Ci0gICAgaWYg
KGdfc29ja2V0X2dldF9mYW1pbHkoYy0+c29jaykgPT0gR19TT0NLRVRfRkFNSUxZX1VOSVgpIHsK
KyAgICBHU29ja2V0ICpzb2NrOworICAgIGdfb2JqZWN0X2dldChjaGFubmVsLCAic29ja2V0Iiwg
JnNvY2ssIE5VTEwpOworICAgIGlmIChnX3NvY2tldF9nZXRfZmFtaWx5KHNvY2spID09IEdfU09D
S0VUX0ZBTUlMWV9VTklYKSB7CisgICAgICAgIGdfb2JqZWN0X3VucmVmKHNvY2spOwogICAgICAg
ICAvKiBBRl9MT0NBTCBzb2NrZXQgLSBkYXRhIHdpbGwgbm90IGJlIGNvbXByZXNzZWQgKi8KICAg
ICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KKyAgICBnX29iamVjdF91bnJlZihzb2NrKTsKKwog
ICAgIGlmIChjb3VudCA8PSBDT01QUkVTU19USFJFU0hPTEQpIHsKICAgICAgICAgLyogTm90IGVu
b3VnaCBkYXRhIHRvIGNvbXByZXNzICovCiAgICAgICAgIHJldHVybiBGQUxTRTsKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
