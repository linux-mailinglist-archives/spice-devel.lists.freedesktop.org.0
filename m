Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9949DA9C5A
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 09:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A778918D;
	Thu,  5 Sep 2019 07:55:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685FF8918D
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:55:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14F5910C6B
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:55:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E17D60606
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:55:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0455118089C8;
 Thu,  5 Sep 2019 07:55:19 +0000 (UTC)
Date: Thu, 5 Sep 2019 03:55:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <730955844.10755447.1567670118988.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190904122041.23408-3-victortoso@redhat.com>
References: <20190904122041.23408-1-victortoso@redhat.com>
 <20190904122041.23408-3-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.24]
Thread-Topic: main: code style on main_migrate_connect()
Thread-Index: QA4PVLuskw1aM0fcFCCXSrcDy4jt5g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 05 Sep 2019 07:55:19 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 3/3] main: code style on
 main_migrate_connect()
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gMSkgTWFrZSBv
bmUgYXJndW1lbnQgcGVyIGxpbmUsIGluc3RlYWQgb2YgMSwgMiwgMQo+IDIpIFVzZSBzZXNzaW9u
IHZhcmlhYmxlIHRoYXQgYWxyZWFkeSBleGlzdHMKPiAzKSBEb24ndCBjYXN0IGFnYWluIHRvIFNw
aWNlQ2hhbm5lbAo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJl
ZGhhdC5jb20+CgpBY2tlZC4KCj4gLS0tCj4gIHNyYy9jaGFubmVsLW1haW4uYyB8IDggKysrKy0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtbWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCj4g
aW5kZXggM2QxYjFiNS4uMzM0YmU3ZCAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1tYWluLmMK
PiArKysgYi9zcmMvY2hhbm5lbC1tYWluLmMKPiBAQCAtMjMzNyw3ICsyMzM3LDggQEAgc3RhdGlj
IGdib29sZWFuIG1pZ3JhdGVfY29ubmVjdChncG9pbnRlciBkYXRhKQo+ICAKPiAgLyogY29yb3V0
aW5lIGNvbnRleHQgKi8KPiAgc3RhdGljIHZvaWQgbWFpbl9taWdyYXRlX2Nvbm5lY3QoU3BpY2VD
aGFubmVsICpjaGFubmVsLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGlj
ZU1pZ3JhdGlvbkRzdEluZm8gKmRzdF9pbmZvLCBib29sCj4gZG9fc2VhbWxlc3MsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlTWlncmF0aW9uRHN0SW5mbyAqZHN0X2lu
Zm8sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgZG9fc2VhbWxlc3Ms
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHNyY19taWdfdmVy
c2lvbikKPiAgewo+ICAgICAgU3BpY2VNYWluQ2hhbm5lbFByaXZhdGUgKm1haW5fcHJpdiA9IFNQ
SUNFX01BSU5fQ0hBTk5FTChjaGFubmVsKS0+cHJpdjsKPiBAQCAtMjM3OSwxMyArMjM4MCwxMiBA
QCBzdGF0aWMgdm9pZCBtYWluX21pZ3JhdGVfY29ubmVjdChTcGljZUNoYW5uZWwKPiAqY2hhbm5l
bCwKPiAgICAgICAgICAgICAgU1BJQ0VfREVCVUcoIm1pZ3JhdGlvbiAoc2VtaS1zZWFtbGVzcyk6
IGNvbm5lY3Rpb25zIGFsbCBvayIpOwo+ICAgICAgICAgICAgICByZXBseV90eXBlID0gU1BJQ0Vf
TVNHQ19NQUlOX01JR1JBVEVfQ09OTkVDVEVEOwo+ICAgICAgICAgIH0KPiAtICAgICAgICBzcGlj
ZV9zZXNzaW9uX3N0YXJ0X21pZ3JhdGluZyhzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKGNoYW5u
ZWwpLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1pZy5kb19zZWFt
bGVzcyk7Cj4gKyAgICAgICAgc3BpY2Vfc2Vzc2lvbl9zdGFydF9taWdyYXRpbmcoc2Vzc2lvbiwg
bWlnLmRvX3NlYW1sZXNzKTsKPiAgICAgIH0KPiAgCj4gIGVuZDoKPiAgICAgIENIQU5ORUxfREVC
VUcoY2hhbm5lbCwgIm1pZ3JhdGUgY29ubmVjdCByZXBseSAlZCIsIHJlcGx5X3R5cGUpOwo+IC0g
ICAgb3V0ID0gc3BpY2VfbXNnX291dF9uZXcoU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSwgcmVwbHlf
dHlwZSk7Cj4gKyAgICBvdXQgPSBzcGljZV9tc2dfb3V0X25ldyhjaGFubmVsLCByZXBseV90eXBl
KTsKPiAgICAgIHNwaWNlX21zZ19vdXRfc2VuZChvdXQpOwo+ICB9Cj4gIAoKRnJlZGlhbm8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
