Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C86B7BC4
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8066F872;
	Thu, 19 Sep 2019 14:11:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DB76F495
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 85739875224
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:34 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 117C05C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:33 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:13 +0200
Message-Id: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 19 Sep 2019 14:11:34 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 00/20] added feature of sharing CD image
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpDSTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL3ZpY3RvcnRvc28vc3BpY2UtZ3RrL3RyZWUvY2Qtcm9tLXNw
bGl0LXY4Cgp2Ny0+djggKHJldmlldyBieSBGcmVkaWFubyk6Ciogc3F1YXNoZWQgdjcgMTAvMjAg
aW50byB2NyAwOS8yMCAoYW4gYWNrZWQgZml4dXApCiogQWRkZWQgbWlzc2luZyBwYXRjaCwgbm93
IHY4IDEwLzIwCiogYWRkIHByb3BlciBzaWduLW9mZnMgdG8gdjcgMDQsMDcsMDgvMjAKKiBmaXhl
ZCBzb21lIHR5cG9zIGluIGNvbW1pdCBsb2cKClRlc3RlZCBub3cgbW9zdGx5IHdpdGggRmVkb3Jh
LgpXYWl0aW5nIFl1cmkncyBmZWVkYmFjay4KCkNoZWVycywKVmljdG9yCgpGcmVkaWFubyBaaWds
aW8gKDkpOgogIHVzYi1iYWNrZW5kOiBhZGQgc2FmZSBjaGVjayBvbiBhdHRhY2goKQogIGNkLXNj
c2k6IERvIG5vdCBleHBvcnQgc2Vuc2UgY29kZSBjb25zdGFudHMKICBidWlsZDogRG8gbm90IGJ1
aWxkIHVzYnJlZGlyIGRlcGVuZGVudCBmaWxlIGlmIHVzYnJlZGlyIGlzIGRpc2FibGVkCiAgdGVz
dC1jZC1lbXU6IEFkZCBiYXNlIHRlc3QgZm9yIGNkLWVtdWxhdGlvbgogIGJ1aWxkOiBVc2UgYSBj
b252ZW5pZW5jZSBsaWJyYXJ5IGZvciB0ZXN0cwogIHRlc3QtY2QtZW11OiBUZXN0IGF0dGFjaC9k
ZXRhY2ggZW11bGF0ZWQgZGV2aWNlCiAgdGVzdC1jZC1lbXU6IFRlc3QgZGV0YWNoIGFuZCByZWF0
dGFjaAogIHRlc3QtY2QtZW11OiBNYWtlIHN1cmUgd2UgY2FuIGNhbGwKICAgIHNwaWNlX3VzYl9i
YWNrZW5kX2NoYW5uZWxfZmx1c2hfd3JpdGVzCiAgdGVzdC1jZC1lbXU6IFRlc3Qgbm8gbGlidXNi
IGNvbnRleHQgc3VwcG9ydAoKVmljdG9yIFRvc28gKDEpOgogIHVzYi1iYWNrZW5kOiBhZGQgZ3Vh
cmQgYW5kIGRvYyB0byBjaGVja19maWx0ZXIoKQoKWXVyaSBCZW5kaXRvdmljaCAoMTApOgogIHVz
Yi1yZWRpcjogZGVmaW5lIGludGVyZmFjZXMgdG8gc3VwcG9ydCBlbXVsYXRlZCBkZXZpY2VzCiAg
dXNiLXJlZGlyOiBtb3ZlIGltcGxlbWVudGF0aW9uIG9mIGRldmljZSBkZXNjcmlwdGlvbiB0byBV
U0IgYmFja2VuZAogIHVzYi1yZWRpcjogZG8gbm90IHVzZSBzcGljZV91c2JfYWNsX2hlbHBlciBm
b3IgZW11bGF0ZWQgZGV2aWNlcwogIHVzYi1iYWNrZW5kOiBubyBlbXVsYXRlZCBpc29jaCBkZXZp
Y2VzCiAgdXNiLWJhY2tlbmQ6IGluY2x1ZGUgdXNicmVkaXJwYXJzZXIKICB1c2ItcmVkaXI6IGV4
dGVuZCBVU0IgYmFja2VuZCB0byBzdXBwb3J0IGVtdWxhdGVkIGRldmljZXMKICB1c2ItcmVkaXI6
IGFkZCBmaWxlcyBmb3IgU0NTSSBhbmQgVVNCIE1TQyBpbXBsZW1lbnRhdGlvbgogIHVzYi1yZWRp
cjogYWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIENEIGRldmljZQogIHVzYi1yZWRpcjog
ZW5hYmxlIHJlZGlyZWN0aW9uIG9mIGVtdWxhdGVkIENEIGRyaXZlCiAgdXNiLXJlZGlyOiBjb21t
YW5kLWxpbmUgb3B0aW9uIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkcml2ZQoKIHNyYy9jZC1zY3Np
LWRldi1wYXJhbXMuaCB8ICAgNDYgKwogc3JjL2NkLXNjc2kuYyAgICAgICAgICAgIHwgMjc0MiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogc3JjL2NkLXNjc2kuaCAgICAg
ICAgICAgIHwgIDExNyArKwogc3JjL2NkLXVzYi1idWxrLW1zZC5jICAgIHwgIDU0MyArKysrKysr
Kwogc3JjL2NkLXVzYi1idWxrLW1zZC5oICAgIHwgIDEzMSArKwogc3JjL2NoYW5uZWwtdXNicmVk
aXIuYyAgIHwgICAzMSArLQogc3JjL21lc29uLmJ1aWxkICAgICAgICAgIHwgICAyMSArLQogc3Jj
L3Njc2ktY29uc3RhbnRzLmggICAgIHwgIDMyMSArKysrKwogc3JjL3NwaWNlLW9wdGlvbi5jICAg
ICAgIHwgICAxNyArCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAgNzcxICsrKysrKysrKyst
CiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgICA4ICstCiBzcmMvdXNiLWRldmljZS1jZC5j
ICAgICAgfCAgNzg0ICsrKysrKysrKysrCiBzcmMvdXNiLWRldmljZS1jZC5oICAgICAgfCAgIDM0
ICsKIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8ICAgNjMgKy0KIHNyYy91c2ItZW11bGF0aW9u
LmggICAgICB8ICAgODggKysKIHNyYy91c2J1dGlsLmMgICAgICAgICAgICB8ICAgIDMgLQogc3Jj
L3VzYnV0aWwuaCAgICAgICAgICAgIHwgICAgNCAtCiB0ZXN0cy9jZC1lbXUuYyAgICAgICAgICAg
fCAgMzIwICsrKysrCiB0ZXN0cy9tZXNvbi5idWlsZCAgICAgICAgfCAgIDEyICstCiAxOSBmaWxl
cyBjaGFuZ2VkLCA1OTU1IGluc2VydGlvbnMoKyksIDEwMSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS1kZXYtcGFyYW1zLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBz
cmMvY2Qtc2NzaS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXNjc2kuaAogY3JlYXRlIG1v
ZGUgMTAwNjQ0IHNyYy9jZC11c2ItYnVsay1tc2QuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9j
ZC11c2ItYnVsay1tc2QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9zY3NpLWNvbnN0YW50cy5o
CiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1kZXZpY2UtY2QuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy91c2ItZGV2aWNlLWNkLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxh
dGlvbi5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY2QtZW11LmMKCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
