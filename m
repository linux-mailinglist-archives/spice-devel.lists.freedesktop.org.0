Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C06A8202
	for <lists+spice-devel@lfdr.de>; Wed,  4 Sep 2019 14:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA9E89857;
	Wed,  4 Sep 2019 12:20:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BC689857
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CA0DD7F74A
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:42 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 53B751001B02
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Sep 2019 12:20:42 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:20:39 +0200
Message-Id: <20190904122041.23408-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Wed, 04 Sep 2019 12:20:42 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 1/3] main: return void on
 migrate_channel_connect()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhlIG1pZ3JhdGlvbiBwcm9j
ZXNzIHdvdWxkIGhhcHBlbiBpbiBpZGxlLCBzbyB0aGUgcHJvY2VzcyBvbmx5IGZhaWxzCmF0IGEg
bGF0ZXIgdGltZS4gTm8gY2FsbCB0byBtaWdyYXRlX2NoYW5uZWxfY29ubmVjdCgpIGlzIGFjdHVh
bGx5CmNoZWNraW5nIHRoZSByZXR1cm4gdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9z
byA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFubmVsLW1haW4uYyB8IDUgKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvc3JjL2NoYW5uZWwtbWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCmluZGV4IGFm
ZGMxY2UuLmExZTU0OTggMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLW1haW4uYworKysgYi9zcmMv
Y2hhbm5lbC1tYWluLmMKQEAgLTIxNjgsMTUgKzIxNjgsMTQgQEAgc3RhdGljIHZvaWQgbWlncmF0
ZV9jaGFubmVsX25ld19jYihTcGljZVNlc3Npb24gKnMsIFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwg
Z3BvaW4KICAgICAgICAgICAgICAgICAgICAgIEdfQ0FMTEJBQ0sobWlncmF0ZV9jaGFubmVsX2V2
ZW50X2NiKSwgZGF0YSk7CiB9CiAKLXN0YXRpYyBTcGljZUNoYW5uZWwqIG1pZ3JhdGVfY2hhbm5l
bF9jb25uZWN0KHNwaWNlX21pZ3JhdGUgKm1pZywgaW50IHR5cGUsIGludCBpZCkKK3N0YXRpYyB2
b2lkCittaWdyYXRlX2NoYW5uZWxfY29ubmVjdChzcGljZV9taWdyYXRlICptaWcsIGludCB0eXBl
LCBpbnQgaWQpCiB7CiAgICAgU1BJQ0VfREVCVUcoIm1pZ3JhdGVfY2hhbm5lbF9jb25uZWN0ICVk
OiVkIiwgdHlwZSwgaWQpOwogCiAgICAgU3BpY2VDaGFubmVsICpuZXdjID0gc3BpY2VfY2hhbm5l
bF9uZXcobWlnLT5zZXNzaW9uLCB0eXBlLCBpZCk7CiAgICAgc3BpY2VfY2hhbm5lbF9jb25uZWN0
KG5ld2MpOwogICAgIG1pZy0+bmNoYW5uZWxzKys7Ci0KLSAgICByZXR1cm4gbmV3YzsKIH0KIAog
LyogY29yb3V0aW5lIGNvbnRleHQgKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
