Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C97A8203
	for <lists+spice-devel@lfdr.de>; Wed,  4 Sep 2019 14:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A8F898BF;
	Wed,  4 Sep 2019 12:20:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56CA89857
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 91F1F3071D50
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:43 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B2E41001944
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:42 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:20:40 +0200
Message-Id: <20190904122041.23408-2-victortoso@redhat.com>
In-Reply-To: <20190904122041.23408-1-victortoso@redhat.com>
References: <20190904122041.23408-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 04 Sep 2019 12:20:43 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 2/3] main: migration: check return
 value to count channels
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQWx0aG91Z2ggc3BpY2VfY2hh
bm5lbF9jb25uZWN0KCkgd29ya3MgaW4gaWRsZSwgaWYgaXQgcmV0dXJucyBmYWxzZQppdCdsbCBu
b3QgZW1pdCBhbnkgc2lnbmFsIGZ1cnRoZXIgYW5kIHdlIHdvdWxkIGJlIGNvdW50aW5nIGEKJ2Nv
bm5lY3RlZCcgY2hhbm5lbCB0aGF0IHdvdWxkbid0IGJlIGVtaXR0aW5nIGFueXRoaW5nLgoKQXMg
b3RoZXIgY2FsbGJhY2tzIHRha2UgdGhpcyBpbiBjb25zaWRlcmF0aW9uLCB3ZSBzaG91bGQgb25s
eQppbmNyZW1lbnQgdGhlIGNvdW50ZXIgaWYgd2UgcmVhY2hlZCBzcGljZS1jaGFubmVsOjpjb25u
ZWN0X2RlbGF5ZWQoKQpjYWxsYmFjay4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0
b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtbWFpbi5jIHwgNSArKystLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9zcmMvY2hhbm5lbC1tYWluLmMgYi9zcmMvY2hhbm5lbC1tYWluLmMKaW5kZXggYTFlNTQ5OC4u
M2QxYjFiNSAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtbWFpbi5jCisrKyBiL3NyYy9jaGFubmVs
LW1haW4uYwpAQCAtMjE3NCw4ICsyMTc0LDkgQEAgbWlncmF0ZV9jaGFubmVsX2Nvbm5lY3Qoc3Bp
Y2VfbWlncmF0ZSAqbWlnLCBpbnQgdHlwZSwgaW50IGlkKQogICAgIFNQSUNFX0RFQlVHKCJtaWdy
YXRlX2NoYW5uZWxfY29ubmVjdCAlZDolZCIsIHR5cGUsIGlkKTsKIAogICAgIFNwaWNlQ2hhbm5l
bCAqbmV3YyA9IHNwaWNlX2NoYW5uZWxfbmV3KG1pZy0+c2Vzc2lvbiwgdHlwZSwgaWQpOwotICAg
IHNwaWNlX2NoYW5uZWxfY29ubmVjdChuZXdjKTsKLSAgICBtaWctPm5jaGFubmVscysrOworICAg
IGlmIChuZXdjICE9IE5VTEwgJiYgc3BpY2VfY2hhbm5lbF9jb25uZWN0KG5ld2MpKSB7CisgICAg
ICAgIG1pZy0+bmNoYW5uZWxzKys7CisgICAgfQogfQogCiAvKiBjb3JvdXRpbmUgY29udGV4dCAq
LwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
