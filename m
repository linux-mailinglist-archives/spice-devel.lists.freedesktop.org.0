Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9539F8CA
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675E589218;
	Tue, 30 Apr 2019 12:24:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D48891F9
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF52E30ADBB7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6957C2B3A5;
 Tue, 30 Apr 2019 12:24:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:10 +0100
Message-Id: <20190430122419.16241-11-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 30 Apr 2019 12:24:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 10/19] dispatcher: Use socket
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
c2VydmVyL2Rpc3BhdGNoZXIuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BhdGNoZXIu
YyBiL3NlcnZlci9kaXNwYXRjaGVyLmMKaW5kZXggNTIwNGRkZWUuLmExZmI3MDVjIDEwMDY0NAot
LS0gYS9zZXJ2ZXIvZGlzcGF0Y2hlci5jCisrKyBiL3NlcnZlci9kaXNwYXRjaGVyLmMKQEAgLTEx
Myw4ICsxMTMsOCBAQCBkaXNwYXRjaGVyX2ZpbmFsaXplKEdPYmplY3QgKm9iamVjdCkKIHsKICAg
ICBEaXNwYXRjaGVyICpzZWxmID0gRElTUEFUQ0hFUihvYmplY3QpOwogICAgIGdfZnJlZShzZWxm
LT5wcml2LT5tZXNzYWdlcyk7Ci0gICAgY2xvc2Uoc2VsZi0+cHJpdi0+c2VuZF9mZCk7Ci0gICAg
Y2xvc2Uoc2VsZi0+cHJpdi0+cmVjdl9mZCk7CisgICAgc29ja2V0X2Nsb3NlKHNlbGYtPnByaXYt
PnNlbmRfZmQpOworICAgIHNvY2tldF9jbG9zZShzZWxmLT5wcml2LT5yZWN2X2ZkKTsKICAgICBw
dGhyZWFkX211dGV4X2Rlc3Ryb3koJnNlbGYtPnByaXYtPmxvY2spOwogICAgIGdfZnJlZShzZWxm
LT5wcml2LT5wYXlsb2FkKTsKICAgICBHX09CSkVDVF9DTEFTUyhkaXNwYXRjaGVyX3BhcmVudF9j
bGFzcyktPmZpbmFsaXplKG9iamVjdCk7CkBAIC0yMTMsNyArMjEzLDcgQEAgc3RhdGljIGludCBy
ZWFkX3NhZmUoaW50IGZkLCB1aW50OF90ICpidWYsIHNpemVfdCBzaXplLCBpbnQgYmxvY2spCiAg
ICAgICAgIH0KICAgICB9CiAgICAgd2hpbGUgKHJlYWRfc2l6ZSA8IHNpemUpIHsKLSAgICAgICAg
cmV0ID0gcmVhZChmZCwgYnVmICsgcmVhZF9zaXplLCBzaXplIC0gcmVhZF9zaXplKTsKKyAgICAg
ICAgcmV0ID0gc29ja2V0X3JlYWQoZmQsIGJ1ZiArIHJlYWRfc2l6ZSwgc2l6ZSAtIHJlYWRfc2l6
ZSk7CiAgICAgICAgIGlmIChyZXQgPT0gLTEpIHsKICAgICAgICAgICAgIGlmIChlcnJubyA9PSBF
SU5UUikgewogICAgICAgICAgICAgICAgIHNwaWNlX2RlYnVnKCJFSU5UUiBpbiByZWFkIik7CkBA
IC0yNDAsNyArMjQwLDcgQEAgc3RhdGljIGludCB3cml0ZV9zYWZlKGludCBmZCwgdWludDhfdCAq
YnVmLCBzaXplX3Qgc2l6ZSkKICAgICBpbnQgcmV0OwogCiAgICAgd2hpbGUgKHdyaXR0ZW5fc2l6
ZSA8IHNpemUpIHsKLSAgICAgICAgcmV0ID0gd3JpdGUoZmQsIGJ1ZiArIHdyaXR0ZW5fc2l6ZSwg
c2l6ZSAtIHdyaXR0ZW5fc2l6ZSk7CisgICAgICAgIHJldCA9IHNvY2tldF93cml0ZShmZCwgYnVm
ICsgd3JpdHRlbl9zaXplLCBzaXplIC0gd3JpdHRlbl9zaXplKTsKICAgICAgICAgaWYgKHJldCA9
PSAtMSkgewogICAgICAgICAgICAgaWYgKGVycm5vICE9IEVJTlRSKSB7CiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC0xOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
