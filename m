Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD20849BD3
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 10:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492DD89D84;
	Tue, 18 Jun 2019 08:16:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299CD89D63
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 08:16:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C72C3356CF
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 08:16:00 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-128.brq.redhat.com [10.40.204.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1BFFC1001E60;
 Tue, 18 Jun 2019 08:15:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Jun 2019 09:15:51 +0100
Message-Id: <20190618081551.20585-2-fziglio@redhat.com>
In-Reply-To: <20190618081551.20585-1-fziglio@redhat.com>
References: <20190618081551.20585-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 18 Jun 2019 08:16:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] channel-display: Use proper sized
 maximum
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

ImF1ZGlvX2RlbGF5IiBpcyAzMiBiaXQgYXMgZGVmaW5lZCBieSBwcm90b2NvbC4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFu
bmVsLWRpc3BsYXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFu
bmVsLWRpc3BsYXkuYwppbmRleCBjZGEwZmNkZC4uNTQyOTIwYmIgMTAwNjQ0Ci0tLSBhL3NyYy9j
aGFubmVsLWRpc3BsYXkuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKQEAgLTE0NzMsNyAr
MTQ3Myw3IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfdXBkYXRlX3N0cmVhbV9yZXBvcnQoU3BpY2VE
aXNwbGF5Q2hhbm5lbCAqY2hhbm5lbCwgdWludDMyX3QKICAgICAgICAgaWYgKHNwaWNlX3Nlc3Np
b25faXNfcGxheWJhY2tfYWN0aXZlKHNlc3Npb24pKSB7CiAgICAgICAgICAgICByZXBvcnQuYXVk
aW9fZGVsYXkgPSBzcGljZV9zZXNzaW9uX2dldF9wbGF5YmFja19sYXRlbmN5KHNlc3Npb24pOwog
ICAgICAgICB9IGVsc2UgewotICAgICAgICAgICAgcmVwb3J0LmF1ZGlvX2RlbGF5ID0gVUlOVF9N
QVg7CisgICAgICAgICAgICByZXBvcnQuYXVkaW9fZGVsYXkgPSBVSU5UMzJfTUFYOwogICAgICAg
ICB9CiAKICAgICAgICAgbXNnID0gc3BpY2VfbXNnX291dF9uZXcoU1BJQ0VfQ0hBTk5FTChjaGFu
bmVsKSwgU1BJQ0VfTVNHQ19ESVNQTEFZX1NUUkVBTV9SRVBPUlQpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
