Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E79402D9F5
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2019 12:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEFC89CD5;
	Wed, 29 May 2019 10:05:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5477C89CD5
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 10:05:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E694330ADC78
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 10:05:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5B776A97B;
 Wed, 29 May 2019 10:05:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 29 May 2019 11:05:36 +0100
Message-Id: <20190529100536.6848-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 29 May 2019 10:05:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] meson: Workaround gtk+ exposing
 Objective C in headers on macOS
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

QXBwbHkgdGhlIHNhbWUgd29ya2Fyb3VuZCBpbiAzYzliMzdiZmM3Yzg4OTY5ZGZlMTZiOGJmZDg3
NDc0NWUwZmNlYjhhCmZvciBNZXNvbi4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8
ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIG1lc29uLmJ1aWxkIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24u
YnVpbGQKaW5kZXggOGM2Mjg4ZjMuLjRjMDY1YTQzIDEwMDY0NAotLS0gYS9tZXNvbi5idWlsZAor
KysgYi9tZXNvbi5idWlsZApAQCAtMzQxLDYgKzM0MSwxMSBAQCBpZiBzcGljZV9ndGtfaGFzX2d0
awogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1ER0RLX1ZFUlNJT05fTUFYX0FMTE9X
RUQ9QDBAJy5mb3JtYXQoZ3RrX2VuY29kZWRfdmVyc2lvbildCiBlbmRpZgogCisjIFdvcmthcm91
bmQgZ3RrKyBleHBvc2luZyBPYmplY3RpdmUgQzogaHR0cHM6Ly9naXRsYWIuZ25vbWUub3JnL0dO
T01FL2d0ay9pc3N1ZXMvMTczNworaWYgaG9zdF9tYWNoaW5lLnN5c3RlbSgpID09ICdkYXJ3aW4n
CisgIHNwaWNlX2d0a19nbG9iYWxfY2ZsYWdzICs9IFsnLU9iakMnXQorZW5kaWYKKwogYWRkX3By
b2plY3RfYXJndW1lbnRzKGNvbXBpbGVyLmdldF9zdXBwb3J0ZWRfYXJndW1lbnRzKHNwaWNlX2d0
a19nbG9iYWxfY2ZsYWdzKSwKICAgICAgICAgICAgICAgICAgICAgICBsYW5ndWFnZSA6ICdjJykK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
