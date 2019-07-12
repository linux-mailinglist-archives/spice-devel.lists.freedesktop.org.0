Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0608669B3
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA556E32E;
	Fri, 12 Jul 2019 09:12:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F23D6E32C
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2B72030001D7
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:49 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A857410027CB
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:42 +0200
Message-Id: <20190712091242.13214-8-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 12 Jul 2019 09:12:49 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 7/7] vdagent: simple fix for
 address-of-packed-member
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2VlbXMgdG8gYmUgYSBmYWxz
ZSBwb3NpdGl2ZSBidXQgYXMgdGhpcyBtZXNzYWdlIG9ubHkgaGFwcGVucyB3aGVuIHVzZXIKY2xp
ZW50IGNvbm5lY3RzLCB3ZSBjYW4gY29weSB0aGlzIGFycmF5IHRvIG1ha2UgY29tcGlsaW5nIHdh
cm4gZnJlZS4KCiA+IHNyYy92ZGFnZW50L3ZkYWdlbnQuYzogSW4gZnVuY3Rpb24g4oCYZGFlbW9u
X3JlYWRfY29tcGxldGXigJk6CiA+IHNyYy92ZGFnZW50L3ZkYWdlbnQuYzoyMjY6NzE6IGVycm9y
OiB0YWtpbmcgYWRkcmVzcyBvZiBwYWNrZWQgbWVtYmVyIG9mCiA+ICAgICDigJhzdHJ1Y3QgVkRB
Z2VudEF1ZGlvVm9sdW1lU3luY+KAmSBtYXkgcmVzdWx0IGluIGFuIHVuYWxpZ25lZCBwb2ludGVy
CiA+ICAgICB2YWx1ZSBbLVdlcnJvcj1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXJdCiA+ICAgMjI2
IHwgICAgICAgICAgICAgdmRhZ2VudF9hdWRpb19wbGF5YmFja19zeW5jKGF2cy0+bXV0ZSwgYXZz
LT5uY2hhbm5lbHMsIGF2cy0+dm9sdW1lKTsKID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+Xn5+fn5+
fn4KID4gc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjIyODo2OTogZXJyb3I6IHRha2luZyBhZGRyZXNz
IG9mIHBhY2tlZCBtZW1iZXIgb2YKID4gICAgIOKAmHN0cnVjdCBWREFnZW50QXVkaW9Wb2x1bWVT
eW5j4oCZIG1heSByZXN1bHQgaW4gYW4gdW5hbGlnbmVkIHBvaW50ZXIKID4gICAgIHZhbHVlIFst
V2Vycm9yPWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlcl0KID4gICAyMjggfCAgICAgICAgICAgICB2
ZGFnZW50X2F1ZGlvX3JlY29yZF9zeW5jKGF2cy0+bXV0ZSwgYXZzLT5uY2hhbm5lbHMsIGF2cy0+
dm9sdW1lKTsKID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fl5+fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBW
aWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy92ZGFnZW50L3ZkYWdl
bnQuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC92ZGFnZW50LmMgYi9zcmMvdmRhZ2Vu
dC92ZGFnZW50LmMKaW5kZXggZDc5OWQxZi4uMGUyZTczZSAxMDA2NDQKLS0tIGEvc3JjL3ZkYWdl
bnQvdmRhZ2VudC5jCisrKyBiL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwpAQCAtMjIyLDExICsyMjIs
MTQgQEAgc3RhdGljIHZvaWQgZGFlbW9uX3JlYWRfY29tcGxldGUoc3RydWN0IHVkc2NzX2Nvbm5l
Y3Rpb24gKipjb25ucCwKICAgICAgICAgYnJlYWs7CiAgICAgY2FzZSBWREFHRU5URF9BVURJT19W
T0xVTUVfU1lOQzogewogICAgICAgICBWREFnZW50QXVkaW9Wb2x1bWVTeW5jICphdnMgPSAoVkRB
Z2VudEF1ZGlvVm9sdW1lU3luYyAqKWRhdGE7CisgICAgICAgIHVpbnQxNl90ICp2b2x1bWUgPSBn
X21lbWR1cChhdnMtPnZvbHVtZSwgc2l6ZW9mKHVpbnQxNl90KSAqIGF2cy0+bmNoYW5uZWxzKTsK
KwogICAgICAgICBpZiAoYXZzLT5pc19wbGF5YmFjaykgewotICAgICAgICAgICAgdmRhZ2VudF9h
dWRpb19wbGF5YmFja19zeW5jKGF2cy0+bXV0ZSwgYXZzLT5uY2hhbm5lbHMsIGF2cy0+dm9sdW1l
KTsKKyAgICAgICAgICAgIHZkYWdlbnRfYXVkaW9fcGxheWJhY2tfc3luYyhhdnMtPm11dGUsIGF2
cy0+bmNoYW5uZWxzLCB2b2x1bWUpOwogICAgICAgICB9IGVsc2UgewotICAgICAgICAgICAgdmRh
Z2VudF9hdWRpb19yZWNvcmRfc3luYyhhdnMtPm11dGUsIGF2cy0+bmNoYW5uZWxzLCBhdnMtPnZv
bHVtZSk7CisgICAgICAgICAgICB2ZGFnZW50X2F1ZGlvX3JlY29yZF9zeW5jKGF2cy0+bXV0ZSwg
YXZzLT5uY2hhbm5lbHMsIHZvbHVtZSk7CiAgICAgICAgIH0KKyAgICAgICAgZ19mcmVlKHZvbHVt
ZSk7CiAgICAgICAgIGJyZWFrOwogICAgIH0KICAgICBjYXNlIFZEQUdFTlREX0ZJTEVfWEZFUl9E
QVRBOgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
