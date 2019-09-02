Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AF7A541A
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF1C89A5C;
	Mon,  2 Sep 2019 10:35:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FC5899E7
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:35:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7613E3680A
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:35:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F3E45C298;
 Mon,  2 Sep 2019 10:35:24 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 11:35:18 +0100
Message-Id: <20190902103520.29210-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 02 Sep 2019 10:35:26 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 1/3] usb-backend: Cache
 isochronous value
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

QWxsb3dzIHRvIHJlbW92ZSBfU3BpY2VVc2JEZXZpY2Ugc3RydWN0dXJlLgpfU3BpY2VVc2JEZXZp
Y2UgaXMgb25seSBjYWNoaW5nIHRoaXMgdmFsdWUgZnJvbSBTcGljZVVzYkJhY2tlbmREZXZpY2Uu
CgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0t
CiBzcmMvdXNiLWJhY2tlbmQuYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspCgpDaGFuZ2VzIHNpbmNlIHYxOgotIHVzZSBib29sIGluc3RlYWQgb2YgYml0IGZp
ZWxkcwoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMK
aW5kZXggMzMzNGY1NjYuLmU2MWVjMDFmIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwor
KysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAtNTAsNiArNTAsOCBAQCBzdHJ1Y3QgX1NwaWNlVXNi
QmFja2VuZERldmljZQogICAgIGdpbnQgcmVmX2NvdW50OwogICAgIFNwaWNlVXNiQmFja2VuZENo
YW5uZWwgKmF0dGFjaGVkX3RvOwogICAgIFVzYkRldmljZUluZm9ybWF0aW9uIGRldmljZV9pbmZv
OworICAgIGJvb2wgY2FjaGVkX2lzb2Nocm9ub3VzX3ZhbGlkOworICAgIGJvb2wgY2FjaGVkX2lz
b2Nocm9ub3VzOwogfTsKIAogc3RydWN0IF9TcGljZVVzYkJhY2tlbmQKQEAgLTM0Niw2ICszNDgs
MTAgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFj
a2VuZERldmljZSAqZGV2KQogICAgIGdpbnQgaSwgaiwgazsKICAgICBpbnQgcmM7CiAKKyAgICBp
ZiAoZGV2LT5jYWNoZWRfaXNvY2hyb25vdXNfdmFsaWQpIHsKKyAgICAgICAgcmV0dXJuIGRldi0+
Y2FjaGVkX2lzb2Nocm9ub3VzOworICAgIH0KKwogICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGxp
YmRldiAhPSBOVUxMLCAwKTsKIAogICAgIHJjID0gbGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rl
c2NyaXB0b3IobGliZGV2LCAmY29uZl9kZXNjKTsKQEAgLTM2Nyw2ICszNzMsOSBAQCBnYm9vbGVh
biBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpk
ZXYpCiAgICAgICAgIH0KICAgICB9CiAKKyAgICBkZXYtPmNhY2hlZF9pc29jaHJvbm91c192YWxp
ZCA9IHRydWU7CisgICAgZGV2LT5jYWNoZWRfaXNvY2hyb25vdXMgPSBpc29jX2ZvdW5kOworCiAg
ICAgbGlidXNiX2ZyZWVfY29uZmlnX2Rlc2NyaXB0b3IoY29uZl9kZXNjKTsKICAgICByZXR1cm4g
aXNvY19mb3VuZDsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
