Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB65A9BF8
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 09:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AF889F71;
	Thu,  5 Sep 2019 07:37:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B795189F71
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:37:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3987D87521F
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:37:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FE715D9E2
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:37:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 231B118089C8;
 Thu,  5 Sep 2019 07:37:17 +0000 (UTC)
Date: Thu, 5 Sep 2019 03:37:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1197033607.10753648.1567669036076.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190904122041.23408-1-victortoso@redhat.com>
References: <20190904122041.23408-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.29]
Thread-Topic: main: return void on migrate_channel_connect()
Thread-Index: JWnvTvebEwJ12adKpgDOLZb9giU19A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 05 Sep 2019 07:37:17 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 1/3] main: return void on
 migrate_channel_connect()
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVGhlIG1pZ3Jh
dGlvbiBwcm9jZXNzIHdvdWxkIGhhcHBlbiBpbiBpZGxlLCBzbyB0aGUgcHJvY2VzcyBvbmx5IGZh
aWxzCj4gYXQgYSBsYXRlciB0aW1lLiBObyBjYWxsIHRvIG1pZ3JhdGVfY2hhbm5lbF9jb25uZWN0
KCkgaXMgYWN0dWFsbHkKPiBjaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+CgpTdXJlLApBY2tlZC1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpUaGUgcXVlc3Rpb24gaG93
ZXZlciBpcyB3aG8gaXMgb3duaW5nIHRoZSBwb2ludGVyPwpXaHkgd2FzIHJldHVybmVkIHdpdGhv
dXQgb3duZXJzaGlwPwoKPiAtLS0KPiAgc3JjL2NoYW5uZWwtbWFpbi5jIHwgNSArKy0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9zcmMvY2hhbm5lbC1tYWluLmMgYi9zcmMvY2hhbm5lbC1tYWluLmMKPiBpbmRleCBh
ZmRjMWNlLi5hMWU1NDk4IDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLW1haW4uYwo+ICsrKyBi
L3NyYy9jaGFubmVsLW1haW4uYwo+IEBAIC0yMTY4LDE1ICsyMTY4LDE0IEBAIHN0YXRpYyB2b2lk
IG1pZ3JhdGVfY2hhbm5lbF9uZXdfY2IoU3BpY2VTZXNzaW9uICpzLAo+IFNwaWNlQ2hhbm5lbCAq
Y2hhbm5lbCwgZ3BvaW4KPiAgICAgICAgICAgICAgICAgICAgICAgR19DQUxMQkFDSyhtaWdyYXRl
X2NoYW5uZWxfZXZlbnRfY2IpLCBkYXRhKTsKPiAgfQo+ICAKPiAtc3RhdGljIFNwaWNlQ2hhbm5l
bCogbWlncmF0ZV9jaGFubmVsX2Nvbm5lY3Qoc3BpY2VfbWlncmF0ZSAqbWlnLCBpbnQgdHlwZSwK
PiBpbnQgaWQpCj4gK3N0YXRpYyB2b2lkCj4gK21pZ3JhdGVfY2hhbm5lbF9jb25uZWN0KHNwaWNl
X21pZ3JhdGUgKm1pZywgaW50IHR5cGUsIGludCBpZCkKPiAgewo+ICAgICAgU1BJQ0VfREVCVUco
Im1pZ3JhdGVfY2hhbm5lbF9jb25uZWN0ICVkOiVkIiwgdHlwZSwgaWQpOwo+ICAKPiAgICAgIFNw
aWNlQ2hhbm5lbCAqbmV3YyA9IHNwaWNlX2NoYW5uZWxfbmV3KG1pZy0+c2Vzc2lvbiwgdHlwZSwg
aWQpOwo+ICAgICAgc3BpY2VfY2hhbm5lbF9jb25uZWN0KG5ld2MpOwo+ICAgICAgbWlnLT5uY2hh
bm5lbHMrKzsKPiAtCj4gLSAgICByZXR1cm4gbmV3YzsKPiAgfQo+ICAKPiAgLyogY29yb3V0aW5l
IGNvbnRleHQgKi8KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
