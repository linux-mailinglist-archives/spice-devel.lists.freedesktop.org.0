Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D646F8CB
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1515B891F9;
	Tue, 30 Apr 2019 12:24:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62528891F9
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0DF4C319938B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:46 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 357472B3AB;
 Tue, 30 Apr 2019 12:24:42 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:11 +0100
Message-Id: <20190430122419.16241-12-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 30 Apr 2019 12:24:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 11/19] test-leaks: Use socket
 compatibility layer
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
c2VydmVyL3Rlc3RzL3Rlc3QtbGVha3MuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rl
c3QtbGVha3MuYyBiL3NlcnZlci90ZXN0cy90ZXN0LWxlYWtzLmMKaW5kZXggNjQxMzBjMjIuLmJl
OWZlMmQyIDEwMDY0NAotLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC1sZWFrcy5jCisrKyBiL3NlcnZl
ci90ZXN0cy90ZXN0LWxlYWtzLmMKQEAgLTM1LDYgKzM1LDcgQEAKICNpbmNsdWRlICJ0ZXN0LWds
aWItY29tcGF0LmgiCiAjaW5jbHVkZSAiYmFzaWMtZXZlbnQtbG9vcC5oIgogI2luY2x1ZGUgInRl
c3QtZGlzcGxheS1iYXNlLmgiCisjaW5jbHVkZSAic3lzLXNvY2tldC5oIgogCiAjZGVmaW5lIFBL
SV9ESVIgU1BJQ0VfVE9QX1NSQ0RJUiAiL3NlcnZlci90ZXN0cy9wa2kvIgogCkBAIC03MCwxMSAr
NzEsMTEgQEAgc3RhdGljIHZvaWQgc2VydmVyX2xlYWtzKHZvaWQpCiAgICAgZ190ZXN0X2V4cGVj
dF9tZXNzYWdlKEdfTE9HX0RPTUFJTiwgR19MT0dfTEVWRUxfV0FSTklORywKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIipTU0xfYWNjZXB0IGZhaWxlZCoiKTsKICAgICBnX2Fzc2VydF9jbXBp
bnQoc29ja2V0cGFpcihBRl9MT0NBTCwgU09DS19TVFJFQU0sIDAsIHN2KSwgPT0sIDApOwotICAg
IGNsb3NlKHN2WzFdKTsKKyAgICBzb2NrZXRfY2xvc2Uoc3ZbMV0pOwogICAgIHJlc3VsdCA9IHNw
aWNlX3NlcnZlcl9hZGRfc3NsX2NsaWVudChzZXJ2ZXIsIHN2WzBdLCAxKTsKICAgICBnX2Fzc2Vy
dF9jbXBpbnQocmVzdWx0LCA9PSwgLTEpOwogICAgIC8qIGlmIHRoZSBmdW5jdGlvbiBmYWlscywg
aXQgc2hvdWxkIG5vdCBjbG9zZSB0aGUgc29ja2V0ICovCi0gICAgZ19hc3NlcnRfY21waW50KGNs
b3NlKHN2WzBdKSwgPT0sIDApOworICAgIGdfYXNzZXJ0X2NtcGludChzb2NrZXRfY2xvc2Uoc3Zb
MF0pLCA9PSwgMCk7CiAKICAgICBzcGljZV9zZXJ2ZXJfZGVzdHJveShzZXJ2ZXIpOwogICAgIGJh
c2ljX2V2ZW50X2xvb3BfZGVzdHJveSgpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
