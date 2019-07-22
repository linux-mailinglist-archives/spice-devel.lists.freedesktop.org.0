Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F056FEAC
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6BE89C52;
	Mon, 22 Jul 2019 11:26:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FA189C52
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:26:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7D3F630C62A4
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:26:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 04B7F5D704;
 Mon, 22 Jul 2019 11:26:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 12:26:00 +0100
Message-Id: <20190722112600.1338-2-fziglio@redhat.com>
In-Reply-To: <20190722112600.1338-1-fziglio@redhat.com>
References: <20190722112600.1338-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 22 Jul 2019 11:26:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/2] spice-widget-egl: Declare and
 initialise "tex" and "verts" shortly
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

SnVzdCBzeW50YXggY2hhbmdlLgpSZWR1Y2UgY29kZSB0byBpbml0aWFsaXNlIHRoZXNlIG1hdHJp
Y2VzLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogc3JjL3NwaWNlLXdpZGdldC1lZ2wuYyB8IDQwICsrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyNyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utd2lkZ2V0LWVnbC5jIGIvc3JjL3Nw
aWNlLXdpZGdldC1lZ2wuYwppbmRleCA3ZGI2NjA4Mi4uZjVlMjRhMDEgMTAwNjQ0Ci0tLSBhL3Ny
Yy9zcGljZS13aWRnZXQtZWdsLmMKKysrIGIvc3JjL3NwaWNlLXdpZGdldC1lZ2wuYwpAQCAtNDg5
LDMzICs0ODksMTkgQEAgY2xpZW50X2RyYXdfcmVjdF90ZXgoU3BpY2VEaXNwbGF5ICpkaXNwbGF5
LAogICAgICAgICAgICAgICAgICAgICAgZmxvYXQgeCwgZmxvYXQgeSwgZmxvYXQgdywgZmxvYXQg
aCwKICAgICAgICAgICAgICAgICAgICAgIGZsb2F0IHR4LCBmbG9hdCB0eSwgZmxvYXQgdHcsIGZs
b2F0IHRoKQogewotICAgIGZsb2F0IHZlcnRzWzRdWzRdOwotICAgIGZsb2F0IHRleFs0XVsyXTsK
LQotICAgIHZlcnRzWzBdWzBdID0geDsKLSAgICB2ZXJ0c1swXVsxXSA9IHk7Ci0gICAgdmVydHNb
MF1bMl0gPSAwLjA7Ci0gICAgdmVydHNbMF1bM10gPSAxLjA7Ci0gICAgdGV4WzBdWzBdID0gdHg7
Ci0gICAgdGV4WzBdWzFdID0gdHk7Ci0gICAgdmVydHNbMV1bMF0gPSB4ICsgdzsKLSAgICB2ZXJ0
c1sxXVsxXSA9IHk7Ci0gICAgdmVydHNbMV1bMl0gPSAwLjA7Ci0gICAgdmVydHNbMV1bM10gPSAx
LjA7Ci0gICAgdGV4WzFdWzBdID0gdHggKyB0dzsKLSAgICB0ZXhbMV1bMV0gPSB0eTsKLSAgICB2
ZXJ0c1syXVswXSA9IHg7Ci0gICAgdmVydHNbMl1bMV0gPSB5ICsgaDsKLSAgICB2ZXJ0c1syXVsy
XSA9IDAuMDsKLSAgICB2ZXJ0c1syXVszXSA9IDEuMDsKLSAgICB0ZXhbMl1bMF0gPSB0eDsKLSAg
ICB0ZXhbMl1bMV0gPSB0eSArIHRoOwotICAgIHZlcnRzWzNdWzBdID0geCArIHc7Ci0gICAgdmVy
dHNbM11bMV0gPSB5ICsgaDsKLSAgICB2ZXJ0c1szXVsyXSA9IDAuMDsKLSAgICB2ZXJ0c1szXVsz
XSA9IDEuMDsKLSAgICB0ZXhbM11bMF0gPSB0eCArIHR3OwotICAgIHRleFszXVsxXSA9IHR5ICsg
dGg7CisgICAgR0xmbG9hdCB0ZXhbNF1bMl0gPSB7CisgICAgICAgIHsgdHgsIHR5IH0sCisgICAg
ICAgIHsgdHggKyB0dywgdHkgfSwKKyAgICAgICAgeyB0eCwgdHkgKyB0aCB9LAorICAgICAgICB7
IHR4ICsgdHcsIHR5ICsgdGggfSwKKyAgICB9OworCisgICAgR0xmbG9hdCB2ZXJ0c1s0XVs0XSA9
IHsKKyAgICAgICAgeyB4LCB5LCAwLjAsIDEuMCB9LAorICAgICAgICB7IHggKyB3LCB5LCAwLjAs
IDEuMCB9LAorICAgICAgICB7IHgsIHkgKyBoLCAwLjAsIDEuMCB9LAorICAgICAgICB7IHggKyB3
LCB5ICsgaCwgMC4wLCAxLjAgfSwKKyAgICB9OwogCiAgICAgZHJhd19yZWN0X2Zyb21fYXJyYXlz
KGRpc3BsYXksIHZlcnRzLCB0ZXgpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
