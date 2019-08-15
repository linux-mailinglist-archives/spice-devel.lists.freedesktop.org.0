Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA78E658
	for <lists+spice-devel@lfdr.de>; Thu, 15 Aug 2019 10:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B86C6E237;
	Thu, 15 Aug 2019 08:31:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A936E237
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:31:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0EA772D6A04
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:31:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C74A45D1;
 Thu, 15 Aug 2019 08:31:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 15 Aug 2019 09:30:54 +0100
Message-Id: <20190815083055.13634-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 15 Aug 2019 08:31:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] reds: Fix indentation of
 spice_server_char_device_add_interface
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
c2VydmVyL3JlZHMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMu
YwppbmRleCBhMzc5NWFiOTAuLmMyOTQxMzdiZSAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZHMuYwor
KysgYi9zZXJ2ZXIvcmVkcy5jCkBAIC0zMzAxLDggKzMzMDEsOCBAQCBzdGF0aWMgdm9pZCByZWRz
X29uX2NoYXJfZGV2aWNlX2Rlc3Ryb3koUmVkc1N0YXRlICpyZWRzLAogICAgIHJlZHMtPmNoYXJf
ZGV2aWNlcyA9IGdfbGlzdF9yZW1vdmUocmVkcy0+Y2hhcl9kZXZpY2VzLCBkZXYpOwogfQogCi1z
dGF0aWMgaW50IHNwaWNlX3NlcnZlcl9jaGFyX2RldmljZV9hZGRfaW50ZXJmYWNlKFNwaWNlU2Vy
dmVyICpyZWRzLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNw
aWNlQmFzZUluc3RhbmNlICpzaW4pCitzdGF0aWMgaW50CitzcGljZV9zZXJ2ZXJfY2hhcl9kZXZp
Y2VfYWRkX2ludGVyZmFjZShTcGljZVNlcnZlciAqcmVkcywgU3BpY2VCYXNlSW5zdGFuY2UgKnNp
bikKIHsKICAgICBTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSogY2hhcl9kZXZpY2UgPQogICAgICAg
ICAgICAgU1BJQ0VfVVBDQVNUKFNwaWNlQ2hhckRldmljZUluc3RhbmNlLCBzaW4pOwotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
