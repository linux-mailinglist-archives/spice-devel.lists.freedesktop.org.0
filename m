Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22531BB3
	for <lists+spice-devel@lfdr.de>; Sat,  1 Jun 2019 14:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7DDC89B46;
	Sat,  1 Jun 2019 12:14:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829AB89B46
 for <spice-devel@lists.freedesktop.org>; Sat,  1 Jun 2019 12:14:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1B7B8C070152
 for <spice-devel@lists.freedesktop.org>; Sat,  1 Jun 2019 12:14:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A2F6600D1;
 Sat,  1 Jun 2019 12:14:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  1 Jun 2019 13:14:11 +0100
Message-Id: <20190601121413.932-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Sat, 01 Jun 2019 12:14:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/3] spicevmc: Reuse "sin"
 variable
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3NwaWNldm1jLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9z
cGljZXZtYy5jCmluZGV4IDQ2MGVkYjA0Zi4uODRiYmI3M2MyIDEwMDY0NAotLS0gYS9zZXJ2ZXIv
c3BpY2V2bWMuYworKysgYi9zZXJ2ZXIvc3BpY2V2bWMuYwpAQCAtNzg2LDcgKzc4Niw3IEBAIHN0
YXRpYyB2b2lkIHNwaWNldm1jX2Nvbm5lY3QoUmVkQ2hhbm5lbCAqY2hhbm5lbCwgUmVkQ2xpZW50
ICpjbGllbnQsCiAgICAgICAgIHJldHVybjsKICAgICB9CiAKLSAgICBzaWYgPSBzcGljZV9jaGFy
X2RldmljZV9nZXRfaW50ZXJmYWNlKHZtY19jaGFubmVsLT5jaGFyZGV2X3Npbik7CisgICAgc2lm
ID0gc3BpY2VfY2hhcl9kZXZpY2VfZ2V0X2ludGVyZmFjZShzaW4pOwogICAgIGlmIChzaWYtPnN0
YXRlKSB7CiAgICAgICAgIHNpZi0+c3RhdGUoc2luLCAxKTsKICAgICB9Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
