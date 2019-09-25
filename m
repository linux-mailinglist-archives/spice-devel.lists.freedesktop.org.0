Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF43BDBC6
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F5B6EB87;
	Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A9C6EB86
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E17ED3CBC1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BD385D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:56 +0200
Message-Id: <20190925100300.30019-5-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
Subject: [Spice-devel] [spice v2 4/8] tests: migrate: fix relative qmp.py
 path
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
CgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgpBY2tl
ZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWln
cmF0ZS5weSB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5w
eQppbmRleCAxZTE1ZmZhNy4uYzIwZDVlM2EgMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUucHkK
KysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtOCw3ICs4LDcgQEAgVkdBIG1vZGUgc2luY2UgaXQg
d2lsbCBqdXN0IGJlIFNlYUJJT1MpLgogCiBEZXBlbmRlbmNpZXM6CiBlaXRoZXIgcW1wIGluIHB5
dGhvbiBwYXRoIG9yIHJ1bm5pbmcgd2l0aCBzcGljZSBhbmQgcWVtdSBzaWRlIGJ5IHNpZGU6Ci1x
ZW11L1FNUC9xbXAucHkKK3FlbXUvcHl0aG9uL3FlbXUvcW1wLnB5CiBzcGljZS90ZXN0cy9taWdy
YXRlLnB5CiAKIFdpbGwgY3JlYXRlIHR3byB0ZW1wb3JhcnkgdW5peCBzb2NrZXRzIGluIC90bXAK
QEAgLTMyLDcgKzMyLDcgQEAgdHJ5OgogICAgIGltcG9ydCBxbXAKIGV4Y2VwdDoKICAgICBpbXBv
cnQgc3lzCi0gICAgc3lzLnBhdGguYXBwZW5kKCIuLi8uLi9xZW11L1FNUCIpCisgICAgc3lzLnBh
dGguYXBwZW5kKCIuLi8uLi9xZW11L3B5dGhvbi9xZW11LyIpCiAgICAgdHJ5OgogICAgICAgICBp
bXBvcnQgcW1wCiAgICAgZXhjZXB0OgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
