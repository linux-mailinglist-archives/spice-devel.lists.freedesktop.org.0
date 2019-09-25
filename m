Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1535DBDA7C
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CC96EB43;
	Wed, 25 Sep 2019 09:07:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9DC6EB43
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 16FE07FDCA
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:06 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 94E0710013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:05 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:57 +0200
Message-Id: <20190925090701.19130-5-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 25 Sep 2019 09:07:06 +0000 (UTC)
Subject: [Spice-devel] [spice 4/8] tests: migrate: fix relative qmp.py path
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKTW92ZWQgaW4gcWVtdSwgc2Vl
OgoKIHwgY29tbWl0IDhmOGZkOWVkYmE0YmQ2NzY4ZGEyYzhlMmJlYTQ5YWQ1YzE2Y2VkMWEKIHwg
QXV0aG9yOiBDbGViZXIgUm9zYSA8Y3Jvc2FAcmVkaGF0LmNvbT4KIHwgRGF0ZTogICBXZWQgRmVi
IDYgMTE6Mjk6MDEgMjAxOSAtMDUwMAogfAogfCAgICAgSW50cm9kdWNlIGEgUHl0aG9uIG1vZHVs
ZSBzdHJ1Y3R1cmUKIHwKIHwgICAgIFRoaXMgaXMgYSBzaW1wbGUgbW92ZSBvZiBQeXRob24gY29k
ZSB0aGF0IHdyYXBzIGNvbW1vbiBRRU1VCiB8ICAgICBmdW5jdGlvbmFsaXR5LCBhbmQgYXJlIHVz
ZWQgYnkgYSBudW1iZXIgb2YgZGlmZmVyZW50IHRlc3RzIGFuZAogfCAgICAgc2NyaXB0cy4KIHwK
IHwgICAgIEJ5IHRyZWF0aW5nIHRoYXQgY29kZSBhcyBhIHJlYWwgUHl0aG9uIG1vZHVsZSwgd2Ug
Y2FuIG1vcmUgZWFzaWx5OgogfCAgICAgICogcmV1c2UgY29kZQogfCAgICAgICogaGF2ZSBhIHBy
b3BlciBwbGFjZSBmb3IgdGhlIG1vZHVsZSdzIG93biB1bml0dGVzdHMKIHwgICAgICAqIGFwcGx5
IGEgbW9yZSBjb25zaXN0ZW50IHN0eWxlCiB8ICAgICAgKiBnZW5lcmF0ZSBkb2N1bWVudGF0aW9u
CgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0K
IHRlc3RzL21pZ3JhdGUucHkgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWln
cmF0ZS5weQppbmRleCBmODkzYjJhYy4uNWNiYzgyMTggMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3Jh
dGUucHkKKysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtMzIsNyArMzIsNyBAQCB0cnk6CiAgICAg
aW1wb3J0IHFtcAogZXhjZXB0OgogICAgIGltcG9ydCBzeXMKLSAgICBzeXMucGF0aC5hcHBlbmQo
Ii4uLy4uL3FlbXUvUU1QIikKKyAgICBzeXMucGF0aC5hcHBlbmQoIi4uLy4uL3FlbXUvcHl0aG9u
L3FlbXUvIikKICAgICB0cnk6CiAgICAgICAgIGltcG9ydCBxbXAKICAgICBleGNlcHQ6Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
