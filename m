Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 147AFC9F7C
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 15:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CBB6E9D6;
	Thu,  3 Oct 2019 13:33:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9CAD6E9D1
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9565330BB379
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:11 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 04C7D5D9DC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:10 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  3 Oct 2019 16:33:05 +0300
Message-Id: <20191003133305.12645-4-uril@redhat.com>
In-Reply-To: <20191003133305.12645-1-uril@redhat.com>
References: <20191003133305.12645-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 03 Oct 2019 13:33:11 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH v2 3/3] Prepare for v0.3
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

MS4gdXBkYXRlIE5FV1MKMi4gdXBkYXRlIGNvbmZpZ3VyZS5hYwozLiB1cGRhdGUgc3BlYyBmaWxl
CgpTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBORVdTICAgICAgICAgICAg
ICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysrCiBjb25maWd1cmUuYWMgICAgICAg
ICAgICAgICAgICB8ICAyICstCiBzcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbiB8ICAzICsr
KwogMyBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvTkVXUyBiL05FV1MKaW5kZXggYWVkZjA3YS4uMmJkNmIxOCAxMDA2NDQKLS0tIGEv
TkVXUworKysgYi9ORVdTCkBAIC0xLDMgKzEsMjAgQEAKK01ham9yIGNoYW5nZXMgaW4gMC4zOgor
PT09PT09PT09PT09PT09PT09PT09CistIEltcHJvdmUgdGhlIGludmFsaWQgb3B0aW9uIGFyZ3Vt
ZW50ICgtYykgZXJyb3IgbWVzc2FnZQorLSBJbXByb3ZlIHRoZSBmcmFtZSBsb2cgbWVzc2FnZXMK
Ky0gTWFrZSB0aGUgdHJ5LWNhdGNoIGJsb2NrIGluIG1haW4oKSBhIGNhdGNoLWFsbAorLSBTZXQg
ZGVmYXVsdCBzeXNsb2cgbWFzayB0byBhIGxvd2VyIGxldmVsCistIEZpeCBzb21lIGNsYW5nIGJ1
aWxkIGVycm9ycworLSBBZGRpbmcgZ3N0cmVhbWVyIGJhc2VkIHBsdWdpbgorLSBNYWtlIGVycm9y
LmhwcCBhbmQgdGhlIEVycm9yIGNsYXNzIGEgcHVibGljIEFQSQorLSBFeHBvcnQgc3ltYm9scyBp
biB0aGUgYmluYXJ5IHRvIGJlIHVzZWQgYnkgcGx1Z2lucworLSBJbnRlcmZhY2UgKyBpbXBsZW1l
bnRhdGlvbiBvZiBnZXR0aW5nIGRldmljZSBkaXNwbGF5IGluZm8KKy0gU2VuZCB0aGUgR3JhcGhp
Y3NEZXZpY2VJbmZvIHRvIHRoZSBzZXJ2ZXIKKy0gQWRkIHN1cHBvcnQgZm9yIGxvZ2dpbmcgc3Rh
dGlzdGljcyBmcm9tIHBsdWdpbnMKKy0gRW5hYmxlIGJ1aWxkaW5nIHdpdGggR0NDIDkKKy0gQWRk
IGEgbWFuIHBhZ2UKKworCiBNYWpvciBjaGFuZ2VzIGluIDAuMjoKID09PT09PT09PT09PT09PT09
PT09PQogLSBGaXJzdCByZWxlYXNlCmRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1
cmUuYWMKaW5kZXggMWM3Nzg4Yi4uYmFiMWNjNyAxMDA2NDQKLS0tIGEvY29uZmlndXJlLmFjCisr
KyBiL2NvbmZpZ3VyZS5hYwpAQCAtMSw2ICsxLDYgQEAKIEFDX1BSRVJFUShbMi41N10pCiAKLUFD
X0lOSVQoc3BpY2Utc3RyZWFtaW5nLWFnZW50LCAwLjIsCitBQ19JTklUKHNwaWNlLXN0cmVhbWlu
Zy1hZ2VudCwgMC4zLAogICAgICAgICBbc3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
XSkKIAogQU1fQ09ORklHX0hFQURFUihbY29uZmlnLmhdKQpkaWZmIC0tZ2l0IGEvc3BpY2Utc3Ry
ZWFtaW5nLWFnZW50LnNwZWMuaW4gYi9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgppbmRl
eCA5Y2E2ZGM2Li4xM2NlZjEzIDEwMDY0NAotLS0gYS9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3Bl
Yy5pbgorKysgYi9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgpAQCAtNzMsNiArNzMsOSBA
QCBmaQogJXtfbGliZGlyfS9wa2djb25maWcKIAogJWNoYW5nZWxvZworKiBUaHUgU2VwIDE5IDIw
MTkgVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPiAtIDAuMy0xCistIFVwZGF0ZSB0byAwLjMg
cmVsZWFzZQorCiAqIFRodSBNYXkgMzEgMjAxOCBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+
IC0gMC4yLTEKIC0gRmlyc3QgcmVsZWFzZQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
