Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F24AFC1448
	for <lists+spice-devel@lfdr.de>; Sun, 29 Sep 2019 13:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7BE89C6B;
	Sun, 29 Sep 2019 11:03:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0EA89C6B
 for <spice-devel@lists.freedesktop.org>; Sun, 29 Sep 2019 11:03:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9980930655F9
 for <spice-devel@lists.freedesktop.org>; Sun, 29 Sep 2019 11:03:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7DF2A5C1B5;
 Sun, 29 Sep 2019 11:03:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 29 Sep 2019 12:03:36 +0100
Message-Id: <20190929110336.9613-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Sun, 29 Sep 2019 11:03:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-channel-client: Use
 SpiceMsgcAckSync structure
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

cmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdlIGlzIGNhbGxlZCBhZnRlciBwYXJzaW5n
IHRoZQptZXNzYWdlIHNvIGl0J3Mgbm90IG5lY2Vzc2FyeSB0byBjaGVjayBpdCBhZ2FpbiBvciBw
YXJzZSBtYW51YWxseS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgotLS0KIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyB8IDYgKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVu
dC5jCmluZGV4IDY2YjhmZDRhLi5mODYxY2NlNSAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZC1jaGFu
bmVsLWNsaWVudC5jCisrKyBiL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwpAQCAtMTQ3Mywx
MSArMTQ3Myw3IEBAIGJvb2wgcmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdlKFJlZENo
YW5uZWxDbGllbnQgKnJjYywgdWludDE2X3QgdHlwZSwKIHsKICAgICBzd2l0Y2ggKHR5cGUpIHsK
ICAgICBjYXNlIFNQSUNFX01TR0NfQUNLX1NZTkM6Ci0gICAgICAgIGlmIChzaXplICE9IHNpemVv
Zih1aW50MzJfdCkpIHsKLSAgICAgICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcocmVkX2NoYW5u
ZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksICJiYWQgbWVzc2FnZSBzaXplIik7Ci0gICAgICAg
ICAgICByZXR1cm4gRkFMU0U7Ci0gICAgICAgIH0KLSAgICAgICAgcmNjLT5wcml2LT5hY2tfZGF0
YS5jbGllbnRfZ2VuZXJhdGlvbiA9ICoodWludDMyX3QgKikobWVzc2FnZSk7CisgICAgICAgIHJj
Yy0+cHJpdi0+YWNrX2RhdGEuY2xpZW50X2dlbmVyYXRpb24gPSAoKFNwaWNlTXNnY0Fja1N5bmMg
KikgbWVzc2FnZSktPmdlbmVyYXRpb247CiAgICAgICAgIGJyZWFrOwogICAgIGNhc2UgU1BJQ0Vf
TVNHQ19BQ0s6CiAgICAgICAgIGlmIChyY2MtPnByaXYtPmFja19kYXRhLmNsaWVudF9nZW5lcmF0
aW9uID09IHJjYy0+cHJpdi0+YWNrX2RhdGEuZ2VuZXJhdGlvbikgewotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
