Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E442310
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 12:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97173894B7;
	Wed, 12 Jun 2019 10:53:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBD2894C1
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 10:53:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1890B300414E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 10:53:46 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 602A017C30;
 Wed, 12 Jun 2019 10:53:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 12 Jun 2019 11:53:30 +0100
Message-Id: <20190612105330.18091-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 12 Jun 2019 10:53:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-stream: Fix compilation on
 Fedora 30 for Windows using MingW
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

T24gV2luZG93cyBGZWRvcmEgMzAgcmVwb3J0cyB0aGVzZSBlcnJvcnM6CgpJbiBmaWxlIGluY2x1
ZGVkIGZyb20gL3Vzci94ODZfNjQtdzY0LW1pbmd3MzIvc3lzLXJvb3QvbWluZ3cvaW5jbHVkZS9v
cGVuc3NsL2NyeXB0by5oOjI5LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci94ODZfNjQtdzY0
LW1pbmd3MzIvc3lzLXJvb3QvbWluZ3cvaW5jbHVkZS9vcGVuc3NsL2Jpby5oOjIwLAogICAgICAg
ICAgICAgICAgIGZyb20gL3Vzci94ODZfNjQtdzY0LW1pbmd3MzIvc3lzLXJvb3QvbWluZ3cvaW5j
bHVkZS9vcGVuc3NsL2Vyci5oOjIxLAogICAgICAgICAgICAgICAgIGZyb20gcmVkLXN0cmVhbS5j
OjMxOgovdXNyL3g4Nl82NC13NjQtbWluZ3czMi9zeXMtcm9vdC9taW5ndy9pbmNsdWRlL29wZW5z
c2wveDUwOS5oOjc1OjE6IGVycm9yOiBwYXN0aW5nICJzdGFja19zdF8iIGFuZCAiKCIgZG9lcyBu
b3QgZ2l2ZSBhIHZhbGlkIHByZXByb2Nlc3NpbmcgdG9rZW4KIERFRklORV9TVEFDS19PRihYNTA5
X05BTUUpCiBefn5+fn5+fn5+fn5+fn4KL3Vzci94ODZfNjQtdzY0LW1pbmd3MzIvc3lzLXJvb3Qv
bWluZ3cvaW5jbHVkZS9vcGVuc3NsL3g1MDkuaDo3NToxNzogZXJyb3I6IGV4cGVjdGVkICcpJyBi
ZWZvcmUgbnVtZXJpYyBjb25zdGFudAogREVGSU5FX1NUQUNLX09GKFg1MDlfTkFNRSkKICAgICAg
ICAgICAgICAgICBefn5+fn5+fn4KLi4uCgpUaGlzIGlzIGR1ZSB0byBtaXNzaW5nIFg1MDlfTkFN
RSBkZWZpbml0aW9uIGJ5IFdpbmRvd3MgaGVhZGVycy4KSW5jdWRlIG1pc3NpbmcgaGVhZGVyIGlu
IG9yZGVyIHRvIG1ha2UgY29kZSBjb21waWxlIGFnYWluLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3JlZC1zdHJlYW0uYyB8
IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvcmVkLXN0cmVhbS5jIGIvc2VydmVyL3JlZC1zdHJlYW0uYwppbmRleCAzMDU3ZDhiYmIuLjc3
ZmVkMDk3ZSAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZC1zdHJlYW0uYworKysgYi9zZXJ2ZXIvcmVk
LXN0cmVhbS5jCkBAIC0yNCw2ICsyNCw4IEBACiAjaW5jbHVkZSA8bmV0ZGIuaD4KICNpbmNsdWRl
IDxzeXMvc29ja2V0Lmg+CiAjaW5jbHVkZSA8bmV0aW5ldC90Y3AuaD4KKyNlbHNlCisjaW5jbHVk
ZSA8d3MydGNwaXAuaD4KICNlbmRpZgogCiAjaW5jbHVkZSA8Z2xpYi5oPgotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
