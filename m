Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DF859563
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139416E8A0;
	Fri, 28 Jun 2019 07:53:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC776E8A0
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 52D6D821EF
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BAE75D705
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40DF04EBC8
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:18 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:53:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <932758974.25084836.1561708398220.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-3-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: char-device: Allocate all write buffer in a single block
Thread-Index: eqtRXV1hVFOJ+Gm/cHKbZvkyLTwikw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 28 Jun 2019 07:53:18 +0000 (UTC)
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

cGluZwoKPiAKPiBUaGVyZSBhcmUgbm8gbXVjaCBkYXRhIG90aGVyIHRoYW4gdGhlIGJ1ZmZlciwg
cmVkdWNlIHRoZQo+IGFsbG9jYXRpb25zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8
IDI3ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuaCB8
ICAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5jIGIvc2VydmVyL2NoYXIt
ZGV2aWNlLmMKPiBpbmRleCA4OTU4MWVhNDIuLjA1OWU4ZTVmNiAxMDA2NDQKPiAtLS0gYS9zZXJ2
ZXIvY2hhci1kZXZpY2UuYwo+ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5jCj4gQEAgLTE0OSwx
MSArMTQ5LDkgQEAgcmVkX2NoYXJfZGV2aWNlX3JlbW92ZV9jbGllbnQoUmVkQ2hhckRldmljZSAq
ZGV2LAo+IFJlZENsaWVudCAqY2xpZW50KQo+ICAKPiAgc3RhdGljIHZvaWQgcmVkX2NoYXJfZGV2
aWNlX3dyaXRlX2J1ZmZlcl9mcmVlKFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciAqYnVmKQo+ICB7
Cj4gLSAgICBpZiAoYnVmID09IE5VTEwpCj4gLSAgICAgICAgcmV0dXJuOwo+IC0KPiAtICAgIGdf
ZnJlZShidWYtPmJ1Zik7Cj4gLSAgICBnX2ZyZWUoYnVmKTsKPiArICAgIGlmIChidWYpIHsKPiAr
ICAgICAgICBnX2ZyZWUoYnVmLT5wcml2KTsKPiArICAgIH0KPiAgfQo+ICAKPiAgc3RhdGljIHZv
aWQgd3JpdGVfYnVmZmVyc19xdWV1ZV9mcmVlKEdRdWV1ZSAqd3JpdGVfcXVldWUpCj4gQEAgLTU0
MiwyMiArNTQwLDI3IEBAIHJlZF9jaGFyX2RldmljZV93cml0ZV9idWZmZXJfZ2V0KFJlZENoYXJE
ZXZpY2UgKmRldiwKPiBSZWRDbGllbnQgKmNsaWVudCwgaW50IHNpemUKPiAgICAgIHJldCA9IGdf
cXVldWVfcG9wX3RhaWwoJmRldi0+cHJpdi0+d3JpdGVfYnVmc19wb29sKTsKPiAgICAgIGlmIChy
ZXQpIHsKPiAgICAgICAgICBkZXYtPnByaXYtPmN1cl9wb29sX3NpemUgLT0gcmV0LT5idWZfc2l6
ZTsKPiAtICAgIH0gZWxzZSB7Cj4gKyAgICAgICAgaWYgKHJldC0+YnVmX3NpemUgPCBzaXplKSB7
Cj4gKyAgICAgICAgICAgIHNwaWNlX2Fzc2VydCghc3BpY2VfZXh0cmFfY2hlY2tzIHx8IHJldC0+
cHJpdi0+cmVmcyA9PSAxKTsKPiArICAgICAgICAgICAgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1
ZmZlcl9mcmVlKHJldCk7Cj4gKyAgICAgICAgICAgIHJldCA9IE5VTEw7Cj4gKyAgICAgICAgfQo+
ICsgICAgfQo+ICsgICAgaWYgKHJldCA9PSBOVUxMKSB7Cj4gICAgICAgICAgc3RydWN0IFJlZENo
YXJEZXZpY2VXcml0ZUJ1ZmZlckZ1bGwgewo+IC0gICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3Jp
dGVCdWZmZXIgYnVmZmVyOwo+ICAgICAgICAgICAgICBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJQ
cml2YXRlIHByaXY7Cj4gKyAgICAgICAgICAgIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciBidWZm
ZXI7Cj4gICAgICAgICAgfSAqd3JpdGVfYnVmOwo+IC0gICAgICAgIHdyaXRlX2J1ZiA9IGdfbmV3
MChzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyRnVsbCwgMSk7Cj4gKyAgICAgICAgd3Jp
dGVfYnVmID0gZ19tYWxsb2Moc2l6ZW9mKHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJG
dWxsKSArCj4gc2l6ZSk7Cj4gKyAgICAgICAgbWVtc2V0KHdyaXRlX2J1ZiwgMCwgc2l6ZW9mKCp3
cml0ZV9idWYpKTsKPiArICAgICAgICB3cml0ZV9idWYtPnByaXYucmVmcyA9IDE7Cj4gICAgICAg
ICAgcmV0ID0gJndyaXRlX2J1Zi0+YnVmZmVyOwo+ICsgICAgICAgIHJldC0+YnVmX3NpemUgPSBz
aXplOwo+ICAgICAgICAgIHJldC0+cHJpdiA9ICZ3cml0ZV9idWYtPnByaXY7Cj4gICAgICB9Cj4g
IAo+ICAgICAgc3BpY2VfYXNzZXJ0KCFyZXQtPmJ1Zl91c2VkKTsKPiAgCj4gLSAgICBpZiAocmV0
LT5idWZfc2l6ZSA8IHNpemUpIHsKPiAtICAgICAgICByZXQtPmJ1ZiA9IGdfcmVhbGxvYyhyZXQt
PmJ1Ziwgc2l6ZSk7Cj4gLSAgICAgICAgcmV0LT5idWZfc2l6ZSA9IHNpemU7Cj4gLSAgICB9Cj4g
ICAgICByZXQtPnByaXYtPm9yaWdpbiA9IG9yaWdpbjsKPiAgCj4gICAgICBpZiAob3JpZ2luID09
IFdSSVRFX0JVRkZFUl9PUklHSU5fQ0xJRU5UKSB7Cj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFy
LWRldmljZS5oIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiBpbmRleCA3ZDNhZDhiM2EuLjUzMjdj
MjVlNSAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ICsrKyBiL3NlcnZlci9j
aGFyLWRldmljZS5oCj4gQEAgLTE1MSwxMSArMTUxLDExIEBAIEdUeXBlIHJlZF9jaGFyX2Rldmlj
ZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gIC8qIGJ1ZmZlciB0aGF0IGlzIHVzZWQg
Zm9yIHdyaXRpbmcgdG8gdGhlIGRldmljZSAqLwo+ICB0eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2
aWNlV3JpdGVCdWZmZXJQcml2YXRlCj4gIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGU7
Cj4gIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciB7Cj4gLSAgICB1aW50
OF90ICpidWY7Cj4gICAgICB1aW50MzJfdCBidWZfc2l6ZTsKPiAgICAgIHVpbnQzMl90IGJ1Zl91
c2VkOwo+ICAKPiAgICAgIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlclByaXZhdGUgKnByaXY7Cj4g
KyAgICB1aW50OF90IGJ1ZlswXTsKPiAgfSBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXI7Cj4gIAo+
ICB2b2lkIHJlZF9jaGFyX2RldmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAq
ZGV2LAo+IC0tCj4gMi4yMC4xCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
