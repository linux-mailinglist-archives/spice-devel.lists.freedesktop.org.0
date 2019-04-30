Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 311C4F8CC
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE9389216;
	Tue, 30 Apr 2019 12:24:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A041F8921A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4C7D8309E976
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:48 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7AF422B3BF;
 Tue, 30 Apr 2019 12:24:46 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:12 +0100
Message-Id: <20190430122419.16241-13-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Apr 2019 12:24:48 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 12/19] test-channel: Use
 socket compatibility layer
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
c2VydmVyL3Rlc3RzL3Rlc3QtY2hhbm5lbC5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVz
dHMvdGVzdC1jaGFubmVsLmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1jaGFubmVsLmMKaW5kZXggZmNl
YTk4YWEuLjM3MmM4ZDc5IDEwMDY0NAotLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC1jaGFubmVsLmMK
KysrIGIvc2VydmVyL3Rlc3RzL3Rlc3QtY2hhbm5lbC5jCkBAIC0xODMsNyArMTgzLDcgQEAgc3Rh
dGljIHZvaWQgc2VuZF9hY2tfc3luYyhpbnQgc29ja2V0LCB1aW50MzJfdCBnZW5lcmF0aW9uKQog
ICAgIG1zZy5sZW4gPSBHVUlOVDMyX1RPX0xFKHNpemVvZihnZW5lcmF0aW9uKSk7CiAgICAgbXNn
LmdlbmVyYXRpb24gPSBHVUlOVDMyX1RPX0xFKGdlbmVyYXRpb24pOwogCi0gICAgZ19hc3NlcnRf
Y21waW50KHdyaXRlKHNvY2tldCwgJm1zZy50eXBlLCAxMCksID09LCAxMCk7CisgICAgZ19hc3Nl
cnRfY21waW50KHNvY2tldF93cml0ZShzb2NrZXQsICZtc2cudHlwZSwgMTApLCA9PSwgMTApOwog
fQogCiBzdGF0aWMgU3BpY2VUaW1lciAqd2FrZWRfdXBfdGltZXI7CkBAIC0xOTgsNyArMTk4LDcg
QEAgc3RhdGljIHZvaWQgdGltZXJfd2FrZXVwKHZvaWQgKm9wYXF1ZSkKICAgICBzc2l6ZV90IGxl
bjsKICAgICBhbGFybSgxKTsKICAgICBjaGFyIGJ1ZmZlclsyNTZdOwotICAgIHdoaWxlICgobGVu
PXJlY3YoY2xpZW50X3NvY2tldCwgYnVmZmVyLCBzaXplb2YoYnVmZmVyKSwgMCkpID4gMCkKKyAg
ICB3aGlsZSAoKGxlbj1zb2NrZXRfcmVhZChjbGllbnRfc29ja2V0LCBidWZmZXIsIHNpemVvZihi
dWZmZXIpKSkgPiAwKQogICAgICAgICBnb3RfZGF0YSArPSBsZW47CiAgICAgYWxhcm0oMCk7CiAK
QEAgLTIxOCw3ICsyMTgsNyBAQCBzdGF0aWMgdm9pZCB0aW1lb3V0X3dhdGNoX2NvdW50KHZvaWQg
Km9wYXF1ZSkKICAgICAvLyBnZXQgYWxsIHBlbmRpbmcgZGF0YQogICAgIGFsYXJtKDEpOwogICAg
IGNoYXIgYnVmZmVyWzI1Nl07Ci0gICAgd2hpbGUgKHJlY3YoY2xpZW50X3NvY2tldCwgYnVmZmVy
LCBzaXplb2YoYnVmZmVyKSwgMCkgPiAwKQorICAgIHdoaWxlIChzb2NrZXRfcmVhZChjbGllbnRf
c29ja2V0LCBidWZmZXIsIHNpemVvZihidWZmZXIpKSA+IDApCiAgICAgICAgIGNvbnRpbnVlOwog
ICAgIGFsYXJtKDApOwogCkBAIC0yMjYsNyArMjI2LDcgQEAgc3RhdGljIHZvaWQgdGltZW91dF93
YXRjaF9jb3VudCh2b2lkICpvcGFxdWUpCiAgICAgd2F0Y2hfY2FsbGVkX2NvdW50ZG93biA9IDIw
OwogCiAgICAgLy8gc2VuZCBhY2sgcmVwbHksIHRoaXMgc2hvdWxkIHVuYmxvY2sgZGF0YSBmcm9t
IFJlZENoYW5uZWxDbGllbnQKLSAgICBnX2Fzc2VydF9jbXBpbnQod3JpdGUoY2xpZW50X3NvY2tl
dCwgIlwyXDBcMFwwXDBcMCIsIDYpLCA9PSwgNik7CisgICAgZ19hc3NlcnRfY21waW50KHNvY2tl
dF93cml0ZShjbGllbnRfc29ja2V0LCAiXDJcMFwwXDBcMFwwIiwgNiksID09LCA2KTsKIAogICAg
IC8vIGV4cGVjdCBkYXRhIHNvb24KICAgICB3YWtlZF91cF90aW1lciA9IGNvcmUtPnRpbWVyX2Fk
ZCh0aW1lcl93YWtldXAsIGNvcmUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
