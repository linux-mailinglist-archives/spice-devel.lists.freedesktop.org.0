Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9084A15FDD
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 10:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE0789D84;
	Tue,  7 May 2019 08:56:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE0A89D84
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8899888305
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:09 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11644614DB
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:08 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 08:56:04 +0000
Message-Id: <20190507085605.10054-4-victortoso@redhat.com>
In-Reply-To: <20190507085605.10054-1-victortoso@redhat.com>
References: <20190507085605.10054-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 07 May 2019 08:56:09 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 3/4] channel-usbredir: use mutex on
 polkit code path
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKRXhwbGFuYXRpb24gb24gdGhp
cyBtdXRleCBpbiBjb21taXQgNGVlYTVmMyBpbiAyMDE2LTAzLTI0IGJ5IEtpcmlsbApNb2l6aWsg
PGttb2l6aWtAcmVkaGF0LmNvbT4uIFRoaXMgaXMgbWlzc2luZyBpbiB0aGUgcG9sa2l0IGNvZGUg
cGF0aAphbmQgaXRzIHRoZSBtYWpvciBkaWZmZXJlbmNlIHdpdGggX29wZW5fZGV2aWNlX2FzeW5j
X2NiKCkgY2FsbGJhY2suCgpOZXh0IHBhdGNoIHdpbGwgcmVtb3ZlIF9vcGVuX2RldmljZV9hc3lu
Y19jYigpIHRvIGtlZXAgY29kZSBwYXRoIGZvcgphY2Nlc3MgY29udHJvbCBtYW5kYXRvcnkgdGhl
cmUgc28gYWRkIHRoaXMgbG9jay91bmxvY2sgbm93IHdpdGggc29tZQpjb250ZXh0IG9uIHdoeS4K
ClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQog
c3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3JjL2NoYW5uZWwt
dXNicmVkaXIuYwppbmRleCAxOTEwZmY2Li41MjE0MTYwIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5l
bC11c2JyZWRpci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTMzOCw3ICszMzgs
OSBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiKAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJVU0IgcmVkaXJlY3Rpb24gY2hhbm5lbCBj
b25uZWN0IGNhbmNlbGxlZCIpOwogICAgIH0KICAgICBpZiAoIWVycikgeworICAgICAgICBzcGlj
ZV91c2JyZWRpcl9jaGFubmVsX2xvY2soY2hhbm5lbCk7CiAgICAgICAgIHNwaWNlX3VzYnJlZGly
X2NoYW5uZWxfb3Blbl9kZXZpY2UoY2hhbm5lbCwgJmVycik7CisgICAgICAgIHNwaWNlX3VzYnJl
ZGlyX2NoYW5uZWxfdW5sb2NrKGNoYW5uZWwpOwogICAgIH0KICAgICBpZiAoZXJyKSB7CiAgICAg
ICAgIGxpYnVzYl91bnJlZl9kZXZpY2UocHJpdi0+ZGV2aWNlKTsKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
