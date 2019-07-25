Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 263A974C2C
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A385E88EA3;
	Thu, 25 Jul 2019 10:50:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5944988EA3
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:50:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E58973092656
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:50:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D75835DD97
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:50:48 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D00521800205;
 Thu, 25 Jul 2019 10:50:48 +0000 (UTC)
Date: Thu, 25 Jul 2019 06:50:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <797036083.2969259.1564051848684.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190725104251.18425-1-victortoso@redhat.com>
References: <20190725101947.17341-1-victortoso@redhat.com>
 <20190725104251.18425-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.20]
Thread-Topic: spice-option: warn on command line failures of usbredir
Thread-Index: Bwyi4C1iOcld0MxQROjZ8Y2UZDxlRA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 25 Jul 2019 10:50:48 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2] spice-option: warn on command line
 failures of usbredir
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gQXMgc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2dldCgpIGNhbiBmYWlsIGZvciBkaWZmZXJlbnQgcmVhc29ucywg
d2UKPiBzaG91bGQgc2lsZW50bHkgaWdub3JlIGl0IGFuZCBpdHMgZXJyb3IuCj4gCgpUaGUgZmly
c3QgY29tbWVudCBJIG1hZGUgd2FzIGFib3V0IHRoaXMgc2VudGVuY2UsIHRoZSBjb2RlIGlzIGRv
aW5nCnRoZSBvcHBvc2l0ZSBvZiB3aGF0IHlvdSBzdGF0ZWQgaGVyZS4gVGhlIHN1YmplY3QgaXMg
Y29ycmVjdCAoeW91IGdpdmUKYSB3YXJuaW5nKSwgYnV0IGdpdmluZyBhIHdhcm5pbmcgaXMgbGVz
cyBzaWxlbnQgdGhhbiBpZ25vcmluZyB0aGUgZXJyb3IKKGFzIG1hc3RlciBjb2RlIGlzIGRvaW5n
KS4KCk1heWJlOgoKIkFzIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoKSBjYW4gZmFpbCBm
b3IgZGlmZmVyZW50IHJlYXNvbnMsIHdlCnNob3VsZCBpZ25vcmUgYW5kIGNvbnRpbnVlIGJ1dCBh
dCBsZWFzdCBnaXZlIGEgd2FybmluZy4iCgo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2
aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy9zcGljZS1vcHRpb24uYyB8IDI0ICsr
KysrKysrKysrKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLW9wdGlvbi5jIGIv
c3JjL3NwaWNlLW9wdGlvbi5jCj4gaW5kZXggYzJiMDU5ZS4uMDhkNDQ5ZSAxMDA2NDQKPiAtLS0g
YS9zcmMvc3BpY2Utb3B0aW9uLmMKPiArKysgYi9zcmMvc3BpY2Utb3B0aW9uLmMKPiBAQCAtMjEy
LDYgKzIxMiwxOCBAQCBHT3B0aW9uR3JvdXAqIHNwaWNlX2dldF9vcHRpb25fZ3JvdXAodm9pZCkK
PiAgICAgIHJldHVybiBncnA7Cj4gIH0KPiAgCj4gK1NwaWNlVXNiRGV2aWNlTWFuYWdlciAqCj4g
K2dldF91c2JfZGV2aWNlX21hbmFnZXJfZm9yX29wdGlvbihTcGljZVNlc3Npb24gKnNlc3Npb24s
IGNvbnN0IGNoYXIgKm9wdGlvbikKPiArewo+ICsgICAgR0Vycm9yICplcnIgPSBOVUxMOwo+ICsg
ICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2dl
dChzZXNzaW9uLCAmZXJyKTsKPiArICAgIGlmICghbSkgewo+ICsgICAgICAgIGdfd2FybmluZygi
T3B0aW9uICVzIGlzIHNldCBidXQgZmFpbGVkOiAlcyIsIG9wdGlvbiwgZXJyLT5tZXNzYWdlKTsK
PiArICAgICAgICBnX2Vycm9yX2ZyZWUoZXJyKTsKPiArICAgIH0KPiArICAgIHJldHVybiBtOwo+
ICt9Cj4gKwo+ICAvKioKPiAgICogc3BpY2Vfc2V0X3Nlc3Npb25fb3B0aW9uOgo+ICAgKiBAc2Vz
c2lvbjogYSAjU3BpY2VTZXNzaW9uIHRvIHNldCBvcHRpb24gdXBvbgo+IEBAIC0yNjEsMTYgKzI3
MywyMCBAQCB2b2lkIHNwaWNlX3NldF9zZXNzaW9uX29wdGlvbihTcGljZVNlc3Npb24gKnNlc3Np
b24pCj4gICAgICAgICAgICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAic21hcnRjYXJkLWRiIiwg
c21hcnRjYXJkX2RiLCBOVUxMKTsKPiAgICAgIH0KPiAgICAgIGlmICh1c2JyZWRpcl9hdXRvX3Jl
ZGlyZWN0X2ZpbHRlcikgewo+IC0gICAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbSA9IHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwKPiBOVUxMKTsKPiAtICAgICAgICBp
ZiAobSkKPiArICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQo+ICsgICAgICAgICAg
ICAgICAgZ2V0X3VzYl9kZXZpY2VfbWFuYWdlcl9mb3Jfb3B0aW9uKHNlc3Npb24sCj4gIi0tc3Bp
Y2UtdXNicmVkaXItYXV0by1yZWRpcmVjdC1maWx0ZXIiKTsKPiArICAgICAgICBpZiAobSkgewo+
ICAgICAgICAgICAgICBnX29iamVjdF9zZXQobSwgImF1dG8tY29ubmVjdC1maWx0ZXIiLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNicmVkaXJfYXV0b19yZWRpcmVjdF9maWx0ZXIsIE5V
TEwpOwo+ICsgICAgICAgIH0KPiAgICAgIH0KPiAgICAgIGlmICh1c2JyZWRpcl9yZWRpcmVjdF9v
bl9jb25uZWN0KSB7Cj4gLSAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0gc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2dldChzZXNzaW9uLAo+IE5VTEwpOwo+IC0gICAgICAgIGlmICht
KQo+ICsgICAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbSA9Cj4gKyAgICAgICAgICAgICAg
ICBnZXRfdXNiX2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vzc2lvbiwKPiAiLS1zcGljZS11
c2JyZWRpci1yZWRpcmVjdC1vbi1jb25uZWN0Iik7Cj4gKyAgICAgICAgaWYgKG0pIHsKPiAgICAg
ICAgICAgICAgZ19vYmplY3Rfc2V0KG0sICJyZWRpcmVjdC1vbi1jb25uZWN0IiwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVzYnJlZGlyX3JlZGlyZWN0X29uX2Nvbm5lY3QsIE5VTEwpOwo+
ICsgICAgICAgIH0KPiAgICAgIH0KPiAgICAgIGlmIChkaXNhYmxlX3VzYnJlZGlyKQo+ICAgICAg
ICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAiZW5hYmxlLXVzYnJlZGlyIiwgRkFMU0UsIE5VTEwp
OwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
