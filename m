Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266907A787
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C55A88A58;
	Tue, 30 Jul 2019 12:04:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791C46E4E8
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 23D59307D90D
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:21 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FDDC5D6B0;
 Tue, 30 Jul 2019 12:04:20 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:16 +0100
Message-Id: <20190730120331.17967-28-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 30 Jul 2019 12:04:21 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 28/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

VXNlIHNpemVvZiBpbnN0ZWFkIG9mIGNvbnN0YW50LgotLS0KIHNyYy9jZC11c2ItYnVsay1tc2Qu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9jZC11c2ItYnVsay1tc2QuYyBiL3NyYy9jZC11c2ItYnVsay1tc2Qu
YwppbmRleCA2MWMxNWE3NS4uYWI2NjQ0ZjMgMTAwNjQ0Ci0tLSBhL3NyYy9jZC11c2ItYnVsay1t
c2QuYworKysgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKQEAgLTI2NCw3ICsyNjQsNyBAQCBzdGF0
aWMgaW50IHBhcnNlX3VzYl9tc2RfY21kKFVzYkNkQnVsa01zZERldmljZSAqY2QsIHVpbnQ4X3Qg
KmJ1ZiwgdWludDMyX3QgY2J3XwogICAgIFVzYkNkQnVsa01zZFJlcXVlc3QgKnVzYl9yZXEgPSAm
Y2QtPnVzYl9yZXE7CiAgICAgQ2RTY3NpUmVxdWVzdCAqc2NzaV9yZXEgPSAmdXNiX3JlcS0+c2Nz
aV9yZXE7CiAKLSAgICBpZiAoY2J3X2xlbiAhPSAzMSkgeworICAgIGlmIChjYndfbGVuICE9IHNp
emVvZigqY2J3KSkgewogICAgICAgICBTUElDRV9FUlJPUigiQ01EOiBCYWQgQ0JXIHNpemU6JSIg
R19HVUlOVDMyX0ZPUk1BVCwgY2J3X2xlbik7CiAgICAgICAgIHJldHVybiAtMTsKICAgICB9Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
