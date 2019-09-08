Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C0DACFD0
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2019 18:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3329D890FE;
	Sun,  8 Sep 2019 16:44:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67330890FE
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 16:44:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 89E5F302246D
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 16:44:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 823CA5D9D6
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 16:44:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7510741F4D;
 Sun,  8 Sep 2019 16:44:27 +0000 (UTC)
Date: Sun, 8 Sep 2019 12:44:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1075329485.11053740.1567961066784.JavaMail.zimbra@redhat.com>
In-Reply-To: <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-5-victortoso@redhat.com>
 <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.26]
Thread-Topic: session: gst_deinit() GStreamer if we initialize it
Thread-Index: JN3HA+xWWZq0hdKKb3tY5/04ME2u2g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Sun, 08 Sep 2019 16:44:27 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 4/6] session: gst_deinit()
 GStreamer if we initialize it
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

PiAKPiBIaSwKPiAKPiBPbiA5LzIvMTkgNzowNCBQTSwgVmljdG9yIFRvc28gd3JvdGU6Cj4gPiBG
cm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gPgo+ID4gTGV0J3MgZ3N0X2Rl
aW5pdCgpIGlmIHdlIGluaXRpYWxpemUgaXQgZm9yIHRoZSBzYW1lIHJhdGlvbmFsZSBwb2ludGVk
IG91dAo+ID4gaW4gMDM4MWU2MiAic3BpY3k6IEFkZCBjYWxsIG9mIGdzdF9kZWluaXQgYXQgcHJv
Z3JhbSBleGl0IiBpbgo+ID4gMjAxNy0xMC0yMCBieSBDaHJpc3RvcGhlIGRlIERpbmVjaGluIDxk
aW5lY2hpbkByZWRoYXQuY29tPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2
aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICAgc3JjL3NwaWNlLXNlc3Npb24uYyB8
IDggKysrKysrKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5jIGIvc3JjL3NwaWNlLXNlc3Npb24uYwo+
ID4gaW5kZXggZGI0MGE1My4uMjEzNTM0OCAxMDA2NDQKPiA+IC0tLSBhL3NyYy9zcGljZS1zZXNz
aW9uLmMKPiA+ICsrKyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKPiA+IEBAIC0xMjMsNiArMTIzLDgg
QEAgc3RydWN0IF9TcGljZVNlc3Npb25Qcml2YXRlIHsKPiA+ICAgICAgIGdjaGFyICAgICAgICAg
ICAgICpuYW1lOwo+ID4gICAgICAgU3BpY2VJbWFnZUNvbXByZXNzaW9uIHByZWZlcnJlZF9jb21w
cmVzc2lvbjsKPiA+ICAgCj4gPiArICAgIGJvb2wgICAgICAgICAgICAgIGdzdF9pbml0X2J5X3Nw
aWNlOwo+ID4gKwo+ID4gICAgICAgLyogYXNzb2NpYXRlZCBvYmplY3RzICovCj4gPiAgICAgICBT
cGljZUF1ZGlvICAgICAgICAqYXVkaW9fbWFuYWdlcjsKPiA+ICAgICAgIFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqdXNiX21hbmFnZXI7Cj4gPiBAQCAtMzQzLDYgKzM0NSwxMCBAQCBzcGljZV9zZXNz
aW9uX2Rpc3Bvc2UoR09iamVjdCAqZ29iamVjdCkKPiA+ICAgICAgIGdfd2Fybl9pZl9mYWlsKHMt
PmNoYW5uZWxzX2Rlc3Ryb3lpbmcgPT0gMCk7Cj4gPiAgICAgICBnX3dhcm5faWZfZmFpbChzLT5j
aGFubmVscyA9PSBOVUxMKTsKPiA+ICAgCj4gPiArICAgIGlmIChzZXNzaW9uLT5wcml2LT5nc3Rf
aW5pdF9ieV9zcGljZSkgewo+ID4gKyAgICAgICAgZ3N0X2RlaW5pdCgpOwo+IAo+IAo+IFdvdWxk
bid0IGl0IGRlaW5pdCBvbiBtaWdyYXRpb24/IChJSVJDIGEgbmV3IHNlc3Npb24gaXMgY3JlYXRl
ZCkKPiAKPiAKPiBBY3R1YWxseSBnc3RyZWFtZXIgZG9jdW1lbnRhdGlvbiBzdGF0ZXM6Cj4gCj4g
Ikl0IGlzIG5vcm1hbGx5IG5vdCBuZWVkZWQgdG8gY2FsbCB0aGlzIGZ1bmN0aW9uIGluIGEgbm9y
bWFsIGFwcGxpY2F0aW9uCj4gIMKgYXMgdGhlIHJlc291cmNlcyB3aWxsIGF1dG9tYXRpY2FsbHkg
YmUgZnJlZWQgd2hlbiB0aGUgcHJvZ3JhbSB0ZXJtaW5hdGVzLgo+ICDCoFRoaXMgZnVuY3Rpb24g
aXMgdGhlcmVmb3JlIG1vc3RseSB1c2VkIGJ5IHRlc3RzdWl0ZXMgYW5kIG90aGVyIG1lbW9yeQo+
ICDCoHByb2ZpbGluZyB0b29scy4iCj4gCj4gQmVmb3JlIGl0IHdhcyB1c2VkIG9ubHkgYnkgc3Bp
Y3kgd2hpY2ggaSBndWVzcyBpdCdzIGNvbnNpZGVyZWQgbW9yZSBvZiBhCj4gdGVzdAo+IGNsaWVu
dCwgSSdtIG5vdCBzdXJlIHdlIHdvdWxkIGxpa2UgdG8gZGVpbml0IGJ5IHRoZSBzZXNzaW9uIChv
biB0aGUKPiBvdGhlciBoYW5kCj4gaSdtIGFsc28gbm90IHN1cmUgaG93IGhhcm1mdWwgaXQgd291
bGQgYmUpCj4gCj4gCj4gU25pci4KPiAKClNpbXBseSBkb24ndCBkbyBpdC4gR3N0cmVhbWVyIGlz
IG5vdCB3ZWxsIGRlc2lnbmVkIHRvIGNhbGwgdGhhdCBmdW5jdGlvbi4KCkl0IGxlYWRzIHRvIHBv
dGVudGlhbCBtZW1vcnkgYnVncy4gVGhlIGNoZWNrIHNob3VsZCBiZQoKaWYgKElfaW5pdGlhbGl6
ZWRfZ3N0cmVhbWVyICYmIG5vYm9keV9pc191c2luZ19vcl9hc3N1bWluZ19pc19pbml0aWFsaXpl
ZCkKICAgZ3N0X2RlaW5pdCgpCgpJZiBBIGluaXRpYWxpemUgR3N0cmVhbWVyIGFuZCBCIGRvbid0
IGJ1dCBqdXN0IGNoZWNrIGlzIGluaXRpYWxpemVkIHRoZW4Kd2hlbiBBIGNhbGwgZGVpbml0IHRo
ZSBvYmplY3RzIHVzZWQgYnkgQiB3aWxsIGNvbnRhaW4gcG90ZW50aWFsIGRhbmdsaW5nCnBvaW50
ZXJzLiBPbmUgcmlnaHQgaW50ZXJmYWNlIHdvdWxkIGJlIHNpbXBseSBpbml0L2RlaW5pdCBhbmQg
dXNlIGEgY291bnRlcgp0byB0cmFjayB0aGUgbnVtYmVyIG9mIGluaXRpYWxpemF0aW9uLgoKRnJl
ZGlhbm8KCgo+IAo+ID4gKyAgICB9Cj4gPiArCj4gPiAgICAgICBnX2NsZWFyX29iamVjdCgmcy0+
YXVkaW9fbWFuYWdlcik7Cj4gPiAgICAgICBnX2NsZWFyX29iamVjdCgmcy0+dXNiX21hbmFnZXIp
Owo+ID4gICAgICAgZ19jbGVhcl9vYmplY3QoJnMtPnByb3h5KTsKPiA+IEBAIC0yODg4LDUgKzI4
OTQsNyBAQCBzcGljZV9zZXNzaW9uX2VuYWJsZV9nc3RyZWFtZXIoU3BpY2VTZXNzaW9uICpzZXNz
aW9uKQo+ID4gICAgICAgaWYgKCFnc3RfaW5pdF9jaGVjayhOVUxMLCBOVUxMLCAmZXJyKSkgewo+
ID4gICAgICAgICAgIHNwaWNlX3dhcm5pbmcoIkRpc2FibGluZyBHU3RyZWFtZXIgdmlkZW8gc3Vw
cG9ydDogJXMiLAo+ID4gICAgICAgICAgIGVyci0+bWVzc2FnZSk7Cj4gPiAgICAgICAgICAgZ19j
bGVhcl9lcnJvcigmZXJyKTsKPiA+ICsgICAgfSBlbHNlIHsKPiA+ICsgICAgICAgIHNlc3Npb24t
PnByaXYtPmdzdF9pbml0X2J5X3NwaWNlID0gdHJ1ZTsKPiA+ICAgICAgIH0KPiA+ICAgfQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
