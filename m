Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42913AF750
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 09:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F13D6EA4B;
	Wed, 11 Sep 2019 07:55:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806166EA49
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:55:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2E95118CB8F6
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:55:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5622360BF7;
 Wed, 11 Sep 2019 07:55:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 11 Sep 2019 08:55:47 +0100
Message-Id: <20190911075547.5210-2-fziglio@redhat.com>
In-Reply-To: <20190911075547.5210-1-fziglio@redhat.com>
References: <20190911075547.5210-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Wed, 11 Sep 2019 07:55:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] red-channel-client: Inline
 red_channel_client_get_channel in macro
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

SW5saW5lIHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2hhbm5lbCBpbiBzcGljZV9jaGFubmVsX2Ns
aWVudF9lcnJvcgptYWNyby4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyB8IDMgKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVu
dC5jCmluZGV4IDMzNzczM2Q1ZC4uMmZlZTc2ZjU3IDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLWNo
YW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCkBAIC0xNzgs
OCArMTc4LDcgQEAgc3RhdGljIGJvb2wgcmVkX2NoYW5uZWxfY2xpZW50X2NvbmZpZ19zb2NrZXQo
UmVkQ2hhbm5lbENsaWVudCAqcmNjKTsKICAqLwogI2RlZmluZSBzcGljZV9jaGFubmVsX2NsaWVu
dF9lcnJvcihyY2MsIGZvcm1hdCwgLi4uKSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBcCiAgICAgZG8geyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKLSAgICAgICAgUmVkQ2hh
bm5lbCAqX2NoID0gcmVkX2NoYW5uZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyk7ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAotICAgICAgICByZWRfY2hhbm5lbF93YXJuaW5nKF9jaCwgZm9y
bWF0LCAjIyBfX1ZBX0FSR1NfXyk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCisg
ICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcocmNjLT5wcml2LT5jaGFubmVsLCBmb3JtYXQsICMj
IF9fVkFfQVJHU19fKTsgICAgICAgICAgICAgICAgIFwKICAgICAgICAgcmVkX2NoYW5uZWxfY2xp
ZW50X3NodXRkb3duKHJjYyk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXAogICAgIH0gd2hpbGUgKDApCiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
