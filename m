Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5497A796
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9106E4FE;
	Tue, 30 Jul 2019 12:04:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3C76E4C9
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 879B86749D;
 Tue, 30 Jul 2019 12:04:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B3B15D6B2;
 Tue, 30 Jul 2019 12:04:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:28 +0100
Message-Id: <20190730120331.17967-40-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 30 Jul 2019 12:04:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 41/44] usb-redir: enable redirection
 of emulated CD drive
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKUmVn
aXN0ZXIgY29uc3RydWN0b3IgZm9yIGVtdWxhdGVkIENEIGRldmljZS4gTm93IGNyZWF0aW9uCm9m
IENEIGRldmljZXMgYXQgc3RhcnR1cCBpcyBwb3NzaWJsZS4KClNpZ25lZC1vZmYtYnk6IFl1cmkg
QmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KLS0tCiBzcmMvbWVzb24u
YnVpbGQgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAppbmRleCBiMjc1ZGE2NS4u
NGJhYjA4N2QgMTAwNjQ0Ci0tLSBhL3NyYy9tZXNvbi5idWlsZAorKysgYi9zcmMvbWVzb24uYnVp
bGQKQEAgLTEyNCw2ICsxMjQsMTIgQEAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyA9IFsKICAg
J3VzYi1iYWNrZW5kLmMnLAogICAndXNiLWVtdWxhdGlvbi5oJywKICAgJ3VzYi1iYWNrZW5kLmgn
LAorICAndXNiLWRldmljZS1jZC5jJywKKyAgJ2NkLXNjc2kuYycsCisgICdjZC1zY3NpLmgnLAor
ICAnY2Qtc2NzaS1kZXYtcGFyYW1zLmgnLAorICAnY2QtdXNiLWJ1bGstbXNkLmMnLAorICAnY2Qt
dXNiLWJ1bGstbXNkLmgnLAogICAndm1jc3RyZWFtLmMnLAogICAndm1jc3RyZWFtLmgnLAogXQot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
