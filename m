Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE38AA4D8
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B156E0E8;
	Thu,  5 Sep 2019 13:43:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31266E0E6
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:43:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3EBBBC057EC0;
 Thu,  5 Sep 2019 13:43:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 810875C1D4;
 Thu,  5 Sep 2019 13:43:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:42:32 +0100
Message-Id: <20190905134241.28873-10-fziglio@redhat.com>
In-Reply-To: <20190905134241.28873-1-fziglio@redhat.com>
References: <20190905134241.28873-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 05 Sep 2019 13:43:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v6 09/18] usb-redir: enable
 redirection of emulated CD drive
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKQWRk
IGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIGRldmljZSB0byBidWlsZC4KTm93IGl0IGlzIHBv
c3NpYmxlIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogWXVy
aSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9tZXNv
bi5idWlsZCB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVpbGQgYi9zcmMvbWVzb24uYnVpbGQKaW5kZXgg
NGQ5MjE1YzguLjAwZWIyNzc4IDEwMDY0NAotLS0gYS9zcmMvbWVzb24uYnVpbGQKKysrIGIvc3Jj
L21lc29uLmJ1aWxkCkBAIC0xNTcsNiArMTU3LDE4IEBAIGVsaWYgc3BpY2VfZ3RrX2Nvcm91dGlu
ZSA9PSAnd2luZmliZXInCiAgIHNwaWNlX2NsaWVudF9nbGliX3NvdXJjZXMgKz0gJ2Nvcm91dGlu
ZV93aW5maWJlcnMuYycKIGVuZGlmCiAKK2lmIHNwaWNlX2d0a19oYXNfdXNicmVkaXIKKyAgc3Bp
Y2VfY2xpZW50X2dsaWJfc291cmNlcyArPSBbCisgICAgJ3VzYi1kZXZpY2UtY2QuYycsCisgICAg
J3VzYi1kZXZpY2UtY2QuaCcsCisgICAgJ2NkLXNjc2kuYycsCisgICAgJ2NkLXNjc2kuaCcsCisg
ICAgJ2NkLXNjc2ktZGV2LXBhcmFtcy5oJywKKyAgICAnY2QtdXNiLWJ1bGstbXNkLmMnLAorICAg
ICdjZC11c2ItYnVsay1tc2QuaCcsCisgIF0KK2VuZGlmCisKIGlmIHNwaWNlX2d0a19oYXNfdXNi
cmVkaXIgYW5kIGhvc3RfbWFjaGluZS5zeXN0ZW0oKSA9PSAnd2luZG93cycKICAgc3BpY2VfY2xp
ZW50X2dsaWJfc291cmNlcyArPSBbJ3VzYmRrX2FwaS5jJywKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJ3VzYmRrX2FwaS5oJ10KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
