Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C9481905
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 14:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2166E409;
	Mon,  5 Aug 2019 12:17:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D256E409
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 12:17:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C5AF01E309;
 Mon,  5 Aug 2019 12:17:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B9CF61001B02;
 Mon,  5 Aug 2019 12:17:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACDD518089C8;
 Mon,  5 Aug 2019 12:17:08 +0000 (UTC)
Date: Mon, 5 Aug 2019 08:17:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <226410254.4719296.1565007428513.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5OeTvOQiy6_n3tgLgkLP4UOnJ2W3Qq3b29mLJitk4BO8EQ@mail.gmail.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-2-yuri.benditovich@daynix.com>
 <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
 <CAOEp5OeTvOQiy6_n3tgLgkLP4UOnJ2W3Qq3b29mLJitk4BO8EQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.26]
Thread-Topic: usb-redir: define interfaces to support emulated devices
Thread-Index: ky3yjvJdOW3dzopORE+2RgM6lON2Eg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 05 Aug 2019 12:17:08 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 1/8] usb-redir: define interfaces
 to support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDEyOjU4IFBNIEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiA+Cj4gPiA+IFNwaWNlVXNiQmFja2VuZERl
dmljZSBzdHJ1Y3R1cmUgaXMgZXh0ZW5kZWQgdG8gc3VwcG9ydAo+ID4gPiBhZGRpdGlvbmFsIGtp
bmQgb2YgZGV2aWNlIHRoYXQgaXMgZW11bGF0ZWQgYnkgU3BpY2UtR1RLCj4gPiA+IGFuZCBub3Qg
cHJlc2VudCBsb2NhbGx5IChhbmQgZG9lcyBub3QgaGF2ZSBsaWJ1c2JfZGV2aWNlKSwKPiA+ID4g
c3VjaCBkZXZpY2UgaGFzIGluc3RlYWQgcG9pbnRlciB0byBTcGljZVVzYkVtdWxhdGVkRGV2aWNl
Cj4gPiA+IGFic3RyYWN0IHN0cnVjdHVyZS4gU3BlY2lmaWMgaW1wbGVtZW50YXRpb24gb2Ygc3Vj
aCBkZXZpY2UKPiA+ID4gZGVwZW5kcyBvbiBpdHMgZGV2aWNlIHR5cGUuIEltcGxlbWVudGF0aW9u
IG1vZHVsZSB3aWxsIGRlZmluZQo+ID4gPiBjb25zdHJ1Y3RvciBmb3Igc3BlY2lmaWMgZGV2aWNl
IHR5cGUuCj4gPiA+IERldmljZSBzdHJ1Y3R1cmUgaXMgYWJzdHJhY3QgYnV0IGFsd2F5cyBzdGFy
dHMgZnJvbSB0YWJsZSBvZgo+ID4gPiB2aXJ0dWFsIGZ1bmN0aW9ucyByZXF1aXJlZCB0byByZWRp
cmVjdCBzdWNoIHZpcnR1YWwgZGV2aWNlLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJp
IEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiA+IC0tLQo+ID4g
PiAgc3JjL21lc29uLmJ1aWxkICAgICB8ICAgMSArCj4gPiA+ICBzcmMvdXNiLWJhY2tlbmQuYyAg
IHwgMTAyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+
ICBzcmMvdXNiLWJhY2tlbmQuaCAgIHwgICAzICsrCj4gPiA+ICBzcmMvdXNiLWVtdWxhdGlvbi5o
IHwgIDkxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgNCBm
aWxlcyBjaGFuZ2VkLCAxOTUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCj4gPiA+Cj4gPiA+IGRpZmYgLS1n
aXQgYS9zcmMvbWVzb24uYnVpbGQgYi9zcmMvbWVzb24uYnVpbGQKPiA+ID4gaW5kZXggYjRhNjg3
MC4uZmUxOWMxNiAxMDA2NDQKPiA+ID4gLS0tIGEvc3JjL21lc29uLmJ1aWxkCj4gPiA+ICsrKyBi
L3NyYy9tZXNvbi5idWlsZAo+ID4gPiBAQCAtMTIyLDYgKzEyMiw3IEBAIHNwaWNlX2NsaWVudF9n
bGliX3NvdXJjZXMgPSBbCj4gPiA+ICAgICd1c2J1dGlsLmMnLAo+ID4gPiAgICAndXNidXRpbC5o
JywKPiA+ID4gICAgJ3VzYi1iYWNrZW5kLmMnLAo+ID4gPiArICAndXNiLWVtdWxhdGlvbi5oJywK
PiA+ID4gICAgJ3VzYi1iYWNrZW5kLmgnLAo+ID4gPiAgICAndm1jc3RyZWFtLmMnLAo+ID4gPiAg
ICAndm1jc3RyZWFtLmgnLAo+ID4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9z
cmMvdXNiLWJhY2tlbmQuYwo+ID4gPiBpbmRleCAzMzM0ZjU2Li5iZTYwY2YzIDEwMDY0NAo+ID4g
PiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+
ID4gPiBAQCAtMzksNiArMzksNyBAQAo+ID4gPiAgI2luY2x1ZGUgInVzYnJlZGlycGFyc2VyLmgi
Cj4gPiA+ICAjaW5jbHVkZSAic3BpY2UtdXRpbC5oIgo+ID4gPiAgI2luY2x1ZGUgInVzYi1iYWNr
ZW5kLmgiCj4gPiA+ICsjaW5jbHVkZSAidXNiLWVtdWxhdGlvbi5oIgo+ID4gPiAgI2luY2x1ZGUg
ImNoYW5uZWwtdXNicmVkaXItcHJpdi5oIgo+ID4gPiAgI2luY2x1ZGUgInNwaWNlLWNoYW5uZWwt
cHJpdi5oIgo+ID4gPgo+ID4gPiBAQCAtNDYsNyArNDcsMTAgQEAKPiA+ID4KPiA+ID4gIHN0cnVj
dCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlCj4gPiA+ICB7Cj4gPiA+ICsgICAgLyogUG9pbnRlciB0
byBkZXZpY2UuIEVpdGhlciByZWFsIGRldmljZSAobGlidXNiX2RldmljZSkKPiA+ID4gKyAgICAg
KiBvciBlbXVsYXRlZCBvbmUgKGVkZXYpICovCj4gPiA+ICAgICAgbGlidXNiX2RldmljZSAqbGli
dXNiX2RldmljZTsKPiA+ID4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlICplZGV2Owo+ID4g
PiAgICAgIGdpbnQgcmVmX2NvdW50Owo+ID4gPiAgICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwg
KmF0dGFjaGVkX3RvOwo+ID4gPiAgICAgIFVzYkRldmljZUluZm9ybWF0aW9uIGRldmljZV9pbmZv
Owo+ID4gPiBAQCAtNjYsNiArNzAsMTAgQEAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmQKPiA+ID4g
ICAgICBsaWJ1c2JfZGV2aWNlICoqbGlidXNiX2RldmljZV9saXN0Owo+ID4gPiAgICAgIGdpbnQg
cmVkaXJlY3Rpbmc7Cj4gPiA+ICAjZW5kaWYKPiA+ID4gKwo+ID4gPiArICAgIC8qIE1hc2sgb2Yg
YWxsb2NhdGVkIGRldmljZSwgYSBzcGVjaWZpYyBiaXQgc2V0IHRvIDEgdG8gaW5kaWNhdGUKPiA+
ID4gdGhhdAo+ID4gPiB0aGUgZGV2aWNlIGF0Cj4gPiA+ICsgICAgICogdGhhdCBhZGRyZXNzIGlz
IGFsbG9jYXRlZCAqLwo+ID4gPiArICAgIHVpbnQzMl90IG93bl9kZXZpY2VzX21hc2s7Cj4gPiA+
ICB9Owo+ID4gPgo+ID4gPiAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmRDaGFubmVsCj4gPiA+IEBA
IC00MTMsNiArNDIxLDggQEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXco
R0Vycm9yCj4gPiA+ICoqZXJyb3IpCj4gPiA+ICAgICAgICAgIGxpYnVzYl9zZXRfb3B0aW9uKGJl
LT5saWJ1c2JfY29udGV4dCwgTElCVVNCX09QVElPTl9VU0VfVVNCREspOwo+ID4gPiAgI2VuZGlm
Cj4gPiA+ICAjZW5kaWYKPiA+ID4gKyAgICAgICAgLyogZXhjbHVkZSBhZGRyZXNzZXMgMCAocmVz
ZXJ2ZWQpIGFuZCAxIChyb290IGh1YikgKi8KPiA+ID4gKyAgICAgICAgYmUtPm93bl9kZXZpY2Vz
X21hc2sgPSAzOwo+ID4gPiAgICAgIH0KPiA+ID4gICAgICBTUElDRV9ERUJVRygiJXMgPDwiLCBf
X0ZVTkNUSU9OX18pOwo+ID4gPiAgICAgIHJldHVybiBiZTsKPiA+ID4gQEAgLTUyOSw4ICs1Mzks
MTMgQEAgdm9pZAo+ID4gPiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICpkZXYpCj4gPiA+ICB7Cj4gPiA+ICAgICAgTE9VRF9ERUJVRygiJXMgPj4g
JXAoJWQpIiwgX19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2NvdW50KTsKPiA+ID4gICAgICBp
ZiAoZ19hdG9taWNfaW50X2RlY19hbmRfdGVzdCgmZGV2LT5yZWZfY291bnQpKSB7Cj4gPiA+IC0g
ICAgICAgIGxpYnVzYl91bnJlZl9kZXZpY2UoZGV2LT5saWJ1c2JfZGV2aWNlKTsKPiA+ID4gLSAg
ICAgICAgTE9VRF9ERUJVRygiJXMgZnJlZWluZyAlcCAobGlidXNiICVwKSIsIF9fRlVOQ1RJT05f
XywgZGV2LAo+ID4gPiBkZXYtPmxpYnVzYl9kZXZpY2UpOwo+ID4gPiArICAgICAgICBpZiAoZGV2
LT5saWJ1c2JfZGV2aWNlKSB7Cj4gPiA+ICsgICAgICAgICAgICBsaWJ1c2JfdW5yZWZfZGV2aWNl
KGRldi0+bGlidXNiX2RldmljZSk7Cj4gPiA+ICsgICAgICAgICAgICBMT1VEX0RFQlVHKCIlcyBm
cmVlaW5nICVwIChsaWJ1c2IgJXApIiwgX19GVU5DVElPTl9fLCBkZXYsCj4gPiA+IGRldi0+bGli
dXNiX2RldmljZSk7Cj4gPiA+ICsgICAgICAgIH0KPiA+ID4gKyAgICAgICAgaWYgKGRldi0+ZWRl
dikgewo+ID4gPiArICAgICAgICAgICAgZGV2aWNlX29wcyhkZXYtPmVkZXYpLT51bnJlYWxpemUo
ZGV2LT5lZGV2KTsKPiA+ID4gKyAgICAgICAgfQo+ID4gPiAgICAgICAgICBnX2ZyZWUoZGV2KTsK
PiA+ID4gICAgICB9Cj4gPiA+ICB9Cj4gPiA+IEBAIC04MjksNCArODQ0LDg3IEBACj4gPiA+IHNw
aWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfZ2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRD
aGFubmVsICpjaCwKPiA+ID4gICAgICB9Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICt2b2lkIHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAqYmUsCj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNi
QmFja2VuZERldmljZSAqZGV2KQo+ID4gPiArewo+ID4gPiArICAgIGdjaGFyICpkZXNjOwo+ID4g
PiArICAgIGdfcmV0dXJuX2lmX2ZhaWwoZGV2ICYmIGRldi0+ZWRldik7Cj4gPiA+ICsKPiA+ID4g
KyAgICBkZXNjID0gZGV2aWNlX29wcyhkZXYtPmVkZXYpLT5nZXRfcHJvZHVjdF9kZXNjcmlwdGlv
bihkZXYtPmVkZXYpOwo+ID4gPiArICAgIFNQSUNFX0RFQlVHKCIlczogJXMiLCBfX0ZVTkNUSU9O
X18sIGRlc2MpOwo+ID4gPiArICAgIGdfZnJlZShkZXNjKTsKPiA+ID4gK30KPiA+ID4gKwo+ID4K
PiA+IExvb2tzIGxpa2UgdGhpcyBmdW5jdGlvbiBpcyBqdXN0IGZvciBkZWJ1Z2dpbmcuCj4gPiBX
aHkgaW5zdGVhZCB1c2Ugc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNjcmlwdGlvbiBp
biB1c2ItZGV2aWNlLWNkLmMKPiA+IGFuZCBjYWxsIFNQSUNFX0RFQlVHIGRpcmVjdGx5Pwo+IAo+
IHVzYi1kZXZpY2UtY2QuYyBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRoaXMgY2hhbmdlLgo+IEl0
IGlzc3VlcyB0aGUgdXBkYXRlIHRvIHdob20gaXQgbWlnaHQgYmUgaW1wb3J0YW50Lgo+IEN1cnJl
bnRseSBhcyB3ZSBkbyBub3QgaGF2ZSBVSSwgYWxzbyBvdXRzaWRlIG9mIHVzYi1kZXZpY2UtY2Qu
YyB0aGVyZQo+IGlzIG5vIGFjdGlvbi4KPiAKCkl0IHNvdW5kcyBmaW5lLiBJIGZvdW5kIHRoZSBu
YW1lIG5vdCBtdWNoIG1lYW5pbmdmdWwuIExvb2tpbmcgYXQgdGhlIGNvZGUKdGhpcyBpcyBhIHN0
YXRlIGNoYW5nZSAoc3RvcCBvciBzdGFydCksIHRoZSBuYW1lIGluZGljYXRlIGEgZ2VuZXJpYwoi
Y2hhbmdlIi4gTWF5YmUgInNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9zdGF0ZV9jaGFuZ2VkIiB3
b3VsZCBiZSBtb3JlCm1lYW5pbmdmdWw/Cgo+ID4KPiA+ID4gK3ZvaWQgc3BpY2VfdXNiX2JhY2tl
bmRfZGV2aWNlX2VqZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+IFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqZGV2KQo+ID4gPiArewo+ID4gPiArICAgIGdfcmV0dXJuX2lmX2ZhaWwoZGV2ICYm
IGRldi0+ZWRldik7Cj4gPiA+ICsKPiA+ID4gKyAgICBpZiAoYmUtPmhvdHBsdWdfY2FsbGJhY2sp
IHsKPiA+ID4gKyAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2soYmUtPmhvdHBsdWdfdXNlcl9k
YXRhLCBkZXYsIEZBTFNFKTsKPiA+ID4gKyAgICB9Cj4gPiA+ICsgICAgYmUtPm93bl9kZXZpY2Vz
X21hc2sgJj0gfigxIDw8IGRldi0+ZGV2aWNlX2luZm8uYWRkcmVzcyk7Cj4gPiA+ICsKPiA+ID4g
KyAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKPiA+Cj4gPiBGcm9tIG15
IGV4cGVyaW1lbnRzIGxvb2tzIGxpa2UgdGhhdCByZWZlcmVuY2UgY291bnRpbmcgZm9yIHRoZXNl
Cj4gPiBlbXVsYXRlZCBkZXZpY2VzIGFyZSBkaWZmZXJlbnQgZnJvbSBub3JtYWwgb25lcy4KPiA+
IEluIG5vcm1hbCBvbmVzIHRoZSBkZXZpY2UgbGlzdCBpbiB1c2IgbWFuYWdlciBpcyB0aGUgbWFp
biBvd25lciwKPiA+IGZvciB0aGVzZSBkZXZpY2VzIHlvdSBoYXZlIGFuIGFkZGl0aW9uYWwgcmVm
ZXJlbmNlIHRoYXQgaXMgcmVtb3ZlZAo+ID4gaGVyZS4gU28gaWYgdGhpcyBmdW5jdGlvbiBpcyBu
b3QgY2FsbGVkIHlvdSBoYXZlIGEgbGVhay4gQWxzbwo+ID4gaXMgd2VpcmQgdG8gaGF2ZSBhIHJl
ZmVyZW5jZSB3aXRob3V0IGhhdmluZyBhbiBhY3R1YWwgcG9pbnRlci4KPiA+IFRoZSBzYW1lIGFw
cGx5IHRvIG93bl9kZXZpY2VzX21hc2sgYml0IGNsZWFyYW5jZSAoYWRkZWQgaW4gdGhpcwo+ID4g
dmVyc2lvbiBvZiB0aGUgcGF0Y2gpLiBJZiBJIHNldCB0aGUgYml0IGNyZWF0aW5nIGFuIG9iamVj
dCBJIGV4cGVjdAo+ID4gdGhlIGJpdCB0byBiZSBjbGVhciBkdXJpbmcgdGhlIG9iamVjdCBkZXN0
cnVjdGlvbiwgbm90IGFub3RoZXIKPiA+IG5vdCByZWxhdGVkIGZ1bmN0aW9uLiBJIHdyb3RlIGEg
dGVzdCB0aGF0IGNhbGwgaW4gYSBsb29wIDEyOCB0aW1lcwo+ID4gY3JlYXRlX2VtdWxhdGVkX2Nk
IGFuZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYgYW5kIGZhaWxzCj4gPiAoaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UtZ3RrL2NvbW1pdC8wYmJjMGQ4
NWI0M2I1ZGJjYjkyYzJhMzkxNWI0YjFjOWQ5MjI4YTdhLAo+ID4gd2lsbCBwcm9iYWJseSBkaXNh
cHBlYXIgaW4gYSB3aGlsZSkuIEkgd291bGQgZXhwZWN0IHRoaXMgdGVzdCB0bwo+ID4gcGFzcyBh
bmQgdG8gZGVsZXRlIGNvbXBsZXRlbHkgdGhlIG9iamVjdCB3aXRob3V0IGxlYWtzLgo+IAo+IFRo
aXMgaXMgd3JvbmcgYXBwcm9hY2gsIEkgdGhpbmsuCj4gVGhlIGludGVyZmFjZSBzaG91bGQgYmUg
Y2hhbmdlZCBhbmQgc2hhbGwgbm90IHJldHVybiB0aGUgb2JqZWN0Lgo+IChpbml0aWFsIGludGVy
ZmFjZSByZXR1cm5lZCBib29sZWFuKQo+IHVzYi1kZXZpY2UtbWFuYWdlciBzaGFsbCByZWNlaXZl
IHRoZSBkZXZpY2Ugb25seSB2aWEgaG90cGx1Zwo+IGluZGljYXRpb24sIHJlZmVyZW5jZSBpdCBh
bmQgZGVyZWYgaXQgd2hlbiBpdCByZWNlaXZlcyB1bnBsdWcuCj4gCgpUaGF0IG1ha2Ugc2Vuc2Ug
YW5kIGJlIG1vcmUgY29oZXJlbnQuIEluIHRoaXMgY2FzZSB0aGUgY2FsbCB0bwpzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfdW5yZWYgaXMgc3VyZWx5IHdyb25nIGFuZCBzaG91bGQgYmUgbW92ZWQK
dG8gc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVkX2RldmljZSAoYXMgc3VnZ2VzdGVk
IGJlbG93KQp0byBhdm9pZCBsZWFrcyBvciB1c2UtYWZ0ZXItZnJlZS4KSSBzdGlsbCB0aGluayB0
aGF0IGEgYWxsb2MvZnJlZSB0ZXN0IHNob3VsZCB3b3JrIHdpdGhvdXQgY2FsbGluZwphIHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV9lamVjdCBmdW5jdGlvbi4KCj4gPgo+ID4gPiArfQo+ID4gPiAr
Cj4gPiA+ICtTcGljZVVzYkJhY2tlbmREZXZpY2UqCj4gPiA+ICtzcGljZV91c2JfYmFja2VuZF9j
cmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2VD
cmVhdGUKPiA+ID4gY3JlYXRlX3Byb2MsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHZvaWQgKmNyZWF0ZV9wYXJhbXMsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycikKPiA+ID4gK3sKPiA+ID4g
KyAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlICplZGV2Owo+ID4gPiArICAgIFNwaWNlVXNiQmFj
a2VuZERldmljZSAqZGV2Owo+ID4gPiArICAgIHN0cnVjdCBsaWJ1c2JfZGV2aWNlX2Rlc2NyaXB0
b3IgKmRlc2M7Cj4gPiA+ICsgICAgdWludDE2X3QgZGV2aWNlX2Rlc2Nfc2l6ZTsKPiA+ID4gKyAg
ICB1aW50OF90IGFkZHJlc3MgPSAwOwo+ID4gPiArCj4gPiA+ICsgICAgaWYgKGJlLT5vd25fZGV2
aWNlc19tYXNrID09IDB4ZmZmZmZmZmYpIHsKPiA+ID4gKyAgICAgICAgZ19zZXRfZXJyb3IoZXJy
LCBTUElDRV9DTElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgIF8oImNhbid0IGNyZWF0ZSBkZXZpY2UgLSBsaW1pdCByZWFjaGVk
IikpOwo+ID4gPiArICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gKyAgICB9Cj4gPiA+ICsgICAg
Zm9yIChhZGRyZXNzID0gMDsgYWRkcmVzcyA8IDMyOyArK2FkZHJlc3MpIHsKPiA+ID4gKyAgICAg
ICAgaWYgKH5iZS0+b3duX2RldmljZXNfbWFzayAmICgxIDw8IGFkZHJlc3MpKSB7Cj4gPiA+ICsg
ICAgICAgICAgICBicmVhazsKPiA+ID4gKyAgICAgICAgfQo+ID4gPiArICAgIH0KPiA+ID4gKwo+
ID4gPiArICAgIGRldiA9IGdfbmV3MChTcGljZVVzYkJhY2tlbmREZXZpY2UsIDEpOwo+ID4gPiAr
ICAgIGRldi0+ZGV2aWNlX2luZm8uYnVzID0gQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNCOwo+
ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uYWRkcmVzcyA9IGFkZHJlc3M7Cj4gPiA+ICsgICAg
ZGV2LT5yZWZfY291bnQgPSAxOwo+ID4gPiArCj4gPiA+ICsgICAgZGV2LT5lZGV2ID0gZWRldiA9
IGNyZWF0ZV9wcm9jKGJlLCBkZXYsIGNyZWF0ZV9wYXJhbXMsIGVycik7Cj4gPiA+ICsgICAgaWYg
KGVkZXYgPT0gTlVMTCkgewo+ID4gPiArICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
dW5yZWYoZGV2KTsKPiA+ID4gKyAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ICsgICAgfQo+ID4g
PiArCj4gPiA+ICsgICAgaWYgKCFkZXZpY2Vfb3BzKGVkZXYpLT5nZXRfZGVzY3JpcHRvcihlZGV2
LCBMSUJVU0JfRFRfREVWSUNFLCAwLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKHZvaWQgKiopJmRlc2MsCj4gPiA+ICZkZXZpY2VfZGVzY19zaXplKQo+
ID4gPiArICAgICAgICB8fCBkZXZpY2VfZGVzY19zaXplICE9IHNpemVvZigqZGVzYykpIHsKPiA+
ID4gKwo+ID4gPiArICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsK
PiA+ID4gKyAgICAgICAgZ19zZXRfZXJyb3IoZXJyLCBTUElDRV9DTElFTlRfRVJST1IsIFNQSUNF
X0NMSUVOVF9FUlJPUl9GQUlMRUQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgIF8oImNhbid0
IGNyZWF0ZSBkZXZpY2UgLSBpbnRlcm5hbCBlcnJvciIpKTsKPiA+ID4gKyAgICAgICAgcmV0dXJu
IE5VTEw7Cj4gPiA+ICsgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgYmUtPm93bl9kZXZpY2VzX21h
c2sgfD0gMSA8PCBhZGRyZXNzOwo+ID4gPiArCj4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby52
aWQgPSBkZXNjLT5pZFZlbmRvcjsKPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLnBpZCA9IGRl
c2MtPmlkUHJvZHVjdDsKPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLmJjZFVTQiA9IGRlc2Mt
PmJjZFVTQjsKPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLmNsYXNzID0gZGVzYy0+YkRldmlj
ZUNsYXNzOwo+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uc3ViY2xhc3MgPSBkZXNjLT5iRGV2
aWNlU3ViQ2xhc3M7Cj4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5wcm90b2NvbCA9IGRlc2Mt
PmJEZXZpY2VQcm90b2NvbDsKPiA+ID4gKwo+ID4gPiArICAgIGlmIChiZS0+aG90cGx1Z19jYWxs
YmFjaykgewo+ID4gPiArICAgICAgICBiZS0+aG90cGx1Z19jYWxsYmFjayhiZS0+aG90cGx1Z191
c2VyX2RhdGEsIGRldiwgVFJVRSk7Cj4gPiA+ICsgICAgfQo+ID4KPiA+IEhlcmUgdGhlIGRpZmZl
cmVuY2UgZnJvbSBub3JtYWwgZGV2aWNlcy4gSW4gbm9ybWFsIGRldmljZXMKPiA+IGhvdHBsdWdf
Y2FsbGJhY2sgY2FsbGJhY2sgaXMgY2FsbGVkIGZyb20gaG90cGx1Z19jYWxsYmFjayBmdW5jdGlv
biB0aGVuCj4gPiBkZXZpY2UgaXMgcmVsZWFzZWQgd2l0aCBzcGljZV91c2JfYmFja2VuZF9kZXZp
Y2VfdW5yZWYuIEhlcmUgdGhlCj4gPiBmdW5jdGlvbiByZXR1cm5zIHRoZSBvYmplY3QuIFRoaXMg
cG9pbnRlciBpcyByZXR1cm5lZCBieSBjcmVhdGVfZW11bGF0ZWRfY2QKPiA+IHRoZW4gdGhlIGNh
bGxlciAoc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3NldF9wcm9wZXJ0eSkganVzdCBkaXNjYXJk
Cj4gPiB0aGUgcG9pbnRlci4KPiA+Cj4gPiA+ICsKPiA+ID4gKyAgICByZXR1cm4gZGV2Owo+ID4g
PiArfQo+ID4gPiArCj4gPiA+ICAjZW5kaWYgLyogVVNCX1JFRElSICovCj4gPiA+IGRpZmYgLS1n
aXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCj4gPiA+IGluZGV4IDY5
YTQ5MGIuLjYzYjkyMDIgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5oCj4gPiA+
ICsrKyBiL3NyYy91c2ItYmFja2VuZC5oCj4gPiA+IEBAIC0zMSwxMiArMzEsMTUgQEAgdHlwZWRl
ZiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZCBTcGljZVVzYkJhY2tlbmQ7Cj4gPiA+ICB0eXBlZGVm
IHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlIFNwaWNlVXNiQmFja2VuZERldmljZTsKPiA+
ID4gIHR5cGVkZWYgc3RydWN0IF9TcGljZVVzYkJhY2tlbmRDaGFubmVsIFNwaWNlVXNiQmFja2Vu
ZENoYW5uZWw7Cj4gPiA+Cj4gPiA+ICsjZGVmaW5lIEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VT
QiBHX01BWFVJTlQxNgo+ID4gPiArCj4gPiA+ICB0eXBlZGVmIHN0cnVjdCBVc2JEZXZpY2VJbmZv
cm1hdGlvbgo+ID4gPiAgewo+ID4gPiAgICAgIHVpbnQxNl90IGJ1czsKPiA+ID4gICAgICB1aW50
MTZfdCBhZGRyZXNzOwo+ID4gPiAgICAgIHVpbnQxNl90IHZpZDsKPiA+ID4gICAgICB1aW50MTZf
dCBwaWQ7Cj4gPiA+ICsgICAgdWludDE2X3QgYmNkVVNCOwo+ID4gPiAgICAgIHVpbnQ4X3QgY2xh
c3M7Cj4gPiA+ICAgICAgdWludDhfdCBzdWJjbGFzczsKPiA+ID4gICAgICB1aW50OF90IHByb3Rv
Y29sOwo+ID4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1lbXVsYXRpb24uaCBiL3NyYy91c2ItZW11
bGF0aW9uLmgKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMC4u
OWU2MjZhMgo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL3NyYy91c2ItZW11bGF0aW9u
LmgKPiA+ID4gQEAgLTAsMCArMSw5MSBAQAo+ID4gPiArLyogLSotIE1vZGU6IEM7IGMtYmFzaWMt
b2Zmc2V0OiA0OyBpbmRlbnQtdGFicy1tb2RlOiBuaWwgLSotICovCj4gPiA+ICsvKgo+ID4gPiAr
ICAgIENvcHlyaWdodCAoQykgMjAxOSBSZWQgSGF0LCBJbmMuCj4gPiA+ICsKPiA+ID4gKyAgICBS
ZWQgSGF0IEF1dGhvcnM6Cj4gPiA+ICsgICAgWXVyaSBCZW5kaXRvdmljaDx5YmVuZGl0b0ByZWRo
YXQuY29tPgo+ID4gPiArCj4gPiA+ICsgICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7
IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgo+ID4gPiArICAgIG1vZGlmeSBpdCB1bmRl
ciB0aGUgdGVybXMgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiA+ID4gKyAgICBM
aWNlbnNlIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRo
ZXIKPiA+ID4gKyAgICB2ZXJzaW9uIDIuMSBvZiB0aGUgTGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0
aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KPiA+ID4gKwo+ID4gPiArICAgIFRoaXMgbGlicmFyeSBp
cyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAo+ID4gPiAr
ICAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRoZSBpbXBsaWVkIHdh
cnJhbnR5IG9mCj4gPiA+ICsgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFS
VElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZSBHTlUKPiA+ID4gKyAgICBMZXNzZXIgR2VuZXJhbCBQ
dWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgo+ID4gPiArCj4gPiA+ICsgICAgWW91IHNo
b3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1Ymxp
Ywo+ID4gPiArICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2Vl
Cj4gPiA+IDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiA+ID4gKyovCj4gPiA+ICsK
PiA+ID4gKyNpZm5kZWYgX19TUElDRV9VU0JfRU1VTEFUSU9OX0hfXwo+ID4gPiArI2RlZmluZSBf
X1NQSUNFX1VTQl9FTVVMQVRJT05fSF9fCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlICJ1c2JyZWRp
cnBhcnNlci5oIgo+ID4gPiArI2luY2x1ZGUgInVzYi1iYWNrZW5kLmgiCj4gPiA+ICsKPiA+ID4g
K3R5cGVkZWYgc3RydWN0IFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgU3BpY2VVc2JFbXVsYXRlZERl
dmljZTsKPiA+ID4gK3R5cGVkZWYgU3BpY2VVc2JFbXVsYXRlZERldmljZSoKPiA+ID4gKygqU3Bp
Y2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZSkoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpwYXJl
bnQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmNyZWF0ZV9w
YXJhbXMsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVy
cik7Cj4gPiA+ICsKPiA+ID4gKy8qCj4gPiA+ICsgICAgZnVuY3Rpb24gdGFibGUgZm9yIGVtdWxh
dGVkIFVTQiBkZXZpY2UKPiA+ID4gKyAgICBtdXN0IGJlIGZpcnN0IG1lbWJlciBvZiBkZXZpY2Ug
c3RydWN0dXJlCj4gPiA+ICsgICAgYWxsIGZ1bmN0aW9ucyBhcmUgbWFuZGF0b3J5IGZvciBpbXBs
ZW1lbnRhdGlvbgo+ID4gPiArKi8KPiA+ID4gK3R5cGVkZWYgc3RydWN0IFVzYkRldmljZU9wcyB7
Cj4gPiA+ICsgICAgZ2Jvb2xlYW4gKCpnZXRfZGVzY3JpcHRvcikoU3BpY2VVc2JFbXVsYXRlZERl
dmljZSAqZGV2aWNlLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4
X3QgdHlwZSwgdWludDhfdCBpbmRleCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB2b2lkICoqYnVmZmVyLCB1aW50MTZfdCAqc2l6ZSk7Cj4gPiA+ICsgICAgZ2NoYXIgKiAo
KmdldF9wcm9kdWN0X2Rlc2NyaXB0aW9uKShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2Up
Owo+ID4gPiArICAgIHZvaWQgKCphdHRhY2gpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRldmlj
ZSwgc3RydWN0IHVzYnJlZGlycGFyc2VyCj4gPiA+ICpwYXJzZXIpOwo+ID4gPiArICAgIHZvaWQg
KCpyZXNldCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlKTsKPiA+ID4gKyAgICAvKgo+
ID4gPiArICAgICAgICBwcm9jZXNzaW5nIGlzIHN5bmNocm9ub3VzLCBkZWZhdWx0ID0gc3RhbGw6
Cj4gPiA+ICsgICAgICAgIC0gcmV0dXJuIHN1Y2Nlc3Mgd2l0aG91dCBkYXRhOiBzZXQgc3RhdHVz
IHRvIDAKPiA+ID4gKyAgICAgICAgLSByZXR1cm4gZXJyb3IgLSBzZXQgc3RhdHVzIHRvIGVycm9y
Cj4gPiA+ICsgICAgICAgIC0gcmV0dXJuIHN1Y2Nlc3Mgd2l0aCBkYXRhIC0gc2V0IHN0YXR1cyB0
byAwLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2V0IGJ1ZmZl
ciB0byBzb21lIGJ1ZmZlcgo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc2V0IGxlbmd0aCB0byBvdXQgbGVuCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB0cnVuY2F0aW9uIGlzIGF1dG9tYXRpYwo+ID4gPiArICAgICovCj4gPiA+ICsg
ICAgdm9pZCAoKmNvbnRyb2xfcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNl
LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgKmRhdGEsIGludCBk
YXRhX2xlbiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgdXNiX3Jl
ZGlyX2NvbnRyb2xfcGFja2V0X2hlYWRlciAqaCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB2b2lkICoqYnVmZmVyKTsKPiA+ID4gKyAgICAvKgo+ID4gPiArICAgICAgICBwcm9j
ZXNzaW5nIGlzIHN5bmNocm9ub3VzOgo+ID4gPiArICAgICAgICAtIHNldCBoLT5zdGF0dXMgdG8g
cmVzdWx0aW5nIHN0YXR1cywgZGVmYXVsdCA9IHN0YWxsCj4gPiA+ICsgICAgKi8KPiA+ID4gKyAg
ICB2b2lkICgqYnVsa19vdXRfcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNl
LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90IGVwLCB1aW50OF90
ICpkYXRhLCBpbnQgZGF0YV9sZW4sCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHVpbnQ4X3QgKnN0YXR1cyk7Cj4gPiA+ICsgICAgLyoKPiA+ID4gKyAgICAgICAgaWYgcmV0dXJu
cyB0cnVlLCBwcm9jZXNzaW5nIGlzIGFzeW5jaHJvbm91cwo+ID4gPiArICAgICAgICBvdGhlcndp
c2UgaGVhZGVyIGNvbnRhaW5zIGVycm9yIHN0YXR1cwo+ID4gPiArICAgICovCj4gPiA+ICsgICAg
Z2Jvb2xlYW4gKCpidWxrX2luX3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRldmlj
ZSwgdWludDY0X3QKPiA+ID4gaWQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHVzYl9yZWRpcl9idWxrX3BhY2tldF9oZWFkZXIKPiA+ID4gKmJ1bGtfaGVhZGVyKTsK
PiA+ID4gKyAgICB2b2lkICgqY2FuY2VsX3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2Ug
KmRldmljZSwgdWludDY0X3QgaWQpOwo+ID4gPiArICAgIHZvaWQgKCpkZXRhY2gpKFNwaWNlVXNi
RW11bGF0ZWREZXZpY2UgKmRldmljZSk7Cj4gPiA+ICsgICAgdm9pZCAoKnVucmVhbGl6ZSkoU3Bp
Y2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlKTsKPiA+ID4gK30gVXNiRGV2aWNlT3BzOwo+ID4g
PiArCj4gPiA+ICtzdGF0aWMgaW5saW5lIGNvbnN0IFVzYkRldmljZU9wcyAqZGV2aWNlX29wcyhT
cGljZVVzYkVtdWxhdGVkRGV2aWNlCj4gPiA+ICpkZXYpCj4gPiA+ICt7Cj4gPiA+ICsgICAgcmV0
dXJuIChjb25zdCBVc2JEZXZpY2VPcHMgKilkZXY7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gK1Nw
aWNlVXNiQmFja2VuZERldmljZSoKPiA+ID4gK3NwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVs
YXRlZF9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZQo+ID4g
PiBjcmVhdGVfcHJvYywKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdm9pZCAqY3JlYXRlX3BhcmFtcywKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKTsKPiA+ID4gK3ZvaWQgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX2VqZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+IFNwaWNlVXNiQmFj
a2VuZERldmljZSAqZGV2aWNlKTsKPiA+ID4gK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNl
X3JlcG9ydF9jaGFuZ2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ID4gU3BpY2VVc2JCYWNrZW5k
RGV2aWNlICpkZXZpY2UpOwo+ID4gPiArCj4gPiA+ICsjZW5kaWYKPiA+Cj4gPiBGcmVkaWFubwo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
