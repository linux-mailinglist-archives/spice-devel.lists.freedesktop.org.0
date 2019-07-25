Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9E774E27
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 14:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD046E733;
	Thu, 25 Jul 2019 12:30:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1576E733
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 12:30:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7A0C8B2DCE
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 12:30:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B41A60BEC
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 12:30:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5795F1800205;
 Thu, 25 Jul 2019 12:30:18 +0000 (UTC)
Date: Thu, 25 Jul 2019 08:30:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <37029804.2991580.1564057818185.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190725115858.21511-1-victortoso@redhat.com>
References: <20190725104251.18425-1-victortoso@redhat.com>
 <20190725115858.21511-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.13]
Thread-Topic: spice-option: warn on command line failures of usbredir
Thread-Index: ln/JkFaHFb4ljImoxN2fxi1oRe0Hmw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 25 Jul 2019 12:30:18 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3] spice-option: warn on command line
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
d2UKPiBzaG91bGQgaWdub3JlIGFuZCBjb250aW51ZSBidXQgYXQgbGVhc3QgZ2l2ZSBhIHdhcm5p
bmciCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNv
bT4KCkFja2VkCgo+IC0tLQo+ICBzcmMvc3BpY2Utb3B0aW9uLmMgfCAyNCArKysrKysrKysrKysr
KysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1vcHRpb24uYyBiL3NyYy9zcGljZS1v
cHRpb24uYwo+IGluZGV4IGMyYjA1OWUuLjA4ZDQ0OWUgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNl
LW9wdGlvbi5jCj4gKysrIGIvc3JjL3NwaWNlLW9wdGlvbi5jCj4gQEAgLTIxMiw2ICsyMTIsMTgg
QEAgR09wdGlvbkdyb3VwKiBzcGljZV9nZXRfb3B0aW9uX2dyb3VwKHZvaWQpCj4gICAgICByZXR1
cm4gZ3JwOwo+ICB9Cj4gIAo+ICtTcGljZVVzYkRldmljZU1hbmFnZXIgKgo+ICtnZXRfdXNiX2Rl
dmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBjb25zdCBjaGFy
ICpvcHRpb24pCj4gK3sKPiArICAgIEdFcnJvciAqZXJyID0gTlVMTDsKPiArICAgIFNwaWNlVXNi
RGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwg
JmVycik7Cj4gKyAgICBpZiAoIW0pIHsKPiArICAgICAgICBnX3dhcm5pbmcoIk9wdGlvbiAlcyBp
cyBzZXQgYnV0IGZhaWxlZDogJXMiLCBvcHRpb24sIGVyci0+bWVzc2FnZSk7Cj4gKyAgICAgICAg
Z19lcnJvcl9mcmVlKGVycik7Cj4gKyAgICB9Cj4gKyAgICByZXR1cm4gbTsKPiArfQo+ICsKPiAg
LyoqCj4gICAqIHNwaWNlX3NldF9zZXNzaW9uX29wdGlvbjoKPiAgICogQHNlc3Npb246IGEgI1Nw
aWNlU2Vzc2lvbiB0byBzZXQgb3B0aW9uIHVwb24KPiBAQCAtMjYxLDE2ICsyNzMsMjAgQEAgdm9p
ZCBzcGljZV9zZXRfc2Vzc2lvbl9vcHRpb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uKQo+ICAgICAg
ICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgInNtYXJ0Y2FyZC1kYiIsIHNtYXJ0Y2FyZF9k
YiwgTlVMTCk7Cj4gICAgICB9Cj4gICAgICBpZiAodXNicmVkaXJfYXV0b19yZWRpcmVjdF9maWx0
ZXIpIHsKPiAtICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sCj4gTlVMTCk7Cj4gLSAgICAgICAgaWYgKG0pCj4gKyAg
ICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0KPiArICAgICAgICAgICAgICAgIGdldF91
c2JfZGV2aWNlX21hbmFnZXJfZm9yX29wdGlvbihzZXNzaW9uLAo+ICItLXNwaWNlLXVzYnJlZGly
LWF1dG8tcmVkaXJlY3QtZmlsdGVyIik7Cj4gKyAgICAgICAgaWYgKG0pIHsKPiAgICAgICAgICAg
ICAgZ19vYmplY3Rfc2V0KG0sICJhdXRvLWNvbm5lY3QtZmlsdGVyIiwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVzYnJlZGlyX2F1dG9fcmVkaXJlY3RfZmlsdGVyLCBOVUxMKTsKPiArICAg
ICAgICB9Cj4gICAgICB9Cj4gICAgICBpZiAodXNicmVkaXJfcmVkaXJlY3Rfb25fY29ubmVjdCkg
ewo+IC0gICAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZpY2Vf
bWFuYWdlcl9nZXQoc2Vzc2lvbiwKPiBOVUxMKTsKPiAtICAgICAgICBpZiAobSkKPiArICAgICAg
ICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQo+ICsgICAgICAgICAgICAgICAgZ2V0X3VzYl9k
ZXZpY2VfbWFuYWdlcl9mb3Jfb3B0aW9uKHNlc3Npb24sCj4gIi0tc3BpY2UtdXNicmVkaXItcmVk
aXJlY3Qtb24tY29ubmVjdCIpOwo+ICsgICAgICAgIGlmIChtKSB7Cj4gICAgICAgICAgICAgIGdf
b2JqZWN0X3NldChtLCAicmVkaXJlY3Qtb24tY29ubmVjdCIsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LCBOVUxMKTsKPiArICAgICAgICB9
Cj4gICAgICB9Cj4gICAgICBpZiAoZGlzYWJsZV91c2JyZWRpcikKPiAgICAgICAgICBnX29iamVj
dF9zZXQoc2Vzc2lvbiwgImVuYWJsZS11c2JyZWRpciIsIEZBTFNFLCBOVUxMKTsKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
