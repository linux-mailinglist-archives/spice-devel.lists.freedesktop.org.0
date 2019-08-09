Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F11787CB2
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C606EE33;
	Fri,  9 Aug 2019 14:28:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72AB66EE34
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 20EF330C5859
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:09 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C795B1001B02;
 Fri,  9 Aug 2019 14:28:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:39 +0100
Message-Id: <20190809142651.2967-22-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Fri, 09 Aug 2019 14:28:09 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 21/33] fixup! usb-redir: add
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

c3ViX3BhZ2UgZmllbGQgaW4gTU9ERSBTRU5TRSAxMCBjb21tYW5kIGlzIDggYml0LCBub3QgNC4K
LS0tCiBzcmMvY2Qtc2NzaS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NkLXNjc2kuYyBiL3NyYy9jZC1zY3Np
LmMKaW5kZXggM2MxZjBiM2UuLmQ2MjNkNjY1IDEwMDY0NAotLS0gYS9zcmMvY2Qtc2NzaS5jCisr
KyBiL3NyYy9jZC1zY3NpLmMKQEAgLTE0NDMsNyArMTQ0Myw3IEBAIHN0YXRpYyB2b2lkIGNkX3Nj
c2lfY21kX21vZGVfc2Vuc2VfMTAoQ2RTY3NpTFUgKmRldiwgQ2RTY3NpUmVxdWVzdCAqcmVxKQog
ICAgIGRiZCA9IChyZXEtPmNkYlsxXSA+PiAzKSAmIDB4MTsKICAgICBwYWdlID0gcmVxLT5jZGJb
Ml0gJiAweDNmOwogICAgIHBjID0gcmVxLT5jZGJbMl0gPj4gNjsKLSAgICBzdWJfcGFnZSA9IHJl
cS0+Y2RiWzNdICYgMHhmOworICAgIHN1Yl9wYWdlID0gcmVxLT5jZGJbM107CiAKICAgICByZXEt
PnJlcV9sZW4gPSAocmVxLT5jZGJbN10gPDwgOCkgfCByZXEtPmNkYls4XTsKIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
