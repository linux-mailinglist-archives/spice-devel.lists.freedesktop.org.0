Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C2889191
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9344089993;
	Sun, 11 Aug 2019 11:47:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3D589993
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F04B33082126
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 60A0B7553B
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 11 Aug 2019 14:47:23 +0300
Message-Id: <20190811114723.22360-3-uril@redhat.com>
In-Reply-To: <20190811114723.22360-1-uril@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH 3/3] valgrind/spice.supp: add
 missing ...
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

VGhlcmUgbWF5IHRvIGJlIGFub3RoZXIgZnVuY3Rpb24gKGNhY2hlX2FsdF9uYW1lcykgYmV0d2Vl
bgogIGdudXRsc194NTA5X2V4dF9pbXBvcnRfc3ViamVjdF9hbHRfbmFtZXMgYW5kCiAgZ251dGxz
X3g1MDlfY3J0X2ltcG9ydAoKY2FjaGVfYWx0X25hbWVzIGlzIGEgc3RhdGljIGZ1bmN0aW9uIGlu
IGdudXRscy9saWIveDUwOS94NTA5LmMKdXNlZCBvbmx5IGluIGdudXRsc194NTA5X2NydF9pbXBv
cnQgYW5kIG1heSBiZSBpbmxpbmVkIGJ5CnRoZSBjb21waWxlci4KClNpZ25lZC1vZmYtYnk6IFVy
aSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3Bp
Y2Uuc3VwcCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0
IGEvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAgYi9zZXJ2ZXIvdGVzdHMvdmFsZ3Jp
bmQvc3BpY2Uuc3VwcAppbmRleCBhYTY0YjYxYmMuLjI4NDgzM2E3MiAxMDA2NDQKLS0tIGEvc2Vy
dmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAKKysrIGIvc2VydmVyL3Rlc3RzL3ZhbGdyaW5k
L3NwaWNlLnN1cHAKQEAgLTQyLDYgKzQyLDcgQEAKIAlNZW1jaGVjazpDb25kCiAJLi4uCiAJZnVu
OmdudXRsc194NTA5X2V4dF9pbXBvcnRfc3ViamVjdF9hbHRfbmFtZXMKKwkuLi4KIAlmdW46Z251
dGxzX3g1MDlfY3J0X2ltcG9ydAogCWZ1bjpnbnV0bHNfeDUwOV90cnVzdF9saXN0X2l0ZXJfZ2V0
X2NhCiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
