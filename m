Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B01B7BC8
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E5F6F885;
	Thu, 19 Sep 2019 14:11:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45DAD6F879
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CBD96308213F
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57E1B5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:16 +0200
Message-Id: <20190919141133.10691-4-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 03/20] usb-redir: do not use
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
PgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L2NoYW5uZWwtdXNicmVkaXIuYyB8IDMxICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwpp
bmRleCAwYTcxMWMyLi5lNDA3YmFjIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci5j
CisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTMwMSw3ICszMDEsNiBAQCBzdGF0aWMg
dm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiKAogfQogI2VuZGlmCiAKLSNp
Zm5kZWYgVVNFX1BPTEtJVAogc3RhdGljIHZvaWQKIF9vcGVuX2RldmljZV9hc3luY19jYihHVGFz
ayAqdGFzaywKICAgICAgICAgICAgICAgICAgICAgICBncG9pbnRlciBvYmplY3QsCkBAIC0zMjgs
NyArMzI3LDYgQEAgX29wZW5fZGV2aWNlX2FzeW5jX2NiKEdUYXNrICp0YXNrLAogICAgICAgICBn
X3Rhc2tfcmV0dXJuX2Jvb2xlYW4odGFzaywgVFJVRSk7CiAgICAgfQogfQotI2VuZGlmCiAKIEdf
R05VQ19JTlRFUk5BTAogdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2Nvbm5lY3RfZGV2aWNl
X2FzeW5jKApAQCAtMzczLDIxICszNzEsMjIgQEAgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVs
X2Nvbm5lY3RfZGV2aWNlX2FzeW5jKAogICAgIHByaXYtPnNwaWNlX2RldmljZSA9IGdfYm94ZWRf
Y29weShzcGljZV91c2JfZGV2aWNlX2dldF90eXBlKCksCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHNwaWNlX2RldmljZSk7CiAjaWZkZWYgVVNFX1BPTEtJVAotICAgIHBy
aXYtPnRhc2sgPSB0YXNrOwotICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJTkdfRk9SX0FD
TF9IRUxQRVI7Ci0gICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVscGVyX25l
dygpOwotICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NI
QU5ORUwoY2hhbm5lbCkpLAotICAgICAgICAgICAgICAgICAiaW5oaWJpdC1rZXlib2FyZC1ncmFi
IiwgVFJVRSwgTlVMTCk7Ci0gICAgc3BpY2VfdXNiX2FjbF9oZWxwZXJfb3Blbl9hY2xfYXN5bmMo
cHJpdi0+YWNsX2hlbHBlciwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpbmZvLT5idXMsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5m
by0+YWRkcmVzcywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYW5j
ZWxsYWJsZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV91
c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAotICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNoYW5uZWwpOwotICAgIHJldHVybjsKLSNlbHNlCi0gICAgZ190YXNrX3J1
bl9pbl90aHJlYWQodGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKKyAgICBpZiAoaW5mby0+
YnVzICE9IEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VTQikgeworICAgICAgICBwcml2LT50YXNr
ID0gdGFzazsKKyAgICAgICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJVElOR19GT1JfQUNMX0hF
TFBFUjsKKyAgICAgICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVscGVyX25l
dygpOworICAgICAgICBnX29iamVjdF9zZXQoc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lvbihTUElD
RV9DSEFOTkVMKGNoYW5uZWwpKSwKKyAgICAgICAgICAgICAgICAgICAgImluaGliaXQta2V5Ym9h
cmQtZ3JhYiIsIFRSVUUsIE5VTEwpOworICAgICAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVu
X2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVyLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbmZvLT5idXMsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGluZm8tPmFkZHJlc3MsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsKTsKKyAg
ICAgICAgcmV0dXJuOworICAgIH0KICNlbmRpZgorICAgIGdfdGFza19ydW5faW5fdGhyZWFkKHRh
c2ssIF9vcGVuX2RldmljZV9hc3luY19jYik7CiAKIGRvbmU6CiAgICAgZ19vYmplY3RfdW5yZWYo
dGFzayk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
