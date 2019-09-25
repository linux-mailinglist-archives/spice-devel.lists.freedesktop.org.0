Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD5FBDB02
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08A389DAB;
	Wed, 25 Sep 2019 09:30:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D9189DAB
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:30:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2A950307D96F
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:30:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EF2110013D9
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:30:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1588F4EE50;
 Wed, 25 Sep 2019 09:30:49 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:30:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <51600936.3205354.1569403849043.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-5-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-5-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: fix relative qmp.py path
Thread-Index: dEYp2+led4a9MXEpg9qkqxj+U0eIng==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 25 Sep 2019 09:30:49 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 4/8] tests: migrate: fix relative qmp.py
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Cgo+IAo+IEZyb206IFZpY3RvciBUb3NvIDxtZUB2aWN0b3J0b3NvLmNvbT4KPiAKPiBNb3ZlZCBp
biBxZW11LCBzZWU6Cj4gCj4gIHwgY29tbWl0IDhmOGZkOWVkYmE0YmQ2NzY4ZGEyYzhlMmJlYTQ5
YWQ1YzE2Y2VkMWEKPiAgfCBBdXRob3I6IENsZWJlciBSb3NhIDxjcm9zYUByZWRoYXQuY29tPgo+
ICB8IERhdGU6ICAgV2VkIEZlYiA2IDExOjI5OjAxIDIwMTkgLTA1MDAKPiAgfAo+ICB8ICAgICBJ
bnRyb2R1Y2UgYSBQeXRob24gbW9kdWxlIHN0cnVjdHVyZQo+ICB8Cj4gIHwgICAgIFRoaXMgaXMg
YSBzaW1wbGUgbW92ZSBvZiBQeXRob24gY29kZSB0aGF0IHdyYXBzIGNvbW1vbiBRRU1VCj4gIHwg
ICAgIGZ1bmN0aW9uYWxpdHksIGFuZCBhcmUgdXNlZCBieSBhIG51bWJlciBvZiBkaWZmZXJlbnQg
dGVzdHMgYW5kCj4gIHwgICAgIHNjcmlwdHMuCj4gIHwKPiAgfCAgICAgQnkgdHJlYXRpbmcgdGhh
dCBjb2RlIGFzIGEgcmVhbCBQeXRob24gbW9kdWxlLCB3ZSBjYW4gbW9yZSBlYXNpbHk6Cj4gIHwg
ICAgICAqIHJldXNlIGNvZGUKPiAgfCAgICAgICogaGF2ZSBhIHByb3BlciBwbGFjZSBmb3IgdGhl
IG1vZHVsZSdzIG93biB1bml0dGVzdHMKPiAgfCAgICAgICogYXBwbHkgYSBtb3JlIGNvbnNpc3Rl
bnQgc3R5bGUKPiAgfCAgICAgICogZ2VuZXJhdGUgZG9jdW1lbnRhdGlvbgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHRlc3Rz
L21pZ3JhdGUucHkgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWln
cmF0ZS5weQo+IGluZGV4IGY4OTNiMmFjLi41Y2JjODIxOCAxMDA3NTUKPiAtLS0gYS90ZXN0cy9t
aWdyYXRlLnB5Cj4gKysrIGIvdGVzdHMvbWlncmF0ZS5weQo+IEBAIC0zMiw3ICszMiw3IEBAIHRy
eToKPiAgICAgIGltcG9ydCBxbXAKPiAgZXhjZXB0Ogo+ICAgICAgaW1wb3J0IHN5cwo+IC0gICAg
c3lzLnBhdGguYXBwZW5kKCIuLi8uLi9xZW11L1FNUCIpCj4gKyAgICBzeXMucGF0aC5hcHBlbmQo
Ii4uLy4uL3FlbXUvcHl0aG9uL3FlbXUvIikKPiAgICAgIHRyeToKPiAgICAgICAgICBpbXBvcnQg
cW1wCj4gICAgICBleGNlcHQ6CgpPbiB0aGUgY29tbWVudCB0aGVyZSdzCgoKRGVwZW5kZW5jaWVz
OgplaXRoZXIgcW1wIGluIHB5dGhvbiBwYXRoIG9yIHJ1bm5pbmcgd2l0aCBzcGljZSBhbmQgcWVt
dSBzaWRlIGJ5IHNpZGU6CnFlbXUvUU1QL3FtcC5weQpzcGljZS90ZXN0cy9taWdyYXRlLnB5CgoK
SXQgc2VlbXMgYSBnb29kIGlkZWEgdG8gdXBkYXRlIGl0IHRvby4KCkZyZWRpYW5vCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
