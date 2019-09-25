Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBDDBDBC9
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9606EB89;
	Wed, 25 Sep 2019 10:03:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5381A6EB78
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EF8165859E
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7AF065D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:03:00 +0200
Message-Id: <20190925100300.30019-9-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
Subject: [Spice-devel] [spice v2 8/8] tests: migrate: add counter for tests
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL21pZ3JhdGUucHkgfCA2ICsrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5CmluZGV4IGI3NmJjODc3Li5i
MTFiZWZkZCAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQorKysgYi90ZXN0cy9taWdyYXRl
LnB5CkBAIC02Miw2ICs2Miw4IEBAIGRlZiBnZXRfYXJncygpOgogICAgICAgICAgICAgICAgICAg
ICAgICAgaGVscD0iQXBwZW5kIG9wdGlvbnMgZm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQog
ICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC11c2VyLWlucHV0JywgZGVzdD0id2FpdF91
c2VyX2lucHV0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKICAgICAgICAg
ICAgICAgICAgICAgICAgIGhlbHA9IldhaXQgdXNlcidzIGlucHV0IHRvIHN0YXJ0IG1pZ3JhdGlv
biB0ZXN0IikKKyAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNvdW50JywgZGVzdD0nY291bnRl
cicsIHR5cGU9aW50LCBkZWZhdWx0PTEwMCwKKyAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9
Ik51bWJlciBvZiBtaWdyYXRpb25zIHRvIHJ1biAoc2V0IDAgZm9yIGluZmluaXRlKSIpCiAgICAg
YXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5cy5hcmd2WzE6XSkKICAgICBpZiBvcy5wYXRoLmV4
aXN0cyhhcmdzLnFlbXUpOgogICAgICAgICBhcmdzLnFlbXVfZXhlYyA9IGFyZ3MucWVtdQpAQCAt
MjE0LDggKzIxNiwxMCBAQCBkZWYgbWFpbigpOgogICAgICAgICBtaWdyYXRpb25fcG9ydD1hcmdz
Lm1pZ3JhdGVfcG9ydCwgc3BpY2VfcG9ydHM9W2FyZ3Muc3BpY2VfcG9ydDEsCiAgICAgICAgIGFy
Z3Muc3BpY2VfcG9ydDJdLCB2ZGFnZW50PWFyZ3MudmRhZ2VudCkKICAgICBhdGV4aXQucmVnaXN0
ZXIoY2xlYW51cCwgbWlncmF0b3IpCi0gICAgd2hpbGUgVHJ1ZToKKyAgICBjb3VudGVyID0gMAor
ICAgIHdoaWxlIGFyZ3MuY291bnRlciA9PSAwIG9yIGNvdW50ZXIgPCBhcmdzLmNvdW50ZXI6CiAg
ICAgICAgIG1pZ3JhdG9yLml0ZXJhdGUoYXJncy53YWl0X3VzZXJfaW5wdXQpCisgICAgICAgIGNv
dW50ZXIgKz0gMQogCiBpZiBfX25hbWVfXyA9PSAnX19tYWluX18nOgogICAgIG1haW4oKQotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
