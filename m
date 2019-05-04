Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB79213B7C
	for <lists+spice-devel@lfdr.de>; Sat,  4 May 2019 19:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83BD9893EA;
	Sat,  4 May 2019 17:52:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A57893EA
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:52:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 25AC7308339A
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:52:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E2AC5D961
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:52:52 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E6FC3FB10;
 Sat,  4 May 2019 17:52:52 +0000 (UTC)
Date: Sat, 4 May 2019 13:52:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <202804177.16496130.1556992369134.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190504143241.28352-3-victortoso@redhat.com>
References: <20190504143241.28352-1-victortoso@redhat.com>
 <20190504143241.28352-3-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.16]
Thread-Topic: channel-usbredir: reduce amount of #ifdef USE_USBREDIR
Thread-Index: +mf74CxZCvOdFVzg+ZafF3GBB/AxdA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Sat, 04 May 2019 17:52:52 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/2] channel-usbredir: reduce amount
 of #ifdef USE_USBREDIR
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gTm90IHJlYWxs
eSBpbnRlcmVzdGluZyB0byBrZWVwIHRyYWNraW5nIHdoYXQgaXMgaW5zaWRlIG9yIG5vdAo+IFVT
RV9VU0JSRURJUiBvbiBjaGFubmVsLXVzYnJlZGlyIGl0c2VsZi4gV2hlbiB1c2JyZWRpciBpcyBk
aXNhYmxlZCwKPiBqdXN0IGEgZHVtbXkgZnVuY3Rpb25zIGFyZSBuZWVkZWQgd2l0aCBhIGJhc2lj
IHNwaWNlLWNsaWVudC5oIGluY2x1ZGUuCj4gCj4gQWZ0ZXIgdGhpcyBwYXRjaCwgd2UgaGF2ZSBh
IHNpbmdsZSAjaWZkZWYgVVNFX1VTQlJFRElSIGFuZCB0aGUgI2Vsc2UKPiAod2hlbiBpdCBpcyBk
aXNhYmxlZCkgaXMgZGVmaW5lZCBpbiB0aGUgZW5kIG9mIHRoZSBmaWxlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+CgpJdCBzZWVtcyBnb29k
LCBJIHdvdWxkIGFkZCBzb21ldGhpbmcgbGlrZSB0aGlzCgpodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvY29tbWl0L2I5YTlmYzhmODg2ZjM2ODI2MTUyYmY0
MWJiZWIyYWMzZjY3MzJjODEKCj4gLS0tCj4gIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCAyOSAr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVz
YnJlZGlyLmMgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gaW5kZXggZjgwMWM4ZS4uMTkxMGZm
NiAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gKysrIGIvc3JjL2NoYW5u
ZWwtdXNicmVkaXIuYwo+IEBAIC0zMyw3ICszMyw2IEBACj4gICNpbmNsdWRlICJjaGFubmVsLXVz
YnJlZGlyLXByaXYuaCIKPiAgI2luY2x1ZGUgInVzYi1kZXZpY2UtbWFuYWdlci1wcml2LmgiCj4g
ICNpbmNsdWRlICJ1c2J1dGlsLmgiCj4gLSNlbmRpZgo+ICAKPiAgI2luY2x1ZGUgImNvbW1vbi9s
b2cuaCIKPiAgI2luY2x1ZGUgInNwaWNlLWNsaWVudC5oIgo+IEBAIC01Myw4ICs1Miw2IEBACj4g
ICAqIGZyb20gdGhlIFNwaWNlIGNsaWVudCB0byB0aGUgVk0uIFRoaXMgY2hhbm5lbCBoYW5kbGVz
IHRoZXNlIG1lc3NhZ2VzLgo+ICAgKi8KPiAgCj4gLSNpZmRlZiBVU0VfVVNCUkVESVIKPiAtCj4g
ICNkZWZpbmUgQ09NUFJFU1NfVEhSRVNIT0xEIDEwMDAKPiAgZW51bSBTcGljZVVzYnJlZGlyQ2hh
bm5lbFN0YXRlIHsKPiAgICAgIFNUQVRFX0RJU0NPTk5FQ1RFRCwKPiBAQCAtMTAyLDIzICs5OSwx
NiBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl91bmxvY2tfbG9jayh2b2lkICp1c2VyX2RhdGEpOwo+
ICBzdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xvY2sodm9pZCAqdXNlcl9kYXRhKTsKPiAgCj4g
IEdfREVGSU5FX1RZUEVfV0lUSF9QUklWQVRFKFNwaWNlVXNicmVkaXJDaGFubmVsLCBzcGljZV91
c2JyZWRpcl9jaGFubmVsLAo+ICBTUElDRV9UWVBFX0NIQU5ORUwpCj4gLSNlbHNlCj4gLUdfREVG
SU5FX1RZUEUoU3BpY2VVc2JyZWRpckNoYW5uZWwsIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWwsCj4g
U1BJQ0VfVFlQRV9DSEFOTkVMKQo+IC0jZW5kaWYKPiAgCj4gIAo+ICAvKiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gKi8K
PiAgCj4gIHN0YXRpYyB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfaW5pdChTcGljZVVzYnJl
ZGlyQ2hhbm5lbCAqY2hhbm5lbCkKPiAgewo+IC0jaWZkZWYgVVNFX1VTQlJFRElSCj4gICAgICBj
aGFubmVsLT5wcml2ID0gc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9nZXRfaW5zdGFuY2VfcHJpdmF0
ZShjaGFubmVsKTsKPiAgICAgIGdfbXV0ZXhfaW5pdCgmY2hhbm5lbC0+cHJpdi0+ZGV2aWNlX2Nv
bm5lY3RfbXV0ZXgpOwo+IC0jZW5kaWYKPiAgfQo+ICAKPiAtI2lmZGVmIFVTRV9VU0JSRURJUgo+
IC0KPiAgc3RhdGljIHZvaWQgX2NoYW5uZWxfcmVzZXRfZmluaXNoKFNwaWNlVXNicmVkaXJDaGFu
bmVsICpjaGFubmVsLCBnYm9vbGVhbgo+ICBtaWdyYXRpbmcpCj4gIHsKPiAgICAgIFNwaWNlVXNi
cmVkaXJDaGFubmVsUHJpdmF0ZSAqcHJpdiA9IGNoYW5uZWwtPnByaXY7Cj4gQEAgLTE3NiwxMSAr
MTY2LDkgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9yZXNldChTcGljZUNo
YW5uZWwKPiAqYywgZ2Jvb2xlYW4gbWlncmF0aW5nKQo+ICAKPiAgICAgIF9jaGFubmVsX3Jlc2V0
X2ZpbmlzaChjaGFubmVsLCBtaWdyYXRpbmcpOwo+ICB9Cj4gLSNlbmRpZgo+ICAKPiAgc3RhdGlj
IHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9jbGFzc19pbml0KFNwaWNlVXNicmVkaXJDaGFu
bmVsQ2xhc3MKPiAgKmtsYXNzKQo+ICB7Cj4gLSNpZmRlZiBVU0VfVVNCUkVESVIKPiAgICAgIEdP
YmplY3RDbGFzcyAqZ29iamVjdF9jbGFzcyA9IEdfT0JKRUNUX0NMQVNTKGtsYXNzKTsKPiAgICAg
IFNwaWNlQ2hhbm5lbENsYXNzICpjaGFubmVsX2NsYXNzID0gU1BJQ0VfQ0hBTk5FTF9DTEFTUyhr
bGFzcyk7Cj4gIAo+IEBAIC0xOTAsMTAgKzE3OCw4IEBAIHN0YXRpYyB2b2lkCj4gc3BpY2VfdXNi
cmVkaXJfY2hhbm5lbF9jbGFzc19pbml0KFNwaWNlVXNicmVkaXJDaGFubmVsQ2xhc3MgKmtsYXNz
KQo+ICAgICAgY2hhbm5lbF9jbGFzcy0+Y2hhbm5lbF9yZXNldCA9IHNwaWNlX3VzYnJlZGlyX2No
YW5uZWxfcmVzZXQ7Cj4gIAo+ICAgICAgY2hhbm5lbF9zZXRfaGFuZGxlcnMoU1BJQ0VfQ0hBTk5F
TF9DTEFTUyhrbGFzcykpOwo+IC0jZW5kaWYKPiAgfQo+ICAKPiAtI2lmZGVmIFVTRV9VU0JSRURJ
Ugo+ICBzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2Rpc3Bvc2UoR09iamVjdCAq
b2JqKQo+ICB7Cj4gICAgICBTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCA9IFNQSUNFX1VT
QlJFRElSX0NIQU5ORUwob2JqKTsKPiBAQCAtMjM2LDkgKzIyMiw3IEBAIHN0YXRpYyB2b2lkIHNw
aWNlX3VzYnJlZGlyX2NoYW5uZWxfZmluYWxpemUoR09iamVjdCAqb2JqKQo+ICAKPiAgICAgIGlm
IChjaGFubmVsLT5wcml2LT5ob3N0KQo+ICAgICAgICAgIHVzYnJlZGlyaG9zdF9jbG9zZShjaGFu
bmVsLT5wcml2LT5ob3N0KTsKPiAtI2lmZGVmIFVTRV9VU0JSRURJUgo+ICAgICAgZ19tdXRleF9j
bGVhcigmY2hhbm5lbC0+cHJpdi0+ZGV2aWNlX2Nvbm5lY3RfbXV0ZXgpOwo+IC0jZW5kaWYKPiAg
Cj4gICAgICAvKiBDaGFpbiB1cCB0byB0aGUgcGFyZW50IGNsYXNzICovCj4gICAgICBpZiAoR19P
QkpFQ1RfQ0xBU1Moc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9wYXJlbnRfY2xhc3MpLT5maW5hbGl6
ZSkKPiBAQCAtOTQ2LDQgKzkzMCwxNyBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl9oYW5kbGVfbXNn
KFNwaWNlQ2hhbm5lbCAqYywKPiBTcGljZU1zZ0luICppbikKPiAgICAgIH0KPiAgfQo+ICAKPiAr
I2Vsc2UKPiArI2luY2x1ZGUgInNwaWNlLWNsaWVudC5oIgo+ICsKPiArR19ERUZJTkVfVFlQRShT
cGljZVVzYnJlZGlyQ2hhbm5lbCwgc3BpY2VfdXNicmVkaXJfY2hhbm5lbCwKPiBTUElDRV9UWVBF
X0NIQU5ORUwpCj4gKwo+ICtzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2luaXQo
U3BpY2VVc2JyZWRpckNoYW5uZWwgKmNoYW5uZWwpCj4gK3sKPiArfQo+ICsKPiArc3RhdGljIHZv
aWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9jbGFzc19pbml0KFNwaWNlVXNicmVkaXJDaGFubmVs
Q2xhc3MKPiAqa2xhc3MpCj4gK3sKPiArfQo+ICsKPiAgI2VuZGlmIC8qIFVTRV9VU0JSRURJUiAq
LwoKQ0kgcmVzdWx0cyBhdCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZnppZ2xpby9z
cGljZS1ndGsvcGlwZWxpbmVzLzM1MDk3CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
