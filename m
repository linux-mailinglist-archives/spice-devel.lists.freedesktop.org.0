Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E009E3FA
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58344898B6;
	Tue, 27 Aug 2019 09:23:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77262898BC
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 230DC6468A
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:28 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 71EAA5D9CC;
 Tue, 27 Aug 2019 09:23:26 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:28 +0100
Message-Id: <20190827092246.10276-12-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Tue, 27 Aug 2019 09:23:28 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 11/29] fixup! usb-redir: add
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

RG8gbm90IHdyYXAgYWxsIGRlY2xhcmF0aW9ucywga2VlcCBvdXQgZXh0ZXJuYWwgaGVhZGVycwot
LS0KIHNyYy9jZC11c2ItYnVsay1tc2QuaCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2QtdXNiLWJ1bGst
bXNkLmggYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmgKaW5kZXggODU2NjExNjUuLmMxNjVjMTg3IDEw
MDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmgKKysrIGIvc3JjL2NkLXVzYi1idWxrLW1z
ZC5oCkBAIC0yMSwxMiArMjEsMTIgQEAKIAogI3ByYWdtYSBvbmNlCiAKLUdfQkVHSU5fREVDTFMK
LQogI2luY2x1ZGUgPGdpby9naW8uaD4KIAogI2luY2x1ZGUgImNkLXNjc2ktZGV2LXBhcmFtcy5o
IgogCitHX0JFR0lOX0RFQ0xTCisKIHR5cGVkZWYgZW51bSBDZFVzYkJ1bGtTdGF0dXMgewogICAg
IEJVTEtfU1RBVFVTX0dPT0QgPSAwLAogICAgIEJVTEtfU1RBVFVTX0VSUk9SLAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
