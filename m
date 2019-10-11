Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6A9D3CD9
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 11:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06D36EBFE;
	Fri, 11 Oct 2019 09:56:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA7A6EBFE
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3AE00309B689
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:43 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB2D860BE1;
 Fri, 11 Oct 2019 09:56:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 11 Oct 2019 10:56:26 +0100
Message-Id: <20191011095629.28447-3-fziglio@redhat.com>
In-Reply-To: <20191011095629.28447-1-fziglio@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 11 Oct 2019 09:56:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 2/5] build-sys: Provide spec
 file during build
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

SGF2aW5nIHRoZSBSUE0gc3BlYyBmaWxlIHByb2R1Y2VkIGJ5IHRoZSBidWlsZCBpcyBoZWxwZnVs
IGluCmRpZmZlcmVudCBzaXR1YXRpb24uIERpZmZlcmVudCB0b29scyBsaWtlIG1vY2sgb3IgY29k
ZQpzY2FubmVycyBhY2NlcHQgc291cmNlIFJQTXMgYXMgaW5wdXQuClByb3ZpZGluZyB0aGlzIGZp
bGUgYWxsb3dzIGVhc2lseSBidWlsZCBvZiB0aGUgc291cmNlIFJQTSAoYW5kCmJpbmFyaWVzKSB1
c2luZyBhIHNpbXBsZSBjb21tYW5kIGxpa2UKCiAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9j
b2wtWFhYWC50YXIuYnoyCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KLS0tCiBNYWtlZmlsZS5hbSAgICAgICAgICAgIHwgMSArCiBjb25maWd1cmUu
YWMgICAgICAgICAgIHwgMSArCiBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgMyArKy0KIDMgZmls
ZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
TWFrZWZpbGUuYW0gYi9NYWtlZmlsZS5hbQppbmRleCBkYjJkNWJhLi5jNWI5Nzg3IDEwMDY0NAot
LS0gYS9NYWtlZmlsZS5hbQorKysgYi9NYWtlZmlsZS5hbQpAQCAtMjUsNiArMjUsNyBAQCBNQUlO
VEFJTkVSQ0xFQU5GSUxFUyA9CQkJCQkJXAogRVhUUkFfRElTVCA9CQkJCQkJCVwKIAlSRUFETUUu
bWQJCQkJCQlcCiAJQ0hBTkdFTE9HLm1kCQkJCQkJXAorCXNwaWNlLXByb3RvY29sLnNwZWMJCQkJ
CVwKIAltZXNvbi5idWlsZAogCiAtaW5jbHVkZSAkKHRvcF9zcmNkaXIpL2dpdC5tawpkaWZmIC0t
Z2l0IGEvY29uZmlndXJlLmFjIGIvY29uZmlndXJlLmFjCmluZGV4IGJjM2UzM2YuLjJhZGNiN2Mg
MTAwNjQ0Ci0tLSBhL2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTE4LDQgKzE4
LDUgQEAgQUNfT1VUUFVUKFsKIE1ha2VmaWxlCiBzcGljZS1wcm90b2NvbC5wYwogc3BpY2UvTWFr
ZWZpbGUKK3NwaWNlLXByb3RvY29sLnNwZWMKIF0pCmRpZmYgLS1naXQgYS9zcGljZS1wcm90b2Nv
bC5zcGVjLmluIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgppbmRleCBhMTNhZTk5Li5jYzFmYWRj
IDEwMDY0NAotLS0gYS9zcGljZS1wcm90b2NvbC5zcGVjLmluCisrKyBiL3NwaWNlLXByb3RvY29s
LnNwZWMuaW4KQEAgLTEsNyArMSw4IEBACiBOYW1lOiAgICAgICAgICAgc3BpY2UtcHJvdG9jb2wK
LVZlcnNpb246ICAgICAgICAwLjE0LjAKK1ZlcnNpb246ICAgICAgICBAVkVSU0lPTkAKIFJlbGVh
c2U6ICAgICAgICAxJXs/ZGlzdH0KIFN1bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFk
ZXIgZmlsZXMKK0dyb3VwOiAgICAgICAgICBEZXZlbG9wbWVudC9MaWJyYXJpZXMKICMgTWFpbiBo
ZWFkZXJzIGFyZSBCU0QsIGNvbnRyb2xsZXIgLyBmb3JlaWduIG1lbnUgYXJlIExHUEwKIExpY2Vu
c2U6ICAgICAgICBCU0QgYW5kIExHUEx2MisKIFVSTDogICAgICAgICAgICBodHRwOi8vd3d3LnNw
aWNlLXNwYWNlLm9yZy8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
