Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7008C6FE7B
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07C389B3C;
	Mon, 22 Jul 2019 11:08:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8154989B3C
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:08:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2BCBE308FC22
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:08:47 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A7E305D704;
 Mon, 22 Jul 2019 11:08:45 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 12:08:39 +0100
Message-Id: <20190722110841.31711-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 22 Jul 2019 11:08:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/3] glz-encoder-dict: Remove
 useless __packed__ attribute
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

VGhlIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMsIGFkZGluZyB0aGlzIGF0dHJpYnV0ZSBjb3VsZCBv
bmx5CmRlY3JlYXNlIGVmZmljaWVuY3kuCk5vdGUgdGhhdCBIYXNoRW50cnkgc3RydWN0dXJlIGlz
IHVzZWQgZm9yIGEgbGFyZ2UgKDhNQikgYXJyYXkgc28KdGhpcyB3b24ndCBhZmZlY3QgbXVjaCBw
b3NzaWJsZSBjb250YWluZXIgc2l6ZS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8
ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9nbHotZW5jb2Rlci1wcml2LmggfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJpdi5oIGIvc2VydmVyL2dsei1lbmNvZGVyLXByaXYu
aAppbmRleCAwOGRjMDA3Y2UuLjc3NTdmMjMyYyAxMDA2NDQKLS0tIGEvc2VydmVyL2dsei1lbmNv
ZGVyLXByaXYuaAorKysgYi9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJpdi5oCkBAIC03Niw3ICs3Niw3
IEBAIHN0cnVjdCBXaW5kb3dJbWFnZVNlZ21lbnQgewogfTsKIAogCi1zdHJ1Y3QgIF9fYXR0cmli
dXRlX18gKChfX3BhY2tlZF9fKSkgSGFzaEVudHJ5IHsKK3N0cnVjdCBIYXNoRW50cnkgewogICAg
IHVpbnQzMl90IGltYWdlX3NlZ19pZHg7CiAgICAgdWludDMyX3QgcmVmX3BpeF9pZHg7CiB9Owot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
