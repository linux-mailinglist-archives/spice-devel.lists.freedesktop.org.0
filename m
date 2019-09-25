Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20467BDA7B
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBA66EB45;
	Wed, 25 Sep 2019 09:07:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A756B6EB43
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 514C330860DE
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:05 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D01D810013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:56 +0200
Message-Id: <20190925090701.19130-4-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 25 Sep 2019 09:07:05 +0000 (UTC)
Subject: [Spice-devel] [spice 3/8] tests: migrate: add support to run with
 remote-viewer
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
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwg
NSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5CmluZGV4IDVh
MGY1OTMwLi5mODkzYjJhYyAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQorKysgYi90ZXN0
cy9taWdyYXRlLnB5CkBAIC01OCw3ICs1OCw3IEBAIGRlZiBnZXRfYXJncygpOgogICAgIHBhcnNl
ci5hZGRfYXJndW1lbnQoJy0tcWVtdScsIGRlc3Q9J3FlbXUnLCBkZWZhdWx0PScuLi8uLi9xZW11
L3g4Nl82NC1zb2Z0bW11L3FlbXUtc3lzdGVtLXg4Nl82NCcpCiAgICAgcGFyc2VyLmFkZF9hcmd1
bWVudCgnLS1sb2dfZmlsZW5hbWUnLCBkZXN0PSdsb2dfZmlsZW5hbWUnLCBkZWZhdWx0PSdtaWdy
YXRlLmxvZycpCiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1pbWFnZScsIGRlc3Q9J2ltYWdl
JywgZGVmYXVsdD0nJykKLSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudCcsIGRlc3Q9
J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywgY2hvaWNlcz1bJ3NwaWN5J10pCisgICAgcGFyc2Vy
LmFkZF9hcmd1bWVudCgnLS1jbGllbnQnLCBkZXN0PSdjbGllbnQnLCBkZWZhdWx0PSdzcGljeScs
IGNob2ljZXM9WydzcGljeScsICdyZW1vdGUtdmlld2VyJ10pCiAgICAgcGFyc2VyLmFkZF9hcmd1
bWVudCgnLS12ZGFnZW50JywgY2hvaWNlcz1bJ29uJywgJ29mZiddLCBkZWZhdWx0PSdvbicpCiAg
ICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5cy5hcmd2WzE6XSkKICAgICBpZiBvcy5wYXRo
LmV4aXN0cyhhcmdzLnFlbXUpOgpAQCAtOTcsNiArOTcsOSBAQCBkZWYgc3RhcnRfcWVtdShxZW11
X2V4ZWMsIGltYWdlLCBzcGljZV9wb3J0LCBxbXBfZmlsZW5hbWUsIGluY29taW5nX3BvcnQ9Tm9u
ZSwgZQogCiBkZWYgc3RhcnRfY2xpZW50KGNsaWVudCwgc3BpY2VfcG9ydCk6CiAgICAgY2xpZW50
X2NtZCA9ICJzcGljeSAtLXVyaSBzcGljZTovL2xvY2FsaG9zdDolcyIgJSAoc3BpY2VfcG9ydCkK
KyAgICBpZiBjbGllbnQgPT0gInJlbW90ZS12aWV3ZXIiOgorICAgICAgICBjbGllbnRfY21kID0g
IiVzIHNwaWNlOi8vbG9jYWxob3N0OiVzIiAlIChjbGllbnQsIHNwaWNlX3BvcnQpCisKICAgICBy
ZXR1cm4gUG9wZW4oY2xpZW50X2NtZC5zcGxpdCgpLCBleGVjdXRhYmxlPWNsaWVudCkKIAogZGVm
IHdhaXRfYWN0aXZlKHEsIGFjdGl2ZSk6Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
