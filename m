Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8D8848B5
	for <lists+spice-devel@lfdr.de>; Wed,  7 Aug 2019 11:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9279D6E69F;
	Wed,  7 Aug 2019 09:41:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81336E69F
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Aug 2019 09:41:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 447BB30023D8;
 Wed,  7 Aug 2019 09:41:01 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5B0485C21F;
 Wed,  7 Aug 2019 09:40:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  7 Aug 2019 10:40:51 +0100
Message-Id: <20190807094051.14673-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 07 Aug 2019 09:41:01 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol v2] protocol: Add some comments
 to vd_agentd.h
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
Cc: Francois Gouget <fgouget@codeweavers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+ClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNwaWNlL3Zk
X2FnZW50LmggfCAyNCArKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpDaGFuZ2VzIHNpbmNlIHYxOgotIGZpeCBk
b2N1bWVudGF0aW9uCi0gYWRkIHNvbWUgc3RydWN0dXJlIHJlZmVyZW5jZQoKZGlmZiAtLWdpdCBh
L3NwaWNlL3ZkX2FnZW50LmggYi9zcGljZS92ZF9hZ2VudC5oCmluZGV4IDQyZWM3N2EuLmU0ZTAw
YTggMTAwNjQ0Ci0tLSBhL3NwaWNlL3ZkX2FnZW50LmgKKysrIGIvc3BpY2UvdmRfYWdlbnQuaApA
QCAtNjIsMTUgKzYyLDM0IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJfUEFDS0VEIFZEQWdl
bnRNZXNzYWdlIHsKICNkZWZpbmUgVkRfQUdFTlRfQ0xJUEJPQVJEX01BWF9TSVpFX0VOViAiU1BJ
Q0VfQ0xJUEJPQVJEX01BWF9TSVpFIgogI2VuZGlmCiAKKworLyoKKyAqIE1lc3NhZ2VzIGFuZCB0
eXBlcyBmb3IgZ3Vlc3QgYWdlbnQuCisgKiBUaGVzZSBtZXNzYWdlcyBhcmUgc2VudCB0aHJvdWdo
IHRoZSB2aXJ0aW8gcG9ydCAiY29tLnJlZGhhdC5zcGljZS4wIgorICogKGFnZW50IDwtPiBzZXJ2
ZXIpIG9yIGVtYmVkZGVkIGluICJhZ2VudF9kYXRhIiBTUElDRSBwcm90b2NvbCBtZXNzYWdlIGlu
CisgKiB0aGUgIk1haW5DaGFubmVsIiAoc2VydmVyIDwtPiBjbGllbnQpCisgKi8KIGVudW0gewor
ICAgIC8qIHNlcnZlciAtPiBhZ2VudCAqLwogICAgIFZEX0FHRU5UX01PVVNFX1NUQVRFID0gMSwK
KyAgICAvKiBjbGllbnQgLT4gYWdlbnR8c2VydmVyLgorICAgICAqIEFja25vd2xlZGdlZCBieSB0
aGUgYWdlbnQgdXNpbmcgVkRfQUdFTlRfUkVQTFkuCisgICAgICogU2VlIFZEQWdlbnRNb25pdG9y
c0NvbmZpZyBzdHJ1Y3R1cmUuCisgICAgICovCiAgICAgVkRfQUdFTlRfTU9OSVRPUlNfQ09ORklH
LAorICAgIC8qIGFnZW50IC0+IGNsaWVudC4KKyAgICAgKiBTZWUgVkRBZ2VudFJlcGx5IHN0cnVj
dHVyZS4KKyAgICAgKi8KICAgICBWRF9BR0VOVF9SRVBMWSwKICAgICAvKiBTZXQgY2xpcGJvYXJk
IGRhdGEgKGJvdGggZGlyZWN0aW9ucykuCiAgICAgICogTWVzc2FnZSBjb21lcyB3aXRoIHR5cGUg
YW5kIGRhdGEuCiAgICAgICogU2VlIFZEQWdlbnRDbGlwYm9hcmQgc3RydWN0dXJlLgogICAgICAq
LwogICAgIFZEX0FHRU5UX0NMSVBCT0FSRCwKKyAgICAvKiBjbGllbnQgLT4gYWdlbnQuCisgICAg
ICogQWNrbm93bGVkZ2VkIGJ5IFdpbmRvd3MgYWdlbnQgdXNpbmcgVkRfQUdFTlRfUkVQTFkuCisg
ICAgICogU2VlIFZEQWdlbnREaXNwbGF5Q29uZmlnIHN0cnVjdHVyZS4KKyAgICAqLwogICAgIFZE
X0FHRU5UX0RJU1BMQVlfQ09ORklHLAogICAgIFZEX0FHRU5UX0FOTk9VTkNFX0NBUEFCSUxJVElF
UywKICAgICAvKiBBc2tzIHRvIGxpc3RlbiBmb3IgY2xpcGJvYXJkIGNoYW5nZXMgKGJvdGggZGly
ZWN0aW9ucykuCkBAIC0yNTQsNyArMjczLDcgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9Q
QUNLRUQgVkRBZ2VudERldmljZURpc3BsYXlJbmZvIHsKICAgICB1aW50MzJfdCBtb25pdG9yX2lk
OwogICAgIHVpbnQzMl90IGRldmljZV9kaXNwbGF5X2lkOwogICAgIHVpbnQzMl90IGRldmljZV9h
ZGRyZXNzX2xlbjsKLSAgICB1aW50OF90IGRldmljZV9hZGRyZXNzWzBdOyAgLy8gYSB6ZXJvLXRl
cm1pbmF0ZWQgc3RyaW5nCisgICAgdWludDhfdCBkZXZpY2VfYWRkcmVzc1swXTsgIC8qIGEgemVy
by10ZXJtaW5hdGVkIHN0cmluZyAqLwogfSBWREFnZW50RGV2aWNlRGlzcGxheUluZm87CiAKIApA
QCAtMjcwLDYgKzI4OSw5IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJfUEFDS0VEIFZEQWdl
bnRHcmFwaGljc0RldmljZUluZm8gewogICAgIFZEQWdlbnREZXZpY2VEaXNwbGF5SW5mbyBkaXNw
bGF5X2luZm9bMF07CiB9IFZEQWdlbnRHcmFwaGljc0RldmljZUluZm87CiAKKworLyogQ2FwYWJp
bGl0aWVzIGRlZmluaXRpb25zCisgKi8KIGVudW0gewogICAgIFZEX0FHRU5UX0NBUF9NT1VTRV9T
VEFURSA9IDAsCiAgICAgVkRfQUdFTlRfQ0FQX01PTklUT1JTX0NPTkZJRywKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
