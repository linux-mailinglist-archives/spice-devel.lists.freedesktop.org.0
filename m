Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8856BC1A
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 14:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1A06E11C;
	Wed, 17 Jul 2019 12:06:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E342A6E11C
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 12:06:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 83F08308FE8D
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 12:06:57 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4111219D7C;
 Wed, 17 Jul 2019 12:06:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 13:06:52 +0100
Message-Id: <20190717120652.11876-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 17 Jul 2019 12:06:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3] ci: Workaround an issue with
 GLib on Fedora 30
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

VGhpcyByZW1vdmUgdGhpcyBlcnJvciBydW5uaW5nIHRlc3QtbGlzdGVuIHRlc3Qgb24gYSBGZWRv
cmEgMzAgZG9ja2VyCmltYWdlOgoKKC9idWlsZHMvc3BpY2Uvc3BpY2UvYnVpbGQvc2VydmVyL3Rl
c3RzL3Rlc3QtbGlzdGVuOjIyMzMpOiBHTGliLUdJTy1DUklUSUNBTCAqKjogMTU6Mjk6MDMuMTIz
OiBnX2ZpbGVfbmV3X2Zvcl9wYXRoOiBhc3NlcnRpb24gJ3BhdGggIT0gTlVMTCcgZmFpbGVkCgpU
aGlzIGVycm9yIGlzIGR1ZSB0byBzb21lIG1pc3NpbmcgY29uZmlndXJhdGlvbiBvbiB0aGUgaW1h
Z2UuCk9uIGEgZnVsbHkgaW5zdGFsbGVkIERlc2t0b3AvU2VydmVyIG1hY2hpbmUgdGhlc2UgY29u
ZmlndXJhdGlvbgphcmUgdXN1YWxseSBpbiBwbGFjZSBzbyB5b3Ugd29uJ3Qgbm90ZSB0aGUgaXNz
dWUgYnV0IG9uIHJlY2VudApkb2NrZXIgaW1hZ2VzIHRoZXNlIGNvbmZpZ3VyYXRpb24gYXJlIG1p
c3NpbmcuCgpSdW5uaW5nIHRoZSBkY29uZiBjb21tYW5kIGFkZCByZXF1aXJlZCBjb25maWd1cmF0
aW9uLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogLmdpdGxhYi1jaS55bWwgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKykKCkNoYW5nZXMgc2luY2UgdjI6Ci0gbW9yZSBjb21tZW50cwoKZGlmZiAtLWdpdCBh
Ly5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKaW5kZXggYjMwM2Q0NjU2Li4zMTZhODYw
ZGQgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC04
LDkgKzgsMTYgQEAgYmVmb3JlX3NjcmlwdDoKICAgICBnbGliMi1kZXZlbCBjZWx0MDUxLWRldmVs
IHBpeG1hbi1kZXZlbCBhbHNhLWxpYi1kZXZlbCBvcGVuc3NsLWRldmVsIGxpYmpwZWctdHVyYm8t
ZGV2ZWwKICAgICBsaWJjYWNhcmQtZGV2ZWwgY3lydXMtc2FzbC1kZXZlbCBsejQtZGV2ZWwgb3B1
cy1kZXZlbAogICAgIGdzdHJlYW1lcjEtZGV2ZWwgZ3N0cmVhbWVyMS1wbHVnaW5zLWJhc2UtZGV2
ZWwKKyAgICBkY29uZgogICAgIC15CiAgIC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwv
c3BpY2UuZ2l0L3NwaWNlLXByb3RvY29sLmdpdH0KICAgLSAoY2Qgc3BpY2UtcHJvdG9jb2wgJiYg
Li9hdXRvZ2VuLnNoIC0tcHJlZml4PS91c3IgJiYgbWFrZSBpbnN0YWxsKQorICAjIFRoaXMgaXMg
YSB3b3JrYXJvdW5kIGZvciBGZWRvcmEgZG9ja2VyIGltYWdlLCB0aGlzIHdpbGwgYWRkIHNvbWUK
KyAgIyBtaXNzaW5nIGNvbmZpZ3VyYXRpb24KKyAgIyAnL29yZy9nbm9tZS9zeXN0ZW0vbG9jYXRp
b24vZW5hYmxlZCcgaXMganVzdCB0aGUgZmlyc3Qga2V5IHBhdGgKKyAgIyBJIGZvdW5kLCBub3Ro
aW5nIHNwZWNpYWwgaW4gaXQKKyAgIyBUT0RPIHJlbW92ZSB3aGVuIHRoZSBpbWFnZSB3aWxsIGZp
eCB0aGlzIGlzc3VlCisgIC0gZGNvbmYgcmVzZXQgL29yZy9nbm9tZS9zeXN0ZW0vbG9jYXRpb24v
ZW5hYmxlZCB8fCB0cnVlCiAKIG1ha2VjaGVjazoKICAgc2NyaXB0OgotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
