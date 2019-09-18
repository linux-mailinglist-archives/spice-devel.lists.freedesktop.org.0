Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00A1B5E75
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 09:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BE46EE2D;
	Wed, 18 Sep 2019 07:58:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601276EE2D
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 07:58:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 329588980EA
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 07:58:14 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31CAD5D9CA;
 Wed, 18 Sep 2019 07:58:12 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 18 Sep 2019 08:58:09 +0100
Message-Id: <20190918075809.5107-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Wed, 18 Sep 2019 07:58:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] char-device: Allow to more
 safely and quickly get device instance
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

VGhpcyBpbmZvcm1hdGlvbiBpcyByZXRyaWV2ZWQgbXVsdGlwbGUgdGltZS4KQXZvaWQgdG8gdXNl
IGp1c3QgZ19vYmplY3RfZ2V0IHdoaWNoIGlzIGR5bmFtaWMgc28gcG90ZW50aWFsbHkKdW5zYWZl
IGFuZCBzbG93LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Ci0tLQogc2VydmVyL2NoYXItZGV2aWNlLmMgfCA1ICsrKysrCiBzZXJ2ZXIvY2hhci1k
ZXZpY2UuaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwppbmRleCAw
M2FjOTkwN2MuLjM2ZTIyZGVlMyAxMDA2NDQKLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKKysr
IGIvc2VydmVyL2NoYXItZGV2aWNlLmMKQEAgLTExNjYsNiArMTE2NiwxMSBAQCBTUElDRV9HTlVD
X1ZJU0lCTEUgdm9pZCBzcGljZV9zZXJ2ZXJfcG9ydF9ldmVudChTcGljZUNoYXJEZXZpY2VJbnN0
YW5jZSAqc2luLCB1aQogICAgIHJldHVybiBrbGFzcy0+cG9ydF9ldmVudChzaW4tPnN0LCBldmVu
dCk7CiB9CiAKK1NwaWNlQ2hhckRldmljZUluc3RhbmNlICpyZWRfY2hhcl9kZXZpY2VfZ2V0X2Rl
dmljZV9pbnN0YW5jZShSZWRDaGFyRGV2aWNlICpkZXYpCit7CisgICAgcmV0dXJuIGRldi0+cHJp
di0+c2luOworfQorCiBzdGF0aWMgdm9pZAogcmVkX2NoYXJfZGV2aWNlX2luaXQoUmVkQ2hhckRl
dmljZSAqc2VsZikKIHsKZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVy
L2NoYXItZGV2aWNlLmgKaW5kZXggMGE4NzA0NWI3Li44MzBjYTQ1NmQgMTAwNjQ0Ci0tLSBhL3Nl
cnZlci9jaGFyLWRldmljZS5oCisrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCkBAIC0yNDMsNiAr
MjQzLDggQEAgUmVkQ2hhckRldmljZSAqc3BpY2V2bWNfZGV2aWNlX2Nvbm5lY3QoUmVkc1N0YXRl
ICpyZWRzLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCBj
aGFubmVsX3R5cGUpOwogdm9pZCBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChTcGljZUNoYXJE
ZXZpY2VJbnN0YW5jZSAqY2hhcl9kZXZpY2UpOwogCitTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAq
cmVkX2NoYXJfZGV2aWNlX2dldF9kZXZpY2VfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2KTsK
KwogU3BpY2VDaGFyRGV2aWNlSW50ZXJmYWNlICpzcGljZV9jaGFyX2RldmljZV9nZXRfaW50ZXJm
YWNlKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICppbnN0YW5jZSk7CiAKICNlbmRpZiAvKiBDSEFS
X0RFVklDRV9IXyAqLwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
