Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E053224B1E
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 11:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185918921B;
	Tue, 21 May 2019 09:05:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8592389134
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21192309704F
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:54 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D84F646CE
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:53 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 21 May 2019 09:05:48 +0000
Message-Id: <20190521090552.2310-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 21 May 2019 09:05:54 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 0/4] rebased + fixup on introduce
 usb-backend
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpUaGlzIGlzIHRoZSBy
ZWJhc2VkIHNlcmllcyBvbiB0b3Agb2YgdjAuMzcgcGx1cyBteSBzdWdnZXN0aW9uIG9uCnN0YXJ0
aW5nIHRoZSBzZXJpZXMgYnkgcmVtb3ZpbmcgdGhlIGZ1bmN0aW9uIGluc3RlYWQgb2YgY2hhbmdp
bmcgaXQgYW5kCnJlbW92aW5nIGxhdGVyLgoKICAgIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL2FyY2hpdmVzL3NwaWNlLWRldmVsLzIwMTktQXByaWwvMDQ4ODUzLmh0bWwKCk1vcmUgZmVl
ZGJhY2ssIHN1Z2dlc3Rpb25zIGFuZCBxdWVzdGlvbnMgaW4gdGhlIHRocmVhZCwgbGF0ZXIgb24u
Ck15IGdpdGxhYiBicmFuY2ggZm9yIHRoaXMgcmViYXNlIGlzOgoKICAgIGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy92aWN0b3J0b3NvL3NwaWNlLWd0ay9jb21taXRzL3l1cmktbWwtcmVi
YXNlZC12MQoKVmljdG9yIFRvc28gKDEpOgogIEZJWFVQIHN1Z2dlc3Rpb246IGRyb3AgdGhlIGZ1
bmN0aW9uIGluc3RlYWQKCll1cmkgQmVuZGl0b3ZpY2ggKDMpOgogIHVzYjogdXNlIG5hdGl2ZSBs
aWJ1c2IgcHJvY2VkdXJlIGZvciBnZXR0aW5nIGVycm9yIG5hbWUKICB1c2ItcmVkaXJlY3Rpb246
IGlzb2xhdGUgdXNhZ2Ugb2YgbGlidXNiIGFuZCB1c2JyZWRpcmhvc3QKICB1c2ItcmVkaXJlY3Rp
b246IGRvIG5vdCBkdXBsaWNhdGUgVVNCIGRldmljZSBwcm9wZXJ0aWVzCgogc3JjL01ha2VmaWxl
LmFtICAgICAgICAgICAgICAgfCAgIDIgKwogc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oICAg
fCAgIDkgKy0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgICAgICAgIHwgMjE2ICsrKy0tLS0tLS0t
LQogc3JjL21lc29uLmJ1aWxkICAgICAgICAgICAgICAgfCAgIDIgKwogc3JjL3VzYi1iYWNrZW5k
LmMgICAgICAgICAgICAgfCA2MjIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
c3JjL3VzYi1iYWNrZW5kLmggICAgICAgICAgICAgfCAxMTAgKysrKysrCiBzcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLXByaXYuaCB8ICAgMSAtCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgICAgICB8
IDM1MyArKysrKysrLS0tLS0tLS0tLS0tCiBzcmMvdXNidXRpbC5jICAgICAgICAgICAgICAgICB8
ICAzNiAtLQogc3JjL3VzYnV0aWwuaCAgICAgICAgICAgICAgICAgfCAgIDIgLQogc3JjL3dpbi11
c2ItZGV2LmMgICAgICAgICAgICAgfCAxMDMgKystLS0tCiBzcmMvd2luLXVzYi1kZXYuaCAgICAg
ICAgICAgICB8ICAgNSArLQogMTIgZmlsZXMgY2hhbmdlZCwgOTM2IGluc2VydGlvbnMoKyksIDUy
NSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWJhY2tlbmQuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHNyYy91c2ItYmFja2VuZC5oCgotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
