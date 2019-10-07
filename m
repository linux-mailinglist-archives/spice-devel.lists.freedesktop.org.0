Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5F6CE16F
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 14:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0246E5C3;
	Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374266E5C0
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A78C23086208
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:36 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31217194B2
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:36 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 14:19:28 +0200
Message-Id: <20191007121935.22567-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 07 Oct 2019 12:19:36 +0000 (UTC)
Subject: [Spice-devel] [spice v1 1/8] tests: migrate: fix events race
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQ3VycmVudGx5LCB3aGVuIHdl
IHJ1biBtaWdyYXRlLnB5IHdpdGggLS1jbGllbnQgb3B0aW9uIHdlIGdldCBzdHVjawp3YWl0aW5n
IGZvciBTUElDRV9DT05ORUNURUQgZXZlbnQgb24gdGFyZ2V0IHFtcCAod2hpbGUgcmVjZWl2aW5n
IG9ubHkKUU1QKS4gUHJvYmxlbSBpcywgb25seSBhZnRlciBldmVudCBTUElDRV9JTklUSUFMSVpF
RCBpbiB0aGUgc291cmNlIHFtcAppcyB0aGF0IHRoZSBjbGllbnQgd2lsbCBiZSBhYmxlIHRvIGRv
IG1pZ3JhdGlvbiAodG8gcHJvcGVybHkgZXhjaGFuZ2UKc3BpY2UgbWVzc2FnZXMpLgoKU28sIGl0
IGlzIGEgbXVzdCB0aGF0IGlmIHdlIGhhdmUgYSB0ZXN0IHdoZXJlIGEgY2xpZW50IGlzIGNvbm5l
Y3RlZCwKdG8gd2FpdCBmb3IgU1BJQ0VfSU5JVElBTElaRUQgZXZlbnQgaW4gdGhlIHNvdXJjZSBx
bXAuCgpUbyBjbGFyaWZ5LCB0aGlzIHBhdGNoZXMgZml4ZXMgdGhlIGZvbGxvd2luZyB0ZXN0OgoK
ICAgIC4vbWlncmF0ZS5weSAtLWNsaWVudCBzcGljeQoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRv
c28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggODdhMzJlYjAuLmUy
ODNhZDBmIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3RzL21pZ3JhdGUu
cHkKQEAgLTE5NCw3ICsxOTQsNyBAQCBjbGFzcyBNaWdyYXRvcihvYmplY3QpOgogICAgICAgICAg
ICAgICAgIHJhd19pbnB1dCgpCiAKICAgICAgICAgIyBUZXN0ZXIgY2FuIGxhdW5jaCBpdHMgb3du
IGNsaWVudCBvciB3ZSB3YWl0IHN0YXJ0X2NsaWVudCgpIHRvIGNvbm5lY3QKLSAgICAgICAgaWYg
d2FpdF91c2VyX2Nvbm5lY3Q6CisgICAgICAgIGlmIHNlbGYuY29ubmVjdGVkX2NsaWVudCBvciB3
YWl0X3VzZXJfY29ubmVjdDoKICAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYuYWN0aXZl
LnFtcCwgJ1NQSUNFX0lOSVRJQUxJWkVEJykKIAogICAgICAgICBzZWxmLmFjdGl2ZS5xbXAuY21k
KCdjbGllbnRfbWlncmF0ZV9pbmZvJywgeydwcm90b2NvbCc6J3NwaWNlJywKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
