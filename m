Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF5B87C9F
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D416EE1C;
	Fri,  9 Aug 2019 14:27:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCAA6EE1C
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 34F1C308A958;
 Fri,  9 Aug 2019 14:27:12 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2B33B1000182;
 Fri,  9 Aug 2019 14:27:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:23 +0100
Message-Id: <20190809142651.2967-6-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 09 Aug 2019 14:27:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 05/33] usb-redir: do not use
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
bmRleCA4ZDRjZDY2NC4uOGZkNmI0MWMgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXVzYnJlZGly
LmMKKysrIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwpAQCAtMzAxLDcgKzMwMSw2IEBAIHN0YXRp
YyB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IoCiB9CiAjZW5kaWYKIAot
I2lmbmRlZiBVU0VfUE9MS0lUCiBzdGF0aWMgdm9pZAogX29wZW5fZGV2aWNlX2FzeW5jX2NiKEdU
YXNrICp0YXNrLAogICAgICAgICAgICAgICAgICAgICAgIGdwb2ludGVyIG9iamVjdCwKQEAgLTMy
OCw3ICszMjcsNiBAQCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCiAgICAgICAg
IGdfdGFza19yZXR1cm5fYm9vbGVhbih0YXNrLCBUUlVFKTsKICAgICB9CiB9Ci0jZW5kaWYKIAog
R19HTlVDX0lOVEVSTkFMCiB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfY29ubmVjdF9kZXZp
Y2VfYXN5bmMoCkBAIC0zNzMsMjEgKzM3MSwyMiBAQCB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5u
ZWxfY29ubmVjdF9kZXZpY2VfYXN5bmMoCiAgICAgcHJpdi0+c3BpY2VfZGV2aWNlID0gZ19ib3hl
ZF9jb3B5KHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3R5cGUoKSwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3BpY2VfZGV2aWNlKTsKICNpZmRlZiBVU0VfUE9MS0lUCi0gICAg
cHJpdi0+dGFzayA9IHRhc2s7Ci0gICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJVElOR19GT1Jf
QUNMX0hFTFBFUjsKLSAgICBwcml2LT5hY2xfaGVscGVyID0gc3BpY2VfdXNiX2FjbF9oZWxwZXJf
bmV3KCk7Ci0gICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oU1BJQ0Vf
Q0hBTk5FTChjaGFubmVsKSksCi0gICAgICAgICAgICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdy
YWIiLCBUUlVFLCBOVUxMKTsKLSAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVuX2FjbF9hc3lu
Yyhwcml2LT5hY2xfaGVscGVyLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGluZm8tPmJ1cywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bmZvLT5hZGRyZXNzLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNh
bmNlbGxhYmxlLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNl
X3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IsCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY2hhbm5lbCk7Ci0gICAgcmV0dXJuOwotI2Vsc2UKLSAgICBnX3Rhc2tf
cnVuX2luX3RocmVhZCh0YXNrLCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IpOworICAgIGlmIChpbmZv
LT5idXMgIT0gQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNCKSB7CisgICAgICAgIHByaXYtPnRh
c2sgPSB0YXNrOworICAgICAgICBwcml2LT5zdGF0ZSAgPSBTVEFURV9XQUlUSU5HX0ZPUl9BQ0xf
SEVMUEVSOworICAgICAgICBwcml2LT5hY2xfaGVscGVyID0gc3BpY2VfdXNiX2FjbF9oZWxwZXJf
bmV3KCk7CisgICAgICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQ
SUNFX0NIQU5ORUwoY2hhbm5lbCkpLAorICAgICAgICAgICAgICAgICAgICAiaW5oaWJpdC1rZXli
b2FyZC1ncmFiIiwgVFJVRSwgTlVMTCk7CisgICAgICAgIHNwaWNlX3VzYl9hY2xfaGVscGVyX29w
ZW5fYWNsX2FzeW5jKHByaXYtPmFjbF9oZWxwZXIsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGluZm8tPmJ1cywKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW5mby0+YWRkcmVzcywKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY2FuY2VsbGFibGUsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2Is
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNoYW5uZWwpOwor
ICAgICAgICByZXR1cm47CisgICAgfQogI2VuZGlmCisgICAgZ190YXNrX3J1bl9pbl90aHJlYWQo
dGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKIAogZG9uZToKICAgICBnX29iamVjdF91bnJl
Zih0YXNrKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
