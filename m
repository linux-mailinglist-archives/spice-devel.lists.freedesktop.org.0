Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA84D0004
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 19:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815F36E886;
	Tue,  8 Oct 2019 17:39:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40136E884
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6AF35335E8
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:37 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 65B0919C7F;
 Tue,  8 Oct 2019 17:39:36 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  8 Oct 2019 18:39:21 +0100
Message-Id: <20191008173924.12388-5-fziglio@redhat.com>
In-Reply-To: <20191008173924.12388-1-fziglio@redhat.com>
References: <20191008173924.12388-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 08 Oct 2019 17:39:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 4/7] smartcard: Fix parsing
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

SWYgdGhlIHNlcnZlciBpcyBidXN5IG9yIHRoZSBndWVzdCB3cml0ZSBtdWx0aXBsZSByZXF1ZXN0
cyB3aXRoCmEgc2luZ2xlIG9wZXJhdGlvbiBpdCBjb3VsZCBoYXBwZW4gdGhhdCB3ZSByZWNlaXZl
IG11bHRpcGxlCnJlcXVlc3RzIHdpdGggYSBzaW5nbGUgcmVhZC4KVGhpcyB3aWxsIG1ha2UgInJl
bWFpbmluZyIgPiAwLgpVc2UgbWVtbW92ZSBpbnN0ZWFkIG9mIG1lbWNweSBhcyB0aGUgYnVmZmVy
IGNhbiBvdmVybGFwIGlmIHRoZQpzZWNvbmQgcmVxdWVzdCBpZiBiaWdnZXIgdGhhbiB0aGUgZmly
c3QuCiJidWZfcG9zIiBwb2ludHMgdG8gdGhlIHBvaW50IG9mIHRoZSBidWZmZXIgYWZ0ZXIgd2Ug
cmVhZCwgaWYKd2Ugd2FudCB0aGUgZmlyc3QgcGFydCBvZiB0aGUgbmV4dCByZXF1ZXN0IGlzICJi
dWZfcG9zIC0gcmVtYWluaW5nIi4KU2FtZSBjb25zaWRlcmF0aW9uIHNldHRpbmcgImJ1Zl9wb3Mi
IGZvciB0aGUgbmV4dCBpdGVyYXRpb24uCkFsc28gY2hlY2sgdGhlIGxvb3AgY29uZGl0aW9uLiBJ
ZiB0aGUgcmVtYWluaW5nIGJ1ZmZlciBjb250YWlucwphIGZ1bGwgcmVxdWVzdCB3ZSBkb24ndCBu
ZWVkIHRvIHJlYWQgb3RoZXIgYnl0ZXMgKG5vdGUgdGhhdCB0aGVyZQpjb3VsZCBiZSBubyBieXRl
cyBsZWZ0KSwganVzdCBwYXJzZSB0aGUgcmVxdWVzdC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9zbWFydGNhcmQuYyB8IDI3
ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC5jIGIv
c2VydmVyL3NtYXJ0Y2FyZC5jCmluZGV4IDRjNWJiYTA3ZC4uMzQwMTE4ZTE4IDEwMDY0NAotLS0g
YS9zZXJ2ZXIvc21hcnRjYXJkLmMKKysrIGIvc2VydmVyL3NtYXJ0Y2FyZC5jCkBAIC0xMzAsMTkg
KzEzMCwyOCBAQCBzdGF0aWMgUmVkUGlwZUl0ZW0gKnNtYXJ0Y2FyZF9yZWFkX21zZ19mcm9tX2Rl
dmljZShSZWRDaGFyRGV2aWNlICpzZWxmLAogICAgIFJlZENoYXJEZXZpY2VTbWFydGNhcmQgKmRl
diA9IFJFRF9DSEFSX0RFVklDRV9TTUFSVENBUkQoc2VsZik7CiAgICAgU3BpY2VDaGFyRGV2aWNl
SW50ZXJmYWNlICpzaWYgPSBzcGljZV9jaGFyX2RldmljZV9nZXRfaW50ZXJmYWNlKHNpbik7CiAg
ICAgVlNDTXNnSGVhZGVyICp2aGVhZGVyID0gKFZTQ01zZ0hlYWRlciopZGV2LT5wcml2LT5idWY7
Ci0gICAgaW50IG47CiAgICAgaW50IHJlbWFpbmluZzsKICAgICBpbnQgYWN0dWFsX2xlbmd0aDsK
IAotICAgIHdoaWxlICgobiA9IHNpZi0+cmVhZChzaW4sIGRldi0+cHJpdi0+YnVmX3BvcywgZGV2
LT5wcml2LT5idWZfc2l6ZSAtIGRldi0+cHJpdi0+YnVmX3VzZWQpKSA+IDApIHsKKyAgICB3aGls
ZSAodHJ1ZSkgewogICAgICAgICBSZWRNc2dJdGVtICptc2dfdG9fY2xpZW50OwogCi0gICAgICAg
IGRldi0+cHJpdi0+YnVmX3BvcyArPSBuOwotICAgICAgICBkZXYtPnByaXYtPmJ1Zl91c2VkICs9
IG47Ci0gICAgICAgIGlmIChkZXYtPnByaXYtPmJ1Zl91c2VkIDwgc2l6ZW9mKFZTQ01zZ0hlYWRl
cikpIHsKLSAgICAgICAgICAgIGNvbnRpbnVlOworICAgICAgICAvLyBpdCdzIHBvc3NpYmxlIHdl
IGFscmVhZHkgZ290IGEgZnVsbCBtZXNzYWdlIGZyb20gYSBwcmV2aW91cyBwYXJ0aWFsCisgICAg
ICAgIC8vIHJlYWQuIEluIHRoaXMgY2FzZSB3ZSBkb24ndCBuZWVkIHRvIHJlYWQgYW55IGJ5dGUK
KyAgICAgICAgaWYgKGRldi0+cHJpdi0+YnVmX3VzZWQgPCBzaXplb2YoVlNDTXNnSGVhZGVyKSB8
fAorICAgICAgICAgICAgZGV2LT5wcml2LT5idWZfdXNlZCAtIHNpemVvZihWU0NNc2dIZWFkZXIp
IDwgbnRvaGwodmhlYWRlci0+bGVuZ3RoKSkgeworICAgICAgICAgICAgaW50IG4gPSBzaWYtPnJl
YWQoc2luLCBkZXYtPnByaXYtPmJ1Zl9wb3MsIGRldi0+cHJpdi0+YnVmX3NpemUgLSBkZXYtPnBy
aXYtPmJ1Zl91c2VkKTsKKyAgICAgICAgICAgIGlmIChuIDw9IDApIHsKKyAgICAgICAgICAgICAg
ICBicmVhazsKKyAgICAgICAgICAgIH0KKyAgICAgICAgICAgIGRldi0+cHJpdi0+YnVmX3BvcyAr
PSBuOworICAgICAgICAgICAgZGV2LT5wcml2LT5idWZfdXNlZCArPSBuOworCisgICAgICAgICAg
ICBpZiAoZGV2LT5wcml2LT5idWZfdXNlZCA8IHNpemVvZihWU0NNc2dIZWFkZXIpKSB7CisgICAg
ICAgICAgICAgICAgY29udGludWU7CisgICAgICAgICAgICB9CisgICAgICAgICAgICBzbWFydGNh
cmRfcmVhZF9idWZfcHJlcGFyZShkZXYsIHZoZWFkZXIpOwogICAgICAgICB9Ci0gICAgICAgIHNt
YXJ0Y2FyZF9yZWFkX2J1Zl9wcmVwYXJlKGRldiwgdmhlYWRlcik7CiAgICAgICAgIGFjdHVhbF9s
ZW5ndGggPSBudG9obCh2aGVhZGVyLT5sZW5ndGgpOwogICAgICAgICBpZiAoZGV2LT5wcml2LT5i
dWZfdXNlZCAtIHNpemVvZihWU0NNc2dIZWFkZXIpIDwgYWN0dWFsX2xlbmd0aCkgewogICAgICAg
ICAgICAgY29udGludWU7CkBAIC0xNTAsOSArMTU5LDkgQEAgc3RhdGljIFJlZFBpcGVJdGVtICpz
bWFydGNhcmRfcmVhZF9tc2dfZnJvbV9kZXZpY2UoUmVkQ2hhckRldmljZSAqc2VsZiwKICAgICAg
ICAgbXNnX3RvX2NsaWVudCA9IHNtYXJ0Y2FyZF9jaGFyX2RldmljZV9vbl9tZXNzYWdlX2Zyb21f
ZGV2aWNlKGRldiwgdmhlYWRlcik7CiAgICAgICAgIHJlbWFpbmluZyA9IGRldi0+cHJpdi0+YnVm
X3VzZWQgLSBzaXplb2YoVlNDTXNnSGVhZGVyKSAtIGFjdHVhbF9sZW5ndGg7CiAgICAgICAgIGlm
IChyZW1haW5pbmcgPiAwKSB7Ci0gICAgICAgICAgICBtZW1jcHkoZGV2LT5wcml2LT5idWYsIGRl
di0+cHJpdi0+YnVmX3BvcywgcmVtYWluaW5nKTsKKyAgICAgICAgICAgIG1lbW1vdmUoZGV2LT5w
cml2LT5idWYsIGRldi0+cHJpdi0+YnVmX3BvcyAtIHJlbWFpbmluZywgcmVtYWluaW5nKTsKICAg
ICAgICAgfQotICAgICAgICBkZXYtPnByaXYtPmJ1Zl9wb3MgPSBkZXYtPnByaXYtPmJ1ZjsKKyAg
ICAgICAgZGV2LT5wcml2LT5idWZfcG9zID0gZGV2LT5wcml2LT5idWYgKyByZW1haW5pbmc7CiAg
ICAgICAgIGRldi0+cHJpdi0+YnVmX3VzZWQgPSByZW1haW5pbmc7CiAgICAgICAgIGlmIChtc2df
dG9fY2xpZW50KSB7CiAgICAgICAgICAgICByZXR1cm4gJm1zZ190b19jbGllbnQtPmJhc2U7Ci0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
