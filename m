Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4546FD7D
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 12:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D5889BFB;
	Mon, 22 Jul 2019 10:14:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1F589BF6
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:14:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAF02307D88C
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:14:00 +0000 (UTC)
Received: from lub.com (unknown [10.35.206.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B1225C221
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:13:58 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 13:13:54 +0300
Message-Id: <20190722101355.25853-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 22 Jul 2019 10:14:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH 1/2] ci: pre-install "file"
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

VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6CiAgLi9jb25maWd1cmU6IGxpbmUgNzA0
MDogL3Vzci9iaW4vZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQoKU2lnbmVkLW9mZi1i
eTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgotLS0KIC5naXRsYWItY2kueW1sIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCAzMTZhODYwZGQuLjMz
MjEwY2I5ZCAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55bWwKKysrIGIvLmdpdGxhYi1jaS55bWwK
QEAgLTQsNyArNCw3IEBAIGJlZm9yZV9zY3JpcHQ6CiAgIC0gPgogICAgIGRuZiBpbnN0YWxsICdk
bmYtY29tbWFuZChkZWJ1Z2luZm8taW5zdGFsbCknIGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBv
cmMtZGV2ZWwKICAgICBweXRob24zIHB5dGhvbjMtc2l4IHB5dGhvbjMtcHlwYXJzaW5nIGdsaWIt
bmV0d29ya2luZwotICAgIGFzY2lpZG9jIGJ6aXAyIG1lc29uIG5pbmphLWJ1aWxkCisgICAgYXNj
aWlkb2MgYnppcDIgbWVzb24gbmluamEtYnVpbGQgZmlsZQogICAgIGdsaWIyLWRldmVsIGNlbHQw
NTEtZGV2ZWwgcGl4bWFuLWRldmVsIGFsc2EtbGliLWRldmVsIG9wZW5zc2wtZGV2ZWwgbGlianBl
Zy10dXJiby1kZXZlbAogICAgIGxpYmNhY2FyZC1kZXZlbCBjeXJ1cy1zYXNsLWRldmVsIGx6NC1k
ZXZlbCBvcHVzLWRldmVsCiAgICAgZ3N0cmVhbWVyMS1kZXZlbCBnc3RyZWFtZXIxLXBsdWdpbnMt
YmFzZS1kZXZlbAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
