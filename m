Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E7B1CCEA
	for <lists+spice-devel@lfdr.de>; Tue, 14 May 2019 18:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38100891D7;
	Tue, 14 May 2019 16:26:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F2C891D7
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9DEC4300412D
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:05 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 251105C553
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 16:26:00 +0000
Message-Id: <20190514162602.3529-4-victortoso@redhat.com>
In-Reply-To: <20190514162602.3529-1-victortoso@redhat.com>
References: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 14 May 2019 16:26:05 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 3/5] Rename NEWS to CHANGELOG.md
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gb3JkZXIgdG8gaGF2ZSBn
aXRsYWIgaW50ZXJmYWNlIHRvIGhhbmRsZSB0aGlzIGZpbGUgYXMgTWFya2Rvd24KYW5kIHByb3Bl
cmx5IGZlZWQgdGhlIGNoYW5nZWxvZyBzZWN0aW9uLgpBZGQgdG8gRVhUUkFfRElTVCB0byBpbmNs
dWRlIHRoZSByZW5hbWVkIGZpbGUgdG8gcmVsZWFzZSdzIHRhcmJhbGwuCgpTaWduZWQtb2ZmLWJ5
OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIE5FV1MgPT4gQ0hBTkdF
TE9HLm1kIHwgMAogTWFrZWZpbGUuYW0gICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKIHJlbmFtZSBORVdTID0+IENIQU5HRUxPRy5tZCAoMTAwJSkKCmRpZmYg
LS1naXQgYS9ORVdTIGIvQ0hBTkdFTE9HLm1kCnNpbWlsYXJpdHkgaW5kZXggMTAwJQpyZW5hbWUg
ZnJvbSBORVdTCnJlbmFtZSB0byBDSEFOR0VMT0cubWQKZGlmZiAtLWdpdCBhL01ha2VmaWxlLmFt
IGIvTWFrZWZpbGUuYW0KaW5kZXggZGY2NWM0Ni4uOWZjYjJkMyAxMDA2NDQKLS0tIGEvTWFrZWZp
bGUuYW0KKysrIGIvTWFrZWZpbGUuYW0KQEAgLTIyLDYgKzIyLDcgQEAgRElTVENMRUFORklMRVMg
PSAkKHBrZ2NvbmZpZ19EQVRBKQogCiBFWFRSQV9ESVNUID0JCQkJCVwKIAlSRUFETUUubWQJCQkJ
XAorCUNIQU5HRUxPRy5tZAkJCQlcCiAJbWVzb24uYnVpbGQJCQkJXAogCW1lc29uX29wdGlvbnMu
dHh0CQkJXAogCXBvL21lc29uLmJ1aWxkCQkJCVwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
