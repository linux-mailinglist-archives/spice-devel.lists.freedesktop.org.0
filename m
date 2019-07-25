Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8A74B99
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC816E6DC;
	Thu, 25 Jul 2019 10:32:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9176E6D3
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:32:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C92883082131
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:32:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BF9D15E1A4
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:32:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B3213264C8;
 Thu, 25 Jul 2019 10:32:28 +0000 (UTC)
Date: Thu, 25 Jul 2019 06:32:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <494627912.2966701.1564050748556.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190725101947.17341-1-victortoso@redhat.com>
References: <20190725101947.17341-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.22]
Thread-Topic: spice-option: warn on command line failures of usbredir
Thread-Index: ViOP9VAe4cCp0VVVKY04vw4sX2DvDA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 25 Jul 2019 10:32:28 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk] spice-option: warn on command line
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
d2UKPiBzaG91bGQgc2lsZW50bHkgaWdub3JlIGl0IGFuZCBpdHMgZXJyb3IuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3Jj
L3NwaWNlLW9wdGlvbi5jIHwgMTggKysrKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMv
c3BpY2Utb3B0aW9uLmMgYi9zcmMvc3BpY2Utb3B0aW9uLmMKPiBpbmRleCBjMmIwNTllLi5jNmM1
MWE5IDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1vcHRpb24uYwo+ICsrKyBiL3NyYy9zcGljZS1v
cHRpb24uYwo+IEBAIC0yNjEsMTYgKzI2MSwyNiBAQCB2b2lkIHNwaWNlX3NldF9zZXNzaW9uX29w
dGlvbihTcGljZVNlc3Npb24gKnNlc3Npb24pCj4gICAgICAgICAgICAgIGdfb2JqZWN0X3NldChz
ZXNzaW9uLCAic21hcnRjYXJkLWRiIiwgc21hcnRjYXJkX2RiLCBOVUxMKTsKPiAgICAgIH0KPiAg
ICAgIGlmICh1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2ZpbHRlcikgewo+IC0gICAgICAgIFNwaWNl
VXNiRGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lv
biwKPiBOVUxMKTsKPiAtICAgICAgICBpZiAobSkKPiArICAgICAgICBHRXJyb3IgKmVyciA9IE5V
TEw7Cj4gKyAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0gc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2dldChzZXNzaW9uLAo+ICZlcnIpOwo+ICsgICAgICAgIGlmIChtKSB7Cj4gICAg
ICAgICAgICAgIGdfb2JqZWN0X3NldChtLCAiYXV0by1jb25uZWN0LWZpbHRlciIsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2ZpbHRlciwgTlVMTCk7
Cj4gKyAgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgZ193YXJuaW5nKCJPcHRpb24gLS1z
cGljZS11c2JyZWRpci1hdXRvLXJlZGlyZWN0LWZpbHRlciBpcyBzZXQKPiBidXQgZmFpbGVkOiAl
cyIsIGVyci0+bWVzc2FnZSk7Cj4gKyAgICAgICAgICAgIGdfZXJyb3JfZnJlZShlcnIpOwo+ICsg
ICAgICAgIH0KPiAgICAgIH0KPiAgICAgIGlmICh1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0
KSB7Cj4gLSAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0gc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2dldChzZXNzaW9uLAo+IE5VTEwpOwo+IC0gICAgICAgIGlmIChtKQo+ICsgICAg
ICAgIEdFcnJvciAqZXJyID0gTlVMTDsKPiArICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIg
Km0gPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sCj4gJmVycik7Cj4gKyAg
ICAgICAgaWYgKG0pIHsKPiAgICAgICAgICAgICAgZ19vYmplY3Rfc2V0KG0sICJyZWRpcmVjdC1v
bi1jb25uZWN0IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYnJlZGlyX3JlZGlyZWN0
X29uX2Nvbm5lY3QsIE5VTEwpOwo+ICsgICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgICAgIGdf
d2FybmluZygiT3B0aW9uIC0tc3BpY2UtdXNicmVkaXItcmVkaXJlY3Qtb24tY29ubmVjdCBpcyBz
ZXQKPiBidXQgZmFpbGVkOiAlcyIsIGVyci0+bWVzc2FnZSk7Cj4gKyAgICAgICAgICAgIGdfZXJy
b3JfZnJlZShlcnIpOwo+ICsgICAgICAgIH0KPiAgICAgIH0KPiAgICAgIGlmIChkaXNhYmxlX3Vz
YnJlZGlyKQo+ICAgICAgICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAiZW5hYmxlLXVzYnJlZGly
IiwgRkFMU0UsIE5VTEwpOwoKZ193YXJuaW5nIHRvIG1lIGRvZXMgbm90IG1lYW4gInNpbGVudGx5
IiwgaXQgd2FzIG1vcmUgc2lsZW50IGJlZm9yZS4KCkNvZGUgbG9va3MgYSBiaXQgYSBjb3B5JnBh
c3RlLCBtYXliZSBhZGQgYSBmdW5jdGlvbgoKU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICoKc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2dldF9mb3Jfb3B0aW9uKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwg
Y29uc3QgY2hhciAqb3B0aW9uKQp7CiAgIEdFcnJvciAqZXJyID0gTlVMTDsKICAgU3BpY2VVc2JE
ZXZpY2VNYW5hZ2VyICptID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2dldChzZXNzaW9uLCAm
ZXJyKTsKICAgaWYgKCFtKSB7CiAgICAgICBnX3dhcm5pbmcoIk9wdGlvbiAlcyBpcyBzZXQgYnV0
IGZhaWxlZDogJXMiLCBvcHRpb24sIGVyci0+bWVzc2FnZSk7CiAgICAgICBnX2Vycm9yX2ZyZWUo
ZXJyKTsKICAgfQogICByZXR1cm4gbTsKfQoKKEkgZGlkbid0IGNoZWNrIGl0KQoKRnJlZGlhbm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
