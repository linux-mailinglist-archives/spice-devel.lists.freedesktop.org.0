Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E250BDBCA
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6F96EB8D;
	Wed, 25 Sep 2019 10:03:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5D16EB87
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6EE5F309BF12
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:06 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED65A5D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:05 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:58 +0200
Message-Id: <20190925100300.30019-7-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 25 Sep 2019 10:03:06 +0000 (UTC)
Subject: [Spice-devel] [spice v2 6/8] tests: migrate: bool instead of on/off
 option in cmd line
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2ltcGxlci4gTWFrZSB0aGUg
ZGVmYXVsdCB0byBiZSBGYWxzZSBhcyB3ZWxsIGFzCiAxKSBObyBhcmdzIHNob3VsZCBydW4gYXMg
c2ltcGxlIGFzIHBvc3NpYmxlCiAyKSBUcnVlIGlzIGN1cnJlbnRseSBicm9rZW4KClNpZ25lZC1v
ZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwg
NSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQppbmRleCBm
YmJjNTA1Yy4uZDBlZGEwOTkgMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUucHkKKysrIGIvdGVz
dHMvbWlncmF0ZS5weQpAQCAtNTgsNyArNTgsOCBAQCBkZWYgZ2V0X2FyZ3MoKToKICAgICBwYXJz
ZXIuYWRkX2FyZ3VtZW50KCctLWxvZ19maWxlbmFtZScsIGRlc3Q9J2xvZ19maWxlbmFtZScsIGRl
ZmF1bHQ9J21pZ3JhdGUubG9nJykKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWltYWdlJywg
ZGVzdD0naW1hZ2UnLCBkZWZhdWx0PScnKQogICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tY2xp
ZW50JywgZGVzdD0nY2xpZW50JywgZGVmYXVsdD0nc3BpY3knLCBjaG9pY2VzPVsnc3BpY3knLCAn
cmVtb3RlLXZpZXdlciddKQotICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGNo
b2ljZXM9WydvbicsICdvZmYnXSwgZGVmYXVsdD0nb24nKQorICAgIHBhcnNlci5hZGRfYXJndW1l
bnQoJy0tdmRhZ2VudCcsIGRlc3Q9InZkYWdlbnQiLCBhY3Rpb249J3N0b3JlX3RydWUnLCBkZWZh
dWx0PUZhbHNlLAorICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iQXBwZW5kIG9wdGlvbnMg
Zm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQogICAgIGFyZ3MgPSBwYXJzZXIucGFyc2VfYXJn
cyhzeXMuYXJndlsxOl0pCiAgICAgaWYgb3MucGF0aC5leGlzdHMoYXJncy5xZW11KToKICAgICAg
ICAgYXJncy5xZW11X2V4ZWMgPSBhcmdzLnFlbXUKQEAgLTIwOSw3ICsyMTAsNyBAQCBkZWYgbWFp
bigpOgogICAgIG1pZ3JhdG9yID0gTWlncmF0b3IoY2xpZW50PWFyZ3MuY2xpZW50LCBxZW11X2V4
ZWM9YXJncy5xZW11X2V4ZWMsCiAgICAgICAgIGltYWdlPWFyZ3MuaW1hZ2UsIGxvZz1sb2csIG1v
bml0b3JfZmlsZXM9W2FyZ3MucW1wMSwgYXJncy5xbXAyXSwKICAgICAgICAgbWlncmF0aW9uX3Bv
cnQ9YXJncy5taWdyYXRlX3BvcnQsIHNwaWNlX3BvcnRzPVthcmdzLnNwaWNlX3BvcnQxLAotICAg
ICAgICBhcmdzLnNwaWNlX3BvcnQyXSwgdmRhZ2VudD0oYXJncy52ZGFnZW50PT0nb24nKSkKKyAg
ICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIHZkYWdlbnQ9YXJncy52ZGFnZW50KQogICAgIGF0ZXhp
dC5yZWdpc3RlcihjbGVhbnVwLCBtaWdyYXRvcikKICAgICB3aGlsZSBUcnVlOgogICAgICAgICBt
aWdyYXRvci5pdGVyYXRlKCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
