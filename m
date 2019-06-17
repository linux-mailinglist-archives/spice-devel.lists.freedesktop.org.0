Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E204919D
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 22:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5588E89FAC;
	Mon, 17 Jun 2019 20:46:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B0089FAC
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CBE33082B6D
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:37 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-54.brq.redhat.com
 [10.40.204.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8360C19746;
 Mon, 17 Jun 2019 20:46:36 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 22:46:26 +0200
Message-Id: <20190617204630.22420-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 17 Jun 2019 20:46:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/5] gio-pipe: fix NULL pointer
 dereferencing
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

SW4gcGlwZV9vdXRwdXRfc3RyZWFtX2lzX3dyaXRhYmxlLCBpZiB0aGUgcGVlciBpcyBhbHJlYWR5
IGdvbmUsCnBlZXJfY2xvc2VkIGlzIHNldCB0byBUUlVFIGFuZCBpbiB0aGlzIGNhc2UsIHBlZXIt
PnJlYWQgc2hvdWxkIG5vdCBiZSBhY2Nlc3NlZAphcyBwZWVyIGlzIE5VTEwuCgpPdGhlcndpc2Us
IHRoZSBmb2xsb3dpbmcgc2VxdWVuY2Ugb2YgY2FsbHMgKHNpbXBsaWZpZWQpIHdvdWxkIHRyaWdn
ZXIgYSBzZWdmYXVsdDoKCiAgICBzcGljZV9tYWtlX3BpcGUocDEsIHAyKTsKICAgIGdfb3V0cHV0
X3N0cmVhbV93cml0ZV9hbGxfYXN5bmMocDFfb3V0KTsKICAgIGdfY2xlYXJfb2JqZWN0KHAyKTsK
ICAgIGdfcG9sbGFibGVfb3V0cHV0X3N0cmVhbV9pc193cml0YWJsZShwMV9vdXQpOwoKU2lnbmVk
LW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcmMvZ2lvcGlw
ZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvc3JjL2dpb3BpcGUuYyBiL3NyYy9naW9waXBlLmMKaW5kZXggZGUxYWRh
ZS4uZmNlYzg0NCAxMDA2NDQKLS0tIGEvc3JjL2dpb3BpcGUuYworKysgYi9zcmMvZ2lvcGlwZS5j
CkBAIC00MjAsNyArNDIwLDcgQEAgcGlwZV9vdXRwdXRfc3RyZWFtX2lzX3dyaXRhYmxlIChHUG9s
bGFibGVPdXRwdXRTdHJlYW0gKnN0cmVhbSkKICAgICBQaXBlT3V0cHV0U3RyZWFtICpzZWxmID0g
UElQRV9PVVRQVVRfU1RSRUFNKHN0cmVhbSk7CiAgICAgZ2Jvb2xlYW4gd3JpdGFibGU7CiAKLSAg
ICB3cml0YWJsZSA9IHNlbGYtPmJ1ZmZlciA9PSBOVUxMIHx8IHNlbGYtPnBlZXItPnJlYWQgPj0g
MCB8fCBzZWxmLT5wZWVyX2Nsb3NlZDsKKyAgICB3cml0YWJsZSA9IHNlbGYtPmJ1ZmZlciA9PSBO
VUxMIHx8IHNlbGYtPnBlZXJfY2xvc2VkIHx8IHNlbGYtPnBlZXItPnJlYWQgPj0gMDsKICAgICAv
L2dfZGVidWcoIndyaXRhYmxlICVwICVkIiwgc2VsZiwgd3JpdGFibGUpOwogCiAgICAgcmV0dXJu
IHdyaXRhYmxlOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
