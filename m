Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C167687CB3
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEB76EE22;
	Fri,  9 Aug 2019 14:28:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D7D6EE22
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C98BD308A958
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:12 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D524310016EA;
 Fri,  9 Aug 2019 14:28:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:40 +0100
Message-Id: <20190809142651.2967-23-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 09 Aug 2019 14:28:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 22/33] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

U2V0IGNvcnJlY3RseSBsb2FkZWQgZmxhZyBpbiBjYXNlIG1lZGlhX3BhcmFtcyBpcyBOVUxMLgpJ
biBjYXNlIHRoZSBwb2ludGVyIGlzIE5VTEwgdGhlIGFjdGlvbiBpcyB0aGUgc2FtZSBhcyBhbiB1
bmxvYWQuCi0tLQogc3JjL2NkLXNjc2kuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NkLXNjc2kuYyBiL3Ny
Yy9jZC1zY3NpLmMKaW5kZXggZDYyM2Q2NjUuLjYyYzU4OTQyIDEwMDY0NAotLS0gYS9zcmMvY2Qt
c2NzaS5jCisrKyBiL3NyYy9jZC1zY3NpLmMKQEAgLTUzMSwxMSArNTMxLDEyIEBAIHN0YXRpYyB2
b2lkIGNkX3Njc2lfbHVfbG9hZChDZFNjc2lMVSAqZGV2LAogICAgICAgICBkZXYtPnNpemUgPSBt
ZWRpYV9wYXJhbXMtPnNpemU7CiAgICAgICAgIGRldi0+YmxvY2tfc2l6ZSA9IG1lZGlhX3BhcmFt
cy0+YmxvY2tfc2l6ZTsKICAgICAgICAgZGV2LT5udW1fYmxvY2tzID0gbWVkaWFfcGFyYW1zLT5z
aXplIC8gbWVkaWFfcGFyYW1zLT5ibG9ja19zaXplOworICAgICAgICBkZXYtPmxvYWRlZCA9IFRS
VUU7CiAgICAgfSBlbHNlIHsKICAgICAgICAgZGV2LT5tZWRpYV9ldmVudCA9IENEX01FRElBX0VW
RU5UX01FRElBX1JFTU9WQUw7CiAgICAgICAgIGNkX3Njc2lfbHVfbWVkaWFfcmVzZXQoZGV2KTsK
KyAgICAgICAgZGV2LT5sb2FkZWQgPSBGQUxTRTsKICAgICB9Ci0gICAgZGV2LT5sb2FkZWQgPSBU
UlVFOwogfQogCiBzdGF0aWMgdm9pZCBjZF9zY3NpX2x1X3VubG9hZChDZFNjc2lMVSAqZGV2KQot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
