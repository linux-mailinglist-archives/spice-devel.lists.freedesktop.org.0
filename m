Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174A762CF
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 11:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A6F6ED07;
	Fri, 26 Jul 2019 09:52:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EB46ED04
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:52:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7F0C7368A5;
 Fri, 26 Jul 2019 09:52:24 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B83DA5F9DD;
 Fri, 26 Jul 2019 09:52:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 10:52:13 +0100
Message-Id: <20190726095213.15655-7-fziglio@redhat.com>
In-Reply-To: <20190726095213.15655-1-fziglio@redhat.com>
References: <20190726095213.15655-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 26 Jul 2019 09:52:24 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v3 6/6] mjpeg: Take the decoding
 time into account to display frames
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
Cc: Francois Gouget <fgouget@codeweavers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3Jj
L2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgYi9zcmMv
Y2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKaW5kZXggMjBlMTBkOWIuLjc2NGYwNjExIDEwMDY0NAot
LS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxh
eS1tanBlZy5jCkBAIC0xODksNiArMTg5LDkgQEAgc3RhdGljIHZvaWQgbWpwZWdfZGVjb2Rlcl9z
Y2hlZHVsZShNSnBlZ0RlY29kZXIgKmRlY29kZXIpCiAgICAgICAgIGlmIChmcmFtZSkgewogICAg
ICAgICAgICAgaWYgKHNwaWNlX21tdGltZV9kaWZmKHRpbWUsIGZyYW1lLT50aW1lKSA8PSAwKSB7
CiAgICAgICAgICAgICAgICAgZ3VpbnQzMiBkID0gZnJhbWUtPnRpbWUgLSB0aW1lOworICAgICAg
ICAgICAgICAgIGlmIChkID4gZGVjb2Rlci0+YmFzZS5kZWNvZGluZ190aW1lKSB7CisgICAgICAg
ICAgICAgICAgICAgIGQgLT0gZGVjb2Rlci0+YmFzZS5kZWNvZGluZ190aW1lOworICAgICAgICAg
ICAgICAgIH0KICAgICAgICAgICAgICAgICBkZWNvZGVyLT5jdXJfZnJhbWUgPSBmcmFtZTsKICAg
ICAgICAgICAgICAgICBkZWNvZGVyLT50aW1lcl9pZCA9IGdfdGltZW91dF9hZGQoZCwgbWpwZWdf
ZGVjb2Rlcl9kZWNvZGVfZnJhbWUsIGRlY29kZXIpOwogICAgICAgICAgICAgICAgIGJyZWFrOwot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
