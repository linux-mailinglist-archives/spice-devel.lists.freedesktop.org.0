Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E12CE170
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 14:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980F96E5C6;
	Mon,  7 Oct 2019 12:19:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6CB6E5C0
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 301B3C058CA4
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE14C3DAD
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:37 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 14:19:30 +0200
Message-Id: <20191007121935.22567-3-victortoso@redhat.com>
In-Reply-To: <20191007121935.22567-1-victortoso@redhat.com>
References: <20191007121935.22567-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 07 Oct 2019 12:19:38 +0000 (UTC)
Subject: [Spice-devel] [spice v1 3/8] tests: migrate: simplify wait_active()
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
aWZmIC0tZ2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggZjQ3
MWRkZmMuLjM3NWU1OWEwIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3Rz
L21pZ3JhdGUucHkKQEAgLTExNywyMCArMTE3LDE2IEBAIGRlZiBzdGFydF9jbGllbnQoY2xpZW50
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
