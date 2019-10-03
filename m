Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5569C9BD8
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 12:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D60E6E99A;
	Thu,  3 Oct 2019 10:14:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE2E6E104
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C9DD230982B2
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:25 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 562275D9DC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:25 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  3 Oct 2019 12:14:22 +0200
Message-Id: <20191003101423.732-3-victortoso@redhat.com>
In-Reply-To: <20191003101423.732-1-victortoso@redhat.com>
References: <20191003101423.732-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 03 Oct 2019 10:14:25 +0000 (UTC)
Subject: [Spice-devel] [spice/tests/migrate v1 3/4] tests: migrate: simplify
 wait_active()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKV2UgYXJlIG9ubHkgaW50ZXJl
c3RlZCBpbiB0aGUgcnVubmluZyBzdGF0ZSBvZiBxbXAgKG9yIFZDUFVTKSBoZXJlCndoaWNoIGlz
IHdoYXQgd2UgY2hlY2suIE1vdmluZyB0aGlzIGNoZWNrIHRvIHRoZSB0cnkgYnJhbmNoIGFsbG93
cwpyZW1vdmluZyBzb21lIGV4dHJhIGNoZWNrcy4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3Nv
IDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWlncmF0ZS5weSB8IDEwICsrKy0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggODhl
MTc2OTEuLjlhZmViNTljIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3Rz
L21pZ3JhdGUucHkKQEAgLTExMCwyMCArMTEwLDE2IEBAIGRlZiBzdGFydF9jbGllbnQoY2xpZW50
LCBzcGljZV9wb3J0KToKICAgICByZXR1cm4gUG9wZW4oY2xpZW50X2NtZC5zcGxpdCgpLCBleGVj
dXRhYmxlPWNsaWVudCkKIAogZGVmIHdhaXRfYWN0aXZlKHEsIGFjdGl2ZSk6Ci0gICAgZXZlbnRz
ID0gWyJSRVNVTUUiXSBpZiBhY3RpdmUgZWxzZSBbIlNUT1AiXQogICAgIHdoaWxlIFRydWU6CiAg
ICAgICAgIHRyeToKICAgICAgICAgICAgIHJldCA9IHEuY21kKCJxdWVyeS1zdGF0dXMiKQorICAg
ICAgICAgICAgaWYgcmV0WyJyZXR1cm4iXVsicnVubmluZyJdID09IGFjdGl2ZToKKyAgICAgICAg
ICAgICAgICBicmVhawogICAgICAgICBleGNlcHQ6CiAgICAgICAgICAgICAjIFZhbHVlRXJyb3IK
ICAgICAgICAgICAgIHRpbWUuc2xlZXAoMC4xKQogICAgICAgICAgICAgY29udGludWUKLSAgICAg
ICAgaWYgcmV0IGFuZCByZXQuaGFzX2tleSgicmV0dXJuIik6Ci0gICAgICAgICAgICBpZiByZXRb
InJldHVybiJdWyJydW5uaW5nIl0gPT0gYWN0aXZlOgotICAgICAgICAgICAgICAgIGJyZWFrCi0g
ICAgICAgIGZvciBlIGluIHEuZ2V0X2V2ZW50cygpOgotICAgICAgICAgICAgaWYgZVsiZXZlbnQi
XSBpbiBldmVudHM6Ci0gICAgICAgICAgICAgICAgYnJlYWsKKwogICAgICAgICB0aW1lLnNsZWVw
KDAuNSkKIAogZGVmIHdhaXRfZm9yX2V2ZW50KHEsIGV2ZW50KToKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
