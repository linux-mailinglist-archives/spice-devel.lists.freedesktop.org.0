Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 535727E002
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4486E729;
	Thu,  1 Aug 2019 16:21:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2C16E726
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A1E630C80AC
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9064A60925
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 889B11800202
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:43 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:21:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <666257339.4230435.1564676503518.JavaMail.zimbra@redhat.com>
In-Reply-To: <2039653545.688208.1563435716189.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
 <932758974.25084836.1561708398220.JavaMail.zimbra@redhat.com>
 <1499637703.26605825.1562570912034.JavaMail.zimbra@redhat.com>
 <2039653545.688208.1563435716189.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: char-device: Allocate all write buffer in a single block
Thread-Index: eqtRXV1hVFOJ+Gm/cHKbZvkyLTwikypYrl0aKpvXw2TUN+YB0A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 01 Aug 2019 16:21:43 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGVyZSBhcmUgbm8gbXVjaCBkYXRhIG90aGVyIHRoYW4g
dGhlIGJ1ZmZlciwgcmVkdWNlIHRoZQo+ID4gPiA+IGFsbG9jYXRpb25zLgo+ID4gPiA+IAo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDI3ICsrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLQo+ID4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuaCB8ICAyICstCj4g
PiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0p
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5jIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiBpbmRleCA4OTU4MWVhNDIuLjA1OWU4ZTVmNiAxMDA2
NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiA+ICsrKyBiL3NlcnZl
ci9jaGFyLWRldmljZS5jCj4gPiA+ID4gQEAgLTE0OSwxMSArMTQ5LDkgQEAgcmVkX2NoYXJfZGV2
aWNlX3JlbW92ZV9jbGllbnQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+IFJlZENsaWVudCAq
Y2xpZW50KQo+ID4gPiA+ICAKPiA+ID4gPiAgc3RhdGljIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3dy
aXRlX2J1ZmZlcl9mcmVlKFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlcgo+ID4gPiA+ICAqYnVmKQo+
ID4gPiA+ICB7Cj4gPiA+ID4gLSAgICBpZiAoYnVmID09IE5VTEwpCj4gPiA+ID4gLSAgICAgICAg
cmV0dXJuOwo+ID4gPiA+IC0KPiA+ID4gPiAtICAgIGdfZnJlZShidWYtPmJ1Zik7Cj4gPiA+ID4g
LSAgICBnX2ZyZWUoYnVmKTsKPiA+ID4gPiArICAgIGlmIChidWYpIHsKPiA+ID4gPiArICAgICAg
ICBnX2ZyZWUoYnVmLT5wcml2KTsKPiA+ID4gPiArICAgIH0KPiA+ID4gPiAgfQo+ID4gPiA+ICAK
PiA+ID4gPiAgc3RhdGljIHZvaWQgd3JpdGVfYnVmZmVyc19xdWV1ZV9mcmVlKEdRdWV1ZSAqd3Jp
dGVfcXVldWUpCj4gPiA+ID4gQEAgLTU0MiwyMiArNTQwLDI3IEBAIHJlZF9jaGFyX2RldmljZV93
cml0ZV9idWZmZXJfZ2V0KFJlZENoYXJEZXZpY2UKPiA+ID4gPiAqZGV2LAo+ID4gPiA+IFJlZENs
aWVudCAqY2xpZW50LCBpbnQgc2l6ZQo+ID4gPiA+ICAgICAgcmV0ID0gZ19xdWV1ZV9wb3BfdGFp
bCgmZGV2LT5wcml2LT53cml0ZV9idWZzX3Bvb2wpOwo+ID4gPiA+ICAgICAgaWYgKHJldCkgewo+
ID4gPiA+ICAgICAgICAgIGRldi0+cHJpdi0+Y3VyX3Bvb2xfc2l6ZSAtPSByZXQtPmJ1Zl9zaXpl
Owo+ID4gPiA+IC0gICAgfSBlbHNlIHsKPiA+ID4gPiArICAgICAgICBpZiAocmV0LT5idWZfc2l6
ZSA8IHNpemUpIHsKPiA+ID4gPiArICAgICAgICAgICAgc3BpY2VfYXNzZXJ0KCFzcGljZV9leHRy
YV9jaGVja3MgfHwgcmV0LT5wcml2LT5yZWZzID09IDEpOwo+ID4gPiA+ICsgICAgICAgICAgICBy
ZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2ZyZWUocmV0KTsKPiA+ID4gPiArICAgICAgICAg
ICAgcmV0ID0gTlVMTDsKPiA+ID4gPiArICAgICAgICB9Cj4gPiA+ID4gKyAgICB9Cj4gPiA+ID4g
KyAgICBpZiAocmV0ID09IE5VTEwpIHsKPiA+ID4gPiAgICAgICAgICBzdHJ1Y3QgUmVkQ2hhckRl
dmljZVdyaXRlQnVmZmVyRnVsbCB7Cj4gPiA+ID4gLSAgICAgICAgICAgIFJlZENoYXJEZXZpY2VX
cml0ZUJ1ZmZlciBidWZmZXI7Cj4gPiA+ID4gICAgICAgICAgICAgIFJlZENoYXJEZXZpY2VXcml0
ZUJ1ZmZlclByaXZhdGUgcHJpdjsKPiA+ID4gPiArICAgICAgICAgICAgUmVkQ2hhckRldmljZVdy
aXRlQnVmZmVyIGJ1ZmZlcjsKPiA+ID4gPiAgICAgICAgICB9ICp3cml0ZV9idWY7Cj4gPiA+ID4g
LSAgICAgICAgd3JpdGVfYnVmID0gZ19uZXcwKHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZm
ZXJGdWxsLCAxKTsKPiA+ID4gPiArICAgICAgICB3cml0ZV9idWYgPSBnX21hbGxvYyhzaXplb2Yo
c3RydWN0Cj4gPiA+ID4gUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyRnVsbCkKPiA+ID4gPiArCj4g
PiA+ID4gc2l6ZSk7Cj4gPiA+ID4gKyAgICAgICAgbWVtc2V0KHdyaXRlX2J1ZiwgMCwgc2l6ZW9m
KCp3cml0ZV9idWYpKTsKPiA+ID4gPiArICAgICAgICB3cml0ZV9idWYtPnByaXYucmVmcyA9IDE7
Cj4gPiA+ID4gICAgICAgICAgcmV0ID0gJndyaXRlX2J1Zi0+YnVmZmVyOwo+ID4gPiA+ICsgICAg
ICAgIHJldC0+YnVmX3NpemUgPSBzaXplOwo+ID4gPiA+ICAgICAgICAgIHJldC0+cHJpdiA9ICZ3
cml0ZV9idWYtPnByaXY7Cj4gPiA+ID4gICAgICB9Cj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgc3Bp
Y2VfYXNzZXJ0KCFyZXQtPmJ1Zl91c2VkKTsKPiA+ID4gPiAgCj4gPiA+ID4gLSAgICBpZiAocmV0
LT5idWZfc2l6ZSA8IHNpemUpIHsKPiA+ID4gPiAtICAgICAgICByZXQtPmJ1ZiA9IGdfcmVhbGxv
YyhyZXQtPmJ1Ziwgc2l6ZSk7Cj4gPiA+ID4gLSAgICAgICAgcmV0LT5idWZfc2l6ZSA9IHNpemU7
Cj4gPiA+ID4gLSAgICB9Cj4gPiA+ID4gICAgICByZXQtPnByaXYtPm9yaWdpbiA9IG9yaWdpbjsK
PiA+ID4gPiAgCj4gPiA+ID4gICAgICBpZiAob3JpZ2luID09IFdSSVRFX0JVRkZFUl9PUklHSU5f
Q0xJRU5UKSB7Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiBpbmRleCA3ZDNhZDhiM2EuLjUzMjdjMjVlNSAxMDA2
NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ICsrKyBiL3NlcnZl
ci9jaGFyLWRldmljZS5oCj4gPiA+ID4gQEAgLTE1MSwxMSArMTUxLDExIEBAIEdUeXBlIHJlZF9j
aGFyX2RldmljZV9nZXRfdHlwZSh2b2lkKQo+ID4gPiA+IEdfR05VQ19DT05TVDsKPiA+ID4gPiAg
LyogYnVmZmVyIHRoYXQgaXMgdXNlZCBmb3Igd3JpdGluZyB0byB0aGUgZGV2aWNlICovCj4gPiA+
ID4gIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGUKPiA+ID4g
PiAgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyUHJpdmF0ZTsKPiA+ID4gPiAgdHlwZWRlZiBzdHJ1
Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyIHsKPiA+ID4gPiAtICAgIHVpbnQ4X3QgKmJ1ZjsK
PiA+ID4gPiAgICAgIHVpbnQzMl90IGJ1Zl9zaXplOwo+ID4gPiA+ICAgICAgdWludDMyX3QgYnVm
X3VzZWQ7Cj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyUHJp
dmF0ZSAqcHJpdjsKPiA+ID4gPiArICAgIHVpbnQ4X3QgYnVmWzBdOwo+ID4gPiA+ICB9IFJlZENo
YXJEZXZpY2VXcml0ZUJ1ZmZlcjsKPiA+ID4gPiAgCj4gPiA+ID4gIHZvaWQgcmVkX2NoYXJfZGV2
aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNlICpkZXYsCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
