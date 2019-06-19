Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0091B4BD11
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 17:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3DF6E3F5;
	Wed, 19 Jun 2019 15:38:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0996E3F5
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 89D4530C1214
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:09 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-26.brq.redhat.com
 [10.40.204.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 793415C205;
 Wed, 19 Jun 2019 15:38:08 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 19 Jun 2019 17:37:47 +0200
Message-Id: <20190619153750.29921-2-jjanku@redhat.com>
In-Reply-To: <20190619153750.29921-1-jjanku@redhat.com>
References: <20190619153750.29921-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 19 Jun 2019 15:38:09 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 2/5] vmcstream: finish task
 immediately when reading 0 bytes
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

VGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gZmluaXNoZXMgaXQgb25seSBhZnRlciBuZXcgZGF0
YQphcnJpdmVzIGZyb20gdGhlIGNoYW5uZWwgKG9yIGFmdGVyIGl0IGlzIGNhbmNlbGxlZCkuCgpT
aWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgotLS0KIHNyYy92
bWNzdHJlYW0uYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9zcmMvdm1jc3RyZWFtLmMgYi9zcmMvdm1jc3RyZWFtLmMKaW5kZXggODZjOTQ5
YS4uYjZmNmQxYSAxMDA2NDQKLS0tIGEvc3JjL3ZtY3N0cmVhbS5jCisrKyBiL3NyYy92bWNzdHJl
YW0uYwpAQCAtMjA5LDYgKzIwOSwxMSBAQCBzcGljZV92bWNfaW5wdXRfc3RyZWFtX3JlYWRfYWxs
X2FzeW5jKEdJbnB1dFN0cmVhbSAgICAgICAgKnN0cmVhbSwKICAgICAgICAgICAgICAgICAgICAg
ICBjYW5jZWxsYWJsZSwKICAgICAgICAgICAgICAgICAgICAgICBjYWxsYmFjaywKICAgICAgICAg
ICAgICAgICAgICAgICB1c2VyX2RhdGEpOworICAgIGlmIChjb3VudCA9PSAwKSB7CisgICAgICAg
IGdfdGFza19yZXR1cm5faW50KHRhc2ssIDApOworICAgICAgICBnX29iamVjdF91bnJlZih0YXNr
KTsKKyAgICAgICAgcmV0dXJuOworICAgIH0KICAgICBzZWxmLT50YXNrID0gdGFzazsKICAgICBp
ZiAoY2FuY2VsbGFibGUpCiAgICAgICAgIHNlbGYtPmNhbmNlbF9pZCA9Ci0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
