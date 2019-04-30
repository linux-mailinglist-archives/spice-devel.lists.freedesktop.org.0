Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10777F8C8
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7978920F;
	Tue, 30 Apr 2019 12:24:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED10D891F9
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9887430821DF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7408634D21;
 Tue, 30 Apr 2019 12:24:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:08 +0100
Message-Id: <20190430122419.16241-9-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 30 Apr 2019 12:24:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 08/19] reds: Use socket
 compatibility layer (close -> socket_close)
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
c2VydmVyL3JlZC1jb21tb24uaCB8ICAxICsKIHNlcnZlci9yZWRzLmMgICAgICAgfCAxMSArKysr
KystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jb21tb24uaCBiL3NlcnZlci9yZWQtY29tbW9uLmgK
aW5kZXggMTgxZWQyODMuLjZiNWQwYjJlIDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLWNvbW1vbi5o
CisrKyBiL3NlcnZlci9yZWQtY29tbW9uLmgKQEAgLTM1LDYgKzM1LDcgQEAKIAogI2luY2x1ZGUg
InNwaWNlLmgiCiAjaW5jbHVkZSAidXRpbHMuaCIKKyNpbmNsdWRlICJzeXMtc29ja2V0LmgiCiAK
ICNkZWZpbmUgU1BJQ0VfVVBDQVNUKHR5cGUsIHB0cikgXAogICAgICh2ZXJpZnlfZXhwcihTUElD
RV9PRkZTRVRPRih0eXBlLCBiYXNlKSA9PSAwLFNQSUNFX0NPTlRBSU5FUk9GKHB0ciwgdHlwZSwg
YmFzZSkpKQpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZHMuYyBiL3NlcnZlci9yZWRzLmMKaW5kZXgg
M2YxYTRhMDUuLmIxN2RjMjA4IDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkcy5jCisrKyBiL3NlcnZl
ci9yZWRzLmMKQEAgLTEwNiw2ICsxMDYsNyBAQCBzdGF0aWMgdm9pZCBhZGFwdGVyX3RpbWVyX3Jl
bW92ZShjb25zdCBTcGljZUNvcmVJbnRlcmZhY2VJbnRlcm5hbCAqaWZhY2UsIFNwaWNlVAogc3Rh
dGljIFNwaWNlV2F0Y2ggKmFkYXB0ZXJfd2F0Y2hfYWRkKGNvbnN0IFNwaWNlQ29yZUludGVyZmFj
ZUludGVybmFsICppZmFjZSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bnQgZmQsIGludCBldmVudF9tYXNrLCBTcGljZVdhdGNoRnVuYyBmdW5jLCB2b2lkICpvcGFxdWUp
CiB7CisgICAgLy8gbm90ZTogUWVtdSBBUEkgaXMgZmluZSBoYXZpbmcgYSBTT0NLRVQgb24gV2lu
ZG93cwogICAgIHJldHVybiBpZmFjZS0+cHVibGljX2ludGVyZmFjZS0+d2F0Y2hfYWRkKGZkLCBl
dmVudF9tYXNrLCBmdW5jLCBvcGFxdWUpOwogfQogCkBAIC0yNjU5LDcgKzI2NjAsNyBAQCBzdGF0
aWMgaW50IHJlZHNfaW5pdF9zb2NrZXQoY29uc3QgY2hhciAqYWRkciwgaW50IHBvcnRuciwgaW50
IGZhbWlseSkKICAgICAgICAgbGVuID0gU1VOX0xFTigmbG9jYWwpOwogICAgICAgICBpZiAoYmlu
ZChzbGlzdGVuLCAoc3RydWN0IHNvY2thZGRyICopJmxvY2FsLCBsZW4pID09IC0xKSB7CiAgICAg
ICAgICAgICBwZXJyb3IoImJpbmQiKTsKLSAgICAgICAgICAgIGNsb3NlKHNsaXN0ZW4pOworICAg
ICAgICAgICAgc29ja2V0X2Nsb3NlKHNsaXN0ZW4pOwogICAgICAgICAgICAgcmV0dXJuIC0xOwog
ICAgICAgICB9CiAKQEAgLTI3MDcsNyArMjcwOCw3IEBAIHN0YXRpYyBpbnQgcmVkc19pbml0X3Nv
Y2tldChjb25zdCBjaGFyICphZGRyLCBpbnQgcG9ydG5yLCBpbnQgZmFtaWx5KQogICAgICAgICAg
ICAgZnJlZWFkZHJpbmZvKHJlcyk7CiAgICAgICAgICAgICBnb3RvIGxpc3RlbjsKICAgICAgICAg
fQotICAgICAgICBjbG9zZShzbGlzdGVuKTsKKyAgICAgICAgc29ja2V0X2Nsb3NlKHNsaXN0ZW4p
OwogICAgIH0KICAgICBzcGljZV93YXJuaW5nKCJiaW5kaW5nIHNvY2tldCB0byAlczolZCBmYWls
ZWQiLCBhZGRyLCBwb3J0bnIpOwogICAgIGZyZWVhZGRyaW5mbyhyZXMpOwpAQCAtMjcxNiw3ICsy
NzE3LDcgQEAgc3RhdGljIGludCByZWRzX2luaXRfc29ja2V0KGNvbnN0IGNoYXIgKmFkZHIsIGlu
dCBwb3J0bnIsIGludCBmYW1pbHkpCiBsaXN0ZW46CiAgICAgaWYgKGxpc3RlbihzbGlzdGVuLCBT
T01BWENPTk4pICE9IDApIHsKICAgICAgICAgc3BpY2Vfd2FybmluZygibGlzdGVuOiAlcyIsIHN0
cmVycm9yKGVycm5vKSk7Ci0gICAgICAgIGNsb3NlKHNsaXN0ZW4pOworICAgICAgICBzb2NrZXRf
Y2xvc2Uoc2xpc3Rlbik7CiAgICAgICAgIHJldHVybiAtMTsKICAgICB9CiAgICAgcmV0dXJuIHNs
aXN0ZW47CkBAIC0yNzU0LDE0ICsyNzU1LDE0IEBAIHN0YXRpYyB2b2lkIHJlZHNfY2xlYW51cF9u
ZXQoU3BpY2VTZXJ2ZXIgKnJlZHMpCiAgICAgaWYgKHJlZHMtPmxpc3Rlbl9zb2NrZXQgIT0gLTEp
IHsKICAgICAgICByZWRzX2NvcmVfd2F0Y2hfcmVtb3ZlKHJlZHMsIHJlZHMtPmxpc3Rlbl93YXRj
aCk7CiAgICAgICAgaWYgKHJlZHMtPmNvbmZpZy0+c3BpY2VfbGlzdGVuX3NvY2tldF9mZCAhPSBy
ZWRzLT5saXN0ZW5fc29ja2V0KSB7Ci0gICAgICAgICAgY2xvc2UocmVkcy0+bGlzdGVuX3NvY2tl
dCk7CisgICAgICAgICAgc29ja2V0X2Nsb3NlKHJlZHMtPmxpc3Rlbl9zb2NrZXQpOwogICAgICAg
IH0KICAgICAgICByZWRzLT5saXN0ZW5fd2F0Y2ggPSBOVUxMOwogICAgICAgIHJlZHMtPmxpc3Rl
bl9zb2NrZXQgPSAtMTsKICAgICB9CiAgICAgaWYgKHJlZHMtPnNlY3VyZV9saXN0ZW5fc29ja2V0
ICE9IC0xKSB7CiAgICAgICAgcmVkc19jb3JlX3dhdGNoX3JlbW92ZShyZWRzLCByZWRzLT5zZWN1
cmVfbGlzdGVuX3dhdGNoKTsKLSAgICAgICBjbG9zZShyZWRzLT5zZWN1cmVfbGlzdGVuX3NvY2tl
dCk7CisgICAgICAgc29ja2V0X2Nsb3NlKHJlZHMtPnNlY3VyZV9saXN0ZW5fc29ja2V0KTsKICAg
ICAgICByZWRzLT5zZWN1cmVfbGlzdGVuX3dhdGNoID0gTlVMTDsKICAgICAgICByZWRzLT5zZWN1
cmVfbGlzdGVuX3NvY2tldCA9IC0xOwogICAgIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
