Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F216B98F
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 11:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DE86E0E5;
	Wed, 17 Jul 2019 09:48:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4216E0E5
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:48:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DA3068666A
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:48:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BEAAE600D1;
 Wed, 17 Jul 2019 09:48:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 10:48:50 +0100
Message-Id: <20190717094851.14923-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 17 Jul 2019 09:48:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] test-websocket: Some Windows
 compatibility
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

RG9uJ3QgY2FsbCBjbG9zZSBidXQgc29ja2V0X2Nsb3NlLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vi
c29ja2V0LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpDdXJyZW50bHkgdGhlIGV4ZWN1dGFibGUgY2Fubm90IHJ1biBvbiBXaW5kb3dz
IGJ1dCBpdCBkb2VzIG5vdCBodXJ0CnRvIG1ha2UgdGhlIHNvdXJjZSBtb3JlIGNvbXBhdGlibGUg
d2l0aCB0aGF0IHN5c3RlbS4KCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2Nr
ZXQuYyBiL3NlcnZlci90ZXN0cy90ZXN0LXdlYnNvY2tldC5jCmluZGV4IGRjN2I3ZDM0Mi4uZTc0
Y2I1NDk3IDEwMDY0NAotLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYworKysgYi9z
ZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYwpAQCAtMTkzLDEwICsxOTMsMTAgQEAgbWFpbihp
bnQgYXJnYywgY2hhciAqKmFyZ3YpCiAgICAgICAgICsrbnVtX2Nvbm5lY3Rpb25zOwogICAgICAg
ICBoYW5kbGVfY2xpZW50KG5ld19zb2NrKTsKIAotICAgICAgICBjbG9zZShuZXdfc29jayk7Cisg
ICAgICAgIHNvY2tldF9jbG9zZShuZXdfc29jayk7CiAgICAgfQogCi0gICAgY2xvc2Uoc29jayk7
CisgICAgc29ja2V0X2Nsb3NlKHNvY2spOwogICAgIHByaW50ZigiaGFuZGxlZCAldSBjb25uZWN0
aW9uc1xuIiwgbnVtX2Nvbm5lY3Rpb25zKTsKICAgICByZXR1cm4gMDsKIH0KLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
