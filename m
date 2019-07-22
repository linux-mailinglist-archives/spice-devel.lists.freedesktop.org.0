Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE4D700F0
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 15:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3A689C94;
	Mon, 22 Jul 2019 13:22:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C24589C93
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 13:22:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAA483E2CB
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 13:22:28 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-48.brq.redhat.com
 [10.40.204.48])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E4F0019D71;
 Mon, 22 Jul 2019 13:22:27 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 15:22:11 +0200
Message-Id: <20190722132211.14292-2-jjanku@redhat.com>
In-Reply-To: <20190722132211.14292-1-jjanku@redhat.com>
References: <20190722132211.14292-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 22 Jul 2019 13:22:28 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 2/2] spice: handle client disconnect
 gracefully
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

SWYgdGhlIGNsaWVudCAoc3BpY2UtZ3RrKSBkaXNjb25uZWN0cyBlLmcuIGR1cmluZyBhIGZpbGUg
dHJhbnNmZXIsCnRoZSBtdXggc3RyZWFtIGdldHMgY2xvc2VkIGFuZCB0aGUgY291bnQgb2YgcmVh
ZCBieXRlcyBkb2VzIG5vdAptYXRjaCB0aGUgY291bnQgdGhhdCB0aGUgY2xpZW50IHByZXZpb3Vz
bHkgYW5ub3VuY2VkLgpIb3dldmVyLCBpbiB0aGlzIGNhc2UsIHdlIG11c3RuJ3Qgc2ltcGx5IHJl
dHVybiwgc2luY2UgdGhhdCB3b3VsZApwcmV2ZW50IGFueSBmdXJ0aGVyIGNvbm5lY3Rpb25zLgoK
U2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcGlj
ZS9zcGljZS13ZWJkYXZkLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcGljZS9zcGljZS13ZWJkYXZkLmMgYi9z
cGljZS9zcGljZS13ZWJkYXZkLmMKaW5kZXggODFiNGQ5MS4uZTFlMGY1YyAxMDA2NDQKLS0tIGEv
c3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCisrKyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwpAQCAtMjUx
LDExICsyNTEsMTMgQEAgbXV4X2RhdGFfcmVhZF9jYiAoR09iamVjdCAgICAgICpzb3VyY2Vfb2Jq
ZWN0LAogICBnc3NpemUgc2l6ZTsKIAogICBzaXplID0gaW5wdXRfc3RyZWFtX3JlYWRfdGhyZWFk
X2ZpbmlzaCAoR19JTlBVVF9TVFJFQU0gKHNvdXJjZV9vYmplY3QpLCByZXMsICZlcnJvcik7Ci0g
IGdfcmV0dXJuX2lmX2ZhaWwgKHNpemUgPT0gZGVtdXguc2l6ZSk7CiAgIGlmIChlcnJvcikKICAg
ICB7CiAgICAgICBnX3dhcm5pbmcgKCJlcnJvcjogJXMiLCBlcnJvci0+bWVzc2FnZSk7CiAgICAg
ICBnX2NsZWFyX2Vycm9yICgmZXJyb3IpOworICAgIH0KKyAgaWYgKHNpemUgIT0gZGVtdXguc2l6
ZSkKKyAgICB7CiAgICAgICBxdWl0ICgtMSk7CiAgICAgICByZXR1cm47CiAgICAgfQotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
