Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521649E58E
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E8C89993;
	Tue, 27 Aug 2019 10:18:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B8C89993
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:18:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70D3E8AC6F5;
 Tue, 27 Aug 2019 10:18:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 676FD600D1;
 Tue, 27 Aug 2019 10:18:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E29918089C8;
 Tue, 27 Aug 2019 10:18:15 +0000 (UTC)
Date: Tue, 27 Aug 2019 06:18:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Message-ID: <1129535874.9359015.1566901095222.JavaMail.zimbra@redhat.com>
In-Reply-To: <m1v9uiex4d.fsf@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-27-fziglio@redhat.com> <m1v9uiex4d.fsf@dinechin.org>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.114, 10.4.195.25]
Thread-Topic: test-cd-emu: Test attach/detach emulated device
Thread-Index: nE6/MS5UGnyIX2ahblwKHOzbOph8Tw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Tue, 27 Aug 2019 10:18:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 26/29] test-cd-emu: Test
 attach/detach emulated device
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

PiAKPiBGcmVkaWFubyBaaWdsaW8gd3JpdGVzOgo+IAo+ID4gTW9jayBzb21lIHVzYi1iYWNrZW5k
IGZ1bmN0aW9ucyB0byBiZSBhYmxlIHRvIHNpbXVsYXRlIGRldmljZQo+ID4gYXR0YWNobWVudCBh
bmQgZGV0YWNobWVudC4KPiA+ICsKPiA+ICsgICAgLy8gdGhpcyBpdCdzIHRoZSBjb3JyZWN0IHNl
cXVlbmNlIHRvIGZyZWUgc2Vzc2lvbiEKPiA+ICsgICAgLy8gZ19vYmplY3RfdW5yZWYgaXMgbm90
IGVub3VnaCwgY2F1c2luZyB3cm9uZyByZWZlcmVuY2UgY291bnRpbmdzCj4gPiArICAgIHNwaWNl
X3Nlc3Npb25fZGlzY29ubmVjdChzZXNzaW9uKTsKPiA+ICsgICAgZ19vYmplY3RfdW5yZWYoc2Vz
c2lvbik7Cj4gPiArICAgIHdoaWxlIChnX21haW5fY29udGV4dF9pdGVyYXRpb24oTlVMTCwgRkFM
U0UpKSB7Cj4gPiArICAgICAgICBjb250aW51ZTsKPiA+ICsgICAgfQo+IAo+IFRoaXMgbG9va3Mg
c28gcGVjdWxpYXIgdGhhdCBpdCBtaWdodCBiZSB3b3J0aCBwdXR0aW5nIGluIGl0cwo+IG93biBm
dW5jdGlvbiwgaW4gb3JkZXIgdG8gZmFjaWxpdGF0ZSByZXVzZS4KPiAKCkkgd2FzIHRoaW5raW5n
IGFib3V0IGEgRG9FdmVudHMgZnVuY3Rpb24gaW4gbWVtb3J5IG9mIHRoZSBnb29kIG9sZCBWQiEK
KHdlbGwsIGRvX2V2ZW50cyBpbiBDKS4KR2V0dGluZyB0aGVzZSBsaW5lcyByaWdodCB3YXMgbm90
IHJlYWxseSBlYXN5ISBDYWxsaW5nIGdfb2JqZWN0X3VucmVmCmRpcmVjdGx5IGNhdXNlcyBtdWx0
aXBsZSBjcmFzaGVzLiBUaGUgZGVhbGxvY2F0aW9ucyBhcmUgcXVldWVkIGluIEdMaWIuCgo+ID4g
Kwo+ID4gKyAgICBnX2Fzc2VydF9jbXBpbnQoZ29iamVjdHNfYWxsb2NhdGVkLCA9PSwgMCk7Cj4g
PiArfQo+ID4gKwo+ID4gIHN0YXRpYyB2b2lkCj4gPiAgd3JpdGVfdGVzdF9pc28odm9pZCkKPiA+
ICB7Cj4gPiBAQCAtODcsNiArMjM0LDggQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIqIGFyZ3Zb
XSkKPiA+Cj4gPiAgICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11L3NpbXBsZSIsIEdV
SU5UX1RPX1BPSU5URVIoMSksIG11bHRpcGxlKTsKPiA+ICAgICAgZ190ZXN0X2FkZF9kYXRhX2Z1
bmMoIi9jZC1lbXUvbXVsdGlwbGUiLCBHVUlOVF9UT19QT0lOVEVSKDEyOCksCj4gPiAgICAgIG11
bHRpcGxlKTsKPiA+ICsgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX25v
X2F1dG8iLCBHVUlOVF9UT19QT0lOVEVSKDApLAo+ID4gYXR0YWNoKTsKPiA+ICsgICAgZ190ZXN0
X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX2F1dG8iLCBHVUlOVF9UT19QT0lOVEVSKDEp
LAo+ID4gYXR0YWNoKTsKPiA+Cj4gPiAgICAgIHJldHVybiBnX3Rlc3RfcnVuKCk7Cj4gPiAgfQo+
IAoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
