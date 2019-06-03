Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04A4329C8
	for <lists+spice-devel@lfdr.de>; Mon,  3 Jun 2019 09:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8AE89333;
	Mon,  3 Jun 2019 07:39:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C23289333
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 07:39:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 958803084039
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 07:39:35 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A1ED719C69;
 Mon,  3 Jun 2019 07:39:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  3 Jun 2019 08:39:30 +0100
Message-Id: <20190603073930.19429-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 03 Jun 2019 07:39:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] common-graphics-channel: Avoid
 closing server if client send huge messages
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

VGhlIEN1cnNvci9EaXNwbGF5Q2hhbm5lbCBpcyBub3QgZXhwZWN0aW5nIGxhcmdlIG1lc3NhZ2Vz
ICh3aGljaCBhcmUKcHJvdG9jb2wgdmlvbGF0aW9ucykuCgpUaGlzIGZpeGVzIGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1zZXJ2ZXIvaXNzdWVzLzExLgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVy
L2NvbW1vbi1ncmFwaGljcy1jaGFubmVsLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvY29tbW9uLWdyYXBo
aWNzLWNoYW5uZWwuYyBiL3NlcnZlci9jb21tb24tZ3JhcGhpY3MtY2hhbm5lbC5jCmluZGV4IDky
MzQ5Y2U0ZC4uY2VhODA1ZDA5IDEwMDY0NAotLS0gYS9zZXJ2ZXIvY29tbW9uLWdyYXBoaWNzLWNo
YW5uZWwuYworKysgYi9zZXJ2ZXIvY29tbW9uLWdyYXBoaWNzLWNoYW5uZWwuYwpAQCAtNTMsNyAr
NTMsNyBAQCBzdGF0aWMgdWludDhfdCAqY29tbW9uX2FsbG9jX3JlY3ZfYnVmKFJlZENoYW5uZWxD
bGllbnQgKnJjYywgdWludDE2X3QgdHlwZSwgdWludAogICAgIH0KIAogICAgIGlmIChzaXplID4g
Q0hBTk5FTF9SRUNFSVZFX0JVRl9TSVpFKSB7Ci0gICAgICAgIHNwaWNlX2NyaXRpY2FsKCJ1bmV4
cGVjdGVkIG1lc3NhZ2Ugc2l6ZSAldSAobWF4IGlzICVkKSIsIHNpemUsIENIQU5ORUxfUkVDRUlW
RV9CVUZfU0laRSk7CisgICAgICAgIHNwaWNlX3dhcm5pbmcoInVuZXhwZWN0ZWQgbWVzc2FnZSBz
aXplICV1IChtYXggaXMgJWQpIiwgc2l6ZSwgQ0hBTk5FTF9SRUNFSVZFX0JVRl9TSVpFKTsKICAg
ICAgICAgcmV0dXJuIE5VTEw7CiAgICAgfQogICAgIHJldHVybiBjb21tb24tPnByaXYtPnJlY3Zf
YnVmOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
