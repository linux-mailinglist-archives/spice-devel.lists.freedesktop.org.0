Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A21888BF
	for <lists+spice-devel@lfdr.de>; Sat, 10 Aug 2019 08:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A496EF43;
	Sat, 10 Aug 2019 06:02:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC226EF43
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A1F68E22B
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6072E5C207
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 594361800202
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:23 +0000 (UTC)
Date: Sat, 10 Aug 2019 02:02:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1797132905.5430389.1565416943338.JavaMail.zimbra@redhat.com>
In-Reply-To: <1398491916.4733247.1565013083306.JavaMail.zimbra@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
 <1398491916.4733247.1565013083306.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.16, 10.4.195.27]
Thread-Topic: replay: Remove some goto statement
Thread-Index: 64eJZzynucTXdmB7I24HoVH3FDa9WYRZoVsb
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Sat, 10 Aug 2019 06:02:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] replay: Remove some goto
 statement
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

cGluZwoKPiAKPiBwaW5nIHRoZSBzZXJpZXMKPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBzZXJ2ZXIvdGVz
dHMvcmVwbGF5LmMgfCAxOCArKysrKystLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci90ZXN0cy9yZXBsYXkuYyBiL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+ID4gaW5kZXggZTNl
ZjdiZjE1Li45OTJmMjZkNjMgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvdGVzdHMvcmVwbGF5LmMK
PiA+ICsrKyBiL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+ID4gQEAgLTExNiw3ICsxMTYsNyBAQCBz
dGF0aWMgZ2Jvb2xlYW4gZmlsbF9xdWV1ZV9pZGxlKGdwb2ludGVyIHVzZXJfZGF0YSkKPiA+ICAg
ICAgICAgIGlmICghY21kKSB7Cj4gPiAgICAgICAgICAgICAgZ19hc3luY19xdWV1ZV9wdXNoKGRp
c3BsYXlfcXVldWUsIEdJTlRfVE9fUE9JTlRFUigtMSkpOwo+ID4gICAgICAgICAgICAgIGdfYXN5
bmNfcXVldWVfcHVzaChjdXJzb3JfcXVldWUsIEdJTlRfVE9fUE9JTlRFUigtMSkpOwo+ID4gLSAg
ICAgICAgICAgIGdvdG8gZW5kOwo+ID4gKyAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICAg
fQo+ID4gIAo+ID4gICAgICAgICAgKytuY29tbWFuZHM7Cj4gPiBAQCAtMTMzLDcgKzEzMyw2IEBA
IHN0YXRpYyBnYm9vbGVhbiBmaWxsX3F1ZXVlX2lkbGUoZ3BvaW50ZXIgdXNlcl9kYXRhKQo+ID4g
ICAgICAgICAgfQo+ID4gICAgICB9Cj4gPiAgCj4gPiAtZW5kOgo+ID4gICAgICBpZiAoIWtlZXAp
IHsKPiA+ICAgICAgICAgIHB0aHJlYWRfbXV0ZXhfbG9jaygmbXV0ZXgpOwo+ID4gICAgICAgICAg
aWYgKGZpbGxfc291cmNlKSB7Cj4gPiBAQCAtMTUzLDE3ICsxNTIsMTIgQEAgc3RhdGljIHZvaWQg
ZmlsbF9xdWV1ZSh2b2lkKQo+ID4gIHsKPiA+ICAgICAgcHRocmVhZF9tdXRleF9sb2NrKCZtdXRl
eCk7Cj4gPiAgCj4gPiAtICAgIGlmICghc3RhcnRlZCkKPiA+IC0gICAgICAgIGdvdG8gZW5kOwo+
ID4gLQo+ID4gLSAgICBpZiAoZmlsbF9zb3VyY2UpCj4gPiAtICAgICAgICBnb3RvIGVuZDsKPiA+
IC0KPiA+IC0gICAgZmlsbF9zb3VyY2UgPSBnX2lkbGVfc291cmNlX25ldygpOwo+ID4gLSAgICBn
X3NvdXJjZV9zZXRfY2FsbGJhY2soZmlsbF9zb3VyY2UsIGZpbGxfcXVldWVfaWRsZSwgTlVMTCwg
TlVMTCk7Cj4gPiAtICAgIGdfc291cmNlX2F0dGFjaChmaWxsX3NvdXJjZSwgYmFzaWNfZXZlbnRf
bG9vcF9nZXRfY29udGV4dCgpKTsKPiA+ICsgICAgaWYgKHN0YXJ0ZWQgJiYgZmlsbF9zb3VyY2Ug
PT0gTlVMTCkgewo+ID4gKyAgICAgICAgZmlsbF9zb3VyY2UgPSBnX2lkbGVfc291cmNlX25ldygp
Owo+ID4gKyAgICAgICAgZ19zb3VyY2Vfc2V0X2NhbGxiYWNrKGZpbGxfc291cmNlLCBmaWxsX3F1
ZXVlX2lkbGUsIE5VTEwsIE5VTEwpOwo+ID4gKyAgICAgICAgZ19zb3VyY2VfYXR0YWNoKGZpbGxf
c291cmNlLCBiYXNpY19ldmVudF9sb29wX2dldF9jb250ZXh0KCkpOwo+ID4gKyAgICB9Cj4gPiAg
Cj4gPiAtZW5kOgo+ID4gICAgICBwdGhyZWFkX211dGV4X3VubG9jaygmbXV0ZXgpOwo+ID4gIH0K
PiA+ICAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
