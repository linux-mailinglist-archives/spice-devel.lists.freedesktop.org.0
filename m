Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB281633
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 12:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6538C6E3D3;
	Mon,  5 Aug 2019 10:01:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E436E3D3
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 10:01:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D741889AC0;
 Mon,  5 Aug 2019 10:01:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C475C60F8C;
 Mon,  5 Aug 2019 10:01:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B86F618089C8;
 Mon,  5 Aug 2019 10:01:04 +0000 (UTC)
Date: Mon, 5 Aug 2019 06:01:04 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1842767140.4700033.1564999264705.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190804191624.29235-3-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-3-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: usb-redir: move implementation of device description to USB
 backend
Thread-Index: eAaG1fCLKdd0GjyJfcUO9G/P3GAXQA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 05 Aug 2019 10:01:04 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 2/8] usb-redir: move implementation
 of device description to USB backend
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGb3IgbG9jYWwgVVNCIGRldmljZSB0aGUgVVNCIGJhY2tlbmQgcmV0dXJucyB0aGUgc2Ft
ZSBkZXZpY2UKPiBkZXNjcmlwdGlvbiBhcyBzcGljZS11c2ItbWFuYWdlciBkaWQsIGZvciBlbXVs
YXRlZCBkZXZpY2VzIGl0Cj4gdXNlcyB0aGUgZGVzY3JpcHRpb24gcHJvdmlkZWQgYnkgZGV2aWNl
J3MgaW1wbGVtZW50YXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8
eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+IC0tLQo+ICBzcmMvdXNiLWJhY2tlbmQuYyAg
ICAgICAgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIHNy
Yy91c2ItYmFja2VuZC5oICAgICAgICB8ICAxICsKPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
IHwgMjkgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQz
IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdXNi
LWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4gaW5kZXggYmU2MGNmMy4uM2E4YTI4ZSAx
MDA2NDQKPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ICsrKyBiL3NyYy91c2ItYmFja2VuZC5j
Cj4gQEAgLTQyLDYgKzQyLDcgQEAKPiAgI2luY2x1ZGUgInVzYi1lbXVsYXRpb24uaCIKPiAgI2lu
Y2x1ZGUgImNoYW5uZWwtdXNicmVkaXItcHJpdi5oIgo+ICAjaW5jbHVkZSAic3BpY2UtY2hhbm5l
bC1wcml2LmgiCj4gKyNpbmNsdWRlICJ1c2J1dGlsLmgiCj4gIAo+ICAjZGVmaW5lIExPVURfREVC
VUcoeCwgLi4uKQo+ICAKPiBAQCAtODQ0LDYgKzg0NSw0NiBAQAo+IHNwaWNlX3VzYl9iYWNrZW5k
X2NoYW5uZWxfZ2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwKPiAg
ICAgIH0KPiAgfQo+ICAKPiArZ2NoYXIgKiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2Rl
c2NyaXB0aW9uKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2LAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgZ2NoYXIgKmZvcm1hdCkKCk1p
bm9yOiBzcGFjZSBhZnRlciAiZ2NoYXIgKiIuCgo+ICt7Cj4gKyAgICBndWludDE2IGJ1cywgYWRk
cmVzcywgdmlkLCBwaWQ7Cj4gKyAgICBnY2hhciAqZGVzY3JpcHRpb24sICpkZXNjcmlwdG9yLCAq
bWFudWZhY3R1cmVyID0gTlVMTCwgKnByb2R1Y3QgPSBOVUxMOwo+ICsKPiArICAgIGdfcmV0dXJu
X3ZhbF9pZl9mYWlsKGRldiAhPSBOVUxMLCBOVUxMKTsKPiArCj4gKyAgICBidXMgICAgID0gZGV2
LT5kZXZpY2VfaW5mby5idXM7Cj4gKyAgICBhZGRyZXNzID0gZGV2LT5kZXZpY2VfaW5mby5hZGRy
ZXNzOwo+ICsgICAgdmlkICAgICA9IGRldi0+ZGV2aWNlX2luZm8udmlkOwo+ICsgICAgcGlkICAg
ICA9IGRldi0+ZGV2aWNlX2luZm8ucGlkOwo+ICsKPiArICAgIGlmICgodmlkID4gMCkgJiYgKHBp
ZCA+IDApKSB7Cj4gKyAgICAgICAgZGVzY3JpcHRvciA9IGdfc3RyZHVwX3ByaW50ZigiWyUwNHg6
JTA0eF0iLCB2aWQsIHBpZCk7Cj4gKyAgICB9IGVsc2Ugewo+ICsgICAgICAgIGRlc2NyaXB0b3Ig
PSBnX3N0cmR1cCgiIik7Cj4gKyAgICB9Cj4gKwo+ICsgICAgaWYgKGRldi0+bGlidXNiX2Rldmlj
ZSkgewo+ICsgICAgICAgIHNwaWNlX3VzYl91dGlsX2dldF9kZXZpY2Vfc3RyaW5ncyhidXMsIGFk
ZHJlc3MsIHZpZCwgcGlkLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAmbWFudWZhY3R1cmVyLCAmcHJvZHVjdCk7Cj4gKyAgICB9IGVsc2Ugewo+ICsgICAgICAg
IHByb2R1Y3QgPSBkZXZpY2Vfb3BzKGRldi0+ZWRldiktPmdldF9wcm9kdWN0X2Rlc2NyaXB0aW9u
KGRldi0+ZWRldik7Cj4gKyAgICB9Cj4gKwo+ICsgICAgaWYgKCFmb3JtYXQpIHsKPiArICAgICAg
ICBmb3JtYXQgPSBfKCIlcyAlcyAlcyBhdCAlZC0lZCIpOwo+ICsgICAgfQo+ICsKPiArICAgIGRl
c2NyaXB0aW9uID0gZ19zdHJkdXBfcHJpbnRmKGZvcm1hdCwgbWFudWZhY3R1cmVyID8gbWFudWZh
Y3R1cmVyIDogIiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcm9kdWN0
LCBkZXNjcmlwdG9yLCBidXMsIGFkZHJlc3MpOwo+ICsKPiArICAgIGdfZnJlZShtYW51ZmFjdHVy
ZXIpOwo+ICsgICAgZ19mcmVlKGRlc2NyaXB0b3IpOwo+ICsgICAgZ19mcmVlKHByb2R1Y3QpOwo+
ICsKPiArICAgIHJldHVybiBkZXNjcmlwdGlvbjsKPiArfQo+ICsKPiAgdm9pZCBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfcmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQgKmJlLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiQmFja2VuZERl
dmljZSAqZGV2KQo+ICB7Cj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3Vz
Yi1iYWNrZW5kLmgKPiBpbmRleCA2M2I5MjAyLi44N2VmZDUxIDEwMDY0NAo+IC0tLSBhL3NyYy91
c2ItYmFja2VuZC5oCj4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgKPiBAQCAtOTEsNiArOTEsNyBA
QCB2b2lkCj4gc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9nZXRfZ3Vlc3RfZmlsdGVyKFNwaWNl
VXNiQmFja2VuZENoYW5uZWwgKmNoLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNicmVkaXJmaWx0ZXJfcnVsZQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqKnJ1bGVzLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgKmNvdW50KTsKPiAg
dm9pZCBzcGljZV91c2JfYmFja2VuZF9yZXR1cm5fd3JpdGVfZGF0YShTcGljZVVzYkJhY2tlbmRD
aGFubmVsICpjaCwgdm9pZAo+ICAqZGF0YSk7Cj4gK2djaGFyICpzcGljZV91c2JfYmFja2VuZF9k
ZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2LAo+IGNvbnN0
IGdjaGFyICpmb3JtYXQpOwo+ICAKPiAgR19FTkRfREVDTFMKPiAgCj4gZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4
IDQyNmEwY2QuLjQ1NmI1MTEgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
Cj4gKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gQEAgLTMyLDcgKzMyLDYgQEAKPiAg
I2VuZGlmCj4gIAo+ICAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2LmgiCj4gLSNpbmNs
dWRlICJ1c2J1dGlsLmgiCj4gICNlbmRpZgo+ICAKPiAgI2luY2x1ZGUgInNwaWNlLXNlc3Npb24t
cHJpdi5oIgo+IEBAIC0xNDM5LDM1ICsxNDM4LDkgQEAKPiBzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfY2FuX3JlZGlyZWN0X2RldmljZShTcGljZVVzYkRldmljZU1hbmFnZXIgICpzZWxmLAo+ICBn
Y2hhciAqc3BpY2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JEZXZpY2UgKmRl
dmljZSwgY29uc3QgZ2NoYXIKPiAgKmZvcm1hdCkKPiAgewo+ICAjaWZkZWYgVVNFX1VTQlJFRElS
Cj4gLSAgICBndWludDE2IGJ1cywgYWRkcmVzcywgdmlkLCBwaWQ7Cj4gLSAgICBnY2hhciAqZGVz
Y3JpcHRpb24sICpkZXNjcmlwdG9yLCAqbWFudWZhY3R1cmVyID0gTlVMTCwgKnByb2R1Y3QgPSBO
VUxMOwo+IC0KPiAgICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGRldmljZSAhPSBOVUxMLCBOVUxM
KTsKPiAgCj4gLSAgICBidXMgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRfYnVzbnVtKGRldmlj
ZSk7Cj4gLSAgICBhZGRyZXNzID0gc3BpY2VfdXNiX2RldmljZV9nZXRfZGV2YWRkcihkZXZpY2Up
Owo+IC0gICAgdmlkICAgICA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3ZpZChkZXZpY2UpOwo+IC0g
ICAgcGlkICAgICA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3BpZChkZXZpY2UpOwo+IC0KPiAtICAg
IGlmICgodmlkID4gMCkgJiYgKHBpZCA+IDApKSB7Cj4gLSAgICAgICAgZGVzY3JpcHRvciA9IGdf
c3RyZHVwX3ByaW50ZigiWyUwNHg6JTA0eF0iLCB2aWQsIHBpZCk7Cj4gLSAgICB9IGVsc2Ugewo+
IC0gICAgICAgIGRlc2NyaXB0b3IgPSBnX3N0cmR1cCgiIik7Cj4gLSAgICB9Cj4gLQo+IC0gICAg
c3BpY2VfdXNiX3V0aWxfZ2V0X2RldmljZV9zdHJpbmdzKGJ1cywgYWRkcmVzcywgdmlkLCBwaWQs
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJm1hbnVmYWN0dXJlciwg
JnByb2R1Y3QpOwo+IC0KPiAtICAgIGlmICghZm9ybWF0KQo+IC0gICAgICAgIGZvcm1hdCA9IF8o
IiVzICVzICVzIGF0ICVkLSVkIik7Cj4gLQo+IC0gICAgZGVzY3JpcHRpb24gPSBnX3N0cmR1cF9w
cmludGYoZm9ybWF0LCBtYW51ZmFjdHVyZXIsIHByb2R1Y3QsIGRlc2NyaXB0b3IsCj4gYnVzLCBh
ZGRyZXNzKTsKPiAtCj4gLSAgICBnX2ZyZWUobWFudWZhY3R1cmVyKTsKPiAtICAgIGdfZnJlZShk
ZXNjcmlwdG9yKTsKPiAtICAgIGdfZnJlZShwcm9kdWN0KTsKPiAtCj4gLSAgICByZXR1cm4gZGVz
Y3JpcHRpb247Cj4gKyAgICByZXR1cm4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNj
cmlwdGlvbihkZXZpY2UtPmJkZXYsIGZvcm1hdCk7Cj4gICNlbHNlCj4gICAgICByZXR1cm4gTlVM
TDsKPiAgI2VuZGlmCgpPdGhlcndpc2UsCiAgQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
