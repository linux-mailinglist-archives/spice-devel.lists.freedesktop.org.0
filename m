Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBA27820
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753BA89D42;
	Thu, 23 May 2019 08:37:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6ADD89D40
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 59E7D821D1
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:51 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 79C035D9C3;
 Thu, 23 May 2019 08:37:50 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:21 +0200
Message-Id: <20190523083725.1554-10-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 23 May 2019 08:37:51 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 09/13] spice-win: remove MapDriveEnum
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

VGhlIGVudW0gZG9lc24ndCBhZGQgbXVjaCB2YWx1ZSwgbGV0J3MgcmVtb3ZlIGl0LgoKU2lnbmVk
LW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcGljZS9zcGlj
ZS13ZWJkYXZkLmMgfCAxOSArKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcGljZS9zcGljZS13
ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKaW5kZXggYzc3Yzg3MC4uMjkwNThlNyAx
MDA2NDQKLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCisrKyBiL3NwaWNlL3NwaWNlLXdlYmRh
dmQuYwpAQCAtNzM4LDEyICs3MzgsNiBAQCBvcGVuX211eF9wYXRoIChjb25zdCBjaGFyICpwYXRo
KQogI2lmZGVmIEdfT1NfV0lOMzIKICNkZWZpbmUgTUFYX1NIQVJFRF9GT0xERVJfTkFNRV9TSVpF
IDY0CiAjZGVmaW5lIE1BWF9EUklWRV9MRVRURVJfU0laRSAzCi10eXBlZGVmIGVudW0gX01hcERy
aXZlRW51bQotewotICBNQVBfRFJJVkVfT0ssCi0gIE1BUF9EUklWRV9UUllfQUdBSU4sCi0gIE1B
UF9EUklWRV9FUlJPUgotfSBNYXBEcml2ZUVudW07CiAKIHR5cGVkZWYgc3RydWN0IF9NYXBEcml2
ZURhdGEKIHsKQEAgLTgyOCw3ICs4MjIsNyBAQCBuZXRyZXNvdXJjZV9mcmVlKE5FVFJFU09VUkNF
ICpuZXRfcmVzb3VyY2UpCiAgIGdfZnJlZShuZXRfcmVzb3VyY2UtPmxwUmVtb3RlTmFtZSk7CiB9
CiAKLXN0YXRpYyBNYXBEcml2ZUVudW0KK3N0YXRpYyBndWludDMyCiBtYXBfZHJpdmUoY29uc3Qg
Z2NoYXIgZHJpdmVfbGV0dGVyKQogewogICBORVRSRVNPVVJDRSBuZXRfcmVzb3VyY2U7CkBAIC04
NDEsMTYgKzgzNSwxNyBAQCBtYXBfZHJpdmUoY29uc3QgZ2NoYXIgZHJpdmVfbGV0dGVyKQogICBp
ZiAoZXJybiA9PSBOT19FUlJPUikKICAgICB7CiAgICAgICBnX2RlYnVnICgiU2hhcmVkIGZvbGRl
ciBtYXBwZWQgdG8gJWMgc3VjY2VzZnVsbHkiLCBkcml2ZV9sZXR0ZXIpOwotICAgICAgcmV0dXJu
IE1BUF9EUklWRV9PSzsKICAgICB9CiAgIGVsc2UgaWYgKGVycm4gPT0gRVJST1JfQUxSRUFEWV9B
U1NJR05FRCkKICAgICB7CiAgICAgICBnX2RlYnVnICgiRHJpdmUgbGV0dGVyICVjIGlzIGFscmVh
ZHkgYXNzaWduZWQiLCBkcml2ZV9sZXR0ZXIpOwotICAgICAgcmV0dXJuIE1BUF9EUklWRV9UUllf
QUdBSU47CisgICAgfQorICBlbHNlCisgICAgeworICAgICAgZ193YXJuaW5nICgibWFwX2RyaXZl
IGVycm9yICVkIiwgZXJybik7CiAgICAgfQogCi0gIGdfd2FybmluZyAoIm1hcF9kcml2ZSBlcnJv
ciAlZCIsIGVycm4pOwotICByZXR1cm4gTUFQX0RSSVZFX0VSUk9SOworICByZXR1cm4gZXJybjsK
IH0KIAogc3RhdGljIHZvaWQKQEAgLTkxNSw3ICs5MTAsNyBAQCBtYXBfZHJpdmVfY2IoR1Rhc2sg
KnRhc2ssCiAgICAgICAgICAgYnJlYWs7CiAgICAgICAgIH0KIAotICAgICAgaWYgKG1hcF9kcml2
ZSAoZHJpdmVfbGV0dGVyKSAhPSBNQVBfRFJJVkVfVFJZX0FHQUlOKQorICAgICAgaWYgKG1hcF9k
cml2ZSAoZHJpdmVfbGV0dGVyKSAhPSBFUlJPUl9BTFJFQURZX0FTU0lHTkVEKQogICAgICAgICB7
CiAgICAgICAgICAgYnJlYWs7CiAgICAgICAgIH0KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
