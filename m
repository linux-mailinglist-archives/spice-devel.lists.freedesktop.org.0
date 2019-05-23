Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2BB2781C
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD6E89CFA;
	Thu, 23 May 2019 08:37:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F119789CF9
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6798A821D1
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:46 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8FDEA5D9C3;
 Thu, 23 May 2019 08:37:45 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:17 +0200
Message-Id: <20190523083725.1554-6-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 23 May 2019 08:37:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 05/13] spice: clear loop pointer on
 unref
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

VGhlIHBvaW50ZXIgdG8gbG9vcCBtdXN0IGJlIHNldCB0byBOVUxMIG9uIHVucmVmLgoKUXVpdCBz
aWduYWwgaGFuZGxlciBjYW4gYmUgY2FsbGVkIGF0IGFueSB0aW1lLAp1c2luZyBnX21haW5fbG9v
cF9xdWl0KCkgb24gYSBmcmVlZCBsb29wIGNvdWxkIGxlYWQgdG8gc2VnZmF1bHQuCgpTaWduZWQt
b2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgotLS0KIHNwaWNlL3NwaWNl
LXdlYmRhdmQuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jIGIvc3BpY2Uv
c3BpY2Utd2ViZGF2ZC5jCmluZGV4IDZhZDYzYzUuLjNmYWMyOGIgMTAwNjQ0Ci0tLSBhL3NwaWNl
L3NwaWNlLXdlYmRhdmQuYworKysgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKQEAgLTI0Myw3ICsy
NDMsOCBAQCBxdWl0IChpbnQgc2lnKQogICBpZiAoc2lnID09IFNJR0lOVCB8fCBzaWcgPT0gU0lH
VEVSTSkKICAgICAgIHF1aXRfc2VydmljZSA9IFRSVUU7CiAKLSAgZ19tYWluX2xvb3BfcXVpdCAo
bG9vcCk7CisgIGlmIChsb29wKQorICAgIGdfbWFpbl9sb29wX3F1aXQgKGxvb3ApOwogfQogCiBz
dGF0aWMgQ2xpZW50ICoKQEAgLTk4Miw3ICs5ODMsNyBAQCBydW5fc2VydmljZSAoU2VydmljZURh
dGEgKnNlcnZpY2VfZGF0YSkKIAogICBzdGFydF9tdXhfcmVhZCAobXV4X2lzdHJlYW0pOwogICBn
X21haW5fbG9vcF9ydW4gKGxvb3ApOwotICBnX21haW5fbG9vcF91bnJlZiAobG9vcCk7CisgIGdf
Y2xlYXJfcG9pbnRlciAoJmxvb3AsIGdfbWFpbl9sb29wX3VucmVmKTsKIAogI2lmZGVmIEdfT1Nf
V0lOMzIKICAgZ19jYW5jZWxsYWJsZV9jYW5jZWwgKG1hcF9kcml2ZV9kYXRhLmNhbmNlbF9tYXAp
OwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
