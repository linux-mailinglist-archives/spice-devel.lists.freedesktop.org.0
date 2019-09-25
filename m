Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9647EBDA81
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA966EB4D;
	Wed, 25 Sep 2019 09:07:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0DD6EB43
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9744018C891F
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:07 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2144510013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:06 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:59 +0200
Message-Id: <20190925090701.19130-7-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 25 Sep 2019 09:07:07 +0000 (UTC)
Subject: [Spice-devel] [spice 6/8] tests: migrate: bool instead of on/off
 option in cmd line
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2ltcGxlci4gTWFrZSB0aGUg
ZGVmYXVsdCB0byBiZSBGYWxzZSBhcyB3ZWxsIGFzCiAxKSBObyBhcmdzIHNob3VsZCBydW4gYXMg
c2ltcGxlIGFzIHBvc3NpYmxlCiAyKSBUcnVlIGlzIGN1cnJlbnRseSBicm9rZW4KClNpZ25lZC1v
ZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWln
cmF0ZS5weSB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUu
cHkKaW5kZXggMzE1OTNjOGEuLjRhYzYyODliIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5
CisrKyBiL3Rlc3RzL21pZ3JhdGUucHkKQEAgLTU4LDcgKzU4LDggQEAgZGVmIGdldF9hcmdzKCk6
CiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1sb2dfZmlsZW5hbWUnLCBkZXN0PSdsb2dfZmls
ZW5hbWUnLCBkZWZhdWx0PSdtaWdyYXRlLmxvZycpCiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgn
LS1pbWFnZScsIGRlc3Q9J2ltYWdlJywgZGVmYXVsdD0nJykKICAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCctLWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywgY2hvaWNlcz1b
J3NwaWN5JywgJ3JlbW90ZS12aWV3ZXInXSkKLSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZk
YWdlbnQnLCBjaG9pY2VzPVsnb24nLCAnb2ZmJ10sIGRlZmF1bHQ9J29uJykKKyAgICBwYXJzZXIu
YWRkX2FyZ3VtZW50KCctLXZkYWdlbnQnLCBkZXN0PSJ2ZGFnZW50IiwgYWN0aW9uPSdzdG9yZV90
cnVlJywgZGVmYXVsdD1GYWxzZSwKKyAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IkFwcGVu
ZCBvcHRpb25zIGZvciBhZ2VudCdzIHZpcnRzZXJpYWxwb3J0IikKICAgICBhcmdzID0gcGFyc2Vy
LnBhcnNlX2FyZ3Moc3lzLmFyZ3ZbMTpdKQogICAgIGlmIG9zLnBhdGguZXhpc3RzKGFyZ3MucWVt
dSk6CiAgICAgICAgIGFyZ3MucWVtdV9leGVjID0gYXJncy5xZW11CkBAIC0yMTAsNyArMjExLDcg
QEAgZGVmIG1haW4oKToKICAgICBtaWdyYXRvciA9IE1pZ3JhdG9yKGNsaWVudD1hcmdzLmNsaWVu
dCwgcWVtdV9leGVjPWFyZ3MucWVtdV9leGVjLAogICAgICAgICBpbWFnZT1hcmdzLmltYWdlLCBs
b2c9bG9nLCBtb25pdG9yX2ZpbGVzPVthcmdzLnFtcDEsIGFyZ3MucW1wMl0sCiAgICAgICAgIG1p
Z3JhdGlvbl9wb3J0PWFyZ3MubWlncmF0ZV9wb3J0LCBzcGljZV9wb3J0cz1bYXJncy5zcGljZV9w
b3J0MSwKLSAgICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIHZkYWdlbnQ9KGFyZ3MudmRhZ2VudD09
J29uJykpCisgICAgICAgIGFyZ3Muc3BpY2VfcG9ydDJdLCB2ZGFnZW50PWFyZ3MudmRhZ2VudCkK
ICAgICBhdGV4aXQucmVnaXN0ZXIoY2xlYW51cCwgbWlncmF0b3IpCiAgICAgd2hpbGUgVHJ1ZToK
ICAgICAgICAgbWlncmF0b3IuaXRlcmF0ZSgpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
