Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E39CD26A2
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FDC6E038;
	Thu, 10 Oct 2019 09:48:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08F36E038
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:48:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4886E307D847
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:48:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EB0B19C4F
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:48:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36A3518089DC;
 Thu, 10 Oct 2019 09:48:39 +0000 (UTC)
Date: Thu, 10 Oct 2019 05:48:39 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1315851643.6241767.1570700919020.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191010093145.20097-1-victortoso@redhat.com>
References: <20191010093145.20097-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.9]
Thread-Topic: main: abort previous migration on switch-host message
Thread-Index: UfcKQAuM6/DHQVwX0oJURYbFetr+xQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 10 Oct 2019 09:48:39 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk] main: abort previous migration on
 switch-host message
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gSW4gdGhlIGhv
c3QsIGl0IGlzIHBvc3NpYmxlIHRoYXQgdGhlIG1pZ3JhdGlvbiBnb2VzIGZhc3RlciB0aGFuCj4g
Y2xpZW50IHNpZGUgd291bGQgZXhwZWN0LiBJbiBjYXNlIHdlIHJlY2VpdmUgYSBtaWdyYXRlLWJl
Z2luIG1lc3NhZ2UKPiBmb2xsb3dlZCBieSBzd2l0Y2gtaG9zdCBtZXNzYWdlLCB3ZSBzaG91bGQg
YmUgc3VyZSB0byBhYm9ydCBwcmV2aW91cwoKQXJlbid0IHRoZXNlIG1lc3NhZ2UgZXhjbHVzaXZl
cz8gSXMgdGhlcmUgYSBidWcgaW4gdGhlIHNlcnZlcj8KCj4gbWlncmF0aW9uIHRvIGF2b2lkIGtl
ZXBpbmcgc29tZSB1bnVzZWQgb2JqZWN0cyBpbiBtZW1vcnkgcGx1cwo+IGNyaXRpY2FsIG1lc3Nh
Z2VzIGluIHN1YnNlcXVlbnQgbWlncmF0aW9ucyBhcyBiZWxvdzoKPiAKPiAgPiBHU3BpY2UtQ1JJ
VElDQUwgKio6IHNwaWNlX3Nlc3Npb25fc2V0X21pZ3JhdGlvbl9zZXNzaW9uOgo+ICA+IGFzc2Vy
dGlvbiAnc2Vzc2lvbi0+cHJpdi0+bWlncmF0aW9uID09IE5VTEwnIGZhaWxlZAo+IAo+IEZvdW5k
IGJ5IHRlc3Rpbmcgd2l0aCBzcGljZS90ZXN0cy9taWdyYXRvbi5weSB3aXRob3V0IFFDT1cgaW1h
Z2UuCj4gCgpEbyB5b3UgbWVhbiB0ZXN0cy9taWdyYXRlLnB5ID8gSSBkb24ndCBoYXZlIHNwaWNl
L3Rlc3RzL21pZ3JhdG9uLnB5Cihub3QgZXZlbiBzcGljZS90ZXN0cy9taWdyYXRpb24ucHkpCgo+
IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0t
Cj4gIHNyYy9jaGFubmVsLW1haW4uYyB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1tYWluLmMgYi9zcmMvY2hh
bm5lbC1tYWluLmMKPiBpbmRleCA0MzA1ZGNkLi40YWZhYTNmIDEwMDY0NAo+IC0tLSBhL3NyYy9j
aGFubmVsLW1haW4uYwo+ICsrKyBiL3NyYy9jaGFubmVsLW1haW4uYwo+IEBAIC0yNTA2LDYgKzI1
MDYsMTEgQEAgc3RhdGljIHZvaWQKPiBtYWluX2hhbmRsZV9taWdyYXRlX3N3aXRjaF9ob3N0KFNw
aWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaQo+ICAgICAgfQo+ICAKPiAgICAgIHNl
c3Npb24gPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKGNoYW5uZWwpOwo+ICsgICAgLyogSXQg
aXMgcG9zc2libGUgdGhhdCB3ZSB3ZXJlIG1pZ3JhdGluZyBiZWZvcmUgcmVjZWl2aW5nIHRoZQo+
IHN3aXRjaC1ob3N0Cj4gKyAgICAgKiBtZXNzYWdlIHdpdGhvdXQgcmVjZWl2aW5nIGEgbWlncmF0
ZS1jYW5jZWwgbWVzc2FnZS4gU2ltcGx5IGNhbmNlbAo+ICsgICAgICogcHJldmlvdXMgbWlncmF0
aW9uIGJlZm9yZSBzd2l0Y2hpbmcgaG9zdCAqLwo+ICsgICAgc3BpY2Vfc2Vzc2lvbl9hYm9ydF9t
aWdyYXRpb24oc2Vzc2lvbik7Cj4gKwo+ICAgICAgc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0aW9u
X3N0YXRlKHNlc3Npb24sCj4gICAgICBTUElDRV9TRVNTSU9OX01JR1JBVElPTl9TV0lUQ0hJTkcp
Owo+ICAgICAgZ19vYmplY3Rfc2V0KHNlc3Npb24sCj4gICAgICAgICAgICAgICAgICAgImhvc3Qi
LCBob3N0LAoKUGF0Y2ggc2VlbXMgZmluZS4KSXMgdGhlIG1pZ3JhdGlvbiBzZWFtbGVzcyBvciBu
b3Q/CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
