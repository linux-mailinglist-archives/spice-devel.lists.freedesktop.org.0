Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0C2E64A
	for <lists+spice-devel@lfdr.de>; Mon, 29 Apr 2019 17:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC77089000;
	Mon, 29 Apr 2019 15:25:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2B989000
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 15:25:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86DBC3DDBE
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 15:25:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CCCC6442C;
 Mon, 29 Apr 2019 15:25:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 29 Apr 2019 16:25:32 +0100
Message-Id: <20190429152532.19411-2-fziglio@redhat.com>
In-Reply-To: <20190429152532.19411-1-fziglio@redhat.com>
References: <20190429152532.19411-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 29 Apr 2019 15:25:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3 2/2] build: Prepare for 0.14.2
 release
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
TkVXUyAgICAgICAgIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCiBjb25maWd1cmUuYWMgfCAg
NiArKystLS0KIG1lc29uLmJ1aWxkICB8ICA2ICsrKy0tLQogMyBmaWxlcyBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKQ2hhbmdlcyBzaW5jZSB2MjoKLSBhZGQgYSBu
b3RlIGZvciBrZXlib2FyZCBmaXgKCmRpZmYgLS1naXQgYS9ORVdTIGIvTkVXUwppbmRleCA0MDNk
ZjYzYy4uMTY4ZTIwZDAgMTAwNjQ0Ci0tLSBhL05FV1MKKysrIGIvTkVXUwpAQCAtMSwzICsxLDI0
IEBACitNYWpvciBDaGFuZ2VzIGluIDAuMTQuMjoKKz09PT09PT09PT09PT09PT09PT09PT09PQor
CitNYWluIGNoYW5nZXMgYXJlIHN1cHBvcnQgZm9yIE1lc29uIGJ1aWxkIGFuZCBncmFwaGljIGRl
dmljZSBpbmZvCittZXNzYWdlcyBhbGxvd2luZyB0byBiZXR0ZXIgc3VwcG9ydCBtdWx0aS1tb25p
dG9yIGNvbmZpZ3VyYXRpb25zLgorCisqIENWRS0yMDE5LTM4MTM6IGZpeCBvZmYtYnktb25lIGVy
cm9yIGluIGdyb3VwL3Nsb3QgYm91bmRhcnkgY2hlY2sKKyogc3VwcG9ydCBIMjY1IGluIHN0cmVh
bS1jaGFubmVsCisqIGFkZCBzdXBwb3J0IGZvciBidWlsZGluZyB3aXRoIG1lc29uL25pbmphCisq
IG1pbm9yIHRlc3RzIGZpeGVzIGltcHJvdmluZyBDSQorKiBzZXQgY2hhciBkZXZpY2Ugc3RhdGUg
Zm9yIHNtYXJ0Y2FyZCwgYWxsb3dpbmcgUWVtdSBvcHRpbWl6YXRpb24KKyogaW1wcm92ZSByZWQt
cGFyc2UtcXhsLmMgaW50ZXJmYWNlIG1ha2luZyBpdCBtb3JlIGNvbnNpc3RlbnQKKyogYWRkIHNv
bWUgaW5zdHJ1bWVudGF0aW9uIGZvciBzdHJlYW1pbmcgZGV2aWNlCisqIFFYTCBpbnRlcmZhY2U6
IGFkZCBhIGZ1bmN0aW9uIHRvIGlkZW50aWZ5IG1vbml0b3JzIGluIHRoZSBndWVzdAorICAoc3Bp
Y2VfcXhsX3NldF9kZXZpY2VfaW5mbykKKyogYWRkIHN1cHBvcnQgZm9yIEdyYXBoaWNzRGV2aWNl
SW5mbyBtZXNzYWdlcworKiB2aWRlby1zdHJlYW06IHByZXZlbnQgY3Jhc2ggb24gc3RyZWFtIHJl
YXR0YWNoCisqIG1ha2UgY2hhbm5lbCBjbGllbnQgY2FsbGJhY2tzIHZpcnR1YWwgZnVuY3Rpb25z
CisqIGJ1bXBlZCBtaW5pbXVtIHJlcXVpcmVkIGdsaWIgdmVyc2lvbiB0byAyLjM4CisqIGF0dGVt
cHQgdG8gaGF2ZSBhIHJlbGlhYmxlIGxlZCBzdGF0ZSBmb3Iga2V5Ym9hcmQgbW9kaWZpZXJzCisK
IE1ham9yIENoYW5nZXMgaW4gMC4xNC4xOgogPT09PT09PT09PT09PT09PT09PT09PT09CiAKZGlm
ZiAtLWdpdCBhL2NvbmZpZ3VyZS5hYyBiL2NvbmZpZ3VyZS5hYwppbmRleCA0YTQ3MDQyNy4uMWNl
ODFmOTEgMTAwNjQ0Ci0tLSBhL2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTEy
LDkgKzEyLDkgQEAgQUNfUFJFUkVRKFsyLjU3XSkKICMgICB0aGVuIHNldCBhZ2UgdG8gMC4KICMK
IGRubCBUT0RPIHNlZSBzZXJ2ZXIvc3BpY2UtY2hhci5oIFRPRE8gY29tbWVudCBmb3IgQVBJIGJy
ZWFrYWdlCi1tNF9kZWZpbmUoW1NQSUNFX0NVUlJFTlRdLCBbMTNdKQotbTRfZGVmaW5lKFtTUElD
RV9SRVZJU0lPTl0sIFs1XSkKLW00X2RlZmluZShbU1BJQ0VfQUdFXSwgWzEyXSkKK200X2RlZmlu
ZShbU1BJQ0VfQ1VSUkVOVF0sIFsxNF0pCittNF9kZWZpbmUoW1NQSUNFX1JFVklTSU9OXSwgWzBd
KQorbTRfZGVmaW5lKFtTUElDRV9BR0VdLCBbMTNdKQogCiBBQ19JTklUKHNwaWNlLCBbbTRfZXN5
c2NtZChidWlsZC1hdXgvZ2l0LXZlcnNpb24tZ2VuIC50YXJiYWxsLXZlcnNpb24pXSwKICAgICAg
ICAgW3NwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10sIHNwaWNlKQpkaWZmIC0tZ2l0
IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZAppbmRleCAyOTUxNTYxZi4uYTUwMzk4ODIgMTAw
NjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0yNyw5ICsyNyw5IEBA
IHJ1bl9jb21tYW5kKCdidWlsZC1hdXgvbWVzb24vY2hlY2stc3BpY2UtY29tbW9uJywgY2hlY2sg
OiB0cnVlKQogIyAgIHRoZW4gc2V0IGFnZSB0byAwLgogIwogIwotc3BpY2Vfc2VydmVyX2N1cnJl
bnQgPSAxMwotc3BpY2Vfc2VydmVyX3JldmlzaW9uID0gNQotc3BpY2Vfc2VydmVyX2FnZSA9IDEy
CitzcGljZV9zZXJ2ZXJfY3VycmVudCA9IDE0CitzcGljZV9zZXJ2ZXJfcmV2aXNpb24gPSAwCitz
cGljZV9zZXJ2ZXJfYWdlID0gMTMKIHNwaWNlX3NlcnZlcl9zb192ZXJzaW9uID0gJ0AwQC5AMUAu
QDJAJy5mb3JtYXQoc3BpY2Vfc2VydmVyX2N1cnJlbnQgLSBzcGljZV9zZXJ2ZXJfYWdlLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV9zZXJ2ZXJf
YWdlLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGlj
ZV9zZXJ2ZXJfcmV2aXNpb24pCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
