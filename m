Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F221A22D45
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C25388A56;
	Mon, 20 May 2019 07:39:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C5E88A56
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D00E53082E56
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:51 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C81125C57D;
 Mon, 20 May 2019 07:39:50 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 08:39:43 +0100
Message-Id: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 20 May 2019 07:39:51 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 0/4] Check distribution with CI
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

TWFrZSBzdXJlIHdlIGNhbiBidWlsZCBkaXN0cmlidXRpb24uClNvbWUgc21hbGwgdXBkYXRlcyBh
bHNvIHRvIGZpeCBzb21lIG1pbm9yIGlzc3Vlcy4KCkNJIHJlc3VsdHMgYXQgaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UtZ3RrL3BpcGVsaW5lcy8zNzc0NAoKRnJl
ZGlhbm8gWmlnbGlvICg0KToKICBjaTogVGVzdCB3ZSBjYW4gY3JlYXRlIGEgbm8gZGlydHkgcGFj
a2FnZQogIHNwaWNlLWNsaWVudC1ndGstbW9kdWxlOiBSZW1vdmUgdW51c2VkIGZpbGUKICBidWls
ZDogRG8gYWRkaXRpb25hbCBjaGFuZ2VzIHRvIE1lc29uIGRpc3RyaWJ1dGlvbgogIGNpOiBUcnkg
TWVzb24gZGlzdAoKIC5naXRsYWItY2kueW1sICAgICAgICAgICAgICAgIHwgMjAgKysrKysrKysr
KysrKysrKwogTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgfCAgMSArCiBidWlsZC1hdXgv
bWVzb24tZGlzdCAgICAgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysKIG1lc29uLmJ1
aWxkICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIHNyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVs
ZS5jIHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDUgZmlsZXMgY2hh
bmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA3
NTUgYnVpbGQtYXV4L21lc29uLWRpc3QKIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvc3BpY2UtY2xp
ZW50LWd0ay1tb2R1bGUuYwoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
