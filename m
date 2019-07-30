Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7B77A785
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CB16E4ED;
	Tue, 30 Jul 2019 12:04:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D896E4ED
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4AD073C937
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:17 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4397B5D6B0;
 Tue, 30 Jul 2019 12:04:16 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:13 +0100
Message-Id: <20190730120331.17967-25-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 30 Jul 2019 12:04:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 25/44] fixup! usb-redir: add files
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

UmV1c2UgTUlOIG1hY3JvIGZyb20gR0xpYi4KLS0tCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKaW5k
ZXggYmI0OWUwZDQuLjg0M2Y0ZjJlIDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMK
KysrIGIvc3JjL2NkLXVzYi1idWxrLW1zZC5jCkBAIC0zNTQsNyArMzU0LDcgQEAgc3RhdGljIHZv
aWQgdXNiX2NkX3NlbmRfZGF0YV9pbihVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBt
YXhfbGVuKQogICAgIENkU2NzaVJlcXVlc3QgKnNjc2lfcmVxID0gJnVzYl9yZXEtPnNjc2lfcmVx
OwogICAgIHVpbnQ4X3QgKmJ1ZiA9ICgodWludDhfdCAqKXNjc2lfcmVxLT5idWYpICsgdXNiX3Jl
cS0+eGZlcl9sZW47CiAgICAgdWludDMyX3QgYXZhaWxfbGVuID0gdXNiX3JlcS0+c2NzaV9pbl9s
ZW4gLSB1c2JfcmVxLT54ZmVyX2xlbjsKLSAgICB1aW50MzJfdCBzZW5kX2xlbiA9IChhdmFpbF9s
ZW4gPD0gbWF4X2xlbikgPyBhdmFpbF9sZW4gOiBtYXhfbGVuOworICAgIHVpbnQzMl90IHNlbmRf
bGVuID0gTUlOKGF2YWlsX2xlbiwgbWF4X2xlbik7CiAKICAgICBTUElDRV9ERUJVRygiRGF0YS1p
biBjbWQgdGFnIDB4JXgsIHJlbWFpbnMgJSIgR19HVUlOVDMyX0ZPUk1BVAogICAgICAgICAgICAg
ICAgICIsIHJlcXVlc3RlZCAlIiBHX0dVSU5UMzJfRk9STUFUICIsIHNlbmQgJSIgR19HVUlOVDMy
X0ZPUk1BVCwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
