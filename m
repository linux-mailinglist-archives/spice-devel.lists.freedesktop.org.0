Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA2455415
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5EC6E160;
	Tue, 25 Jun 2019 16:11:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE0C6E15D
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 89FF7305E24C
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:52 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE6525D70D;
 Tue, 25 Jun 2019 16:11:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:25 +0100
Message-Id: <20190625161147.25211-2-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 25 Jun 2019 16:11:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 01/23] test-glib-compat: Fix
 G_PID_FORMAT definition for old systems
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

VGhlIEdfUElEX0ZPUk1BVCBjb25zdGFudCBpcyBkZWZpbmVkIG9ubHkgaWYgR0xpYiBkb2VzIG5v
dCBzdXBwb3J0IGl0LgpUaGUgY29uc3RhbnQgd2FzIHdyb25nbHkgZGVmaW5lZC4KSmVzc2llIERl
YmlhbiAzMiBzaG93cyB0aGlzIGlzc3VlIChwcmludGYgZm9ybWF0IGVycm9yKS4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci90
ZXN0cy90ZXN0LWdsaWItY29tcGF0LmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC1nbGli
LWNvbXBhdC5oIGIvc2VydmVyL3Rlc3RzL3Rlc3QtZ2xpYi1jb21wYXQuaAppbmRleCBlZWYwNzQ5
NDguLjE3ZWJjZjQ4MSAxMDA2NDQKLS0tIGEvc2VydmVyL3Rlc3RzL3Rlc3QtZ2xpYi1jb21wYXQu
aAorKysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1nbGliLWNvbXBhdC5oCkBAIC03MCw3ICs3MCw3IEBA
IGdfdGVzdF9hc3NlcnRfZXhwZWN0ZWRfbWVzc2FnZXNfaW50ZXJuYWxfbm9fd2FybmluZ3MoY29u
c3QgY2hhciAqZG9tYWluLAogCiAvKiBBZGRlZCBpbiBnbGliIDIuNTAgKi8KICNpZm5kZWYgR19Q
SURfRk9STUFUCi0jaWZkZWYgR19PU19XSU4zMgorI2lmbmRlZiBHX09TX1dJTjMyCiAjZGVmaW5l
IEdfUElEX0ZPUk1BVCAiaSIKICNlbHNlCiAjZGVmaW5lIEdfUElEX0ZPUk1BVCAicCIKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
