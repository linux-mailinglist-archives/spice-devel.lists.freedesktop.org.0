Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6074C9BD6
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 12:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA776E10B;
	Thu,  3 Oct 2019 10:14:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34E96E104
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D4D93C93D
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:24 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA45F5D9DC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:23 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  3 Oct 2019 12:14:20 +0200
Message-Id: <20191003101423.732-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 03 Oct 2019 10:14:24 +0000 (UTC)
Subject: [Spice-devel] [spice/tests/migrate v1 1/4] tests: migrate: default
 to not launch client
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhpcyBzdXBwb3J0cyBkb2lu
ZyBtaWdyYXRpb24gd2l0aG91dCBhbnkgY2xpZW50IHRvIGJlIGNvbm5lY3RlZC4KSWYgdGVzdGVy
IHdhbnRzIGNsaWVudCwgaXQgbmVlZHMgdG8gcGFzcyBhbiBvcHRpb24gdG8gLS1jbGllbnQuCgpD
aGFuZ2Ugb2YgZGVmYXVsdCBzdGlsbCBpcyB0byBrZWVwIHRoZSB0ZXN0IGFzIHNpbXBsZSBhcyBw
b3NzaWJsZQp3aGVuIG5vIGFyZ3VtZW50cyBhcmUgZ2l2ZW4uCgpTaWduZWQtb2ZmLWJ5OiBWaWN0
b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL21pZ3JhdGUucHkgfCAx
NiArKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0
ZS5weQppbmRleCBiMTFiZWZkZC4uNWVkOWViYTQgMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUu
cHkKKysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtNTcsNyArNTcsOCBAQCBkZWYgZ2V0X2FyZ3Mo
KToKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXFlbXUnLCBkZXN0PSdxZW11JywgZGVmYXVs
dD0nLi4vLi4vcWVtdS94ODZfNjQtc29mdG1tdS9xZW11LXN5c3RlbS14ODZfNjQnKQogICAgIHBh
cnNlci5hZGRfYXJndW1lbnQoJy0tbG9nX2ZpbGVuYW1lJywgZGVzdD0nbG9nX2ZpbGVuYW1lJywg
ZGVmYXVsdD0nbWlncmF0ZS5sb2cnKQogICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0taW1hZ2Un
LCBkZXN0PSdpbWFnZScsIGRlZmF1bHQ9JycpCi0gICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1j
bGllbnQnLCBkZXN0PSdjbGllbnQnLCBkZWZhdWx0PSdzcGljeScsIGNob2ljZXM9WydzcGljeScs
ICdyZW1vdGUtdmlld2VyJ10pCisgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1jbGllbnQnLCBk
ZXN0PSdjbGllbnQnLCBkZWZhdWx0PSdub25lJywgY2hvaWNlcz1bJ3NwaWN5JywgJ3JlbW90ZS12
aWV3ZXInLCAnbm9uZSddLAorICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iQXV0b21hdGlj
YWxseSBsdW5jaCBvbmUgb2Ygc3VwcG9ydGVkIGNsaWVudHMgb3Igbm9uZSAoZGVmYXVsdCkiKQog
ICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGRlc3Q9InZkYWdlbnQiLCBhY3Rp
b249J3N0b3JlX3RydWUnLCBkZWZhdWx0PUZhbHNlLAogICAgICAgICAgICAgICAgICAgICAgICAg
aGVscD0iQXBwZW5kIG9wdGlvbnMgZm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQogICAgIHBh
cnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC11c2VyLWlucHV0JywgZGVzdD0id2FpdF91c2VyX2lu
cHV0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKQEAgLTE0MCw3ICsxNDEs
NyBAQCBjbGFzcyBNaWdyYXRvcihvYmplY3QpOgogCiAgICAgZGVmIF9faW5pdF9fKHNlbGYsIGxv
ZywgY2xpZW50LCBxZW11X2V4ZWMsIGltYWdlLCBtb25pdG9yX2ZpbGVzLAogICAgICAgICAgICAg
ICAgICBzcGljZV9wb3J0cywgbWlncmF0aW9uX3BvcnQsIHZkYWdlbnQpOgotICAgICAgICBzZWxm
LmNsaWVudCA9IGNsaWVudAorICAgICAgICBzZWxmLmNsaWVudCA9IGNsaWVudCBpZiBjbGllbnQg
IT0gIm5vbmUiIGVsc2UgTm9uZQogICAgICAgICBzZWxmLmxvZyA9IGxvZwogICAgICAgICBzZWxm
LnFlbXVfZXhlYyA9IHFlbXVfZXhlYwogICAgICAgICBzZWxmLmltYWdlID0gaW1hZ2UKQEAgLTE3
Nyw4ICsxNzgsMTAgQEAgY2xhc3MgTWlncmF0b3Iob2JqZWN0KToKICAgICAgICAgd2FpdF9hY3Rp
dmUoc2VsZi5hY3RpdmUucW1wLCBUcnVlKQogICAgICAgICB3YWl0X2FjdGl2ZShzZWxmLnRhcmdl
dC5xbXAsIEZhbHNlKQogICAgICAgICBpZiBub3Qgc2VsZi5jb25uZWN0ZWRfY2xpZW50OgotICAg
ICAgICAgICAgc2VsZi5jb25uZWN0ZWRfY2xpZW50ID0gc3RhcnRfY2xpZW50KGNsaWVudD1zZWxm
LmNsaWVudCwgc3BpY2VfcG9ydD1zZWxmLnNwaWNlX3BvcnRzWzBdKQotICAgICAgICAgICAgd2Fp
dF9mb3JfZXZlbnQoc2VsZi5hY3RpdmUucW1wLCAnU1BJQ0VfSU5JVElBTElaRUQnKQorICAgICAg
ICAgICAgaWYgc2VsZi5jbGllbnQ6CisgICAgICAgICAgICAgICAgc2VsZi5jb25uZWN0ZWRfY2xp
ZW50ID0gc3RhcnRfY2xpZW50KGNsaWVudD1zZWxmLmNsaWVudCwgc3BpY2VfcG9ydD1zZWxmLnNw
aWNlX3BvcnRzWzBdKQorICAgICAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYuYWN0aXZl
LnFtcCwgJ1NQSUNFX0lOSVRJQUxJWkVEJykKKwogICAgICAgICAgICAgaWYgd2FpdF9mb3JfdXNl
cl9pbnB1dDoKICAgICAgICAgICAgICAgICBwcmludCAid2FpdGluZyBmb3IgRW50ZXIgdG8gc3Rh
cnQgbWlncmF0aW9ucyIKICAgICAgICAgICAgICAgICByYXdfaW5wdXQoKQpAQCAtMTg4LDcgKzE5
MSwxMCBAQCBjbGFzcyBNaWdyYXRvcihvYmplY3QpOgogICAgICAgICBzZWxmLmFjdGl2ZS5xbXAu
Y21kKCdtaWdyYXRlJywgeyd1cmknOiAndGNwOmxvY2FsaG9zdDolcycgJSBzZWxmLm1pZ3JhdGlv
bl9wb3J0fSkKICAgICAgICAgd2FpdF9hY3RpdmUoc2VsZi5hY3RpdmUucW1wLCBGYWxzZSkKICAg
ICAgICAgd2FpdF9hY3RpdmUoc2VsZi50YXJnZXQucW1wLCBUcnVlKQotICAgICAgICB3YWl0X2Zv
cl9ldmVudChzZWxmLnRhcmdldC5xbXAsICdTUElDRV9DT05ORUNURUQnKQorCisgICAgICAgIGlm
IHNlbGYuY29ubmVjdGVkX2NsaWVudDoKKyAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYu
dGFyZ2V0LnFtcCwgJ1NQSUNFX0NPTk5FQ1RFRCcpCisKICAgICAgICAgZGVhZCA9IHNlbGYuYWN0
aXZlCiAgICAgICAgIGRlYWQucW1wLmNtZCgicXVpdCIpCiAgICAgICAgIGRlYWQucW1wLmNsb3Nl
KCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
