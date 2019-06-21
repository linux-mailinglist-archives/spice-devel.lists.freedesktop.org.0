Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C484E46F
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 11:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBDCA6E857;
	Fri, 21 Jun 2019 09:45:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140EA6E857
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 09:45:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 867DC22387F
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 09:45:14 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9EEBF60BEC;
 Fri, 21 Jun 2019 09:45:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 21 Jun 2019 10:45:09 +0100
Message-Id: <20190621094509.2212-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 21 Jun 2019 09:45:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] dcc-send: Check some constants
 at compile time
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL2RjYy1zZW5kLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLXNlbmQuYyBiL3NlcnZlci9k
Y2Mtc2VuZC5jCmluZGV4IGVhMjEyOGUyNy4uYjE0NjE5YTJiIDEwMDY0NAotLS0gYS9zZXJ2ZXIv
ZGNjLXNlbmQuYworKysgYi9zZXJ2ZXIvZGNjLXNlbmQuYwpAQCAtMTgzNCw3ICsxODM0LDcgQEAg
c3RhdGljIHZvaWQgZGlzcGxheV9jaGFubmVsX21hcnNoYWxsX21pZ3JhdGVfZGF0YShSZWRDaGFu
bmVsQ2xpZW50ICpyY2MsCiAgICAgc3BpY2VfbWFyc2hhbGxlcl9hZGRfdWludDMyKGJhc2VfbWFy
c2hhbGxlciwgU1BJQ0VfTUlHUkFURV9EQVRBX0RJU1BMQVlfVkVSU0lPTik7CiAKICAgICBzcGlj
ZV9hc3NlcnQoZGNjLT5wcml2LT5waXhtYXBfY2FjaGUpOwotICAgIHNwaWNlX2Fzc2VydChNSUdS
QVRFX0RBVEFfRElTUExBWV9NQVhfQ0FDSEVfQ0xJRU5UUyA9PSA0ICYmCisgICAgU1BJQ0VfVkVS
SUZZKE1JR1JBVEVfREFUQV9ESVNQTEFZX01BWF9DQUNIRV9DTElFTlRTID09IDQgJiYKICAgICAg
ICAgICAgICAgICAgTUlHUkFURV9EQVRBX0RJU1BMQVlfTUFYX0NBQ0hFX0NMSUVOVFMgPT0gTUFY
X0NBQ0hFX0NMSUVOVFMpOwogCiAgICAgZGlzcGxheV9kYXRhLm1lc3NhZ2Vfc2VyaWFsID0gcmVk
X2NoYW5uZWxfY2xpZW50X2dldF9tZXNzYWdlX3NlcmlhbChyY2MpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
