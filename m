Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4D3D25C0
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F98B6E2D3;
	Thu, 10 Oct 2019 09:02:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72C86E038
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:02:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7AF41308C389
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:02:43 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83D5B194B2;
 Thu, 10 Oct 2019 09:02:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 10 Oct 2019 10:02:34 +0100
Message-Id: <20191010090234.10495-2-fziglio@redhat.com>
In-Reply-To: <20191010090234.10495-1-fziglio@redhat.com>
References: <20191010090234.10495-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 10 Oct 2019 09:02:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] smartcard: Reset vheader
 value
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

VGhlIGJ1ZmZlciBjb3VsZCBjaGFuZ2UgaW5zaWRlIHNtYXJ0Y2FyZF9yZWFkX2J1Zl9wcmVwYXJl
LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0t
LQogc2VydmVyL3NtYXJ0Y2FyZC5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc21hcnRjYXJkLmMgYi9zZXJ2ZXIvc21hcnRjYXJkLmMK
aW5kZXggZDYyODQ3ZDYwLi45NjE2MzNmMGUgMTAwNjQ0Ci0tLSBhL3NlcnZlci9zbWFydGNhcmQu
YworKysgYi9zZXJ2ZXIvc21hcnRjYXJkLmMKQEAgLTE1MSw2ICsxNTEsNyBAQCBzdGF0aWMgUmVk
UGlwZUl0ZW0gKnNtYXJ0Y2FyZF9yZWFkX21zZ19mcm9tX2RldmljZShSZWRDaGFyRGV2aWNlICpz
ZWxmLAogICAgICAgICAgICAgICAgIGNvbnRpbnVlOwogICAgICAgICAgICAgfQogICAgICAgICAg
ICAgc21hcnRjYXJkX3JlYWRfYnVmX3ByZXBhcmUoZGV2LCB2aGVhZGVyKTsKKyAgICAgICAgICAg
IHZoZWFkZXIgPSAoVlNDTXNnSGVhZGVyKilkZXYtPnByaXYtPmJ1ZjsKICAgICAgICAgfQogICAg
ICAgICBhY3R1YWxfbGVuZ3RoID0gbnRvaGwodmhlYWRlci0+bGVuZ3RoKTsKICAgICAgICAgaWYg
KGRldi0+cHJpdi0+YnVmX3VzZWQgLSBzaXplb2YoVlNDTXNnSGVhZGVyKSA8IGFjdHVhbF9sZW5n
dGgpIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
