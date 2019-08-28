Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47691A080F
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 19:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D927289D6C;
	Wed, 28 Aug 2019 17:03:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A786489D6C
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 17:03:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 52FB018C4266
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 17:03:47 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8DF935DA8D;
 Wed, 28 Aug 2019 17:03:46 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 18:03:41 +0100
Message-Id: <20190828170341.24731-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Wed, 28 Aug 2019 17:03:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] meson: Remove "install" argument
 from configure_file
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

VGhlIGFyZ3VtZW50IHJlcXVpcmVzIE1lc29uIDAuNTAgaG93ZXZlciBpdCdzIGFscmVhZHkgImZh
bHNlIgpieSBkZWZhdWx0IGlmICJpbnN0YWxsX2RpciIgaXMgbm90IHByb3ZpZGVkIHNvIHJlbW92
ZSBpdAp0byBrZWVwIGNvbXBhdGliaWxpdHkgd2l0aCBNZXNvbiAwLjQ4LgoKU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogbWVzb24uYnVpbGQg
fCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbWVzb24u
YnVpbGQgYi9tZXNvbi5idWlsZAppbmRleCBjNTQ1NGI3MC4uYTNjMmQwNTEgMTAwNjQ0Ci0tLSBh
L21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0xNzEsNSArMTcxLDQgQEAgc3ViZGly
KCdkb2NzJykKICMgd3JpdGUgY29uZmlnLmgKICMKIGNvbmZpZ3VyZV9maWxlKG91dHB1dCA6ICdj
b25maWcuaCcsCi0gICAgICAgICAgICAgICBpbnN0YWxsIDogZmFsc2UsCiAgICAgICAgICAgICAg
ICBjb25maWd1cmF0aW9uIDogc3BpY2VfY29tbW9uX2NvbmZpZ19kYXRhKQotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
