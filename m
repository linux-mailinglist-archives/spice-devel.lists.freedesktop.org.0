Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F079E400
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854DC898C2;
	Tue, 27 Aug 2019 09:23:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B329898C2
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6B8F58BA2D4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:40 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B90425D9CC;
 Tue, 27 Aug 2019 09:23:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:33 +0100
Message-Id: <20190827092246.10276-17-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 27 Aug 2019 09:23:40 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 16/29] fixup! usb-redir: enable
 redirection of emulated CD drive
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

RG8gbm90IGJ1aWxkIHVzYiBlbXVsYXRpb24gZmlsZXMgaWYgdXNiIGlzIGRpc2FibGVkCi0tLQog
c3JjL21lc29uLmJ1aWxkIHwgMTkgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL21lc29u
LmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCmluZGV4IDhiZmM5MjNiLi4wMGViMjc3OCAxMDA2NDQK
LS0tIGEvc3JjL21lc29uLmJ1aWxkCisrKyBiL3NyYy9tZXNvbi5idWlsZApAQCAtMTI0LDEzICsx
MjQsNiBAQCBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzID0gWwogICAndXNiLWJhY2tlbmQuYycs
CiAgICd1c2ItZW11bGF0aW9uLmgnLAogICAndXNiLWJhY2tlbmQuaCcsCi0gICd1c2ItZGV2aWNl
LWNkLmMnLAotICAndXNiLWRldmljZS1jZC5oJywKLSAgJ2NkLXNjc2kuYycsCi0gICdjZC1zY3Np
LmgnLAotICAnY2Qtc2NzaS1kZXYtcGFyYW1zLmgnLAotICAnY2QtdXNiLWJ1bGstbXNkLmMnLAot
ICAnY2QtdXNiLWJ1bGstbXNkLmgnLAogICAndm1jc3RyZWFtLmMnLAogICAndm1jc3RyZWFtLmgn
LAogXQpAQCAtMTY0LDYgKzE1NywxOCBAQCBlbGlmIHNwaWNlX2d0a19jb3JvdXRpbmUgPT0gJ3dp
bmZpYmVyJwogICBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzICs9ICdjb3JvdXRpbmVfd2luZmli
ZXJzLmMnCiBlbmRpZgogCitpZiBzcGljZV9ndGtfaGFzX3VzYnJlZGlyCisgIHNwaWNlX2NsaWVu
dF9nbGliX3NvdXJjZXMgKz0gWworICAgICd1c2ItZGV2aWNlLWNkLmMnLAorICAgICd1c2ItZGV2
aWNlLWNkLmgnLAorICAgICdjZC1zY3NpLmMnLAorICAgICdjZC1zY3NpLmgnLAorICAgICdjZC1z
Y3NpLWRldi1wYXJhbXMuaCcsCisgICAgJ2NkLXVzYi1idWxrLW1zZC5jJywKKyAgICAnY2QtdXNi
LWJ1bGstbXNkLmgnLAorICBdCitlbmRpZgorCiBpZiBzcGljZV9ndGtfaGFzX3VzYnJlZGlyIGFu
ZCBob3N0X21hY2hpbmUuc3lzdGVtKCkgPT0gJ3dpbmRvd3MnCiAgIHNwaWNlX2NsaWVudF9nbGli
X3NvdXJjZXMgKz0gWyd1c2Jka19hcGkuYycsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICd1c2Jka19hcGkuaCddCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
