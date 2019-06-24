Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EAB50512
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 11:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A91898AF;
	Mon, 24 Jun 2019 09:03:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9FE898AF
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 09:03:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E034C81DE0
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 09:03:22 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.0])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1593B1972A;
 Mon, 24 Jun 2019 09:03:21 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 24 Jun 2019 11:03:14 +0200
Message-Id: <20190624090314.21734-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 24 Jun 2019 09:03:22 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] file-transfer-task: emit signals in
 main context
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

U29tZSBwYXJ0cyBvZiB0aGUgaW50ZXJuYWwgZmlsZSB0cmFuc2ZlciB0YXNrIEFQSQpjYW4gYmUg
aW52b2tlZCBpbiB0aGUgY29yb3V0aW5lIGNvbnRleHQsIHNvIGluIHRoZXNlIGNhc2VzCnVzZSBn
X2Nvcm91dGluZV9zaWduYWxfZW1pdCBhbmQgZ19jb3JvdXRpbmVfb2JqZWN0X25vdGlmeS4KClNp
Z25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Ci0tLQogc3JjL3Nw
aWNlLWZpbGUtdHJhbnNmZXItdGFzay5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWZpbGUt
dHJhbnNmZXItdGFzay5jIGIvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay5jCmluZGV4IGQw
MTcwZGEuLjkwZjMxZGIgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2su
YworKysgYi9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLmMKQEAgLTMyNyw3ICszMjcsNyBA
QCB2b2lkIHNwaWNlX2ZpbGVfdHJhbnNmZXJfdGFza19jb21wbGV0ZWQoU3BpY2VGaWxlVHJhbnNm
ZXJUYXNrICpzZWxmLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNlbGYpOwogICAg
IHNlbGYtPnBlbmRpbmcgPSBUUlVFOwogc2lnbmFsOgotICAgIGdfc2lnbmFsX2VtaXQoc2VsZiwg
dGFza19zaWduYWxzW1NJR05BTF9GSU5JU0hFRF0sIDAsIHNlbGYtPmVycm9yKTsKKyAgICBnX2Nv
cm91dGluZV9zaWduYWxfZW1pdChzZWxmLCB0YXNrX3NpZ25hbHNbU0lHTkFMX0ZJTklTSEVEXSwg
MCwgc2VsZi0+ZXJyb3IpOwogICAgIC8qIFNwaWNlRmlsZVRyYW5zZmVyVGFzayB1bnJlZiBpcyBk
b25lIGFmdGVyIGlucHV0IHN0cmVhbSBpcyBjbG9zZWQgKi8KIH0KIApAQCAtNDMzLDggKzQzMyw4
IEBAIHZvaWQgc3BpY2VfZmlsZV90cmFuc2Zlcl90YXNrX3JlYWRfYXN5bmMoU3BpY2VGaWxlVHJh
bnNmZXJUYXNrICpzZWxmLAogICAgIC8qIE5vdGlmeSB0aGUgcHJvZ3Jlc3MgcHJpb3IgdGhlIHJl
YWQgdG8gbWFrZSB0aGUgaW5mbyBiZSByZWxhdGVkIHRvIHRoZQogICAgICAqIGRhdGEgdGhhdCB3
YXMgYWxyZWFkeSBzZW50LiBUbyBub3RpZnkgdGhlIDEwMCUgKGNvbXBsZXRlZCksIGNoYW5uZWwt
bWFpbgogICAgICAqIHNob3VsZCBjYWxsIHJlYWQtYXN5bmMgd2hlbiBpdCBleHBlY3RzIEVPRi4g
Ki8KLSAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1Qoc2VsZiksICJwcm9ncmVzcyIpOwotICAg
IGdfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInRyYW5zZmVycmVkLWJ5dGVzIik7Cisg
ICAgZ19jb3JvdXRpbmVfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInByb2dyZXNzIik7
CisgICAgZ19jb3JvdXRpbmVfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInRyYW5zZmVy
cmVkLWJ5dGVzIik7CiAKICAgICB0YXNrID0gZ190YXNrX25ldyhzZWxmLCBzZWxmLT5jYW5jZWxs
YWJsZSwgY2FsbGJhY2ssIHVzZXJkYXRhKTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
