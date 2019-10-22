Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E711DFF7C
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DE06E453;
	Tue, 22 Oct 2019 08:34:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138B56E450
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-rwmklYNjMyaBmMVH0td2Yg-1; Tue, 22 Oct 2019 04:34:08 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36C0E1005500
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:07 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 100975C1D4;
 Tue, 22 Oct 2019 08:34:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 22 Oct 2019 09:33:56 +0100
Message-Id: <20191022083358.14214-3-fziglio@redhat.com>
In-Reply-To: <20191022083358.14214-1-fziglio@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: rwmklYNjMyaBmMVH0td2Yg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571733252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IoMmQWxc9NgFRwxMqgY4N3UhrTU7o94FumJ3JdASLJc=;
 b=b+Ky1kt2OaBW+Wkdx7NYpZmA3tPptwRbagowqHgXL6h9fM0iHbZPPl2R6K4EtRPuJF5B1t
 6l5W02AulTIh2dQPOiJVu4Pegh8O6Le0amMWxa6b+KCKARokxIe1oh5YN64J1g0sZW80aU
 DTMANKQrAi3/CZhXCRyg/g+PvLfTQAE=
Subject: [Spice-devel] [PATCH spice-protocol v3 3/5] build-sys: Provide spec
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
bC5zcGVjLmluIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgppbmRleCBlMjQwNjM3Li40OTcyNGM2
IDEwMDY0NAotLS0gYS9zcGljZS1wcm90b2NvbC5zcGVjLmluCisrKyBiL3NwaWNlLXByb3RvY29s
LnNwZWMuaW4KQEAgLTEsNyArMSw4IEBACiBOYW1lOiAgICAgICAgICAgc3BpY2UtcHJvdG9jb2wK
LVZlcnNpb246ICAgICAgICAwLjE0LjAKK1ZlcnNpb246ICAgICAgICBAVkVSU0lPTkAKIFJlbGVh
c2U6ICAgICAgICAxJXs/ZGlzdH0KIFN1bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFk
ZXIgZmlsZXMKK0dyb3VwOiAgICAgICAgICBEZXZlbG9wbWVudC9MaWJyYXJpZXMKICMgTWFpbiBo
ZWFkZXJzIGFyZSBCU0QsIGNvbnRyb2xsZXIgLyBmb3JlaWduIG1lbnUgYXJlIExHUEwKIExpY2Vu
c2U6ICAgICAgICBCU0QgYW5kIExHUEx2MisKIFVSTDogICAgICAgICAgICBodHRwczovL3d3dy5z
cGljZS1zcGFjZS5vcmcKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
