Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A06ABC72
	for <lists+spice-devel@lfdr.de>; Fri,  6 Sep 2019 17:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4836E2EA;
	Fri,  6 Sep 2019 15:27:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A367D6E2EA
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Sep 2019 15:27:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4364D308FE9A
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Sep 2019 15:27:10 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4940760BF1;
 Fri,  6 Sep 2019 15:27:08 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  6 Sep 2019 16:27:04 +0100
Message-Id: <20190906152704.5515-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 06 Sep 2019 15:27:10 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] spice-session: Fix SWAP_STR macro
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

UmVhbGx5IHN3YXAgIngiIGFuZCAieSIsIG5vdCB0ZW1wb3JhcnkgY29waWVzLgpUaGUgaXNzdWUg
d2FzIGludHJvZHVjZWQgYnkgMDFjNjM0MyAiVXNlIG1hY3JvIHRvIHN3YXAKZGF0YSBpbiBzcGlj
ZV9zZXNzaW9uX3N0YXJ0X21pZ3JhdGluZygpIi4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9zcGljZS1zZXNzaW9uLmMgfCA5ICsr
Ky0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
ClJlbW92ZWQgUkZDLgpUZXN0ZWQsIHRoZSBvcmlnaW5hbCBzZXNzaW9uIGlzIHVwZGF0ZWQgd2l0
aCB0aGUgbmV3IHZhbHVlcwphZnRlciBhbGwgY29ubmVjdGlvbnMgYXJlIGVzdGFibGlzaGVkLgpB
cyB1c3VhbGx5IHRoZXJlIGFyZSBubyBvdGhlciBjb25uZWN0aW9uIGFmdGVyIHRoZXNlIHRoZQpw
cm9ibGVtIGlzIG5vdCBub3RlZC4KCmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5jIGIv
c3JjL3NwaWNlLXNlc3Npb24uYwppbmRleCAwNGJhMTI0YS4uZDBkOWU1NDEgMTAwNjQ0Ci0tLSBh
L3NyYy9zcGljZS1zZXNzaW9uLmMKKysrIGIvc3JjL3NwaWNlLXNlc3Npb24uYwpAQCAtMTc0Miwx
MiArMTc0Miw5IEBAIHZvaWQgc3BpY2Vfc2Vzc2lvbl9zd2l0Y2hpbmdfZGlzY29ubmVjdChTcGlj
ZVNlc3Npb24gKnNlbGYpCiB9CiAKICNkZWZpbmUgU1dBUF9TVFIoeCwgeSkgR19TVE1UX1NUQVJU
IHsgXAotICAgIGNvbnN0IGdjaGFyICp0bXA7ICAgICAgICAgICAgICAgICBcCi0gICAgY29uc3Qg
Z2NoYXIgKmEgPSB4OyAgICAgICAgICAgICAgIFwKLSAgICBjb25zdCBnY2hhciAqYiA9IHk7ICAg
ICAgICAgICAgICAgXAotICAgIHRtcCA9IGE7ICAgICAgICAgICAgICAgICAgICAgICAgICBcCi0g
ICAgYSA9IGI7ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKLSAgICBiID0gdG1wOyAgICAg
ICAgICAgICAgICAgICAgICAgICAgXAorICAgIGdjaGFyICp0bXAgPSB4OyAgICAgICAgICAgICAg
ICAgICBcCisgICAgeCA9IHk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKKyAgICB5ID0g
dG1wOyAgICAgICAgICAgICAgICAgICAgICAgICAgXAogfSBHX1NUTVRfRU5ECiAKIEdfR05VQ19J
TlRFUk5BTAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
