Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DA2B7BCE
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553C26F8E5;
	Thu, 19 Sep 2019 14:11:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CD36F89D
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2F85E3023080
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:44 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA56E5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:43 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:25 +0200
Message-Id: <20190919141133.10691-13-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 19 Sep 2019 14:11:44 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 12/20] usb-redir: enable redirection of
 emulated CD drive
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKQWRk
IGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIGRldmljZSB0byBidWlsZC4KTm93IGl0IGlzIHBv
c3NpYmxlIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogWXVy
aSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9tZXNv
bi5idWlsZCB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVpbGQgYi9zcmMvbWVzb24uYnVpbGQKaW5kZXgg
NGQ5MjE1Yy4uMDBlYjI3NyAxMDA2NDQKLS0tIGEvc3JjL21lc29uLmJ1aWxkCisrKyBiL3NyYy9t
ZXNvbi5idWlsZApAQCAtMTU3LDYgKzE1NywxOCBAQCBlbGlmIHNwaWNlX2d0a19jb3JvdXRpbmUg
PT0gJ3dpbmZpYmVyJwogICBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzICs9ICdjb3JvdXRpbmVf
d2luZmliZXJzLmMnCiBlbmRpZgogCitpZiBzcGljZV9ndGtfaGFzX3VzYnJlZGlyCisgIHNwaWNl
X2NsaWVudF9nbGliX3NvdXJjZXMgKz0gWworICAgICd1c2ItZGV2aWNlLWNkLmMnLAorICAgICd1
c2ItZGV2aWNlLWNkLmgnLAorICAgICdjZC1zY3NpLmMnLAorICAgICdjZC1zY3NpLmgnLAorICAg
ICdjZC1zY3NpLWRldi1wYXJhbXMuaCcsCisgICAgJ2NkLXVzYi1idWxrLW1zZC5jJywKKyAgICAn
Y2QtdXNiLWJ1bGstbXNkLmgnLAorICBdCitlbmRpZgorCiBpZiBzcGljZV9ndGtfaGFzX3VzYnJl
ZGlyIGFuZCBob3N0X21hY2hpbmUuc3lzdGVtKCkgPT0gJ3dpbmRvd3MnCiAgIHNwaWNlX2NsaWVu
dF9nbGliX3NvdXJjZXMgKz0gWyd1c2Jka19hcGkuYycsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICd1c2Jka19hcGkuaCddCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
