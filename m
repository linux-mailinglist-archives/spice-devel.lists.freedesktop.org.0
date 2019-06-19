Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB54BD12
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 17:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D266E439;
	Wed, 19 Jun 2019 15:38:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24DF6E3FB
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EDF96309C390
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:10 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-26.brq.redhat.com
 [10.40.204.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E30205C205;
 Wed, 19 Jun 2019 15:38:09 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 19 Jun 2019 17:37:48 +0200
Message-Id: <20190619153750.29921-3-jjanku@redhat.com>
In-Reply-To: <20190619153750.29921-1-jjanku@redhat.com>
References: <20190619153750.29921-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 19 Jun 2019 15:38:10 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 3/5] webdav: don't start client
 on empty message
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

SWYgdGhlIGNsaWVudCBvbiB0aGUgcmVtb3RlIHNpZGUgZGlzY29ubmVjdHMsCnNwaWNlLXdlYmRh
diBkYWVtb24gc2VuZHMgYSBtZXNzYWdlIHdpdGggbm8gZGF0YS4KCkhvd2V2ZXIsIGlmIHRoZSBw
aG9kYXYgc2VydmVyIGFscmVhZHkgY2xvc2VkCnRoZSBjbGllbnQgY29ubmVjdGlvbiwgY2xpZW50
IGxvb2t1cCBmYWlscyBhbmQKd2Ugb3BlbiBhIG5ldyBjb25uZWN0aW9uIHRvIHBob2RhdiwgYnV0
IGRvbid0IHdyaXRlCmFueXRoaW5nIHRvIGl0IC0gdGhpcyBzaG91bGQgbm90IGhhcHBlbiwKc28g
aW4gc3VjaCBjYXNlLCBpZ25vcmUgdGhlIG1lc3NhZ2UgYW5kIHN0YXJ0CmRlbXV4aW5nIGFnYWlu
LgoKU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBz
cmMvY2hhbm5lbC13ZWJkYXYuYyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMg
Yi9zcmMvY2hhbm5lbC13ZWJkYXYuYwppbmRleCA4MjJmZWUwLi40ZTA4ZWZhIDEwMDY0NAotLS0g
YS9zcmMvY2hhbm5lbC13ZWJkYXYuYworKysgYi9zcmMvY2hhbm5lbC13ZWJkYXYuYwpAQCAtNDIx
LDggKzQyMSwxMiBAQCBzdGF0aWMgdm9pZCBkYXRhX3JlYWRfY2IoR09iamVjdCAqc291cmNlX29i
amVjdCwKIAogICAgIGlmIChjbGllbnQpCiAgICAgICAgIGRlbXV4X3RvX2NsaWVudChjbGllbnQp
OwotICAgIGVsc2UKKyAgICBlbHNlIGlmIChzaXplID4gMCkgewogICAgICAgICBzdGFydF9jbGll
bnQoc2VsZik7CisgICAgfSBlbHNlIHsKKyAgICAgICAgYy0+ZGVtdXhpbmcgPSBGQUxTRTsKKyAg
ICAgICAgc3RhcnRfZGVtdXgoc2VsZik7CisgICAgfQogfQogCiAKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
