Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395907A79A
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E376E4FF;
	Tue, 30 Jul 2019 12:04:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB18F6E4E6
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 56B73C024906
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:46 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 84E6F5D6B2;
 Tue, 30 Jul 2019 12:04:45 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:31 +0100
Message-Id: <20190730120331.17967-43-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 30 Jul 2019 12:04:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 44/44] CI: Add usbredir packages to
 Windows
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

LS0tCiAuZ2l0bGFiLWNpLnltbCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCA4YmNl
ZjY1ZC4uZTJkMWM1NWIgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRsYWIt
Y2kueW1sCkBAIC0xNyw2ICsxNyw3IEBAIHZhcmlhYmxlczoKICAgREVQU19NSU5HVzogbWluZ3c2
NC1nY2MgbWluZ3c2NC1wa2ctY29uZmlnIG1pbmd3NjQtcGl4bWFuIG1pbmd3NjQtb3BlbnNzbAog
ICAgICAgICAgICAgICBtaW5ndzY0LWd0azMgbWluZ3c2NC1qc29uLWdsaWIgbWluZ3c2NC1vcHVz
CiAgICAgICAgICAgICAgIG1pbmd3NjQtZ3N0cmVhbWVyMS1wbHVnaW5zLWJhc2UgbWluZ3c2NC1n
c3RyZWFtZXIxLXBsdWdpbnMtZ29vZAorICAgICAgICAgICAgICBtaW5ndzY0LXVzYnJlZGlyIG1p
bmd3MzItdXNicmVkaXIKIAogZmVkb3JhOgogICBhcnRpZmFjdHM6Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
