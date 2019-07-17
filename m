Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261356B98A
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 11:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599666E0D7;
	Wed, 17 Jul 2019 09:46:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F4A6E0D7
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:46:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AB87E5AFE9
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:46:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A55CA60A9F;
 Wed, 17 Jul 2019 09:46:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 10:46:03 +0100
Message-Id: <20190717094603.12234-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 17 Jul 2019 09:46:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] ci: Workaround an issue with
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
Ci0tLQogLmdpdGxhYi1jaS55bWwgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCBi
MzAzZDQ2NTYuLjNjNTI5OGY4NCAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55bWwKKysrIGIvLmdp
dGxhYi1jaS55bWwKQEAgLTgsOSArOCwxMSBAQCBiZWZvcmVfc2NyaXB0OgogICAgIGdsaWIyLWRl
dmVsIGNlbHQwNTEtZGV2ZWwgcGl4bWFuLWRldmVsIGFsc2EtbGliLWRldmVsIG9wZW5zc2wtZGV2
ZWwgbGlianBlZy10dXJiby1kZXZlbAogICAgIGxpYmNhY2FyZC1kZXZlbCBjeXJ1cy1zYXNsLWRl
dmVsIGx6NC1kZXZlbCBvcHVzLWRldmVsCiAgICAgZ3N0cmVhbWVyMS1kZXZlbCBnc3RyZWFtZXIx
LXBsdWdpbnMtYmFzZS1kZXZlbAorICAgIGRjb25mCiAgICAgLXkKICAgLSBnaXQgY2xvbmUgJHtD
SV9SRVBPU0lUT1JZX1VSTC9zcGljZS5naXQvc3BpY2UtcHJvdG9jb2wuZ2l0fQogICAtIChjZCBz
cGljZS1wcm90b2NvbCAmJiAuL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3VzciAmJiBtYWtlIGluc3Rh
bGwpCisgIC0gZGNvbmYgcmVzZXQgL29yZy9nbm9tZS9zeXN0ZW0vbG9jYXRpb24vZW5hYmxlZCB8
fCB0cnVlCiAKIG1ha2VjaGVjazoKICAgc2NyaXB0OgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
