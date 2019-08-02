Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8727F5B9
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 13:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FFE6EDC4;
	Fri,  2 Aug 2019 11:07:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCD3F6EDC4
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 11:07:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A44533025F
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 11:07:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EB145D9D3
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 11:07:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24BC418089C8;
 Fri,  2 Aug 2019 11:07:08 +0000 (UTC)
Date: Fri, 2 Aug 2019 07:07:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <2062692342.4395650.1564744027940.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190802094044.42ezxq6nlg3bbsrm@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-3-fziglio@redhat.com>
 <20190802094044.42ezxq6nlg3bbsrm@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.10]
Thread-Topic: char-device: Allocate all write buffer in a single block
Thread-Index: HFGrgJMwAwZJXz4cGW1f0FEF5sQPyg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 02 Aug 2019 11:07:08 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIE1heSAzMCwgMjAxOSBhdCAwMzoyMjo0NFBNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBUaGVyZSBhcmUgbm8gbXVjaCBkYXRhIG90aGVyIHRo
YW4gdGhlIGJ1ZmZlciwgcmVkdWNlIHRoZQo+ID4gYWxsb2NhdGlvbnMuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4g
PiAgc2VydmVyL2NoYXItZGV2aWNlLmMgfCAyNyArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0K
PiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuaCB8ICAyICstCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAx
NiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci9jaGFyLWRldmljZS5jIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+IGluZGV4IDg5NTgx
ZWE0Mi4uMDU5ZThlNWY2IDEwMDY0NAo+ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+
ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiBAQCAtMTQ5LDExICsxNDksOSBAQCByZWRf
Y2hhcl9kZXZpY2VfcmVtb3ZlX2NsaWVudChSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiBSZWRDbGll
bnQgKmNsaWVudCkKPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCByZWRfY2hhcl9kZXZpY2Vfd3JpdGVf
YnVmZmVyX2ZyZWUoUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyCj4gPiAgKmJ1ZikKPiA+ICB7Cj4g
PiAtICAgIGlmIChidWYgPT0gTlVMTCkKPiA+IC0gICAgICAgIHJldHVybjsKPiA+IC0KPiA+IC0g
ICAgZ19mcmVlKGJ1Zi0+YnVmKTsKPiA+IC0gICAgZ19mcmVlKGJ1Zik7Cj4gPiArICAgIGlmIChi
dWYpIHsKPiA+ICsgICAgICAgIGdfZnJlZShidWYtPnByaXYpOwo+ID4gKyAgICB9Cj4gPiAgfQo+
ID4gIAo+ID4gIHN0YXRpYyB2b2lkIHdyaXRlX2J1ZmZlcnNfcXVldWVfZnJlZShHUXVldWUgKndy
aXRlX3F1ZXVlKQo+ID4gQEAgLTU0MiwyMiArNTQwLDI3IEBAIHJlZF9jaGFyX2RldmljZV93cml0
ZV9idWZmZXJfZ2V0KFJlZENoYXJEZXZpY2UgKmRldiwKPiA+IFJlZENsaWVudCAqY2xpZW50LCBp
bnQgc2l6ZQo+ID4gICAgICByZXQgPSBnX3F1ZXVlX3BvcF90YWlsKCZkZXYtPnByaXYtPndyaXRl
X2J1ZnNfcG9vbCk7Cj4gPiAgICAgIGlmIChyZXQpIHsKPiA+ICAgICAgICAgIGRldi0+cHJpdi0+
Y3VyX3Bvb2xfc2l6ZSAtPSByZXQtPmJ1Zl9zaXplOwo+ID4gLSAgICB9IGVsc2Ugewo+ID4gKyAg
ICAgICAgaWYgKHJldC0+YnVmX3NpemUgPCBzaXplKSB7Cj4gPiArICAgICAgICAgICAgc3BpY2Vf
YXNzZXJ0KCFzcGljZV9leHRyYV9jaGVja3MgfHwgcmV0LT5wcml2LT5yZWZzID09IDEpOwo+IAo+
IFdlaXJkIHdlIGRpZG4ndCBjaGVjayB0aGlzIGJlZm9yZS4uLgo+IAoKRG9lcyBub3QgaHVydCwg
ZGlzYWJsZWQgYnkgZGVmYXVsdAoKPiA+ICsgICAgICAgICAgICByZWRfY2hhcl9kZXZpY2Vfd3Jp
dGVfYnVmZmVyX2ZyZWUocmV0KTsKPiA+ICsgICAgICAgICAgICByZXQgPSBOVUxMOwo+IAo+IEkg
dGhpbmsgdGhhdCBpbiB0aGUga2VybmVsIHRoZXkgZG8gdGhpcyBraW5kIG9mIF9mcmVlKCkgZnVu
Y3Rpb24KPiB0byByZXR1cm4gTlVMTCBqdXN0IHRvIG1ha2UgdGhpcyBraW5kIG9mIGZ1bmN0aW9u
IGNhbGwgbmljZXIsCj4gdGhhdCBpcywKPiAgICAgCj4gICAgIHJldCA9IHJlZF9jaGFyX2Rldmlj
ZV93cml0ZV9idWZmZXJfZnJlZShyZXQpOwo+IAoKVGhhdCdzIHdlaXJkCgo+IHdoaWxlIHdlIG9m
dGVuIHVzZSBnbGliJ3MKPiAKPiAgICAgZ19jbGVhcl9wb2ludGVyKCZyZXQsIHJlZF9jaGFyX2Rl
dmljZV93cml0ZV9idWZmZXJfZnJlZSk7Cj4gCgpIb25lc3RseSBnX2NsZWFyX3BvaW50ZXIgaW1w
bGVtZW50YXRpb24gaXMgcXVpdGUgYmFkLCByZWFsbHkKdHlwZSB1bnNhZmUuIFlvdSBwcm9iYWJs
eSBjYW4gcGFzcyBhIHN0cmluZyBhcyBzZWNvbmQgYXJndW1lbnQKYW5kIGNvbXBpbGVyIHdvbid0
IGNvbXBsYWluCgo+IC4uLiBqdXN0IGEgc2lsbHkgY29tbWVudCA6KQo+IAo+ID4gKyAgICAgICAg
fQo+ID4gKyAgICB9Cj4gPiArICAgIGlmIChyZXQgPT0gTlVMTCkgewo+ID4gICAgICAgICAgc3Ry
dWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlckZ1bGwgewo+ID4gLSAgICAgICAgICAgIFJlZENo
YXJEZXZpY2VXcml0ZUJ1ZmZlciBidWZmZXI7Cj4gPiAgICAgICAgICAgICAgUmVkQ2hhckRldmlj
ZVdyaXRlQnVmZmVyUHJpdmF0ZSBwcml2Owo+ID4gKyAgICAgICAgICAgIFJlZENoYXJEZXZpY2VX
cml0ZUJ1ZmZlciBidWZmZXI7Cj4gPiAgICAgICAgICB9ICp3cml0ZV9idWY7Cj4gPiAtICAgICAg
ICB3cml0ZV9idWYgPSBnX25ldzAoc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlckZ1bGws
IDEpOwo+ID4gKyAgICAgICAgd3JpdGVfYnVmID0gZ19tYWxsb2Moc2l6ZW9mKHN0cnVjdCBSZWRD
aGFyRGV2aWNlV3JpdGVCdWZmZXJGdWxsKSArCj4gPiBzaXplKTsKPiA+ICsgICAgICAgIG1lbXNl
dCh3cml0ZV9idWYsIDAsIHNpemVvZigqd3JpdGVfYnVmKSk7Cj4gCj4gZ19tYWxsb2MwPwo+IAoK
SXQgd291bGQgY2xlYXIgdGhlIGVudGlyZSBidWZmZXIsIHRoaXMgd2F5IHRoZSBkYXRhIGFyZSBu
b3QgY2xlYXJlZC4KKERvbid0IHVuZGVyZXN0aW1hdGUgbWVtb3J5IGNvcGllcyBhbmQgcmVzZXQh
KQoKPiA+ICsgICAgICAgIHdyaXRlX2J1Zi0+cHJpdi5yZWZzID0gMTsKPiAKPiBXZWlyZCB0aGF0
IHRoaXMgd2FzIG5vdCBiZWluZyBzZXQgYmVmb3JlLi4uCj4gCgpJdCB3YXMgc2V0IGluIGEgZGlm
ZmVyZW50IHBhdGgsIGJ1dCB3YXMgc2V0IChtYXliZSBwdXR0aW5nIGluIGNhY2hlIG9yCmV4dHJh
Y3RpbmcpLgoKPiA+ICAgICAgICAgIHJldCA9ICZ3cml0ZV9idWYtPmJ1ZmZlcjsKPiA+ICsgICAg
ICAgIHJldC0+YnVmX3NpemUgPSBzaXplOwo+ID4gICAgICAgICAgcmV0LT5wcml2ID0gJndyaXRl
X2J1Zi0+cHJpdjsKPiA+ICAgICAgfQo+ID4gIAo+ID4gICAgICBzcGljZV9hc3NlcnQoIXJldC0+
YnVmX3VzZWQpOwo+ID4gIAo+ID4gLSAgICBpZiAocmV0LT5idWZfc2l6ZSA8IHNpemUpIHsKPiA+
IC0gICAgICAgIHJldC0+YnVmID0gZ19yZWFsbG9jKHJldC0+YnVmLCBzaXplKTsKPiA+IC0gICAg
ICAgIHJldC0+YnVmX3NpemUgPSBzaXplOwo+ID4gLSAgICB9Cj4gCj4gTG9va3MgZmluZSwKPiBB
Y2tlZC1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAKPiA+ICAgICAg
cmV0LT5wcml2LT5vcmlnaW4gPSBvcmlnaW47Cj4gPiAgCj4gPiAgICAgIGlmIChvcmlnaW4gPT0g
V1JJVEVfQlVGRkVSX09SSUdJTl9DTElFTlQpIHsKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hh
ci1kZXZpY2UuaCBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiBpbmRleCA3ZDNhZDhiM2EuLjUz
MjdjMjVlNSAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiArKysgYi9z
ZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gQEAgLTE1MSwxMSArMTUxLDExIEBAIEdUeXBlIHJlZF9j
aGFyX2RldmljZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiAgLyogYnVmZmVyIHRo
YXQgaXMgdXNlZCBmb3Igd3JpdGluZyB0byB0aGUgZGV2aWNlICovCj4gPiAgdHlwZWRlZiBzdHJ1
Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyUHJpdmF0ZQo+ID4gIFJlZENoYXJEZXZpY2VXcml0
ZUJ1ZmZlclByaXZhdGU7Cj4gPiAgdHlwZWRlZiBzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVm
ZmVyIHsKPiA+IC0gICAgdWludDhfdCAqYnVmOwo+ID4gICAgICB1aW50MzJfdCBidWZfc2l6ZTsK
PiA+ICAgICAgdWludDMyX3QgYnVmX3VzZWQ7Cj4gPiAgCj4gPiAgICAgIFJlZENoYXJEZXZpY2VX
cml0ZUJ1ZmZlclByaXZhdGUgKnByaXY7Cj4gPiArICAgIHVpbnQ4X3QgYnVmWzBdOwo+ID4gIH0g
UmVkQ2hhckRldmljZVdyaXRlQnVmZmVyOwo+ID4gIAo+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNl
X3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNlICpkZXYsCgpGcmVkaWFubwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
