Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF910491A0
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 22:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D93A89FC8;
	Mon, 17 Jun 2019 20:46:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E5E89FC8
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE39E3003E41
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:39 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-54.brq.redhat.com
 [10.40.204.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C150290AC;
 Mon, 17 Jun 2019 20:46:38 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 22:46:28 +0200
Message-Id: <20190617204630.22420-3-jjanku@redhat.com>
In-Reply-To: <20190617204630.22420-1-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 17 Jun 2019 20:46:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 3/5] webdav: don't start client on
 empty message
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
Yi9zcmMvY2hhbm5lbC13ZWJkYXYuYwppbmRleCA4MjJmZWUwLi5lYTI4N2YxIDEwMDY0NAotLS0g
YS9zcmMvY2hhbm5lbC13ZWJkYXYuYworKysgYi9zcmMvY2hhbm5lbC13ZWJkYXYuYwpAQCAtNDIx
LDggKzQyMSwxMiBAQCBzdGF0aWMgdm9pZCBkYXRhX3JlYWRfY2IoR09iamVjdCAqc291cmNlX29i
amVjdCwKIAogICAgIGlmIChjbGllbnQpCiAgICAgICAgIGRlbXV4X3RvX2NsaWVudChjbGllbnQp
OwotICAgIGVsc2UKKyAgICBlbHNlIGlmIChzaXplID4gMCkKICAgICAgICAgc3RhcnRfY2xpZW50
KHNlbGYpOworICAgIGVsc2UgeworICAgICAgICBjLT5kZW11eGluZyA9IEZBTFNFOworICAgICAg
ICBzdGFydF9kZW11eChzZWxmKTsKKyAgICB9CiB9CiAKIAotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
