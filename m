Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA48CAA4CD
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B88D6E0D7;
	Thu,  5 Sep 2019 13:42:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D5E6E0DB
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:42:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A84E7641C9
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:42:47 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE16F5C578;
 Thu,  5 Sep 2019 13:42:45 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:42:23 +0100
Message-Id: <20190905134241.28873-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 05 Sep 2019 13:42:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v6 00/18] added feature of sharing
 CD image
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

Q2hhbmdlcyBzaW5jZSB2NToKLSByZWJhc2VkIG9uIG1hc3Rlci4KCkZyZWRpYW5vIFppZ2xpbyAo
MTApOgogIGZpeHVwISB1c2ItcmVkaXI6IGFkZCBmaWxlcyBmb3IgU0NTSSBhbmQgVVNCIE1TQyBp
bXBsZW1lbnRhdGlvbgogIGNkLXNjc2k6IERvIG5vdCBleHBvcnQgc2Vuc2UgY29kZSBjb25zdGFu
dHMKICBidWlsZDogRG8gbm90IGJ1aWxkIHVzYnJlZGlyIGRlcGVuZGVudCBmaWxlIGlzIHVzYnJl
ZGlyIGRpc2FibGVkCiAgdGVzdC1jZC1lbXU6IEFkZCBiYXNlIHRlc3QgZm9yIGNkLWVtdWxhdGlv
bgogIHVzYi1iYWNrZW5kOiBSZXdyaXRlIFVTQiBlbXVsYXRpb24gc3VwcG9ydAogIGJ1aWxkOiBV
c2UgYSBjb252ZW5pZW5jZSBsaWJyYXJ5IGZvciB0ZXN0cwogIHRlc3QtY2QtZW11OiBUZXN0IGF0
dGFjaC9kZXRhY2ggZW11bGF0ZWQgZGV2aWNlCiAgdGVzdC1jZC1lbXU6IFRlc3QgZGV0YWNoIGFu
ZCByZWF0dGFjaAogIHRlc3QtY2QtZW11OiBNYWtlIHN1cmUgd2UgY2FuIGNhbGwKICAgIHNwaWNl
X3VzYl9iYWNrZW5kX2NoYW5uZWxfZmx1c2hfd3JpdGVzCiAgdGVzdC1jZC1lbXU6IFRlc3Qgbm8g
bGlidXNiIGNvbnRleHQgc3VwcG9ydAoKWXVyaSBCZW5kaXRvdmljaCAoOCk6CiAgdXNiLXJlZGly
OiBkZWZpbmUgaW50ZXJmYWNlcyB0byBzdXBwb3J0IGVtdWxhdGVkIGRldmljZXMKICB1c2ItcmVk
aXI6IG1vdmUgaW1wbGVtZW50YXRpb24gb2YgZGV2aWNlIGRlc2NyaXB0aW9uIHRvIFVTQiBiYWNr
ZW5kCiAgdXNiLXJlZGlyOiBkbyBub3QgdXNlIHNwaWNlX3VzYl9hY2xfaGVscGVyIGZvciBlbXVs
YXRlZCBkZXZpY2VzCiAgdXNiLXJlZGlyOiBleHRlbmQgVVNCIGJhY2tlbmQgdG8gc3VwcG9ydCBl
bXVsYXRlZCBkZXZpY2VzCiAgdXNiLXJlZGlyOiBhZGQgZmlsZXMgZm9yIFNDU0kgYW5kIFVTQiBN
U0MgaW1wbGVtZW50YXRpb24KICB1c2ItcmVkaXI6IGFkZCBpbXBsZW1lbnRhdGlvbiBvZiBlbXVs
YXRlZCBDRCBkZXZpY2UKICB1c2ItcmVkaXI6IGVuYWJsZSByZWRpcmVjdGlvbiBvZiBlbXVsYXRl
ZCBDRCBkcml2ZQogIHVzYi1yZWRpcjogY29tbWFuZC1saW5lIG9wdGlvbiB0byBjcmVhdGUgZW11
bGF0ZWQgQ0QgZHJpdmUKCiBzcmMvY2Qtc2NzaS1kZXYtcGFyYW1zLmggfCAgIDQ2ICsKIHNyYy9j
ZC1zY3NpLmMgICAgICAgICAgICB8IDI3NDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIHNyYy9jZC1zY3NpLmggICAgICAgICAgICB8ICAxMTcgKysKIHNyYy9jZC11c2It
YnVsay1tc2QuYyAgICB8ICA1NDMgKysrKysrKysKIHNyYy9jZC11c2ItYnVsay1tc2QuaCAgICB8
ICAxMzEgKysKIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgICB8ICAgMzEgKy0KIHNyYy9tZXNvbi5i
dWlsZCAgICAgICAgICB8ICAgMjEgKy0KIHNyYy9zY3NpLWNvbnN0YW50cy5oICAgICB8ICAzMjEg
KysrKysKIHNyYy9zcGljZS1vcHRpb24uYyAgICAgICB8ICAgMTcgKwogc3JjL3VzYi1iYWNrZW5k
LmMgICAgICAgIHwgIDc3MiArKysrKysrKysrLQogc3JjL3VzYi1iYWNrZW5kLmggICAgICAgIHwg
ICAgNCArCiBzcmMvdXNiLWRldmljZS1jZC5jICAgICAgfCAgNzg0ICsrKysrKysrKysrCiBzcmMv
dXNiLWRldmljZS1jZC5oICAgICAgfCAgIDM0ICsKIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8
ICAgNjMgKy0KIHNyYy91c2ItZW11bGF0aW9uLmggICAgICB8ICAgODggKysKIHNyYy91c2J1dGls
LmMgICAgICAgICAgICB8ICAgIDMgLQogc3JjL3VzYnV0aWwuaCAgICAgICAgICAgIHwgICAgNCAt
CiB0ZXN0cy9jZC1lbXUuYyAgICAgICAgICAgfCAgMzIwICsrKysrCiB0ZXN0cy9tZXNvbi5idWls
ZCAgICAgICAgfCAgIDEyICstCiAxOSBmaWxlcyBjaGFuZ2VkLCA1OTUyIGluc2VydGlvbnMoKyks
IDEwMSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS1kZXYtcGFy
YW1zLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5jCiBjcmVhdGUgbW9kZSAxMDA2
NDQgc3JjL2NkLXNjc2kuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC11c2ItYnVsay1tc2Qu
YwogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC11c2ItYnVsay1tc2QuaAogY3JlYXRlIG1vZGUg
MTAwNjQ0IHNyYy9zY3NpLWNvbnN0YW50cy5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1k
ZXZpY2UtY2QuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy91c2ItZGV2aWNlLWNkLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVz
dHMvY2QtZW11LmMKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
