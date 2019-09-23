Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7D1BB829
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 17:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339026E953;
	Mon, 23 Sep 2019 15:41:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FE56E953
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:41:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 34DED308FBA6
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:41:22 +0000 (UTC)
Received: from wingsuit.redhat.com (ovpn-116-25.ams2.redhat.com [10.36.116.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB8075D713
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:41:21 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Sep 2019 17:41:20 +0200
Message-Id: <20190923154120.12322-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 23 Sep 2019 15:41:22 +0000 (UTC)
Subject: [Spice-devel] [spice] main-channel-client: style fixup,
 indentation of return
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKRm91bmQgd2hpbGUgcmVhZGlu
ZyB0aGUgY29kZS4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhh
dC5jb20+Ci0tLQogc2VydmVyL21haW4tY2hhbm5lbC1jbGllbnQuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NlcnZl
ci9tYWluLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvbWFpbi1jaGFubmVsLWNsaWVudC5jCmlu
ZGV4IDEyNjFhZDc4Li5lZjZlMDY1ZiAxMDA2NDQKLS0tIGEvc2VydmVyL21haW4tY2hhbm5lbC1j
bGllbnQuYworKysgYi9zZXJ2ZXIvbWFpbi1jaGFubmVsLWNsaWVudC5jCkBAIC01NjYsNyArNTY2
LDcgQEAgdm9pZCBtYWluX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9taWdyYXRlX2VuZChNYWluQ2hh
bm5lbENsaWVudCAqbWNjKQogICAgICAgICByZWRfY2hhbm5lbF93YXJuaW5nKHJlZF9jaGFubmVs
X2NsaWVudF9nZXRfY2hhbm5lbChSRURfQ0hBTk5FTF9DTElFTlQobWNjKSksCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgInVuZXhwZWN0ZWQgU1BJQ0VfTVNHQ19NSUdSQVRFX0VORCwgIgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjbGllbnQgZG9lcyBub3Qgc3VwcG9ydCBzZW1p
LXNlYW1sZXNzIG1pZ3JhdGlvbiIpOwotICAgICAgICAgICAgcmV0dXJuOworICAgICAgICByZXR1
cm47CiAgICAgfQogICAgIHJlZF9jbGllbnRfc2VtaV9zZWFtbGVzc19taWdyYXRlX2NvbXBsZXRl
KGNsaWVudCk7CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
