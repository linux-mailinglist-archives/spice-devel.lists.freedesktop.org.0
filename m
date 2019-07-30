Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 953047A780
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09146E4DE;
	Tue, 30 Jul 2019 12:04:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A18DC6E4DE
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3AD1F308449B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:07 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C3D85D6B0;
 Tue, 30 Jul 2019 12:04:06 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:07 +0100
Message-Id: <20190730120331.17967-19-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 30 Jul 2019 12:04:07 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 19/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

UmVtb3ZlIHNvbWUgY29uc3RhbnQgZnJvbSBoZWFkZXJzLCBwdXQgaW4gdGhlIGltcGxlbWVudGF0
aW9uCi0tLQogc3JjL2NkLXNjc2kuYyB8IDMgKysrCiBzcmMvY2Qtc2NzaS5oIHwgNCAtLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9zcmMvY2Qtc2NzaS5jIGIvc3JjL2NkLXNjc2kuYwppbmRleCBiMzVkYWQ1Ny4uNzE1ZmUx
YzYgMTAwNjQ0Ci0tLSBhL3NyYy9jZC1zY3NpLmMKKysrIGIvc3JjL2NkLXNjc2kuYwpAQCAtMzIs
NiArMzIsOSBAQAogI2RlZmluZSBTUElDRV9FUlJPUihmbXQsIC4uLikgXAogICAgIGRvIHsgU1BJ
Q0VfREVCVUcoImRldi1zY3NpIGVycm9yOiAiIGZtdCAsICMjIF9fVkFfQVJHU19fKTsgfSB3aGls
ZSAoMCkKIAorI2RlZmluZSBGSVhFRF9TRU5TRV9DVVJSRU5UIDB4NzAKKyNkZWZpbmUgRklYRURf
U0VOU0VfTEVOIDE4CisKICNkZWZpbmUgTUFYX0xVTlMgICAzMgogCiB0eXBlZGVmIHN0cnVjdCBD
ZFNjc2lUYXJnZXQgQ2RTY3NpVGFyZ2V0OwpkaWZmIC0tZ2l0IGEvc3JjL2NkLXNjc2kuaCBiL3Ny
Yy9jZC1zY3NpLmgKaW5kZXggOTNjOTc1YTIuLjBmZDdiOTBiIDEwMDY0NAotLS0gYS9zcmMvY2Qt
c2NzaS5oCisrKyBiL3NyYy9jZC1zY3NpLmgKQEAgLTI4LDkgKzI4LDYgQEAKICNpbmNsdWRlICJj
ZC11c2ItYnVsay1tc2QuaCIKICNpbmNsdWRlICJzY3NpLWNvbnN0YW50cy5oIgogCi0jZGVmaW5l
IEZJWEVEX1NFTlNFX0NVUlJFTlQgMHg3MAotI2RlZmluZSBGSVhFRF9TRU5TRV9MRU4gMTgKLQog
I2lmIGRlZmluZWQoR19PU19XSU4zMikKICNpbmNsdWRlIDx3aW5zb2NrMi5oPgogI2luY2x1ZGUg
PHdpbmRvd3MuaD4KQEAgLTQ3LDcgKzQ0LDYgQEAgdHlwZWRlZiBlbnVtIFNjc2lYZmVyRGlyIHsK
IH0gU2NzaVhmZXJEaXI7CiAKICNkZWZpbmUgU0NTSV9DREJfQlVGX1NJWkUgICAxNgotI2RlZmlu
ZSBTQ1NJX1NFTlNFX0JVRl9TSVpFIDY0CiAKIHR5cGVkZWYgZW51bSBDZFNjc2lSZXFTdGF0ZSB7
CiAgICAgU0NTSV9SRVFfSURMRSA9IDAsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
