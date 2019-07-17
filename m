Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D696BBD5
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 13:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981406E11A;
	Wed, 17 Jul 2019 11:51:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2EB6E11A
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:51:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 934A830832C3
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:51:34 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 87BE0600D1;
 Wed, 17 Jul 2019 11:51:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 12:51:29 +0100
Message-Id: <20190717115129.2253-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 17 Jul 2019 11:51:34 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2] ci: Workaround an issue with
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
Ci0tLQogLmdpdGxhYi1jaS55bWwgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCgpDaGFuZ2VzIHNpbmNlIHYxOgotIGFkZCBhIHByb3BlciBjb21tZW50IGZvciBZYW1s
IGZpbGUKCmRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCmluZGV4
IGIzMDNkNDY1Ni4uMmUwNDMwNzQzIDEwMDY0NAotLS0gYS8uZ2l0bGFiLWNpLnltbAorKysgYi8u
Z2l0bGFiLWNpLnltbApAQCAtOCw5ICs4LDE0IEBAIGJlZm9yZV9zY3JpcHQ6CiAgICAgZ2xpYjIt
ZGV2ZWwgY2VsdDA1MS1kZXZlbCBwaXhtYW4tZGV2ZWwgYWxzYS1saWItZGV2ZWwgb3BlbnNzbC1k
ZXZlbCBsaWJqcGVnLXR1cmJvLWRldmVsCiAgICAgbGliY2FjYXJkLWRldmVsIGN5cnVzLXNhc2wt
ZGV2ZWwgbHo0LWRldmVsIG9wdXMtZGV2ZWwKICAgICBnc3RyZWFtZXIxLWRldmVsIGdzdHJlYW1l
cjEtcGx1Z2lucy1iYXNlLWRldmVsCisgICAgZGNvbmYKICAgICAteQogICAtIGdpdCBjbG9uZSAk
e0NJX1JFUE9TSVRPUllfVVJML3NwaWNlLmdpdC9zcGljZS1wcm90b2NvbC5naXR9CiAgIC0gKGNk
IHNwaWNlLXByb3RvY29sICYmIC4vYXV0b2dlbi5zaCAtLXByZWZpeD0vdXNyICYmIG1ha2UgaW5z
dGFsbCkKKyAgIyBUaGlzIGlzIGEgd29ya2Fyb3VuZCBmb3IgRmVkb3JhIGRvY2tlciBpbWFnZSwg
dGhpcyB3aWxsIGFkZCBzb21lCisgICMgbWlzc2luZyBjb25maWd1cmF0aW9uCisgICMgVE9ETyBy
ZW1vdmUgd2hlbiB0aGUgaW1hZ2Ugd2lsbCBmaXggdGhpcyBpc3N1ZQorICAtIGRjb25mIHJlc2V0
IC9vcmcvZ25vbWUvc3lzdGVtL2xvY2F0aW9uL2VuYWJsZWQgfHwgdHJ1ZQogCiBtYWtlY2hlY2s6
CiAgIHNjcmlwdDoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
