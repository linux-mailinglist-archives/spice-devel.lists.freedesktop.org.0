Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98048D0AFA
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990E76E92D;
	Wed,  9 Oct 2019 09:23:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA4A6E92D
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5937C44FB1
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:12 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 763C760920;
 Wed,  9 Oct 2019 09:23:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:22:59 +0100
Message-Id: <20191009092302.15025-3-fziglio@redhat.com>
In-Reply-To: <20191009092302.15025-1-fziglio@redhat.com>
References: <20191009092302.15025-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 09 Oct 2019 09:23:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3 2/5] smartcard: Fix parsing
 multiple messages from the device
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

VGhpcyBwYXRjaCBoYW5kbGVzIHRoZSBzY2VuYXJpbyB3aGVuIGEgc2luZ2xlIHJlYWQgdG8gZ3Vl
c3QgZGV2aWNlCmJyaW5ncyBtdWx0aXBsZSByZXF1ZXN0cyB0byBiZSBoYW5kbGVkLiBXaGVuIHRo
aXMgaGFwcGVucywgd2Ugd2lsbAppdGVyYXRlIHRpbGwgYWxsIHJlcXVlc3RzIGFyZSBoYW5kbGVk
IGFuZCBubyBtb3JlIHJlcXVlc3RzIGNhbiBiZSByZWFkCmZyb20gZ3Vlc3QgZGV2aWNlLgoKSWYg
dGhlIHJlbWFpbmluZyBidWZmZXIgY29udGFpbnMgYSBmdWxsIHJlcXVlc3Qgd2UgZG9uJ3QgbmVl
ZCB0byByZWFkCm90aGVyIGJ5dGVzIChub3RlIHRoYXQgdGhlcmUgY291bGQgYmUgbm8gYnl0ZXMg
bGVmdCksIGp1c3QgcGFyc2UgdGhlCnJlcXVlc3QuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvc21hcnRjYXJkLmMgfCAyMyAr
KysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC5jIGIvc2VydmVy
L3NtYXJ0Y2FyZC5jCmluZGV4IGJmNWU5MDUyMC4uMzQwMTE4ZTE4IDEwMDY0NAotLS0gYS9zZXJ2
ZXIvc21hcnRjYXJkLmMKKysrIGIvc2VydmVyL3NtYXJ0Y2FyZC5jCkBAIC0xMzAsMTkgKzEzMCwy
OCBAQCBzdGF0aWMgUmVkUGlwZUl0ZW0gKnNtYXJ0Y2FyZF9yZWFkX21zZ19mcm9tX2RldmljZShS
ZWRDaGFyRGV2aWNlICpzZWxmLAogICAgIFJlZENoYXJEZXZpY2VTbWFydGNhcmQgKmRldiA9IFJF
RF9DSEFSX0RFVklDRV9TTUFSVENBUkQoc2VsZik7CiAgICAgU3BpY2VDaGFyRGV2aWNlSW50ZXJm
YWNlICpzaWYgPSBzcGljZV9jaGFyX2RldmljZV9nZXRfaW50ZXJmYWNlKHNpbik7CiAgICAgVlND
TXNnSGVhZGVyICp2aGVhZGVyID0gKFZTQ01zZ0hlYWRlciopZGV2LT5wcml2LT5idWY7Ci0gICAg
aW50IG47CiAgICAgaW50IHJlbWFpbmluZzsKICAgICBpbnQgYWN0dWFsX2xlbmd0aDsKIAotICAg
IHdoaWxlICgobiA9IHNpZi0+cmVhZChzaW4sIGRldi0+cHJpdi0+YnVmX3BvcywgZGV2LT5wcml2
LT5idWZfc2l6ZSAtIGRldi0+cHJpdi0+YnVmX3VzZWQpKSA+IDApIHsKKyAgICB3aGlsZSAodHJ1
ZSkgewogICAgICAgICBSZWRNc2dJdGVtICptc2dfdG9fY2xpZW50OwogCi0gICAgICAgIGRldi0+
cHJpdi0+YnVmX3BvcyArPSBuOwotICAgICAgICBkZXYtPnByaXYtPmJ1Zl91c2VkICs9IG47Ci0g
ICAgICAgIGlmIChkZXYtPnByaXYtPmJ1Zl91c2VkIDwgc2l6ZW9mKFZTQ01zZ0hlYWRlcikpIHsK
LSAgICAgICAgICAgIGNvbnRpbnVlOworICAgICAgICAvLyBpdCdzIHBvc3NpYmxlIHdlIGFscmVh
ZHkgZ290IGEgZnVsbCBtZXNzYWdlIGZyb20gYSBwcmV2aW91cyBwYXJ0aWFsCisgICAgICAgIC8v
IHJlYWQuIEluIHRoaXMgY2FzZSB3ZSBkb24ndCBuZWVkIHRvIHJlYWQgYW55IGJ5dGUKKyAgICAg
ICAgaWYgKGRldi0+cHJpdi0+YnVmX3VzZWQgPCBzaXplb2YoVlNDTXNnSGVhZGVyKSB8fAorICAg
ICAgICAgICAgZGV2LT5wcml2LT5idWZfdXNlZCAtIHNpemVvZihWU0NNc2dIZWFkZXIpIDwgbnRv
aGwodmhlYWRlci0+bGVuZ3RoKSkgeworICAgICAgICAgICAgaW50IG4gPSBzaWYtPnJlYWQoc2lu
LCBkZXYtPnByaXYtPmJ1Zl9wb3MsIGRldi0+cHJpdi0+YnVmX3NpemUgLSBkZXYtPnByaXYtPmJ1
Zl91c2VkKTsKKyAgICAgICAgICAgIGlmIChuIDw9IDApIHsKKyAgICAgICAgICAgICAgICBicmVh
azsKKyAgICAgICAgICAgIH0KKyAgICAgICAgICAgIGRldi0+cHJpdi0+YnVmX3BvcyArPSBuOwor
ICAgICAgICAgICAgZGV2LT5wcml2LT5idWZfdXNlZCArPSBuOworCisgICAgICAgICAgICBpZiAo
ZGV2LT5wcml2LT5idWZfdXNlZCA8IHNpemVvZihWU0NNc2dIZWFkZXIpKSB7CisgICAgICAgICAg
ICAgICAgY29udGludWU7CisgICAgICAgICAgICB9CisgICAgICAgICAgICBzbWFydGNhcmRfcmVh
ZF9idWZfcHJlcGFyZShkZXYsIHZoZWFkZXIpOwogICAgICAgICB9Ci0gICAgICAgIHNtYXJ0Y2Fy
ZF9yZWFkX2J1Zl9wcmVwYXJlKGRldiwgdmhlYWRlcik7CiAgICAgICAgIGFjdHVhbF9sZW5ndGgg
PSBudG9obCh2aGVhZGVyLT5sZW5ndGgpOwogICAgICAgICBpZiAoZGV2LT5wcml2LT5idWZfdXNl
ZCAtIHNpemVvZihWU0NNc2dIZWFkZXIpIDwgYWN0dWFsX2xlbmd0aCkgewogICAgICAgICAgICAg
Y29udGludWU7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
