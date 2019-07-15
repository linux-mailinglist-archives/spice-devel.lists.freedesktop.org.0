Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3B1687FA
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 13:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2B589428;
	Mon, 15 Jul 2019 11:13:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A47A89428
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 11:13:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF0F530821A3
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 11:13:12 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BB2375C231;
 Mon, 15 Jul 2019 11:13:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 15 Jul 2019 12:13:06 +0100
Message-Id: <20190715111308.22291-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 15 Jul 2019 11:13:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH vd_agent_linux 1/3] x11-randr: Avoid passing
 XEvent as value
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

VGhlIHN0cnVjdHVyZSBpcyBub3QgdGhhdCBzbWFsbCBhbmQgaXMgbm90IG5lY2Vzc2FyeSB0byBj
b3B5CnRoZSB2YWx1ZS4KVGhpcyBhbHNvIHJlbW92ZWQgYSBDb3Zlcml0eSB3YXJuaW5nLgoKU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3ZkYWdlbnQveDExLXByaXYuaCAgfCAyICstCiBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYyB8IDgg
KysrKy0tLS0KIHNyYy92ZGFnZW50L3gxMS5jICAgICAgIHwgMiArLQogMyBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdl
bnQveDExLXByaXYuaCBiL3NyYy92ZGFnZW50L3gxMS1wcml2LmgKaW5kZXggOTk2NzZkMi4uNzMw
YjliMyAxMDA2NDQKLS0tIGEvc3JjL3ZkYWdlbnQveDExLXByaXYuaAorKysgYi9zcmMvdmRhZ2Vu
dC94MTEtcHJpdi5oCkBAIC0xNTIsNyArMTUyLDcgQEAgdm9pZCB2ZGFnZW50X3gxMV9zZW5kX2Rh
ZW1vbl9ndWVzdF94b3JnX3JlcyhzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKIHZvaWQgdmRhZ2Vu
dF94MTFfcmFuZHJfaGFuZGxlX3Jvb3Rfc2l6ZV9jaGFuZ2Uoc3RydWN0IHZkYWdlbnRfeDExICp4
MTEsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBzY3Jl
ZW4sIGludCB3aWR0aCwgaW50IGhlaWdodCk7CiBpbnQgdmRhZ2VudF94MTFfcmFuZHJfaGFuZGxl
X2V2ZW50KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAotICAgIFhFdmVudCBldmVudCk7CisgICAg
Y29uc3QgWEV2ZW50ICpldmVudCk7CiB2b2lkIHZkYWdlbnRfeDExX3NldF9lcnJvcl9oYW5kbGVy
KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAogICAgIGludCAoKmhhbmRsZXIpKERpc3BsYXkgKiwg
WEVycm9yRXZlbnQgKikpOwogaW50IHZkYWdlbnRfeDExX3Jlc3RvcmVfZXJyb3JfaGFuZGxlcihz
dHJ1Y3QgdmRhZ2VudF94MTEgKngxMSk7CmRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC94MTEtcmFu
ZHIuYyBiL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jCmluZGV4IDg4ODU3YzguLmUyOTk5NzAgMTAw
NjQ0Ci0tLSBhL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jCisrKyBiL3NyYy92ZGFnZW50L3gxMS1y
YW5kci5jCkBAIC01MjksMTQgKzUyOSwxNCBAQCB2b2lkIHZkYWdlbnRfeDExX3JhbmRyX2hhbmRs
ZV9yb290X3NpemVfY2hhbmdlKHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAogfQogCiBpbnQgdmRh
Z2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAotICAg
IFhFdmVudCBldmVudCkKKyAgICBjb25zdCBYRXZlbnQgKmV2ZW50KQogewogICAgIGludCBoYW5k
bGVkID0gVFJVRTsKIAotICAgIHN3aXRjaCAoZXZlbnQudHlwZSAtIHgxMS0+eHJhbmRyX2V2ZW50
X2Jhc2UpIHsKKyAgICBzd2l0Y2ggKGV2ZW50LT50eXBlIC0geDExLT54cmFuZHJfZXZlbnRfYmFz
ZSkgewogICAgICAgICBjYXNlIFJSU2NyZWVuQ2hhbmdlTm90aWZ5OiB7Ci0gICAgICAgICAgICBY
UlJTY3JlZW5DaGFuZ2VOb3RpZnlFdmVudCAqc2NlID0KLSAgICAgICAgICAgICAgICAoWFJSU2Ny
ZWVuQ2hhbmdlTm90aWZ5RXZlbnQgKikgJmV2ZW50OworICAgICAgICAgICAgY29uc3QgWFJSU2Ny
ZWVuQ2hhbmdlTm90aWZ5RXZlbnQgKnNjZSA9CisgICAgICAgICAgICAgICAgKGNvbnN0IFhSUlNj
cmVlbkNoYW5nZU5vdGlmeUV2ZW50ICopIGV2ZW50OwogICAgICAgICAgICAgdmRhZ2VudF94MTFf
cmFuZHJfaGFuZGxlX3Jvb3Rfc2l6ZV9jaGFuZ2UoeDExLCAwLAogICAgICAgICAgICAgICAgIHNj
ZS0+d2lkdGgsIHNjZS0+aGVpZ2h0KTsKICAgICAgICAgICAgIGJyZWFrOwpkaWZmIC0tZ2l0IGEv
c3JjL3ZkYWdlbnQveDExLmMgYi9zcmMvdmRhZ2VudC94MTEuYwppbmRleCBjMjUxNWE4Li42MWQ3
YzY5IDEwMDY0NAotLS0gYS9zcmMvdmRhZ2VudC94MTEuYworKysgYi9zcmMvdmRhZ2VudC94MTEu
YwpAQCAtNTQ1LDcgKzU0NSw3IEBAIHN0YXRpYyB2b2lkIHZkYWdlbnRfeDExX2hhbmRsZV9ldmVu
dChzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwgWEV2ZW50IGV2ZW50KQogICAgIH0KICNlbmRpZgog
Ci0gICAgaWYgKHZkYWdlbnRfeDExX3JhbmRyX2hhbmRsZV9ldmVudCh4MTEsIGV2ZW50KSkKKyAg
ICBpZiAodmRhZ2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHgxMSwgJmV2ZW50KSkKICAgICAg
ICAgcmV0dXJuOwogCiAgICAgc3dpdGNoIChldmVudC50eXBlKSB7Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
