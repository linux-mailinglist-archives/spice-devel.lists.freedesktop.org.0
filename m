Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1475AA4E2
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F3F6E0EC;
	Thu,  5 Sep 2019 13:43:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD726E0ED
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E31DC315C027
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:20 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 15F955C1D4;
 Thu,  5 Sep 2019 13:43:19 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:42:40 +0100
Message-Id: <20190905134241.28873-18-fziglio@redhat.com>
In-Reply-To: <20190905134241.28873-1-fziglio@redhat.com>
References: <20190905134241.28873-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 05 Sep 2019 13:43:20 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v6 17/18] test-cd-emu: Make sure we
 can call spice_usb_backend_channel_flush_writes
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

Q3VycmVudGx5IHdlIGNhbGwgdGhpcyBmdW5jdGlvbiB3aGVuIHRoZSBTUElDRSBjaGFubmVsIGlz
IHVwCmhvd2V2ZXIgdGhpcyBmdW5jdGlvbiBzaG91bGQgY29udGludWUgdG8gd29yayBhcyBpbiB0
aGVvcnkKdGhlIGNoYW5uZWwgY291bGQgYXZvaWQgdG8gaGFuZGxlIHRoZSBtZXNzYWdlIGFuZCBz
dG9wIHRoZSBmbG93Cihmb3IgaW5zdGFuY2UgdG8gaW1wbGVtZW50IHNvbWUga2luZCBvZiBmbG93
IGxpbWl0YXRpb24pCmFuZCBzbyB3aWxsIG5lZWQgdG8gY2FsbCB0aGlzIGZ1bmN0aW9uIGFnYWlu
LgpUaGlzIHdhcyBmYWlsaW5nIGluIHRoZSBmaXJzdCBVU0IgZW11bGF0aW9uIGltcGxlbWVudGF0
aW9uCmNhdXNpbmcgYSBjcmFzaC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL2NkLWVtdS5jIHwgNCArKysrCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY2QtZW11LmMgYi90ZXN0
cy9jZC1lbXUuYwppbmRleCBmYjAyM2E5OS4uNjkwNDIzYmIgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2Nk
LWVtdS5jCisrKyBiL3Rlc3RzL2NkLWVtdS5jCkBAIC0xNjQsNiArMTY0LDEwIEBAIGRldmljZV9p
dGVyYXRpb24oY29uc3QgaW50IGxvb3AsIGNvbnN0IGJvb2wgYXR0YWNoX29uX2Nvbm5lY3QpCiAg
ICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwgaGVsbG9zX2V4cGVjdGVkKTsKICAg
ICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwgPj0sIG1lc3NhZ2VzX2V4cGVjdGVkKTsK
IAorICAgIHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfZmx1c2hfd3JpdGVzKHVzYl9jaCk7Cisg
ICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwgaGVsbG9zX2V4cGVjdGVkKTsKKyAg
ICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwgPj0sIG1lc3NhZ2VzX2V4cGVjdGVkKTsK
KwogICAgIC8vIHNlbmQgaGVsbG8gcmVwbHkKICAgICBpZiAobG9vcCA9PSAwKSB7CiAgICAgICAg
IERBVEFfU1RBUlQKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
