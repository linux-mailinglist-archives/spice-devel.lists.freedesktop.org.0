Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50393D5EB2
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 11:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64A86E1F4;
	Mon, 14 Oct 2019 09:22:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463586E1ED
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E26E73B72A
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:28 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C82C1608A5;
 Mon, 14 Oct 2019 09:22:27 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:22:14 +0100
Message-Id: <20191014092217.24405-5-fziglio@redhat.com>
In-Reply-To: <20191014092217.24405-1-fziglio@redhat.com>
References: <20191014092217.24405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 14 Oct 2019 09:22:28 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 4/7] red-client: Make sure
 MainChannelClient is freed as last
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
Cc: cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

TWFpbkNoYW5uZWxDbGllbnQgaXMgdXNlZCBieSBvdGhlciBjbGllbnRzIHRvIHN0b3JlIHNvbWUg
ZGF0YQpzbyBzaG91bGQgbm90IGRpc2FwcGVhciBpZiBvdGhlciBjbGllbnRzIGFyZSBzdGlsbCBw
cmVzZW50LgpLZWVwIGEgb3duaW5nIHJlZmVyZW5jZSB0byBpdCBhbmQgcmVsZWFzZSBhZnRlciBS
ZWRDbGllbnQgaXMKcmVsZWFzZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvcmVkLWNsaWVudC5jIHwgNCArKystCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
c2VydmVyL3JlZC1jbGllbnQuYyBiL3NlcnZlci9yZWQtY2xpZW50LmMKaW5kZXggZDczZDBmOGQw
Li40NzZmNmY1YmUgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2xpZW50LmMKKysrIGIvc2VydmVy
L3JlZC1jbGllbnQuYwpAQCAtMTA2LDYgKzEwNiw3IEBAIHJlZF9jbGllbnRfZmluYWxpemUgKEdP
YmplY3QgKm9iamVjdCkKIHsKICAgICBSZWRDbGllbnQgKnNlbGYgPSBSRURfQ0xJRU5UKG9iamVj
dCk7CiAKKyAgICBnX2NsZWFyX29iamVjdCgmc2VsZi0+bWNjKTsKICAgICBzcGljZV9kZWJ1Zygi
cmVsZWFzZSBjbGllbnQ9JXAiLCBzZWxmKTsKICAgICBwdGhyZWFkX211dGV4X2Rlc3Ryb3koJnNl
bGYtPmxvY2spOwogCkBAIC0zMTMsNyArMzE0LDggQEAgTWFpbkNoYW5uZWxDbGllbnQgKnJlZF9j
bGllbnRfZ2V0X21haW4oUmVkQ2xpZW50ICpjbGllbnQpCiAKIHZvaWQgcmVkX2NsaWVudF9zZXRf
bWFpbihSZWRDbGllbnQgKmNsaWVudCwgTWFpbkNoYW5uZWxDbGllbnQgKm1jYykKIHsKLSAgICBj
bGllbnQtPm1jYyA9IG1jYzsKKyAgICBzcGljZV9hc3NlcnQoY2xpZW50LT5tY2MgPT0gTlVMTCk7
CisgICAgY2xpZW50LT5tY2MgPSBnX29iamVjdF9yZWYobWNjKTsKIH0KIAogdm9pZCByZWRfY2xp
ZW50X3NlbWlfc2VhbWxlc3NfbWlncmF0ZV9jb21wbGV0ZShSZWRDbGllbnQgKmNsaWVudCkKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
