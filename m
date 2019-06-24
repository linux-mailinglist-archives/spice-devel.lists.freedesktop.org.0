Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C683051A16
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 19:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511FB89DA4;
	Mon, 24 Jun 2019 17:55:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D94D89DA4
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 17:55:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B3BF3307D85A
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 17:55:24 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-124.brq.redhat.com
 [10.40.204.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F26CA608C2;
 Mon, 24 Jun 2019 17:55:23 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 24 Jun 2019 19:55:20 +0200
Message-Id: <20190624175520.28129-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 24 Jun 2019 17:55:24 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2] file-transfer-task: emit signals
 in main context
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

UGFydHMgb2YgdGhlIGludGVybmFsIGZpbGUgdHJhbnNmZXIgdGFzayBBUEkKY2FuIGJlIGludm9r
ZWQgaW4gdGhlIGNvcm91dGluZSBjb250ZXh0LCBzbyBpbiB0aGVzZSBjYXNlcwp1c2UgZ19jb3Jv
dXRpbmVfc2lnbmFsX2VtaXQgYW5kIGdfY29yb3V0aW5lX29iamVjdF9ub3RpZnkuCgpTb21lIGZ1
bmN0aW9ucyAoc3VjaCBhcyBzcGljZV9tYWluX2NoYW5uZWxfY2xpcGJvYXJkX3NlbGVjdGlvbl9n
cmFiKQp3YWtlIHVwIHRoZSBjaGFubmVsIGFuZCB0aHVzIGNhbiBpbW1lZGlhdGVseSBzd2l0Y2gg
dG8gdGhlIGNvcm91dGluZSBjb250ZXh0LgpEZWxpdmVyaW5nIHNpZ25hbHMgaW4gdGhlIGNvcm91
dGluZSBjb250ZXh0IGFzIHdlbGwsIGNvdWxkIHRoZW9yZXRpY2FsbHkKbGVhZCB0byBwcm9ibGVt
cyB3aXRoIHJlZW50cmFuY3ksIHNpbmNlIHRoZSB1c2VyIG9mIHNwaWNlLWd0ayBkb2VzIG5vdApl
eHBlY3QgdGhpcyBiZWhhdmlvci4KU3BpY2UtZ3RrLCBvbiB0aGUgb3RoZXIgaGFuZCwgYXNzdW1l
cyB0aGF0IHRoZSBwdWJsaWMgZnVuY3Rpb25zIGFyZSBjYWxsZWQKZnJvbSB0aGUgbWFpbiBjb250
ZXh0LiBTbyBjYWxsaW5nIHNwaWNlX21haW5fY2hhbm5lbF9jbGlwYm9hcmRfc2VsZWN0aW9uX2dy
YWIKZnJvbSB0aGUgY29yb3V0aW5lIGNvbnRleHQgcHJpbnRzIGFuIGVycm9yIGFzIHdlIHRyeSB0
byBzd2l0Y2ggdG8gYQpjb3JvdXRpbmUgd2UgYXJlIGFscmVhZHkgaW4uCgpTdWNoIGlzc3VlcyBh
cmUgcHJvYmFibHkgbm90IGxpa2VseSwgYnV0IHRoZSBmaXggaXMgZWFzeS4KClNpZ25lZC1vZmYt
Ynk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Ci0tLQogc3JjL3NwaWNlLWZpbGUt
dHJhbnNmZXItdGFzay5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXIt
dGFzay5jIGIvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay5jCmluZGV4IGQwMTcwZGEuLjkw
ZjMxZGIgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2suYworKysgYi9z
cmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLmMKQEAgLTMyNyw3ICszMjcsNyBAQCB2b2lkIHNw
aWNlX2ZpbGVfdHJhbnNmZXJfdGFza19jb21wbGV0ZWQoU3BpY2VGaWxlVHJhbnNmZXJUYXNrICpz
ZWxmLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNlbGYpOwogICAgIHNlbGYtPnBl
bmRpbmcgPSBUUlVFOwogc2lnbmFsOgotICAgIGdfc2lnbmFsX2VtaXQoc2VsZiwgdGFza19zaWdu
YWxzW1NJR05BTF9GSU5JU0hFRF0sIDAsIHNlbGYtPmVycm9yKTsKKyAgICBnX2Nvcm91dGluZV9z
aWduYWxfZW1pdChzZWxmLCB0YXNrX3NpZ25hbHNbU0lHTkFMX0ZJTklTSEVEXSwgMCwgc2VsZi0+
ZXJyb3IpOwogICAgIC8qIFNwaWNlRmlsZVRyYW5zZmVyVGFzayB1bnJlZiBpcyBkb25lIGFmdGVy
IGlucHV0IHN0cmVhbSBpcyBjbG9zZWQgKi8KIH0KIApAQCAtNDMzLDggKzQzMyw4IEBAIHZvaWQg
c3BpY2VfZmlsZV90cmFuc2Zlcl90YXNrX3JlYWRfYXN5bmMoU3BpY2VGaWxlVHJhbnNmZXJUYXNr
ICpzZWxmLAogICAgIC8qIE5vdGlmeSB0aGUgcHJvZ3Jlc3MgcHJpb3IgdGhlIHJlYWQgdG8gbWFr
ZSB0aGUgaW5mbyBiZSByZWxhdGVkIHRvIHRoZQogICAgICAqIGRhdGEgdGhhdCB3YXMgYWxyZWFk
eSBzZW50LiBUbyBub3RpZnkgdGhlIDEwMCUgKGNvbXBsZXRlZCksIGNoYW5uZWwtbWFpbgogICAg
ICAqIHNob3VsZCBjYWxsIHJlYWQtYXN5bmMgd2hlbiBpdCBleHBlY3RzIEVPRi4gKi8KLSAgICBn
X29iamVjdF9ub3RpZnkoR19PQkpFQ1Qoc2VsZiksICJwcm9ncmVzcyIpOwotICAgIGdfb2JqZWN0
X25vdGlmeShHX09CSkVDVChzZWxmKSwgInRyYW5zZmVycmVkLWJ5dGVzIik7CisgICAgZ19jb3Jv
dXRpbmVfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInByb2dyZXNzIik7CisgICAgZ19j
b3JvdXRpbmVfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInRyYW5zZmVycmVkLWJ5dGVz
Iik7CiAKICAgICB0YXNrID0gZ190YXNrX25ldyhzZWxmLCBzZWxmLT5jYW5jZWxsYWJsZSwgY2Fs
bGJhY2ssIHVzZXJkYXRhKTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
