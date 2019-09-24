Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B367BC496
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 11:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F95B89AEA;
	Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467A589AEA
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 904EA308FFB1
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:03 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 17AD25D9E1
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:02 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 11:14:56 +0200
Message-Id: <20190924091502.16038-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 24 Sep 2019 09:15:03 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 0/6] migration object
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpUaGlzIHNlcmllcyBn
b2FsIGlzIHRvIHJlZHVjZSB0aGUgd29yayBkb25lIGluIFNwaWNlTWFpbkNoYW5uZWwgYXJvdW5k
Cm1pZ3JhdGlvbiBhbmQgbW92ZSB0aGF0IHRvIGEgbmV3IG9iamVjdCwgdGhlIFNwaWNlTWFpbkNo
YW5uZWxNaWdyYXRpb24uCgpUaGUgaW50ZW50aW9uIGlzIHNpbWlsYXIgdG8gd2hhdCBoYXMgYmVl
biBkb25lIGZvciB0aGUgZmlsZS10cmFuc2ZlcgpmZWF0dXJlIGluIHRoZSBwYXN0LCB0byBtYWtl
IHRoZSByb2xlIG9mIGVhY2ggb2JqZWN0IG1vcmUgYXNzZXJ0aXZlLgoKVGhlIG1pZ3JhdGlvbiBp
cyBjb21wbGV4IGZlYXR1cmUgYW5kIHdvcmtzIHNpZGUgYnkgc2lkZSB3aXRoClNwaWNlU2Vzc2lv
biBhbmQgdGhlIHN0YXRlIG9mIGFsbCBvdGhlciBjaGFubmVscy4gV2l0aCB0aGlzIHNlcmllcywg
SSd2ZQptb3ZlZCB0aGUgc2VhbWxlc3MgbWlncmF0aW9uIHRvIFNwaWNlTWFpbkNoYW5uZWxNaWdy
YXRpb24gb2JqZWN0LgoKU3RpbGwgcGVuZGluZyB3b3JrIHRvIG1vdmUgc2VtaS1zZWFtbGVzcyBt
aWdyYXRpb24sIG1vdmluZyBzb21lIG90aGVyCmNvZGUgb3V0IGZyb20gU3BpY2VTZXNzaW9uIGFu
ZCBjaGFubmVsLW1haW4gYW5kIHNvbWUgdW5pdCB0ZXN0cy4KClZpY3RvciBUb3NvICg2KToKICBB
dm9pZCBhY2Nlc3NpbmcgU3BpY2VDaGFubmVsJ3MgaW50ZXJuYWxzCiAgc3BpY2UtY2hhbm5lbDog
YWRkIGludGVybmFsIHNwaWNlX2NoYW5uZWxfc2V0X3N0YXRlKCkKICB1c2JyZWRpcjogdXNlIGdf
b2JqZWN0X2dldCgpIGZvciBzb2NrZXQgYWNjZXNzCiAgY2hhbm5lbC1tYWluOiByZW1vdmUgcmVk
dW5kYW50IGlmIG9uIFNwaWNlU2Vzc2lvbiBjcmVhdGlvbgogIGNoYW5uZWwtbWFpbjogbWlncmF0
aW9uOiBzZXQgdGFyZ2V0IHNlc3Npb24gaW5mbyBlYXJseQogIEludHJvZHVjZSBTcGljZU1haW5D
aGFubmVsTWlncmF0aW9uCgogZG9jL3JlZmVyZW5jZS9tZXNvbi5idWlsZCAgICB8ICAgMSArCiBz
cmMvY2hhbm5lbC1pbnB1dHMuYyAgICAgICAgIHwgIDY1ICsrKystLQogc3JjL2NoYW5uZWwtbWFp
bi1taWdyYXRpb24uYyB8IDM5OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
c3JjL2NoYW5uZWwtbWFpbi1taWdyYXRpb24uaCB8ICA2MyArKysrKysKIHNyYy9jaGFubmVsLW1h
aW4uYyAgICAgICAgICAgfCAyNDQgKysrKystLS0tLS0tLS0tLS0tLS0tCiBzcmMvY2hhbm5lbC11
c2JyZWRpci5jICAgICAgIHwgICA5ICstCiBzcmMvbWVzb24uYnVpbGQgICAgICAgICAgICAgIHwg
ICAyICsKIHNyYy9zcGljZS1hdWRpby5jICAgICAgICAgICAgfCAgIDYgKy0KIHNyYy9zcGljZS1j
aGFubmVsLXByaXYuaCAgICAgfCAgIDEgKwogc3JjL3NwaWNlLWNoYW5uZWwuYyAgICAgICAgICB8
ICAzNyArKysrCiBzcmMvc3BpY2Utc2Vzc2lvbi1wcml2LmggICAgIHwgICA0ICsKIHNyYy9zcGlj
ZS1zZXNzaW9uLmMgICAgICAgICAgfCAgMzMgKystCiAxMiBmaWxlcyBjaGFuZ2VkLCA2NDMgaW5z
ZXJ0aW9ucygrKSwgMjIwIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jaGFu
bmVsLW1haW4tbWlncmF0aW9uLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2hhbm5lbC1tYWlu
LW1pZ3JhdGlvbi5oCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
