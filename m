Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48749179E6
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 15:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D054C898F1;
	Wed,  8 May 2019 13:07:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF54898F1
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 13:07:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F41581E1D
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 13:07:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8356A60C61;
 Wed,  8 May 2019 13:07:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  8 May 2019 14:06:58 +0100
Message-Id: <20190508130659.4756-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 08 May 2019 13:07:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] test-display-base: Use
 SPICE_CONTAINEROF to avoid alignment warning
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

VGhpcyBjaGFuZ2UgcHJldmVudCBhIHdhcm5pbmcgaXNzdWVkIGJ5IEdDQyA5IGFuZCBwb3RlbnRp
YWxseQpvdGhlciBjb21waWxlcnMuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvdGVzdHMvdGVzdC1kaXNwbGF5LWJhc2UuYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWRpc3BsYXktYmFzZS5jIGIvc2VydmVyL3Rlc3Rz
L3Rlc3QtZGlzcGxheS1iYXNlLmMKaW5kZXggMzFkODU2YWUuLjQ5ZTk5MzQzIDEwMDY0NAotLS0g
YS9zZXJ2ZXIvdGVzdHMvdGVzdC1kaXNwbGF5LWJhc2UuYworKysgYi9zZXJ2ZXIvdGVzdHMvdGVz
dC1kaXNwbGF5LWJhc2UuYwpAQCAtNjcwLDcgKzY3MCw3IEBAIHN0YXRpYyB2b2lkIHJlbGVhc2Vf
cmVzb3VyY2UoU1BJQ0VfR05VQ19VTlVTRUQgUVhMSW5zdGFuY2UgKnFpbiwKICAgICBzcGljZV9h
c3NlcnQocmVsZWFzZV9pbmZvLmdyb3VwX2lkID09IE1FTV9TTE9UX0dST1VQX0lEKTsKICAgICBz
d2l0Y2ggKGV4dC0+Y21kLnR5cGUpIHsKICAgICAgICAgY2FzZSBRWExfQ01EX0RSQVc6Ci0gICAg
ICAgICAgICB0ZXN0X3NwaWNlX2Rlc3Ryb3lfdXBkYXRlKCh2b2lkKilleHQpOworICAgICAgICAg
ICAgdGVzdF9zcGljZV9kZXN0cm95X3VwZGF0ZShTUElDRV9DT05UQUlORVJPRihleHQsIFNpbXBs
ZVNwaWNlVXBkYXRlLCBleHQpKTsKICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICBjYXNlIFFY
TF9DTURfU1VSRkFDRToKICAgICAgICAgICAgIGdfZnJlZShleHQpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
