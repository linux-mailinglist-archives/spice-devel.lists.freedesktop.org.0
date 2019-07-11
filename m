Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C44165780
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD286E225;
	Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F7B6E222
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 672898666F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:01 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7805E5C64A;
 Thu, 11 Jul 2019 13:01:00 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:51 +0100
Message-Id: <20190711130054.17867-4-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 11 Jul 2019 13:01:01 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 4/7] usb-device-manager: Move
 devices and channels to USE_USBREDIR section
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

VGhlc2UgZmllbGRzIGFyZSBub3QgdXNlZCBpZiBVU0VfVVNCUkVESVIgaXMgbm90IHNldC4KClNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNy
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDRiMTI2ODk2Li5k
YmI3ODM5MCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91
c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtMTA3LDEwICsxMDcsMTAgQEAgc3RydWN0IF9TcGljZVVz
YkRldmljZU1hbmFnZXJQcml2YXRlIHsKICAgICBIQU5ETEUgdXNiZGtfaGlkZXJfaGFuZGxlOwog
I2Vsc2UKICAgICBnYm9vbGVhbiByZWRpcmVjdGluZzsgLyogSGFuZGxlZCBieSBHVWRldkNsaWVu
dCBpbiB0aGUgZ3VkZXYgY2FzZSAqLwotI2VuZGlmCiAjZW5kaWYKICAgICBHUHRyQXJyYXkgKmRl
dmljZXM7CiAgICAgR1B0ckFycmF5ICpjaGFubmVsczsKKyNlbmRpZgogfTsKIAogZW51bSB7CkBA
IC0yNDYsOCArMjQ2LDggQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2lu
aXQoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmKQogICAgICAgICBzcGljZV9kZWJ1ZygiVXNi
RGsgZHJpdmVyIGlzIG5vdCBpbnN0YWxsZWQiKTsKICAgICB9CiAjZW5kaWYKLSAgICBwcml2LT5j
aGFubmVscyA9IGdfcHRyX2FycmF5X25ldygpOwogI2lmZGVmIFVTRV9VU0JSRURJUgorICAgIHBy
aXYtPmNoYW5uZWxzID0gZ19wdHJfYXJyYXlfbmV3KCk7CiAgICAgcHJpdi0+ZGV2aWNlcyAgPSBn
X3B0cl9hcnJheV9uZXdfd2l0aF9mcmVlX2Z1bmMoKEdEZXN0cm95Tm90aWZ5KQogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZp
Y2VfdW5yZWYpOwogI2VuZGlmCkBAIC0zNDMsMTEgKzM0MywxMSBAQCBzdGF0aWMgdm9pZCBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfZmluYWxpemUoR09iamVjdCAqZ29iamVjdCkKICAgICBTcGlj
ZVVzYkRldmljZU1hbmFnZXIgKnNlbGYgPSBTUElDRV9VU0JfREVWSUNFX01BTkFHRVIoZ29iamVj
dCk7CiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7
CiAKKyNpZmRlZiBVU0VfVVNCUkVESVIKICAgICBnX3B0cl9hcnJheV91bnJlZihwcml2LT5jaGFu
bmVscyk7Ci0gICAgaWYgKHByaXYtPmRldmljZXMpCisgICAgaWYgKHByaXYtPmRldmljZXMpIHsK
ICAgICAgICAgZ19wdHJfYXJyYXlfdW5yZWYocHJpdi0+ZGV2aWNlcyk7Ci0KLSNpZmRlZiBVU0Vf
VVNCUkVESVIKKyAgICB9CiAjaWZkZWYgR19PU19XSU4zMgogICAgIGdfY2xlYXJfb2JqZWN0KCZw
cml2LT51ZGV2KTsKICNlbmRpZgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
