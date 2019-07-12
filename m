Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC65C672BD
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 17:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0231C6E27A;
	Fri, 12 Jul 2019 15:48:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC806E27A
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 15:48:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 487A8300194A;
 Fri, 12 Jul 2019 15:48:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E8FF19C58;
 Fri, 12 Jul 2019 15:48:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3477EE160;
 Fri, 12 Jul 2019 15:48:08 +0000 (UTC)
Date: Fri, 12 Jul 2019 11:48:06 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Brendan Shanks <bshanks@codeweavers.com>
Message-ID: <417939319.27471708.1562946486655.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190711175605.3220-1-bshanks@codeweavers.com>
References: <20190711175605.3220-1-bshanks@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.7]
Thread-Topic: Fix segfault when quitting with Quit button
Thread-Index: OAscsgtMLXc8106LD56al6zQZUhCiw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 12 Jul 2019 15:48:08 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice] Fix segfault when quitting with
 Quit button
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

PiAKPiBRdWl0dGluZyB3aXRoIHRoZSBRdWl0IGJ1dHRvbiBvciBjbG9zaW5nIHRoZSB3aW5kb3cg
YWx3YXlzIGNhdXNlcyBhCj4gc2VnZmF1bHQgZm9yIG1lLiBEZXN0cm95aW5nIHRoZSBzdXJmYWNl
IGJlZm9yZSByZW1vdmluZyB0aGUgaW50ZXJmYWNlCj4gc2VlbXMgdG8gcmVzb2x2ZSB0aGUgcHJv
YmxlbS4KPiAKCkFja2VkLiBUaGUgc3VyZmFjZSBzdXJlbHkgd2FzIG9mIHRoZSBvbmx5IGRpc3Bs
YXkgaW50ZXJmYWNlIGF2YWlsYWJsZS4KCj4gbG9nIGZyb20gdmFsZ3JpbmQ6Cj4gPT03NzQxPT0g
SW52YWxpZCByZWFkIG9mIHNpemUgOAo+ID09Nzc0MT09ICAgIGF0IDB4Njk0MzUxNzogcmVkX3F4
bF9kZXN0cm95X3ByaW1hcnlfc3VyZmFjZV9zeW5jCj4gKHJlZC1xeGwuYzozMTMpCj4gPT03NzQx
PT0gICAgYnkgMHg2OTQzNTE3OiByZWRfcXhsX2Rlc3Ryb3lfcHJpbWFyeV9zdXJmYWNlIChyZWQt
cXhsLmM6MzM4KQo+ID09Nzc0MT09ICAgIGJ5IDB4Njk0MzUxNzogc3BpY2VfcXhsX2Rlc3Ryb3lf
cHJpbWFyeV9zdXJmYWNlIChyZWQtcXhsLmM6Njk2KQo+ID09Nzc0MT09ICAgIGJ5IDB4MTExRjYw
OiBzcGljZV9kZXN0cm95X3ByaW1hcnkgKHNwaWNlLmM6NTA2KQo+ID09Nzc0MT09ICAgIGJ5IDB4
MTExRjYwOiBzcGljZV9lbmQgKHNwaWNlLmM6Njk0KQo+ID09Nzc0MT09ICAgIGJ5IDB4MTBDQkRB
OiBtYWluIChtYWluLmM6MTU0KQo+ID09Nzc0MT09ICBBZGRyZXNzIDB4ODggaXMgbm90IHN0YWNr
J2QsIG1hbGxvYydkIG9yIChyZWNlbnRseSkgZnJlZSdkCj4gPT03NzQxPT0KPiA9PTc3NDE9PQo+
ID09Nzc0MT09IFByb2Nlc3MgdGVybWluYXRpbmcgd2l0aCBkZWZhdWx0IGFjdGlvbiBvZiBzaWdu
YWwgMTEgKFNJR1NFR1YpCj4gPT03NzQxPT0gIEFjY2VzcyBub3Qgd2l0aGluIG1hcHBlZCByZWdp
b24gYXQgYWRkcmVzcyAweDg4Cj4gPT03NzQxPT0gICAgYXQgMHg2OTQzNTE3OiByZWRfcXhsX2Rl
c3Ryb3lfcHJpbWFyeV9zdXJmYWNlX3N5bmMKPiAocmVkLXF4bC5jOjMxMykKPiA9PTc3NDE9PSAg
ICBieSAweDY5NDM1MTc6IHJlZF9xeGxfZGVzdHJveV9wcmltYXJ5X3N1cmZhY2UgKHJlZC1xeGwu
YzozMzgpCj4gPT03NzQxPT0gICAgYnkgMHg2OTQzNTE3OiBzcGljZV9xeGxfZGVzdHJveV9wcmlt
YXJ5X3N1cmZhY2UgKHJlZC1xeGwuYzo2OTYpCj4gPT03NzQxPT0gICAgYnkgMHgxMTFGNjA6IHNw
aWNlX2Rlc3Ryb3lfcHJpbWFyeSAoc3BpY2UuYzo1MDYpCj4gPT03NzQxPT0gICAgYnkgMHgxMTFG
NjA6IHNwaWNlX2VuZCAoc3BpY2UuYzo2OTQpCj4gPT03NzQxPT0gICAgYnkgMHgxMENCREE6IG1h
aW4gKG1haW4uYzoxNTQpCj4gCj4gU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFua3MgPGJzaGFu
a3NAY29kZXdlYXZlcnMuY29tPgo+IC0tLQo+ICBzcmMvc3BpY2UuYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L3NyYy9zcGljZS5jIGIvc3JjL3NwaWNlLmMKPiBpbmRleCA4ZWMwYjA3Li5kOTY2NjQ0IDEwMDY0
NAo+IC0tLSBhL3NyYy9zcGljZS5jCj4gKysrIGIvc3JjL3NwaWNlLmMKPiBAQCAtNjg5LDkgKzY4
OSw5IEBAIHZvaWQgc3BpY2VfZW5kKHNwaWNlX3QgKnMpCj4gIHsKPiAgICAgIHNwaWNlX3NlcnZl
cl9yZW1vdmVfaW50ZXJmYWNlKCZzLT50YWJsZXRfc2luLmJhc2UpOwo+ICAgICAgc3BpY2Vfc2Vy
dmVyX3JlbW92ZV9pbnRlcmZhY2UoJnMtPmtleWJvYXJkX3Npbi5iYXNlKTsKPiAtICAgIHNwaWNl
X3NlcnZlcl9yZW1vdmVfaW50ZXJmYWNlKCZzLT5kaXNwbGF5X3Npbi5iYXNlKTsKPiAgCj4gICAg
ICBzcGljZV9kZXN0cm95X3ByaW1hcnkocyk7Cj4gKyAgICBzcGljZV9zZXJ2ZXJfcmVtb3ZlX2lu
dGVyZmFjZSgmcy0+ZGlzcGxheV9zaW4uYmFzZSk7Cj4gIAo+ICAgICAgc3BpY2Vfc2VydmVyX2Rl
c3Ryb3kocy0+c2VydmVyKTsKPiAgCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
