Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873F8BDA79
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB8F6E821;
	Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E4E6E821
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E9A518C4295
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B87610013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:02 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:53 +0200
Message-Id: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
Subject: [Spice-devel] [spice 0/8] migrate.py
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU29tZSBjaGFuZ2VzIHRvIG1h
a2UgdGhpcyB1c2FibGUuIE1vcmUgZml4ZXMgdG8gY29tZSBsYXRlci4KClZpY3RvciBUb3NvICg4
KToKICB0ZXN0czogbWlncmF0ZTogcmVtb3ZlIHNwaWNlYyBvcHRpb24KICB0ZXN0czogbWlncmF0
ZTogdXNlIHVyaSBmb3IgZGVmYXVsdCdzIHNwaWN5IGNsaWVudAogIHRlc3RzOiBtaWdyYXRlOiBh
ZGQgc3VwcG9ydCB0byBydW4gd2l0aCByZW1vdGUtdmlld2VyCiAgdGVzdHM6IG1pZ3JhdGU6IGZp
eCByZWxhdGl2ZSBxbXAucHkgcGF0aAogIHRlc3RzOiBtaWdyYXRlOiByZW1vdmUgbXVsdGlwbGUg
Y2xpZW50IG9wdGlvbgogIHRlc3RzOiBtaWdyYXRlOiBib29sIGluc3RlYWQgb2Ygb24vb2ZmIG9w
dGlvbiBpbiBjbWQgbGluZQogIHRlc3RzOiBtaWdyYXRlOiBhZGQgb3B0aW9uIHRvIHdhaXQgdXNl
ciBpbnB1dAogIHRlc3RzOiBtaWdyYXRlOiBhZGQgY291bnRlciBmb3IgdGVzdHMKCiB0ZXN0cy9t
aWdyYXRlLnB5IHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
