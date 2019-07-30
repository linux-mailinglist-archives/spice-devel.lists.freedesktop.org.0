Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7797A77B
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090D86E4CE;
	Tue, 30 Jul 2019 12:04:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3CA6E4D2
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A2C130860D1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:00 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57D355D6B0;
 Tue, 30 Jul 2019 12:03:59 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:04 +0100
Message-Id: <20190730120331.17967-16-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 30 Jul 2019 12:04:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 15/44] fixup! usb-redir: extend USB
 backend to support emulated devices
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

VXNlIEdMaWIgc3RyaW5nIGZvcm1hdHRpbmcgc3ludGF4IHRvIGZpeCBhIHdhcm5pbmcgb24gV2lu
ZG93cwotLS0KIHNyYy91c2ItYmFja2VuZC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMg
Yi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCBjZjFhZTJiOC4uOTc1M2JhMzAgMTAwNjQ0Ci0tLSBh
L3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC04NjksNyArODY5
LDcgQEAgc3RhdGljIHZvaWQgdXNicmVkaXJfYnVsa19wYWNrZXQodm9pZCAqcHJpdiwKICAgICBT
cGljZVVzYkVtdWxhdGVkRGV2aWNlICplZGV2ID0gZCA/IGQtPmVkZXYgOiBOVUxMOwogICAgIHN0
cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyIGhvdXQgPSAqaDsKICAgICB1aW50MzJf
dCBsZW4gPSAoaC0+bGVuZ3RoX2hpZ2ggPDwgMTYpIHwgaC0+bGVuZ3RoOwotICAgIFNQSUNFX0RF
QlVHKCIlcyAlcDogZXAgJVgsIGxlbiAldSwgaWQgJSIgUFJJdTY0LCBfX0ZVTkNUSU9OX18sCisg
ICAgU1BJQ0VfREVCVUcoIiVzICVwOiBlcCAlWCwgbGVuICV1LCBpZCAlIiBHX0dVSU5UNjRfRk9S
TUFULCBfX0ZVTkNUSU9OX18sCiAgICAgICAgICAgICAgICAgY2gsIGgtPmVuZHBvaW50LCBsZW4s
IGlkKTsKIAogICAgIGlmICghZWRldikgewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
