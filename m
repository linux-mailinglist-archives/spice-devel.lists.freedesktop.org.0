Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1189B7A778
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2856E4C7;
	Tue, 30 Jul 2019 12:03:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E6576E4C7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4518431628FF;
 Tue, 30 Jul 2019 12:03:57 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F3D375D6B2;
 Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:02 +0100
Message-Id: <20190730120331.17967-14-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 30 Jul 2019 12:03:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 13/44] usb-redir: do not use
 spice_usb_acl_helper for emulated devices
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKU2ln
bmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29t
PgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCAzMSArKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYyBiL3NyYy9jaGFubmVsLXVz
YnJlZGlyLmMKaW5kZXggOGQ0Y2Q2NjQuLjhmZDZiNDFjIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5l
bC11c2JyZWRpci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTMwMSw3ICszMDEs
NiBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiKAogfQog
I2VuZGlmCiAKLSNpZm5kZWYgVVNFX1BPTEtJVAogc3RhdGljIHZvaWQKIF9vcGVuX2RldmljZV9h
c3luY19jYihHVGFzayAqdGFzaywKICAgICAgICAgICAgICAgICAgICAgICBncG9pbnRlciBvYmpl
Y3QsCkBAIC0zMjgsNyArMzI3LDYgQEAgX29wZW5fZGV2aWNlX2FzeW5jX2NiKEdUYXNrICp0YXNr
LAogICAgICAgICBnX3Rhc2tfcmV0dXJuX2Jvb2xlYW4odGFzaywgVFJVRSk7CiAgICAgfQogfQot
I2VuZGlmCiAKIEdfR05VQ19JTlRFUk5BTAogdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2Nv
bm5lY3RfZGV2aWNlX2FzeW5jKApAQCAtMzczLDIxICszNzEsMjIgQEAgdm9pZCBzcGljZV91c2Jy
ZWRpcl9jaGFubmVsX2Nvbm5lY3RfZGV2aWNlX2FzeW5jKAogICAgIHByaXYtPnNwaWNlX2Rldmlj
ZSA9IGdfYm94ZWRfY29weShzcGljZV91c2JfZGV2aWNlX2dldF90eXBlKCksCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX2RldmljZSk7CiAjaWZkZWYgVVNFX1BP
TEtJVAotICAgIHByaXYtPnRhc2sgPSB0YXNrOwotICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dB
SVRJTkdfRk9SX0FDTF9IRUxQRVI7Ci0gICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9h
Y2xfaGVscGVyX25ldygpOwotICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNz
aW9uKFNQSUNFX0NIQU5ORUwoY2hhbm5lbCkpLAotICAgICAgICAgICAgICAgICAiaW5oaWJpdC1r
ZXlib2FyZC1ncmFiIiwgVFJVRSwgTlVMTCk7Ci0gICAgc3BpY2VfdXNiX2FjbF9oZWxwZXJfb3Bl
bl9hY2xfYXN5bmMocHJpdi0+YWNsX2hlbHBlciwKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbmZvLT5idXMsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaW5mby0+YWRkcmVzcywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjYW5jZWxsYWJsZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAotICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNoYW5uZWwpOwotICAgIHJldHVybjsKLSNlbHNlCi0g
ICAgZ190YXNrX3J1bl9pbl90aHJlYWQodGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKKyAg
ICBpZiAoaW5mby0+YnVzICE9IEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VTQikgeworICAgICAg
ICBwcml2LT50YXNrID0gdGFzazsKKyAgICAgICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJVElO
R19GT1JfQUNMX0hFTFBFUjsKKyAgICAgICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9h
Y2xfaGVscGVyX25ldygpOworICAgICAgICBnX29iamVjdF9zZXQoc3BpY2VfY2hhbm5lbF9nZXRf
c2Vzc2lvbihTUElDRV9DSEFOTkVMKGNoYW5uZWwpKSwKKyAgICAgICAgICAgICAgICAgICAgImlu
aGliaXQta2V5Ym9hcmQtZ3JhYiIsIFRSVUUsIE5VTEwpOworICAgICAgICBzcGljZV91c2JfYWNs
X2hlbHBlcl9vcGVuX2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVyLAorICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5idXMsCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmFkZHJlc3MsCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV91c2JyZWRpcl9jaGFubmVsX29w
ZW5fYWNsX2NiLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
aGFubmVsKTsKKyAgICAgICAgcmV0dXJuOworICAgIH0KICNlbmRpZgorICAgIGdfdGFza19ydW5f
aW5fdGhyZWFkKHRhc2ssIF9vcGVuX2RldmljZV9hc3luY19jYik7CiAKIGRvbmU6CiAgICAgZ19v
YmplY3RfdW5yZWYodGFzayk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
