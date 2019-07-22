Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BFD700EF
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 15:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDF889C8F;
	Mon, 22 Jul 2019 13:22:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109D289C8F
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 13:22:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 894B385538
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 13:22:27 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-48.brq.redhat.com
 [10.40.204.48])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD16919D7B;
 Mon, 22 Jul 2019 13:22:26 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 15:22:10 +0200
Message-Id: <20190722132211.14292-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 22 Jul 2019 13:22:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 1/2] spice: read_thread: return number
 of read bytes on EOF
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

V2UgYWxyZWFkeSBjaGVjayB3aXRoIGVhY2ggaW5wdXRfc3RyZWFtX3JlYWRfdGhyZWFkX2Zpbmlz
aCgpCndoZXRoZXIgdGhlIGNvdW50IG9mIHRoZSByZWFkIGJ5dGVzIG1hdGNoZXMgdGhlIHJlcXVl
c3RlZCBvbmUuCgpBbHNvLCB0aGlzIGlzIHRoZSB3YXkgR0xpYiBoYW5kbGVzIGl0LgoKU2lnbmVk
LW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCgpodHRwczovL2dp
dGxhYi5nbm9tZS5vcmcvR05PTUUvcGhvZGF2L21lcmdlX3JlcXVlc3RzLzQKCkkndmUgb3BlbmVk
IHRoZSBtZXJnZSByZXF1ZXN0IG9uIGdpdGxhYiBzb21lIHRpbWUgYWdvLApzbyBub3cgSSdtIHNl
bmRpbmcgaXQgaGVyZSBhcyBhIGZvcm0gb2YgcGluZy4KCi0tLQogc3BpY2Uvc3BpY2Utd2ViZGF2
ZC5jIHwgNCAtLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9zcGljZS9zcGljZS13ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKaW5kZXggZjgx
NDg5MC4uODFiNGQ5MSAxMDA2NDQKLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCisrKyBiL3Nw
aWNlL3NwaWNlLXdlYmRhdmQuYwpAQCAtMTgwLDEwICsxODAsNiBAQCByZWFkX3RocmVhZCAoR1Rh
c2sgKnRhc2ssCiAgICAgICBnX2RlYnVnICgiZXJyb3I6ICVzIiwgZXJyb3ItPm1lc3NhZ2UpOwog
ICAgICAgZ190YXNrX3JldHVybl9lcnJvciAodGFzaywgZXJyb3IpOwogICAgIH0KLSAgaWYgKGJy
ZWFkICE9IGRhdGEtPmNvdW50KQotICAgIHsKLSAgICAgIGdfdGFza19yZXR1cm5faW50ICh0YXNr
LCAtMSk7Ci0gICAgfQogICBlbHNlCiAgICAgewogICAgICAgZ190YXNrX3JldHVybl9pbnQgKHRh
c2ssIGJyZWFkKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
