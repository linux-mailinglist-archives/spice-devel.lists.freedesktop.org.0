Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F177671F
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 15:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45F6ED4C;
	Fri, 26 Jul 2019 13:17:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4286ED4C
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 13:17:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 543EC308429D;
 Fri, 26 Jul 2019 13:17:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C00608D0;
 Fri, 26 Jul 2019 13:17:05 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3BF7A264C8;
 Fri, 26 Jul 2019 13:17:05 +0000 (UTC)
Date: Fri, 26 Jul 2019 09:17:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1289830693.3135464.1564147025076.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190724105351.13753-10-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-10-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.8]
Thread-Topic: usb-redir: enable redirection of emulated CD drive
Thread-Index: dt6Fg1voSVnu+eZI2kRCgfwrQH4qaQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 26 Jul 2019 13:17:05 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 9/9] usb-redir: enable redirection of
 emulated CD drive
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBSZWdpc3RlciBjb25zdHJ1Y3RvciBmb3IgZW11bGF0ZWQgQ0QgZGV2aWNlLiBOb3cgY3Jl
YXRpb24KPiBvZiBDRCBkZXZpY2VzIGF0IHN0YXJ0dXAgaXMgcG9zc2libGUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+
IC0tLQo+ICBzcmMvbWVzb24uYnVpbGQgICB8IDYgKysrKysrCj4gIHNyYy91c2ItYmFja2VuZC5j
IHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAo+IGluZGV4IDQ5ZmVjNTIuLjk0
NGIwODMgMTAwNjQ0Cj4gLS0tIGEvc3JjL21lc29uLmJ1aWxkCj4gKysrIGIvc3JjL21lc29uLmJ1
aWxkCj4gQEAgLTEyNCw2ICsxMjQsMTIgQEAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyA9IFsK
PiAgICAndXNiLWJhY2tlbmQuYycsCj4gICAgJ3VzYi1lbXVsYXRpb24uaCcsCj4gICAgJ3VzYi1i
YWNrZW5kLmgnLAo+ICsgICd1c2ItZGV2aWNlLWNkLmMnLAo+ICsgICdjZC1zY3NpLmMnLAo+ICsg
ICdjZC1zY3NpLmgnLAo+ICsgICdjZC1zY3NpLWRldi1wYXJhbXMuaCcsCj4gKyAgJ2NkLXVzYi1i
dWxrLW1zZC5jJywKPiArICAnY2QtdXNiLWJ1bGstbXNkLmgnLAo+ICAgICd2bWNzdHJlYW0uYycs
Cj4gICAgJ3ZtY3N0cmVhbS5oJywKPiAgXQoKSSB3b3VsZCBzcGxpdCB0aGlzIHBhcnQgb2YgdGhl
IHBhdGNoIGFuZCBhZGQgdGhlIGZpbGVzIHRvIHRoZQpidWlsZCBhcyBzb29uIGFzIHRoZXkgYXJl
IGFkZGVkIHNvIHRvIGNoZWNrIHRoYXQgYXQgbGVhc3QgdGhleQpjb21waWxlciwgZXZlbiBpZiB0
aGV5IGFyZSBub3QgdXNlZC4KCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3Jj
L3VzYi1iYWNrZW5kLmMKPiBpbmRleCAwMjM2OWQyLi43NjBkYzE2IDEwMDY0NAo+IC0tLSBhL3Ny
Yy91c2ItYmFja2VuZC5jCj4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiBAQCAtNDMyLDYgKzQz
Miw3IEBAIFNwaWNlVXNiQmFja2VuZCAqc3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvciAqKmVy
cm9yKQo+ICAjZW5kaWYKPiAgI2VuZGlmCj4gICAgICAgICAgYmUtPm93bl9kZXZpY2VzX21hc2sg
PSAzOyAvKiBleGNsdWRlIGFkZHJlc3NlcyAwIGFuZCAxICovCj4gKyAgICAgICAgc3BpY2VfdXNi
X2RldmljZV9yZWdpc3Rlcl9jZChiZSk7Cj4gICAgICB9Cj4gICAgICBTUElDRV9ERUJVRygiJXMg
PDwiLCBfX0ZVTkNUSU9OX18pOwo+ICAgICAgcmV0dXJuIGJlOwoKVGhpcyBpcyBhZGRpbmcgYSBj
aXJjdWxhciBkZXBlbmRlbmN5Lgp1c2ItYmFja2VuZCB3aWxsIGRlcGVuZCBvbiB1c2ItZGV2aWNl
LWNkIHdoaWNoIGRlcGVuZHMgb24gdXNiLWJhY2tlbmQuCgpGcmVkaWFubwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
