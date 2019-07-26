Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7583376B9C
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 16:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEDF6ED8D;
	Fri, 26 Jul 2019 14:28:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89BC16ED8D
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 14:28:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2354F81DF6
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 14:28:44 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3ACC027193;
 Fri, 26 Jul 2019 14:28:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 15:28:35 +0100
Message-Id: <20190726142836.10982-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 26 Jul 2019 14:28:44 +0000 (UTC)
Subject: [Spice-devel] [PATCH 1/2] Removed only written system_config_file
 field
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
c3JjL29wdGlvbnMuYyB8IDMgKy0tCiBzcmMvb3B0aW9ucy5oIHwgMSAtCiAyIGZpbGVzIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9vcHRp
b25zLmMgYi9zcmMvb3B0aW9ucy5jCmluZGV4IGM3Yzc1YTguLmE2YzdiOWUgMTAwNjQ0Ci0tLSBh
L3NyYy9vcHRpb25zLmMKKysrIGIvc3JjL29wdGlvbnMuYwpAQCAtODAsNyArODAsNiBAQCB2b2lk
IG9wdGlvbnNfZnJlZShvcHRpb25zX3QgKm9wdGlvbnMpCiAgICAgc3RyX3JlcGxhY2UoJm9wdGlv
bnMtPm9uX2Nvbm5lY3QsIE5VTEwpOwogICAgIHN0cl9yZXBsYWNlKCZvcHRpb25zLT5vbl9kaXNj
b25uZWN0LCBOVUxMKTsKICAgICBzdHJfcmVwbGFjZSgmb3B0aW9ucy0+dXNlcl9jb25maWdfZmls
ZSwgTlVMTCk7Ci0gICAgc3RyX3JlcGxhY2UoJm9wdGlvbnMtPnN5c3RlbV9jb25maWdfZmlsZSwg
TlVMTCk7CiB9CiAKIApAQCAtMzUzLDcgKzM1Miw3IEBAIHN0YXRpYyB2b2lkIG9wdGlvbnNfZnJv
bV9jb25maWcob3B0aW9uc190ICpvcHRpb25zKQogICAgICAgICBzeXN0ZW1rZXkgPSBnX2tleV9m
aWxlX25ldygpOwogICAgICAgICBpZiAoIWdfa2V5X2ZpbGVfbG9hZF9mcm9tX2RpcnMoc3lzdGVt
a2V5LCAieDExc3BpY2UveDExc3BpY2UuY29uZiIsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAoY29uc3QgY2hhciAqKikgZ19nZXRfc3lzdGVtX2NvbmZpZ19kaXJzKCks
Ci0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmb3B0aW9ucy0+c3lzdGVt
X2NvbmZpZ19maWxlLCBHX0tFWV9GSUxFX05PTkUsIE5VTEwpKSB7CisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBOVUxMLCBHX0tFWV9GSUxFX05PTkUsIE5VTEwpKSB7CiAg
ICAgICAgICAgICBnX2tleV9maWxlX2ZyZWUoc3lzdGVta2V5KTsKICAgICAgICAgICAgIHN5c3Rl
bWtleSA9IE5VTEw7CiAgICAgICAgIH0KZGlmZiAtLWdpdCBhL3NyYy9vcHRpb25zLmggYi9zcmMv
b3B0aW9ucy5oCmluZGV4IGU3Y2RlY2UuLjk0MzQxZTggMTAwNjQ0Ci0tLSBhL3NyYy9vcHRpb25z
LmgKKysrIGIvc3JjL29wdGlvbnMuaApAQCAtNjUsNyArNjUsNiBAQCB0eXBlZGVmIHN0cnVjdCB7
CiAKICAgICAvKiBmaWxlIG5hbWVzIG9mIGNvbmZpZyBmaWxlcyAqLwogICAgIGNoYXIgKnVzZXJf
Y29uZmlnX2ZpbGU7Ci0gICAgY2hhciAqc3lzdGVtX2NvbmZpZ19maWxlOwogfSBvcHRpb25zX3Q7
CiAKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
