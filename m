Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2715161B3F
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19B689C27;
	Mon,  8 Jul 2019 07:28:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FDEE89C27
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C3267FDFD
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 20FD85D9E2
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16E281833002
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:32 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:28:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1499637703.26605825.1562570912034.JavaMail.zimbra@redhat.com>
In-Reply-To: <932758974.25084836.1561708398220.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
 <932758974.25084836.1561708398220.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: char-device: Allocate all write buffer in a single block
Thread-Index: eqtRXV1hVFOJ+Gm/cHKbZvkyLTwikypYrl0a
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 08 Jul 2019 07:28:32 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFRoZXJlIGFyZSBubyBtdWNoIGRhdGEgb3RoZXIg
dGhhbiB0aGUgYnVmZmVyLCByZWR1Y2UgdGhlCj4gPiBhbGxvY2F0aW9ucy4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0K
PiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDI3ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LQo+ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgIDIgKy0KPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
c2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gaW5kZXggODk1
ODFlYTQyLi4wNTllOGU1ZjYgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+
ID4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+IEBAIC0xNDksMTEgKzE0OSw5IEBAIHJl
ZF9jaGFyX2RldmljZV9yZW1vdmVfY2xpZW50KFJlZENoYXJEZXZpY2UgKmRldiwKPiA+IFJlZENs
aWVudCAqY2xpZW50KQo+ID4gIAo+ID4gIHN0YXRpYyB2b2lkIHJlZF9jaGFyX2RldmljZV93cml0
ZV9idWZmZXJfZnJlZShSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIKPiA+ICAqYnVmKQo+ID4gIHsK
PiA+IC0gICAgaWYgKGJ1ZiA9PSBOVUxMKQo+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4gLQo+ID4g
LSAgICBnX2ZyZWUoYnVmLT5idWYpOwo+ID4gLSAgICBnX2ZyZWUoYnVmKTsKPiA+ICsgICAgaWYg
KGJ1Zikgewo+ID4gKyAgICAgICAgZ19mcmVlKGJ1Zi0+cHJpdik7Cj4gPiArICAgIH0KPiA+ICB9
Cj4gPiAgCj4gPiAgc3RhdGljIHZvaWQgd3JpdGVfYnVmZmVyc19xdWV1ZV9mcmVlKEdRdWV1ZSAq
d3JpdGVfcXVldWUpCj4gPiBAQCAtNTQyLDIyICs1NDAsMjcgQEAgcmVkX2NoYXJfZGV2aWNlX3dy
aXRlX2J1ZmZlcl9nZXQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gUmVkQ2xpZW50ICpjbGllbnQs
IGludCBzaXplCj4gPiAgICAgIHJldCA9IGdfcXVldWVfcG9wX3RhaWwoJmRldi0+cHJpdi0+d3Jp
dGVfYnVmc19wb29sKTsKPiA+ICAgICAgaWYgKHJldCkgewo+ID4gICAgICAgICAgZGV2LT5wcml2
LT5jdXJfcG9vbF9zaXplIC09IHJldC0+YnVmX3NpemU7Cj4gPiAtICAgIH0gZWxzZSB7Cj4gPiAr
ICAgICAgICBpZiAocmV0LT5idWZfc2l6ZSA8IHNpemUpIHsKPiA+ICsgICAgICAgICAgICBzcGlj
ZV9hc3NlcnQoIXNwaWNlX2V4dHJhX2NoZWNrcyB8fCByZXQtPnByaXYtPnJlZnMgPT0gMSk7Cj4g
PiArICAgICAgICAgICAgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9mcmVlKHJldCk7Cj4g
PiArICAgICAgICAgICAgcmV0ID0gTlVMTDsKPiA+ICsgICAgICAgIH0KPiA+ICsgICAgfQo+ID4g
KyAgICBpZiAocmV0ID09IE5VTEwpIHsKPiA+ICAgICAgICAgIHN0cnVjdCBSZWRDaGFyRGV2aWNl
V3JpdGVCdWZmZXJGdWxsIHsKPiA+IC0gICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3JpdGVCdWZm
ZXIgYnVmZmVyOwo+ID4gICAgICAgICAgICAgIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZh
dGUgcHJpdjsKPiA+ICsgICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIgYnVmZmVy
Owo+ID4gICAgICAgICAgfSAqd3JpdGVfYnVmOwo+ID4gLSAgICAgICAgd3JpdGVfYnVmID0gZ19u
ZXcwKHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJGdWxsLCAxKTsKPiA+ICsgICAgICAg
IHdyaXRlX2J1ZiA9IGdfbWFsbG9jKHNpemVvZihzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVm
ZmVyRnVsbCkgKwo+ID4gc2l6ZSk7Cj4gPiArICAgICAgICBtZW1zZXQod3JpdGVfYnVmLCAwLCBz
aXplb2YoKndyaXRlX2J1ZikpOwo+ID4gKyAgICAgICAgd3JpdGVfYnVmLT5wcml2LnJlZnMgPSAx
Owo+ID4gICAgICAgICAgcmV0ID0gJndyaXRlX2J1Zi0+YnVmZmVyOwo+ID4gKyAgICAgICAgcmV0
LT5idWZfc2l6ZSA9IHNpemU7Cj4gPiAgICAgICAgICByZXQtPnByaXYgPSAmd3JpdGVfYnVmLT5w
cml2Owo+ID4gICAgICB9Cj4gPiAgCj4gPiAgICAgIHNwaWNlX2Fzc2VydCghcmV0LT5idWZfdXNl
ZCk7Cj4gPiAgCj4gPiAtICAgIGlmIChyZXQtPmJ1Zl9zaXplIDwgc2l6ZSkgewo+ID4gLSAgICAg
ICAgcmV0LT5idWYgPSBnX3JlYWxsb2MocmV0LT5idWYsIHNpemUpOwo+ID4gLSAgICAgICAgcmV0
LT5idWZfc2l6ZSA9IHNpemU7Cj4gPiAtICAgIH0KPiA+ICAgICAgcmV0LT5wcml2LT5vcmlnaW4g
PSBvcmlnaW47Cj4gPiAgCj4gPiAgICAgIGlmIChvcmlnaW4gPT0gV1JJVEVfQlVGRkVSX09SSUdJ
Tl9DTElFTlQpIHsKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBiL3NlcnZl
ci9jaGFyLWRldmljZS5oCj4gPiBpbmRleCA3ZDNhZDhiM2EuLjUzMjdjMjVlNSAxMDA2NDQKPiA+
IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiArKysgYi9zZXJ2ZXIvY2hhci1kZXZpY2Uu
aAo+ID4gQEAgLTE1MSwxMSArMTUxLDExIEBAIEdUeXBlIHJlZF9jaGFyX2RldmljZV9nZXRfdHlw
ZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiAgLyogYnVmZmVyIHRoYXQgaXMgdXNlZCBmb3Igd3Jp
dGluZyB0byB0aGUgZGV2aWNlICovCj4gPiAgdHlwZWRlZiBzdHJ1Y3QgUmVkQ2hhckRldmljZVdy
aXRlQnVmZmVyUHJpdmF0ZQo+ID4gIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGU7Cj4g
PiAgdHlwZWRlZiBzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyIHsKPiA+IC0gICAgdWlu
dDhfdCAqYnVmOwo+ID4gICAgICB1aW50MzJfdCBidWZfc2l6ZTsKPiA+ICAgICAgdWludDMyX3Qg
YnVmX3VzZWQ7Cj4gPiAgCj4gPiAgICAgIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGUg
KnByaXY7Cj4gPiArICAgIHVpbnQ4X3QgYnVmWzBdOwo+ID4gIH0gUmVkQ2hhckRldmljZVdyaXRl
QnVmZmVyOwo+ID4gIAo+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5j
ZShSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiAtLQo+ID4gMi4yMC4xCj4gPiAKPiA+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
