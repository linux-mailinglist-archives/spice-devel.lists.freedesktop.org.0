Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2659BA0468
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 16:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980C08925D;
	Wed, 28 Aug 2019 14:14:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13F289320
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:14:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7AA1F806CE;
 Wed, 28 Aug 2019 14:14:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA5EE60F82;
 Wed, 28 Aug 2019 14:14:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 15:14:12 +0100
Message-Id: <20190828141421.18902-10-fziglio@redhat.com>
In-Reply-To: <20190828141421.18902-1-fziglio@redhat.com>
References: <20190828141421.18902-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 28 Aug 2019 14:14:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v5 09/18] usb-redir: enable
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
