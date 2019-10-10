Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1651D265C
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398186EADD;
	Thu, 10 Oct 2019 09:31:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9576EAE9
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:31:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2F8A930A7B81
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:31:47 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8552D5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:31:46 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 10 Oct 2019 11:31:45 +0200
Message-Id: <20191010093145.20097-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 10 Oct 2019 09:31:47 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk] main: abort previous migration on
 switch-host message
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gdGhlIGhvc3QsIGl0IGlz
IHBvc3NpYmxlIHRoYXQgdGhlIG1pZ3JhdGlvbiBnb2VzIGZhc3RlciB0aGFuCmNsaWVudCBzaWRl
IHdvdWxkIGV4cGVjdC4gSW4gY2FzZSB3ZSByZWNlaXZlIGEgbWlncmF0ZS1iZWdpbiBtZXNzYWdl
CmZvbGxvd2VkIGJ5IHN3aXRjaC1ob3N0IG1lc3NhZ2UsIHdlIHNob3VsZCBiZSBzdXJlIHRvIGFi
b3J0IHByZXZpb3VzCm1pZ3JhdGlvbiB0byBhdm9pZCBrZWVwaW5nIHNvbWUgdW51c2VkIG9iamVj
dHMgaW4gbWVtb3J5IHBsdXMKY3JpdGljYWwgbWVzc2FnZXMgaW4gc3Vic2VxdWVudCBtaWdyYXRp
b25zIGFzIGJlbG93OgoKID4gR1NwaWNlLUNSSVRJQ0FMICoqOiBzcGljZV9zZXNzaW9uX3NldF9t
aWdyYXRpb25fc2Vzc2lvbjoKID4gYXNzZXJ0aW9uICdzZXNzaW9uLT5wcml2LT5taWdyYXRpb24g
PT0gTlVMTCcgZmFpbGVkCgpGb3VuZCBieSB0ZXN0aW5nIHdpdGggc3BpY2UvdGVzdHMvbWlncmF0
b24ucHkgd2l0aG91dCBRQ09XIGltYWdlLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZp
Y3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC1tYWluLmMgfCA1ICsrKysrCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwt
bWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCmluZGV4IDQzMDVkY2QuLjRhZmFhM2YgMTAwNjQ0
Ci0tLSBhL3NyYy9jaGFubmVsLW1haW4uYworKysgYi9zcmMvY2hhbm5lbC1tYWluLmMKQEAgLTI1
MDYsNiArMjUwNiwxMSBAQCBzdGF0aWMgdm9pZCBtYWluX2hhbmRsZV9taWdyYXRlX3N3aXRjaF9o
b3N0KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaQogICAgIH0KIAogICAgIHNl
c3Npb24gPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKGNoYW5uZWwpOworICAgIC8qIEl0IGlz
IHBvc3NpYmxlIHRoYXQgd2Ugd2VyZSBtaWdyYXRpbmcgYmVmb3JlIHJlY2VpdmluZyB0aGUgc3dp
dGNoLWhvc3QKKyAgICAgKiBtZXNzYWdlIHdpdGhvdXQgcmVjZWl2aW5nIGEgbWlncmF0ZS1jYW5j
ZWwgbWVzc2FnZS4gU2ltcGx5IGNhbmNlbAorICAgICAqIHByZXZpb3VzIG1pZ3JhdGlvbiBiZWZv
cmUgc3dpdGNoaW5nIGhvc3QgKi8KKyAgICBzcGljZV9zZXNzaW9uX2Fib3J0X21pZ3JhdGlvbihz
ZXNzaW9uKTsKKwogICAgIHNwaWNlX3Nlc3Npb25fc2V0X21pZ3JhdGlvbl9zdGF0ZShzZXNzaW9u
LCBTUElDRV9TRVNTSU9OX01JR1JBVElPTl9TV0lUQ0hJTkcpOwogICAgIGdfb2JqZWN0X3NldChz
ZXNzaW9uLAogICAgICAgICAgICAgICAgICAiaG9zdCIsIGhvc3QsCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
