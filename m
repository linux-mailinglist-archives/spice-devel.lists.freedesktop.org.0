Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC81D0AF9
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFA36E2D7;
	Wed,  9 Oct 2019 09:23:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4726E2D7
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E877C877AD3
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:10 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9245260920;
 Wed,  9 Oct 2019 09:23:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:22:58 +0100
Message-Id: <20191009092302.15025-2-fziglio@redhat.com>
In-Reply-To: <20191009092302.15025-1-fziglio@redhat.com>
References: <20191009092302.15025-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Wed, 09 Oct 2019 09:23:10 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3 1/5] smartcard: Fix copying
 remaining request
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

VXNlIG1lbW1vdmUgaW5zdGVhZCBvZiBtZW1jcHkgYXMgdGhlIGJ1ZmZlciBjYW4gb3ZlcmxhcCBp
ZiB0aGUgc2Vjb25kCnJlcXVlc3QgaWYgYmlnZ2VyIHRoYW4gdGhlIGZpcnN0LgoiYnVmX3BvcyIg
cG9pbnRzIHRvIHRoZSBwb2ludCBvZiB0aGUgYnVmZmVyIGFmdGVyIHdlIHJlYWQsIGlmIHdlIHdh
bnQKdGhlIGZpcnN0IHBhcnQgb2YgdGhlIG5leHQgcmVxdWVzdCBpcyAiYnVmX3BvcyAtIHJlbWFp
bmluZyIuClNhbWUgY29uc2lkZXJhdGlvbiBzZXR0aW5nICJidWZfcG9zIiBmb3IgdGhlIG5leHQg
aXRlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Ci0tLQogc2VydmVyL3NtYXJ0Y2FyZC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9zbWFy
dGNhcmQuYyBiL3NlcnZlci9zbWFydGNhcmQuYwppbmRleCA0YzViYmEwN2QuLmJmNWU5MDUyMCAx
MDA2NDQKLS0tIGEvc2VydmVyL3NtYXJ0Y2FyZC5jCisrKyBiL3NlcnZlci9zbWFydGNhcmQuYwpA
QCAtMTUwLDkgKzE1MCw5IEBAIHN0YXRpYyBSZWRQaXBlSXRlbSAqc21hcnRjYXJkX3JlYWRfbXNn
X2Zyb21fZGV2aWNlKFJlZENoYXJEZXZpY2UgKnNlbGYsCiAgICAgICAgIG1zZ190b19jbGllbnQg
PSBzbWFydGNhcmRfY2hhcl9kZXZpY2Vfb25fbWVzc2FnZV9mcm9tX2RldmljZShkZXYsIHZoZWFk
ZXIpOwogICAgICAgICByZW1haW5pbmcgPSBkZXYtPnByaXYtPmJ1Zl91c2VkIC0gc2l6ZW9mKFZT
Q01zZ0hlYWRlcikgLSBhY3R1YWxfbGVuZ3RoOwogICAgICAgICBpZiAocmVtYWluaW5nID4gMCkg
ewotICAgICAgICAgICAgbWVtY3B5KGRldi0+cHJpdi0+YnVmLCBkZXYtPnByaXYtPmJ1Zl9wb3Ms
IHJlbWFpbmluZyk7CisgICAgICAgICAgICBtZW1tb3ZlKGRldi0+cHJpdi0+YnVmLCBkZXYtPnBy
aXYtPmJ1Zl9wb3MgLSByZW1haW5pbmcsIHJlbWFpbmluZyk7CiAgICAgICAgIH0KLSAgICAgICAg
ZGV2LT5wcml2LT5idWZfcG9zID0gZGV2LT5wcml2LT5idWY7CisgICAgICAgIGRldi0+cHJpdi0+
YnVmX3BvcyA9IGRldi0+cHJpdi0+YnVmICsgcmVtYWluaW5nOwogICAgICAgICBkZXYtPnByaXYt
PmJ1Zl91c2VkID0gcmVtYWluaW5nOwogICAgICAgICBpZiAobXNnX3RvX2NsaWVudCkgewogICAg
ICAgICAgICAgcmV0dXJuICZtc2dfdG9fY2xpZW50LT5iYXNlOwotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
