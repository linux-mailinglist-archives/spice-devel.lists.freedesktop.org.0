Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AE21E9F3
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 10:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB2D893AB;
	Wed, 15 May 2019 08:17:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48291892B6
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 08:17:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D457F356D3
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 08:17:16 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F3CAF5D71E;
 Wed, 15 May 2019 08:17:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 May 2019 09:17:12 +0100
Message-Id: <20190515081712.24210-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 15 May 2019 08:17:16 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] build: Do not generate ChangeLog
 file
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

VGhlcmUncyBhbHJlYWR5IGEgaGFuZCB3cml0dGVuIGNoYW5nZSBsb2cgYW5kIHBlb3BsZSBjYW4g
bG9vawphdCByZXBvc2l0b3J5IGhpc3RvcnkuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBNYWtlZmlsZS5hbSB8IDE1ICsrKystLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvTWFrZWZpbGUuYW0gYi9NYWtlZmlsZS5hbQppbmRleCA5ZmNiMmQzYi4uM2M2
MDdjOWEgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlLmFtCisrKyBiL01ha2VmaWxlLmFtCkBAIC00MCwx
OCArNDAsOCBAQCBNQUlOVEFJTkVSQ0xFQU5GSUxFUyA9CQkJCQlcCiAJZ3RrLWRvYy5tYWtlCQkJ
CQlcCiAJJChOVUxMKQogCi0jIEdlbmVyYXRlIHRoZSBDaGFuZ2VMb2cgZmlsZQotIyBhbmQgaW5z
ZXJ0IGl0IGludG8gdGhlIGRpcmVjdG9yeSB3ZSdyZSBhYm91dCB0byB1c2UgdG8gY3JlYXRlIGEg
dGFyYmFsbC4KLS5QSE9OWTogZ2VuLUNoYW5nZUxvZyBnZW4tVEhBTktTCi1nZW4tQ2hhbmdlTG9n
OgotCWlmIHRlc3QgLWQgLmdpdCB8fCB0ZXN0IC1kIC4uLy5naXQ7IHRoZW4JCQkJXAotCSAgJCh0
b3Bfc3JjZGlyKS9idWlsZC1hdXgvZ2l0bG9nLXRvLWNoYW5nZWxvZyA+ICQoZGlzdGRpcikvY2wt
dDsJXAotCSAgcm0gLWYgJChkaXN0ZGlyKS9DaGFuZ2VMb2c7CQkJCQkJXAotCSAgbXYgJChkaXN0
ZGlyKS9jbC10ICQoZGlzdGRpcikvQ2hhbmdlTG9nOwkJCQlcCi0JZmkKLQogIyBzZWUgZ2l0LXZl
cnNpb24tZ2VuCi1kaXN0LWhvb2s6IGdlbi1DaGFuZ2VMb2cgZ2VuLVRIQU5LUworZGlzdC1ob29r
OiBnZW4tVEhBTktTCiAJZWNobyAkKFZFUlNJT04pID4gJChkaXN0ZGlyKS8udGFyYmFsbC12ZXJz
aW9uCiAKIEJVSUxUX1NPVVJDRVMgPSAkKHRvcF9zcmNkaXIpLy52ZXJzaW9uCkBAIC02OCw2ICs1
OCw5IEBAIERJU1RDSEVDS19DT05GSUdVUkVfRkxBR1MgPQkJCVwKIAktLXdpdGgtZ3RrPTMuMAkJ
CQlcCiAJJChOVUxMKQogCisjIEdlbmVyYXRlIHRoZSBUSEFOS1MgZmlsZQorIyBhbmQgaW5zZXJ0
IGl0IGludG8gdGhlIGRpcmVjdG9yeSB3ZSdyZSBhYm91dCB0byB1c2UgdG8gY3JlYXRlIGEgdGFy
YmFsbC4KKy5QSE9OWTogZ2VuLVRIQU5LUwogZ2VuLVRIQU5LUzoKIAkkKEFNX1ZfR0VOKWlmIHRl
c3QgLWQgLmdpdCB8fCB0ZXN0IC1kIC4uLy5naXQ7IHRoZW4JCQkJCQlcCiAJICBlY2hvICJUaGUg
c3BpY2UtZ3RrIHRlYW0gd291bGQgbGlrZSB0byB0aGFuayB0aGUgZm9sbG93aW5nIGNvbnRyaWJ1
dG9yczoiID4gJChkaXN0ZGlyKS90LXQ7CVwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
