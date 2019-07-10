Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E11644A8
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 11:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C81289304;
	Wed, 10 Jul 2019 09:49:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB8189304
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 09:49:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 189F1308219E
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 09:49:30 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E16BD92D3B;
 Wed, 10 Jul 2019 09:49:28 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 10:49:21 +0100
Message-Id: <20190710094924.17350-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 10 Jul 2019 09:49:30 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v3 0/3] Implementation of USB
 backend layer
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

VGhpcyBsYXllciBjb21tdW5pY2F0ZXMgd2l0aCBsaWJ1c2IgYW5kIGxpYnVzYnJlZGlyIGFuZApw
cm92aWRlcyB0aGUgQVBJIGZvciBhbGwgdGhlIG9wZXJhdGlvbnMgcmVsYXRlZCB0byBVU0IKcmVk
aXJlY3Rpb24uIEFsbCBvdGhlciBtb2R1bGVzIG9mIHNwaWNlLWd0ayBjb21tdW5pY2F0ZQpvbmx5
IHdpdGggdXNiIGJhY2tlbmQgaW5zdGVhZCBvZiBjYWxsaW5nIGxpYnVzYiBhbmQKdXNicmVkaXJo
b3N0IGRpcmVjdGx5LgpUaGlzIGlzIHByZXJlcXVpc2l0ZSBvZiBmdXJ0aGVyIGltcGxlbWVudGF0
aW9uIG9mCmNkLXNoYXJpbmcgdmlhIFVTQiByZWRpcmVjdGlvbgoKQ2hhbmdlcyBmcm9tIHYyOiBy
ZWJhc2VkIG9uIG1hc3RlcgoKQ2hhbmdlcyBmcm9tIHYxOiBjb3NtZXRpYyBjaGFuZ2VzIHBlciB2
MSByZXZpZXcKQWRkZWQgYSByZWJhc2VkIHBhdGNoICgzKSBmcm9tIEZyZWRpYW5vIFppZ2xpbwpG
b3IgdGhlIGluY3JlbWVudCBzZWUKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3l1cmlf
YmVuZGl0b3ZpY2gvc3BpY2UtZ3RrL2NvbW1pdHMvYmFja2VuZDItaW5jcmVtZW50CgpZdXJpIEJl
bmRpdG92aWNoICgzKToKICB1c2ItcmVkaXI6IGlzb2xhdGUgdXNhZ2Ugb2YgbGlidXNiIGFuZCB1
c2JyZWRpcmhvc3QKICB1c2ItcmVkaXJlY3Rpb246IGRvIG5vdCBkdXBsaWNhdGUgVVNCIGRldmlj
ZSBwcm9wZXJ0aWVzCiAgdXNiLWRldmljZS1tYW5hZ2VyOiBEZWZpbmUgX1NwaWNlVXNiRGV2aWNl
IGluc3RlYWQgb2YKICAgIFNwaWNlVXNiRGV2aWNlSW5mbwoKIHNyYy9jaGFubmVsLXVzYnJlZGly
LXByaXYuaCAgIHwgIDEyICstCiBzcmMvY2hhbm5lbC11c2JyZWRpci5jICAgICAgICB8IDIzNiAr
Ky0tLS0tLS0tLS0KIHNyYy9tZXNvbi5idWlsZCAgICAgICAgICAgICAgIHwgICAyICsKIHNyYy91
c2ItYmFja2VuZC5jICAgICAgICAgICAgIHwgNjU3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIHNyYy91c2ItYmFja2VuZC5oICAgICAgICAgICAgIHwgMTAyICsrKysrKwogc3Jj
L3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmggfCAgIDEgLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdl
ci5jICAgICAgfCAzOTcgKysrKysrKy0tLS0tLS0tLS0tLS0KIHNyYy93aW4tdXNiLWRldi5jICAg
ICAgICAgICAgIHwgMTAzICsrLS0tLQogc3JjL3dpbi11c2ItZGV2LmggICAgICAgICAgICAgfCAg
IDUgKy0KIDkgZmlsZXMgY2hhbmdlZCwgOTY3IGluc2VydGlvbnMoKyksIDU0OCBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWJhY2tlbmQuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy91c2ItYmFja2VuZC5oCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
