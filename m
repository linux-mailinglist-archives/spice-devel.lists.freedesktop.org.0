Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 158BED609D
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 12:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A0E6E25D;
	Mon, 14 Oct 2019 10:54:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBFB6E25D
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D4D0D308FC23
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:54:50 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F054B608C2;
 Mon, 14 Oct 2019 10:54:49 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 11:54:43 +0100
Message-Id: <20191014105443.8565-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 14 Oct 2019 10:54:50 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] spice-widget: Fix invalidate region
 in case of image is scaled
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

SW4gY2FzZSB0aGUgZHJhd2luZyBvbiB0aGUgc2NyZWVuIGlzIHNjYWxlZCB0aGUgc2NhbGluZyBy
ZXF1aXJlZCB0bwppbnZhbGlkYXRlIGEgc2xpZ2h0bHkgYmlnZ2VyIHJlZ2lvbi4KVGhpcyBpcyBk
dWUgdG8gdGhlIGludGVycG9sYXRpb24gZG9uZSBkdXJpbmcgdGhlIHJlc2l6ZS4KU28gaWYgc2Nh
bGluZyBpcyBwZXJmb3JtZWQgaW52YWxpZGF0ZSBhbHNvIHRoZSBhZGphY2VudCBwaXhlbHMuCgpU
aGlzIGZpeGVzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1ndGsv
aXNzdWVzLzE5LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Ci0tLQogc3JjL3NwaWNlLXdpZGdldC5jIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRnZXQuYyBiL3Ny
Yy9zcGljZS13aWRnZXQuYwppbmRleCBkNzNlMDJmMi4uOWQ2ODk5YzAgMTAwNjQ0Ci0tLSBhL3Ny
Yy9zcGljZS13aWRnZXQuYworKysgYi9zcmMvc3BpY2Utd2lkZ2V0LmMKQEAgLTI4NDcsNiArMjg0
NywxNCBAQCBzdGF0aWMgdm9pZCBpbnZhbGlkYXRlKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkaXNwbGF5X3gsICZkaXNwbGF5X3ksCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMLCBOVUxMKTsKIAorICAgIGdpbnQgc2NhbGVf
ZmFjdG9yID0gZ3RrX3dpZGdldF9nZXRfc2NhbGVfZmFjdG9yKEdUS19XSURHRVQoZGlzcGxheSkp
OworICAgIGlmIChzICogc2NhbGVfZmFjdG9yID4gMSkgeworICAgICAgICByZWN0LnggLT0gMTsK
KyAgICAgICAgcmVjdC55IC09IDE7CisgICAgICAgIHJlY3Qud2lkdGggKz0gMjsKKyAgICAgICAg
cmVjdC5oZWlnaHQgKz0gMjsKKyAgICB9CisKICAgICB4MSA9IGZsb29yICgocmVjdC54IC0gZC0+
YXJlYS54KSAqIHMpOwogICAgIHkxID0gZmxvb3IgKChyZWN0LnkgLSBkLT5hcmVhLnkpICogcyk7
CiAgICAgeDIgPSBjZWlsICgocmVjdC54IC0gZC0+YXJlYS54ICsgcmVjdC53aWR0aCkgKiBzKTsK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
