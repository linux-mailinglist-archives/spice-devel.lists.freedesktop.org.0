Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DA9F8C9
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D915589211;
	Tue, 30 Apr 2019 12:24:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E66E89211
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 09844C0578F8
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:40 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F3C072B3A5;
 Tue, 30 Apr 2019 12:24:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:09 +0100
Message-Id: <20190430122419.16241-10-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 30 Apr 2019 12:24:40 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 09/19] red-stream: Use socket
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
c2VydmVyL3JlZC1zdHJlYW0uYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1zdHJlYW0u
YyBiL3NlcnZlci9yZWQtc3RyZWFtLmMKaW5kZXggMzIzYWY1OGMuLmFmNzAzNmU1IDEwMDY0NAot
LS0gYS9zZXJ2ZXIvcmVkLXN0cmVhbS5jCisrKyBiL3NlcnZlci9yZWQtc3RyZWFtLmMKQEAgLTEx
Miw3ICsxMTIsNyBAQCBzdGF0aWMgaW50IHNvY2tldF9zZXRfY29yayhpbnQgc29ja2V0LCBpbnQg
ZW5hYmxlZCkKIAogc3RhdGljIHNzaXplX3Qgc3RyZWFtX3dyaXRlX2NiKFJlZFN0cmVhbSAqcywg
Y29uc3Qgdm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKIHsKLSAgICByZXR1cm4gd3JpdGUocy0+c29j
a2V0LCBidWYsIHNpemUpOworICAgIHJldHVybiBzb2NrZXRfd3JpdGUocy0+c29ja2V0LCBidWYs
IHNpemUpOwogfQogCiBzdGF0aWMgc3NpemVfdCBzdHJlYW1fd3JpdGV2X2NiKFJlZFN0cmVhbSAq
cywgY29uc3Qgc3RydWN0IGlvdmVjICppb3YsIGludCBpb3ZjbnQpCkBAIC0xMzAsNyArMTMwLDcg
QEAgc3RhdGljIHNzaXplX3Qgc3RyZWFtX3dyaXRldl9jYihSZWRTdHJlYW0gKnMsIGNvbnN0IHN0
cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y24KICAgICAgICAgZm9yIChpID0gMDsgaSA8IHRvc2Vu
ZDsgaSsrKSB7CiAgICAgICAgICAgICBleHBlY3RlZCArPSBpb3ZbaV0uaW92X2xlbjsKICAgICAg
ICAgfQotICAgICAgICBuID0gd3JpdGV2KHMtPnNvY2tldCwgaW92LCB0b3NlbmQpOworICAgICAg
ICBuID0gc29ja2V0X3dyaXRldihzLT5zb2NrZXQsIGlvdiwgdG9zZW5kKTsKICAgICAgICAgaWYg
KG4gPD0gZXhwZWN0ZWQpIHsKICAgICAgICAgICAgIGlmIChuID4gMCkKICAgICAgICAgICAgICAg
ICByZXQgKz0gbjsKQEAgLTE0Niw3ICsxNDYsNyBAQCBzdGF0aWMgc3NpemVfdCBzdHJlYW1fd3Jp
dGV2X2NiKFJlZFN0cmVhbSAqcywgY29uc3Qgc3RydWN0IGlvdmVjICppb3YsIGludCBpb3Zjbgog
CiBzdGF0aWMgc3NpemVfdCBzdHJlYW1fcmVhZF9jYihSZWRTdHJlYW0gKnMsIHZvaWQgKmJ1Ziwg
c2l6ZV90IHNpemUpCiB7Ci0gICAgcmV0dXJuIHJlYWQocy0+c29ja2V0LCBidWYsIHNpemUpOwor
ICAgIHJldHVybiBzb2NrZXRfcmVhZChzLT5zb2NrZXQsIGJ1Ziwgc2l6ZSk7CiB9CiAKIHN0YXRp
YyBzc2l6ZV90IHN0cmVhbV9zc2xfd3JpdGVfY2IoUmVkU3RyZWFtICpzLCBjb25zdCB2b2lkICpi
dWYsIHNpemVfdCBzaXplKQpAQCAtNDAyLDcgKzQwMiw3IEBAIHZvaWQgcmVkX3N0cmVhbV9mcmVl
KFJlZFN0cmVhbSAqcykKICAgICB9CiAKICAgICByZWRfc3RyZWFtX3JlbW92ZV93YXRjaChzKTsK
LSAgICBjbG9zZShzLT5zb2NrZXQpOworICAgIHNvY2tldF9jbG9zZShzLT5zb2NrZXQpOwogCiAg
ICAgZ19mcmVlKHMpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
