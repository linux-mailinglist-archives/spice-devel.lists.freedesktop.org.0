Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9524189190
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7C089E57;
	Sun, 11 Aug 2019 11:47:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C87C89993
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A55E3091785
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:26 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D92E5D9C9
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:25 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 11 Aug 2019 14:47:21 +0300
Message-Id: <20190811114723.22360-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Sun, 11 Aug 2019 11:47:26 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH 1/3] compress_seg: comment out
 unused assignment
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

Q0xBTkcgd2FybmluZzogIlZhbHVlIHN0b3JlZCB0byAncmVmX2xpbWl0JyBpcyBuZXZlciByZWFk
IgoKQ29tbWVudGluZyBvdXQgc2luY2UgdGhlcmUgaXMgYSBUb0RvIHRoYXQgcmVmZXJzIHRvIHJl
Zl9saW1pdAoKRm91bmQgYnkgQ292c2Nhbi4KClNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVy
aWxAcmVkaGF0LmNvbT4KLS0tCgpTaG91bGQgdGhlIGNvbW1lbnQgYmUgZGVsZXRlZCB0b28gPwoK
LS0tCiBzZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvZ2x6LWVuY29k
ZS50bXBsLmMgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKaW5kZXggNDhiYWI1MGJjLi5hZDQ4
Yzg2YzggMTAwNjQ0Ci0tLSBhL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYworKysgYi9zZXJ2ZXIv
Z2x6LWVuY29kZS50bXBsLmMKQEAgLTI4Miw3ICsyODIsNyBAQCBzdGF0aWMgdm9pZCBGTkFNRShj
b21wcmVzc19zZWcpKEVuY29kZXIgKmVuY29kZXIsIHVpbnQzMl90IHNlZ19pZHgsIFBJWEVMICpm
cm9tLAogCiAgICAgICAgICAgICAgICAgaXAgKz0gMzsKICAgICAgICAgICAgICAgICByZWYgPSBh
bmNob3IgKyAyOwotICAgICAgICAgICAgICAgIHJlZl9saW1pdCA9IChQSVhFTCAqKShzZWctPmxp
bmVzX2VuZCk7CisgICAgICAgICAgICAgICAgLy9yZWZfbGltaXQgPSAoUElYRUwgKikoc2VnLT5s
aW5lc19lbmQpOwogICAgICAgICAgICAgICAgIGxlbiA9IDM7CiAKICAgICAgICAgICAgICAgICB4
ID0gKnJlZjsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
