Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2166CA1D
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04316E331;
	Thu, 18 Jul 2019 07:41:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA75D6E331
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 553D7307D8E3
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4318C19C5B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:56 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 380E81800205
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:56 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:41:56 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2039653545.688208.1563435716189.JavaMail.zimbra@redhat.com>
In-Reply-To: <1499637703.26605825.1562570912034.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
 <932758974.25084836.1561708398220.JavaMail.zimbra@redhat.com>
 <1499637703.26605825.1562570912034.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: char-device: Allocate all write buffer in a single block
Thread-Index: eqtRXV1hVFOJ+Gm/cHKbZvkyLTwikypYrl0aKpvXw2Q=
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 18 Jul 2019 07:41:56 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 03/13] char-device: Allocate
 all write buffer in a single block
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gVGhlcmUg
YXJlIG5vIG11Y2ggZGF0YSBvdGhlciB0aGFuIHRoZSBidWZmZXIsIHJlZHVjZSB0aGUKPiA+ID4g
YWxsb2NhdGlvbnMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2Uu
YyB8IDI3ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ID4gPiAgc2VydmVyL2NoYXItZGV2
aWNlLmggfCAgMiArLQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAx
MyBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZp
Y2UuYyBiL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+IGluZGV4IDg5NTgxZWE0Mi4uMDU5ZThl
NWY2IDEwMDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiArKysgYi9z
ZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiBAQCAtMTQ5LDExICsxNDksOSBAQCByZWRfY2hhcl9k
ZXZpY2VfcmVtb3ZlX2NsaWVudChSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiA+IFJlZENsaWVudCAq
Y2xpZW50KQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgdm9pZCByZWRfY2hhcl9kZXZpY2Vfd3JpdGVf
YnVmZmVyX2ZyZWUoUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyCj4gPiA+ICAqYnVmKQo+ID4gPiAg
ewo+ID4gPiAtICAgIGlmIChidWYgPT0gTlVMTCkKPiA+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4g
PiAtCj4gPiA+IC0gICAgZ19mcmVlKGJ1Zi0+YnVmKTsKPiA+ID4gLSAgICBnX2ZyZWUoYnVmKTsK
PiA+ID4gKyAgICBpZiAoYnVmKSB7Cj4gPiA+ICsgICAgICAgIGdfZnJlZShidWYtPnByaXYpOwo+
ID4gPiArICAgIH0KPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgd3JpdGVfYnVm
ZmVyc19xdWV1ZV9mcmVlKEdRdWV1ZSAqd3JpdGVfcXVldWUpCj4gPiA+IEBAIC01NDIsMjIgKzU0
MCwyNyBAQCByZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2dldChSZWRDaGFyRGV2aWNlCj4g
PiA+ICpkZXYsCj4gPiA+IFJlZENsaWVudCAqY2xpZW50LCBpbnQgc2l6ZQo+ID4gPiAgICAgIHJl
dCA9IGdfcXVldWVfcG9wX3RhaWwoJmRldi0+cHJpdi0+d3JpdGVfYnVmc19wb29sKTsKPiA+ID4g
ICAgICBpZiAocmV0KSB7Cj4gPiA+ICAgICAgICAgIGRldi0+cHJpdi0+Y3VyX3Bvb2xfc2l6ZSAt
PSByZXQtPmJ1Zl9zaXplOwo+ID4gPiAtICAgIH0gZWxzZSB7Cj4gPiA+ICsgICAgICAgIGlmIChy
ZXQtPmJ1Zl9zaXplIDwgc2l6ZSkgewo+ID4gPiArICAgICAgICAgICAgc3BpY2VfYXNzZXJ0KCFz
cGljZV9leHRyYV9jaGVja3MgfHwgcmV0LT5wcml2LT5yZWZzID09IDEpOwo+ID4gPiArICAgICAg
ICAgICAgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9mcmVlKHJldCk7Cj4gPiA+ICsgICAg
ICAgICAgICByZXQgPSBOVUxMOwo+ID4gPiArICAgICAgICB9Cj4gPiA+ICsgICAgfQo+ID4gPiAr
ICAgIGlmIChyZXQgPT0gTlVMTCkgewo+ID4gPiAgICAgICAgICBzdHJ1Y3QgUmVkQ2hhckRldmlj
ZVdyaXRlQnVmZmVyRnVsbCB7Cj4gPiA+IC0gICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3JpdGVC
dWZmZXIgYnVmZmVyOwo+ID4gPiAgICAgICAgICAgICAgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVy
UHJpdmF0ZSBwcml2Owo+ID4gPiArICAgICAgICAgICAgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVy
IGJ1ZmZlcjsKPiA+ID4gICAgICAgICAgfSAqd3JpdGVfYnVmOwo+ID4gPiAtICAgICAgICB3cml0
ZV9idWYgPSBnX25ldzAoc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlckZ1bGwsIDEpOwo+
ID4gPiArICAgICAgICB3cml0ZV9idWYgPSBnX21hbGxvYyhzaXplb2Yoc3RydWN0IFJlZENoYXJE
ZXZpY2VXcml0ZUJ1ZmZlckZ1bGwpCj4gPiA+ICsKPiA+ID4gc2l6ZSk7Cj4gPiA+ICsgICAgICAg
IG1lbXNldCh3cml0ZV9idWYsIDAsIHNpemVvZigqd3JpdGVfYnVmKSk7Cj4gPiA+ICsgICAgICAg
IHdyaXRlX2J1Zi0+cHJpdi5yZWZzID0gMTsKPiA+ID4gICAgICAgICAgcmV0ID0gJndyaXRlX2J1
Zi0+YnVmZmVyOwo+ID4gPiArICAgICAgICByZXQtPmJ1Zl9zaXplID0gc2l6ZTsKPiA+ID4gICAg
ICAgICAgcmV0LT5wcml2ID0gJndyaXRlX2J1Zi0+cHJpdjsKPiA+ID4gICAgICB9Cj4gPiA+ICAK
PiA+ID4gICAgICBzcGljZV9hc3NlcnQoIXJldC0+YnVmX3VzZWQpOwo+ID4gPiAgCj4gPiA+IC0g
ICAgaWYgKHJldC0+YnVmX3NpemUgPCBzaXplKSB7Cj4gPiA+IC0gICAgICAgIHJldC0+YnVmID0g
Z19yZWFsbG9jKHJldC0+YnVmLCBzaXplKTsKPiA+ID4gLSAgICAgICAgcmV0LT5idWZfc2l6ZSA9
IHNpemU7Cj4gPiA+IC0gICAgfQo+ID4gPiAgICAgIHJldC0+cHJpdi0+b3JpZ2luID0gb3JpZ2lu
Owo+ID4gPiAgCj4gPiA+ICAgICAgaWYgKG9yaWdpbiA9PSBXUklURV9CVUZGRVJfT1JJR0lOX0NM
SUVOVCkgewo+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9zZXJ2ZXIv
Y2hhci1kZXZpY2UuaAo+ID4gPiBpbmRleCA3ZDNhZDhiM2EuLjUzMjdjMjVlNSAxMDA2NDQKPiA+
ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gKysrIGIvc2VydmVyL2NoYXItZGV2
aWNlLmgKPiA+ID4gQEAgLTE1MSwxMSArMTUxLDExIEBAIEdUeXBlIHJlZF9jaGFyX2RldmljZV9n
ZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiA+ICAvKiBidWZmZXIgdGhhdCBpcyB1c2Vk
IGZvciB3cml0aW5nIHRvIHRoZSBkZXZpY2UgKi8KPiA+ID4gIHR5cGVkZWYgc3RydWN0IFJlZENo
YXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGUKPiA+ID4gIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZl
clByaXZhdGU7Cj4gPiA+ICB0eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIg
ewo+ID4gPiAtICAgIHVpbnQ4X3QgKmJ1ZjsKPiA+ID4gICAgICB1aW50MzJfdCBidWZfc2l6ZTsK
PiA+ID4gICAgICB1aW50MzJfdCBidWZfdXNlZDsKPiA+ID4gIAo+ID4gPiAgICAgIFJlZENoYXJE
ZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGUgKnByaXY7Cj4gPiA+ICsgICAgdWludDhfdCBidWZbMF07
Cj4gPiA+ICB9IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlcjsKPiA+ID4gIAo+ID4gPiAgdm9pZCBy
ZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJlZENoYXJEZXZpY2UgKmRldiwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
