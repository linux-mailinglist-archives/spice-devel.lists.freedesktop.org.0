Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0637B9EB61
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1D7893D5;
	Tue, 27 Aug 2019 14:45:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B607893D5
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:45:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2A7E381DE3
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:45:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2090F60126
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:45:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15A3A24F2F;
 Tue, 27 Aug 2019 14:45:13 +0000 (UTC)
Date: Tue, 27 Aug 2019 10:45:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1444708632.9447180.1566917113046.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827123430.ghm4vdslptgmeacl@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-20-fziglio@redhat.com>
 <20190827123430.ghm4vdslptgmeacl@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.79, 10.4.195.27]
Thread-Topic: usb-redir: command-line option to create emulated CD drive
Thread-Index: vOI0GmO6az2FDE000S3tyoxPovObAw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 27 Aug 2019 14:45:13 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 19/29] usb-redir:
 command-line option to create emulated CD drive
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

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMDoyMjozNkFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBGcm9tOiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJl
bmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiAKPiA+IEFkZGVkIGNvbW1hbmQtbGluZSBvcHRpb24g
Zm9yIHNoYXJpbmcgZW11bGF0ZWQgQ0QgZGV2aWNlcy4KPiA+IEl0IHVzZXMgcHJvcGVydHkgaW50
ZXJmYWNlIG9mIHVzYi1kZXZpY2UtbWFuYWdlciB0bwo+ID4gY3JlYXRlIENELCB0aGlzIGlzIGEg
dGVtcG9yYXJ5IHNvbHV0aW9uIHVudGlsIHB1YmxpYyBBUEkgb2YKPiA+IHVzYi1kZXZpY2UtbWFu
YWdlciBkZWZpbmVkIGZvciBzaGFyZWQgQ0QgbWFuYWdlbWVudCBmcm9tIGJvdGgKPiA+IEdVSSBh
bmQgY29tbWFuZCBsaW5lLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNo
IDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiAtLS0KPiA+ICBzcmMvc3BpY2Utb3B0
aW9uLmMgICAgICAgfCAxNyArKysrKysrKysrKysrKysrKwo+ID4gIHNyYy91c2ItZGV2aWNlLW1h
bmFnZXIuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NyYy9z
cGljZS1vcHRpb24uYyBiL3NyYy9zcGljZS1vcHRpb24uYwo+ID4gaW5kZXggOGM0ZTcwN2MuLmYw
YjNiNWQ2IDEwMDY0NAo+ID4gLS0tIGEvc3JjL3NwaWNlLW9wdGlvbi5jCj4gPiArKysgYi9zcmMv
c3BpY2Utb3B0aW9uLmMKPiA+IEBAIC0zMiw2ICszMiw3IEBAIHN0YXRpYyBjaGFyICpzbWFydGNh
cmRfZGIgPSBOVUxMOwo+ID4gIHN0YXRpYyBjaGFyICpzbWFydGNhcmRfY2VydGlmaWNhdGVzID0g
TlVMTDsKPiA+ICBzdGF0aWMgY2hhciAqdXNicmVkaXJfYXV0b19yZWRpcmVjdF9maWx0ZXIgPSBO
VUxMOwo+ID4gIHN0YXRpYyBjaGFyICp1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0ID0gTlVM
TDsKPiA+ICtzdGF0aWMgZ2NoYXIgKipjZF9zaGFyZV9maWxlcyA9IE5VTEw7Cj4gPiAgc3RhdGlj
IGdib29sZWFuIHNtYXJ0Y2FyZCA9IEZBTFNFOwo+ID4gIHN0YXRpYyBnYm9vbGVhbiBkaXNhYmxl
X2F1ZGlvID0gRkFMU0U7Cj4gPiAgc3RhdGljIGdib29sZWFuIGRpc2FibGVfdXNicmVkaXIgPSBG
QUxTRTsKPiA+IEBAIC0xODMsNiArMTg0LDkgQEAgR09wdGlvbkdyb3VwKiBzcGljZV9nZXRfb3B0
aW9uX2dyb3VwKHZvaWQpCj4gPiAgICAgICAgICAgIE5fKCJGaWx0ZXIgc2VsZWN0aW5nIFVTQiBk
ZXZpY2VzIHRvIGJlIGF1dG8tcmVkaXJlY3RlZCB3aGVuCj4gPiAgICAgICAgICAgIHBsdWdnZWQg
aW4iKSwgTl8oIjxmaWx0ZXItc3RyaW5nPiIpIH0sCj4gPiAgICAgICAgICB7ICJzcGljZS11c2Jy
ZWRpci1yZWRpcmVjdC1vbi1jb25uZWN0IiwgJ1wwJywgMCwKPiA+ICAgICAgICAgIEdfT1BUSU9O
X0FSR19TVFJJTkcsICZ1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LAo+ID4gICAgICAgICAg
ICBOXygiRmlsdGVyIHNlbGVjdGluZyBVU0IgZGV2aWNlcyB0byByZWRpcmVjdCBvbiBjb25uZWN0
IiksCj4gPiAgICAgICAgICAgIE5fKCI8ZmlsdGVyLXN0cmluZz4iKSB9LAo+ID4gKyAgICAgICAg
eyAic3BpY2Utc2hhcmUtY2QiLCAnXDAnLCAwLCBHX09QVElPTl9BUkdfU1RSSU5HX0FSUkFZLAo+
ID4gJmNkX3NoYXJlX2ZpbGVzLAo+ID4gKyAgICAgICAgICBOXygiTmFtZSBvZiBJU08gZmlsZSBv
ciBDRC9EVkQgZGV2aWNlIHRvIHNoYXJlOyBwcmVmaXggJyEnIHRvCj4gPiBkZWxldGUgb24gZWpl
Y3QiKSwKPiA+ICsgICAgICAgICAgTl8oIjxmaWxlbmFtZT4gKHJlcGVhdCBhbGxvd2VkKSIpIH0s
Cj4gPiAgICAgICAgICB7ICJzcGljZS1jYWNoZS1zaXplIiwgJ1wwJywgMCwgR19PUFRJT05fQVJH
X0lOVCwgJmNhY2hlX3NpemUsCj4gPiAgICAgICAgICAgIE5fKCJJbWFnZSBjYWNoZSBzaXplIChk
ZXByZWNhdGVkKSIpLCBOXygiPGJ5dGVzPiIpIH0sCj4gPiAgICAgICAgICB7ICJzcGljZS1nbHot
d2luZG93LXNpemUiLCAnXDAnLCAwLCBHX09QVElPTl9BUkdfSU5ULAo+ID4gICAgICAgICAgJmds
el93aW5kb3dfc2l6ZSwKPiA+IEBAIC0yODgsNiArMjkyLDE5IEBAIHZvaWQgc3BpY2Vfc2V0X3Nl
c3Npb25fb3B0aW9uKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdXNicmVkaXJfcmVkaXJlY3Rfb25fY29ubmVjdCwgTlVMTCk7Cj4gPiAgICAgICAg
ICB9Cj4gPiAgICAgIH0KPiA+ICsgICAgaWYgKGNkX3NoYXJlX2ZpbGVzKSB7Cj4gPiArICAgICAg
ICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQo+ID4gKyAgICAgICAgICAgICAgICBnZXRfdXNi
X2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vzc2lvbiwKPiA+ICItLXNwaWNlLXNoYXJlLWNk
Iik7Cj4gPiArICAgICAgICBpZiAobSkgewo+ID4gKyAgICAgICAgICAgIGdjaGFyICoqbmFtZSA9
IGNkX3NoYXJlX2ZpbGVzOwo+ID4gKyAgICAgICAgICAgIHdoaWxlIChuYW1lICYmICpuYW1lKSB7
Cj4gPiArICAgICAgICAgICAgICAgIGdfb2JqZWN0X3NldChtLCAic2hhcmUtY2QiLCAqbmFtZSwg
TlVMTCk7Cj4gPiArICAgICAgICAgICAgICAgIG5hbWUrKzsKPiA+ICsgICAgICAgICAgICB9Cj4g
PiArICAgICAgICB9Cj4gPiArICAgICAgICBnX3N0cmZyZWV2KGNkX3NoYXJlX2ZpbGVzKTsKPiA+
ICsgICAgICAgIGNkX3NoYXJlX2ZpbGVzID0gTlVMTDsKPiA+ICsgICAgfQo+ID4gICAgICBpZiAo
ZGlzYWJsZV91c2JyZWRpcikKPiA+ICAgICAgICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAiZW5h
YmxlLXVzYnJlZGlyIiwgRkFMU0UsIE5VTEwpOwo+ID4gICAgICBpZiAoZGlzYWJsZV9hdWRpbykK
PiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMKPiA+IGluZGV4IDU4MzRlMDMyLi4xODdjY2ZhMiAxMDA2NDQKPiA+IC0tLSBh
L3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdl
ci5jCj4gPiBAQCAtMzIsNiArMzIsNyBAQAo+ID4gICNlbmRpZgo+ID4gIAo+ID4gICNpbmNsdWRl
ICJjaGFubmVsLXVzYnJlZGlyLXByaXYuaCIKPiA+ICsjaW5jbHVkZSAidXNiLWRldmljZS1jZC5o
Igo+ID4gICNlbmRpZgo+ID4gIAo+ID4gICNpbmNsdWRlICJzcGljZS1zZXNzaW9uLXByaXYuaCIK
PiA+IEBAIC03NCw2ICs3NSw3IEBAIGVudW0gewo+ID4gICAgICBQUk9QX0FVVE9fQ09OTkVDVF9G
SUxURVIsCj4gPiAgICAgIFBST1BfUkVESVJFQ1RfT05fQ09OTkVDVCwKPiA+ICAgICAgUFJPUF9G
UkVFX0NIQU5ORUxTLAo+ID4gKyAgICBQUk9QX1NIQVJFX0NECj4gPiAgfTsKPiA+ICAKPiA+ICBl
bnVtCj4gPiBAQCAtNDMyLDYgKzQzNCwyNiBAQCBzdGF0aWMgdm9pZAo+ID4gc3BpY2VfdXNiX2Rl
dmljZV9tYW5hZ2VyX3NldF9wcm9wZXJ0eShHT2JqZWN0ICAgICAgICpnb2JqZWN0LAo+ID4gICAg
ICAgICAgcHJpdi0+cmVkaXJlY3Rfb25fY29ubmVjdCA9IGdfc3RyZHVwKGZpbHRlcik7Cj4gPiAg
ICAgICAgICBicmVhazsKPiA+ICAgICAgfQo+ID4gKyAgICBjYXNlIFBST1BfU0hBUkVfQ0Q6Cj4g
PiArICAgIHsKPiA+ICsjaWZkZWYgVVNFX1VTQlJFRElSCj4gPiArICAgICAgICBDZEVtdWxhdGlv
blBhcmFtcyBwYXJhbSA9IHsgMCB9Owo+ID4gKyAgICAgICAgY29uc3QgZ2NoYXIgKm5hbWUgPSBn
X3ZhbHVlX2dldF9zdHJpbmcodmFsdWUpOwo+ID4gKyAgICAgICAgLyogdGhlIHN0cmluZyBpcyB0
ZW1wb3JhcnksIG5vIG5lZWQgdG8ga2VlcCBpdCAqLwo+ID4gKyAgICAgICAgU1BJQ0VfREVCVUco
InNoYXJlX2NkIHNldCB0byAlcyIsIG5hbWUpOwo+ID4gKyAgICAgICAgaWYgKG5hbWVbMF0gPT0g
JyEnKSB7Cj4gPiArICAgICAgICAgICAgbmFtZSsrOwo+ID4gKyAgICAgICAgICAgIHBhcmFtLmRl
bGV0ZV9vbl9lamVjdCA9IDE7Cj4gPiArICAgICAgICB9Cj4gPiArICAgICAgICBwYXJhbS5maWxl
bmFtZSA9IG5hbWU7Cj4gPiArICAgICAgICBHRXJyb3IgKmVycm9yID0gTlVMTDsKPiA+ICsgICAg
ICAgIGlmICghY3JlYXRlX2VtdWxhdGVkX2NkKHByaXYtPmNvbnRleHQsICZwYXJhbSwgJmVycm9y
KSkgewo+ID4gKyAgICAgICAgICAgIGdfd2FybmluZyhlcnJvci0+bWVzc2FnZSk7Cj4gPiArICAg
ICAgICAgICAgZ19lcnJvcl9mcmVlKGVycm9yKTsKPiA+ICsgICAgICAgIH0KPiA+ICsjZW5kaWYK
PiAKPiBUaGlzIHdhcyBhY2tlZCBiZWZvcmUsIEkgdGhpbmsgSSBqdXN0IGFza2VkIGZvciBhbiAj
ZWxzZQo+IGdfd2FybmluZygidXNicmVkaXIgaXMgbm90IHNldCwgY2FuJ3Qgc2V0IHNoYXJlLWNk
Iikgb3Igc29tZXRoaW5nCj4gbGlrZSB0aGF0Cj4gCj4gPiArICAgICAgICBicmVhazsKPiA+ICsg
ICAgfQo+ID4gICAgICBkZWZhdWx0Ogo+ID4gICAgICAgICAgR19PQkpFQ1RfV0FSTl9JTlZBTElE
X1BST1BFUlRZX0lEKGdvYmplY3QsIHByb3BfaWQsIHBzcGVjKTsKPiA+ICAgICAgICAgIGJyZWFr
Owo+ID4gQEAgLTUyMiw2ICs1NDQsMTggQEAgc3RhdGljIHZvaWQKPiA+IHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9jbGFzc19pbml0KFNwaWNlVXNiRGV2aWNlTWFuYWdlckNsYXNzICprbGFzCj4g
PiAgICAgIGdfb2JqZWN0X2NsYXNzX2luc3RhbGxfcHJvcGVydHkoZ29iamVjdF9jbGFzcywKPiA+
ICAgICAgUFJPUF9SRURJUkVDVF9PTl9DT05ORUNULAo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBzcGVjKTsKPiA+ICAKPiA+ICsgICAgLyoqCj4gPiArICAgICogU3Bp
Y2VVc2JEZXZpY2VNYW5hZ2VyOnNoYXJlLWNkOgo+ID4gKyAgICAqCj4gPiArICAgICogU2V0IGEg
c3RyaW5nIHNwZWNpZnlpbmcgYSBmaWxlbmFtZSAoSVNPKSBvciBwaHlzaWNhbCBDRC9EVkQgZGV2
aWNlCj4gPiArICAgICogdG8gc2hhcmUgdmlhIFVTQiBhZnRlciBhIFNwaWNlIGNvbm5lY3Rpb24g
aGFzIGJlZW4gZXN0YWJsaXNoZWQuCj4gPiArICAgICoKPiA+ICsgICAgKi8KPiA+ICsgICAgcHNw
ZWMgPSBnX3BhcmFtX3NwZWNfc3RyaW5nKCJzaGFyZS1jZCIsICJTaGFyZSBJU08gZmlsZSBvciBk
ZXZpY2UgYXMKPiA+IENEIiwKPiA+ICsgICAgICAgICJGaWxlIG9yIGRldmljZSBuYW1lIHRvIHNo
YXJlIiwgTlVMTCwKPiA+ICsgICAgICAgIEdfUEFSQU1fUkVBRFdSSVRFIHwgR19QQVJBTV9TVEFU
SUNfU1RSSU5HUyk7Cj4gPiArICAgIGdfb2JqZWN0X2NsYXNzX2luc3RhbGxfcHJvcGVydHkoZ29i
amVjdF9jbGFzcywgUFJPUF9TSEFSRV9DRCwgcHNwZWMpOwo+ID4gKwo+ID4gICAgICAvKioKPiA+
ICAgICAgICogU3BpY2VVc2JEZXZpY2VNYW5hZ2VyOmZyZWUtY2hhbm5lbHM6Cj4gPiAgICAgICAq
CgpQZXJzb25hbGx5IGZvciBtZSBpcyBhIE5BQ0suCkFkZGluZyBhbiBBQkkgYmFzZWQgb24gcHJv
cGVydHkgdXNlZCBmb3IgZHluYW1pYyBkaXNwYXRjaCBpcyBhIGRpcnR5IGhhY2sKb24gYSBwdWJs
aWMgaW50ZXJmYWNlIHdoaWNoIGJ5IGRlZmluaXRpb24gc2hvdWxkIG5vdCBiZSBhIGhhY2suCgpG
cmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
