Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF3487CB4
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891D46EE31;
	Fri,  9 Aug 2019 14:28:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52626EE31
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7F9A53098215
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:15 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9246B1000182;
 Fri,  9 Aug 2019 14:28:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:41 +0100
Message-Id: <20190809142651.2967-24-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 09 Aug 2019 14:28:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 23/33] fixup! usb-redir: add
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

Q2xlYXIgc3RyZWFtIHBvaW50ZXIuCkFzIHdlIHNldCBsb2FkZWQgdG8gRkFMU0UgdGhlcmUncyBu
byByZWFzb24gdG8ga2VlcCB0aGUgcG90ZW50aWFsIHN0cmVhbS4KLS0tCiBzcmMvY2Qtc2NzaS5j
IHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Ny
Yy9jZC1zY3NpLmMgYi9zcmMvY2Qtc2NzaS5jCmluZGV4IDYyYzU4OTQyLi4yNTg0MmIzYiAxMDA2
NDQKLS0tIGEvc3JjL2NkLXNjc2kuYworKysgYi9zcmMvY2Qtc2NzaS5jCkBAIC02NTAsNiArNjUw
LDggQEAgaW50IGNkX3Njc2lfZGV2X3VucmVhbGl6ZShDZFNjc2lUYXJnZXQgKnN0LCB1aW50MzJf
dCBsdW4pCiAgICAgZ19jbGVhcl9wb2ludGVyKCZkZXYtPnZlcnNpb24sIGdfZnJlZSk7CiAgICAg
Z19jbGVhcl9wb2ludGVyKCZkZXYtPnNlcmlhbCwgZ19mcmVlKTsKIAorICAgIGdfY2xlYXJfb2Jq
ZWN0KCZkZXYtPnN0cmVhbSk7CisKICAgICBkZXYtPmxvYWRlZCA9IEZBTFNFOwogICAgIGRldi0+
cmVhbGl6ZWQgPSBGQUxTRTsKICAgICBkZXYtPnBvd2VyX2NvbmQgPSBDRF9TQ1NJX1BPV0VSX1NU
T1BQRUQ7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
