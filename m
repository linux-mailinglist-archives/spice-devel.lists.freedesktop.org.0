Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B76D581624
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 11:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B72989FD9;
	Mon,  5 Aug 2019 09:58:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DF889FD9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 09:58:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3CBA5EB9C4;
 Mon,  5 Aug 2019 09:58:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 312E460F8C;
 Mon,  5 Aug 2019 09:58:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26B0B4E9F3;
 Mon,  5 Aug 2019 09:58:01 +0000 (UTC)
Date: Mon, 5 Aug 2019 05:58:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190804191624.29235-2-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-2-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.8]
Thread-Topic: usb-redir: define interfaces to support emulated devices
Thread-Index: YgOCa4JqvPO45z6rUD4FYS9QH3Sm2Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 05 Aug 2019 09:58:01 +0000 (UTC)
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTcGljZVVzYkJhY2tlbmREZXZpY2Ugc3RydWN0dXJlIGlzIGV4dGVuZGVkIHRvIHN1cHBv
cnQKPiBhZGRpdGlvbmFsIGtpbmQgb2YgZGV2aWNlIHRoYXQgaXMgZW11bGF0ZWQgYnkgU3BpY2Ut
R1RLCj4gYW5kIG5vdCBwcmVzZW50IGxvY2FsbHkgKGFuZCBkb2VzIG5vdCBoYXZlIGxpYnVzYl9k
ZXZpY2UpLAo+IHN1Y2ggZGV2aWNlIGhhcyBpbnN0ZWFkIHBvaW50ZXIgdG8gU3BpY2VVc2JFbXVs
YXRlZERldmljZQo+IGFic3RyYWN0IHN0cnVjdHVyZS4gU3BlY2lmaWMgaW1wbGVtZW50YXRpb24g
b2Ygc3VjaCBkZXZpY2UKPiBkZXBlbmRzIG9uIGl0cyBkZXZpY2UgdHlwZS4gSW1wbGVtZW50YXRp
b24gbW9kdWxlIHdpbGwgZGVmaW5lCj4gY29uc3RydWN0b3IgZm9yIHNwZWNpZmljIGRldmljZSB0
eXBlLgo+IERldmljZSBzdHJ1Y3R1cmUgaXMgYWJzdHJhY3QgYnV0IGFsd2F5cyBzdGFydHMgZnJv
bSB0YWJsZSBvZgo+IHZpcnR1YWwgZnVuY3Rpb25zIHJlcXVpcmVkIHRvIHJlZGlyZWN0IHN1Y2gg
dmlydHVhbCBkZXZpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVy
aS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+IC0tLQo+ICBzcmMvbWVzb24uYnVpbGQgICAgIHwg
ICAxICsKPiAgc3JjL3VzYi1iYWNrZW5kLmMgICB8IDEwMiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQo+ICBzcmMvdXNiLWJhY2tlbmQuaCAgIHwgICAzICsrCj4g
IHNyYy91c2ItZW11bGF0aW9uLmggfCAgOTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTk1IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCj4gCj4gZGlm
ZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAo+IGluZGV4IGI0YTY4
NzAuLmZlMTljMTYgMTAwNjQ0Cj4gLS0tIGEvc3JjL21lc29uLmJ1aWxkCj4gKysrIGIvc3JjL21l
c29uLmJ1aWxkCj4gQEAgLTEyMiw2ICsxMjIsNyBAQCBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2Vz
ID0gWwo+ICAgICd1c2J1dGlsLmMnLAo+ICAgICd1c2J1dGlsLmgnLAo+ICAgICd1c2ItYmFja2Vu
ZC5jJywKPiArICAndXNiLWVtdWxhdGlvbi5oJywKPiAgICAndXNiLWJhY2tlbmQuaCcsCj4gICAg
J3ZtY3N0cmVhbS5jJywKPiAgICAndm1jc3RyZWFtLmgnLAo+IGRpZmYgLS1naXQgYS9zcmMvdXNi
LWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4gaW5kZXggMzMzNGY1Ni4uYmU2MGNmMyAx
MDA2NDQKPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ICsrKyBiL3NyYy91c2ItYmFja2VuZC5j
Cj4gQEAgLTM5LDYgKzM5LDcgQEAKPiAgI2luY2x1ZGUgInVzYnJlZGlycGFyc2VyLmgiCj4gICNp
bmNsdWRlICJzcGljZS11dGlsLmgiCj4gICNpbmNsdWRlICJ1c2ItYmFja2VuZC5oIgo+ICsjaW5j
bHVkZSAidXNiLWVtdWxhdGlvbi5oIgo+ICAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2
LmgiCj4gICNpbmNsdWRlICJzcGljZS1jaGFubmVsLXByaXYuaCIKPiAgCj4gQEAgLTQ2LDcgKzQ3
LDEwIEBACj4gIAo+ICBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZERldmljZQo+ICB7Cj4gKyAgICAv
KiBQb2ludGVyIHRvIGRldmljZS4gRWl0aGVyIHJlYWwgZGV2aWNlIChsaWJ1c2JfZGV2aWNlKQo+
ICsgICAgICogb3IgZW11bGF0ZWQgb25lIChlZGV2KSAqLwo+ICAgICAgbGlidXNiX2RldmljZSAq
bGlidXNiX2RldmljZTsKPiArICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmVkZXY7Cj4gICAg
ICBnaW50IHJlZl9jb3VudDsKPiAgICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmF0dGFjaGVk
X3RvOwo+ICAgICAgVXNiRGV2aWNlSW5mb3JtYXRpb24gZGV2aWNlX2luZm87Cj4gQEAgLTY2LDYg
KzcwLDEwIEBAIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kCj4gICAgICBsaWJ1c2JfZGV2aWNlICoq
bGlidXNiX2RldmljZV9saXN0Owo+ICAgICAgZ2ludCByZWRpcmVjdGluZzsKPiAgI2VuZGlmCj4g
Kwo+ICsgICAgLyogTWFzayBvZiBhbGxvY2F0ZWQgZGV2aWNlLCBhIHNwZWNpZmljIGJpdCBzZXQg
dG8gMSB0byBpbmRpY2F0ZSB0aGF0Cj4gdGhlIGRldmljZSBhdAo+ICsgICAgICogdGhhdCBhZGRy
ZXNzIGlzIGFsbG9jYXRlZCAqLwo+ICsgICAgdWludDMyX3Qgb3duX2RldmljZXNfbWFzazsKPiAg
fTsKPiAgCj4gIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbAo+IEBAIC00MTMsNiArNDIx
LDggQEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9yICoqZXJy
b3IpCj4gICAgICAgICAgbGlidXNiX3NldF9vcHRpb24oYmUtPmxpYnVzYl9jb250ZXh0LCBMSUJV
U0JfT1BUSU9OX1VTRV9VU0JESyk7Cj4gICNlbmRpZgo+ICAjZW5kaWYKPiArICAgICAgICAvKiBl
eGNsdWRlIGFkZHJlc3NlcyAwIChyZXNlcnZlZCkgYW5kIDEgKHJvb3QgaHViKSAqLwo+ICsgICAg
ICAgIGJlLT5vd25fZGV2aWNlc19tYXNrID0gMzsKPiAgICAgIH0KPiAgICAgIFNQSUNFX0RFQlVH
KCIlcyA8PCIsIF9fRlVOQ1RJT05fXyk7Cj4gICAgICByZXR1cm4gYmU7Cj4gQEAgLTUyOSw4ICs1
MzksMTMgQEAgdm9pZAo+IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihTcGljZVVzYkJh
Y2tlbmREZXZpY2UgKmRldikKPiAgewo+ICAgICAgTE9VRF9ERUJVRygiJXMgPj4gJXAoJWQpIiwg
X19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2NvdW50KTsKPiAgICAgIGlmIChnX2F0b21pY19p
bnRfZGVjX2FuZF90ZXN0KCZkZXYtPnJlZl9jb3VudCkpIHsKPiAtICAgICAgICBsaWJ1c2JfdW5y
ZWZfZGV2aWNlKGRldi0+bGlidXNiX2RldmljZSk7Cj4gLSAgICAgICAgTE9VRF9ERUJVRygiJXMg
ZnJlZWluZyAlcCAobGlidXNiICVwKSIsIF9fRlVOQ1RJT05fXywgZGV2LAo+IGRldi0+bGlidXNi
X2RldmljZSk7Cj4gKyAgICAgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgewo+ICsgICAgICAg
ICAgICBsaWJ1c2JfdW5yZWZfZGV2aWNlKGRldi0+bGlidXNiX2RldmljZSk7Cj4gKyAgICAgICAg
ICAgIExPVURfREVCVUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBfX0ZVTkNUSU9OX18s
IGRldiwKPiBkZXYtPmxpYnVzYl9kZXZpY2UpOwo+ICsgICAgICAgIH0KPiArICAgICAgICBpZiAo
ZGV2LT5lZGV2KSB7Cj4gKyAgICAgICAgICAgIGRldmljZV9vcHMoZGV2LT5lZGV2KS0+dW5yZWFs
aXplKGRldi0+ZWRldik7Cj4gKyAgICAgICAgfQo+ICAgICAgICAgIGdfZnJlZShkZXYpOwo+ICAg
ICAgfQo+ICB9Cj4gQEAgLTgyOSw0ICs4NDQsODcgQEAKPiBzcGljZV91c2JfYmFja2VuZF9jaGFu
bmVsX2dldF9ndWVzdF9maWx0ZXIoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCj4gICAgICB9
Cj4gIH0KPiAgCj4gK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3JlcG9ydF9jaGFuZ2Uo
U3BpY2VVc2JCYWNrZW5kICpiZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiArewo+ICsgICAgZ2NoYXIg
KmRlc2M7Cj4gKyAgICBnX3JldHVybl9pZl9mYWlsKGRldiAmJiBkZXYtPmVkZXYpOwo+ICsKPiAr
ICAgIGRlc2MgPSBkZXZpY2Vfb3BzKGRldi0+ZWRldiktPmdldF9wcm9kdWN0X2Rlc2NyaXB0aW9u
KGRldi0+ZWRldik7Cj4gKyAgICBTUElDRV9ERUJVRygiJXM6ICVzIiwgX19GVU5DVElPTl9fLCBk
ZXNjKTsKPiArICAgIGdfZnJlZShkZXNjKTsKPiArfQo+ICsKCkxvb2tzIGxpa2UgdGhpcyBmdW5j
dGlvbiBpcyBqdXN0IGZvciBkZWJ1Z2dpbmcuCldoeSBpbnN0ZWFkIHVzZSBzcGljZV91c2JfYmFj
a2VuZF9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uIGluIHVzYi1kZXZpY2UtY2QuYwphbmQgY2FsbCBT
UElDRV9ERUJVRyBkaXJlY3RseT8KCj4gK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2Vq
ZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4g
K3sKPiArICAgIGdfcmV0dXJuX2lmX2ZhaWwoZGV2ICYmIGRldi0+ZWRldik7Cj4gKwo+ICsgICAg
aWYgKGJlLT5ob3RwbHVnX2NhbGxiYWNrKSB7Cj4gKyAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJh
Y2soYmUtPmhvdHBsdWdfdXNlcl9kYXRhLCBkZXYsIEZBTFNFKTsKPiArICAgIH0KPiArICAgIGJl
LT5vd25fZGV2aWNlc19tYXNrICY9IH4oMSA8PCBkZXYtPmRldmljZV9pbmZvLmFkZHJlc3MpOwo+
ICsKPiArICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXYpOwoKRnJvbSBteSBl
eHBlcmltZW50cyBsb29rcyBsaWtlIHRoYXQgcmVmZXJlbmNlIGNvdW50aW5nIGZvciB0aGVzZQpl
bXVsYXRlZCBkZXZpY2VzIGFyZSBkaWZmZXJlbnQgZnJvbSBub3JtYWwgb25lcy4KSW4gbm9ybWFs
IG9uZXMgdGhlIGRldmljZSBsaXN0IGluIHVzYiBtYW5hZ2VyIGlzIHRoZSBtYWluIG93bmVyLApm
b3IgdGhlc2UgZGV2aWNlcyB5b3UgaGF2ZSBhbiBhZGRpdGlvbmFsIHJlZmVyZW5jZSB0aGF0IGlz
IHJlbW92ZWQKaGVyZS4gU28gaWYgdGhpcyBmdW5jdGlvbiBpcyBub3QgY2FsbGVkIHlvdSBoYXZl
IGEgbGVhay4gQWxzbwppcyB3ZWlyZCB0byBoYXZlIGEgcmVmZXJlbmNlIHdpdGhvdXQgaGF2aW5n
IGFuIGFjdHVhbCBwb2ludGVyLgpUaGUgc2FtZSBhcHBseSB0byBvd25fZGV2aWNlc19tYXNrIGJp
dCBjbGVhcmFuY2UgKGFkZGVkIGluIHRoaXMKdmVyc2lvbiBvZiB0aGUgcGF0Y2gpLiBJZiBJIHNl
dCB0aGUgYml0IGNyZWF0aW5nIGFuIG9iamVjdCBJIGV4cGVjdAp0aGUgYml0IHRvIGJlIGNsZWFy
IGR1cmluZyB0aGUgb2JqZWN0IGRlc3RydWN0aW9uLCBub3QgYW5vdGhlcgpub3QgcmVsYXRlZCBm
dW5jdGlvbi4gSSB3cm90ZSBhIHRlc3QgdGhhdCBjYWxsIGluIGEgbG9vcCAxMjggdGltZXMKY3Jl
YXRlX2VtdWxhdGVkX2NkIGFuZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYgYW5kIGZh
aWxzCihodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvY29t
bWl0LzBiYmMwZDg1YjQzYjVkYmNiOTJjMmEzOTE1YjRiMWM5ZDkyMjhhN2EsCndpbGwgcHJvYmFi
bHkgZGlzYXBwZWFyIGluIGEgd2hpbGUpLiBJIHdvdWxkIGV4cGVjdCB0aGlzIHRlc3QgdG8KcGFz
cyBhbmQgdG8gZGVsZXRlIGNvbXBsZXRlbHkgdGhlIG9iamVjdCB3aXRob3V0IGxlYWtzLgoKPiAr
fQo+ICsKPiArU3BpY2VVc2JCYWNrZW5kRGV2aWNlKgo+ICtzcGljZV91c2JfYmFja2VuZF9jcmVh
dGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZQo+
IGNyZWF0ZV9wcm9jLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHZvaWQgKmNyZWF0ZV9wYXJhbXMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgR0Vycm9yICoqZXJyKQo+ICt7Cj4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNl
ICplZGV2Owo+ICsgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXY7Cj4gKyAgICBzdHJ1Y3Qg
bGlidXNiX2RldmljZV9kZXNjcmlwdG9yICpkZXNjOwo+ICsgICAgdWludDE2X3QgZGV2aWNlX2Rl
c2Nfc2l6ZTsKPiArICAgIHVpbnQ4X3QgYWRkcmVzcyA9IDA7Cj4gKwo+ICsgICAgaWYgKGJlLT5v
d25fZGV2aWNlc19tYXNrID09IDB4ZmZmZmZmZmYpIHsKPiArICAgICAgICBnX3NldF9lcnJvcihl
cnIsIFNQSUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKPiArICAg
ICAgICAgICAgICAgICAgICBfKCJjYW4ndCBjcmVhdGUgZGV2aWNlIC0gbGltaXQgcmVhY2hlZCIp
KTsKPiArICAgICAgICByZXR1cm4gTlVMTDsKPiArICAgIH0KPiArICAgIGZvciAoYWRkcmVzcyA9
IDA7IGFkZHJlc3MgPCAzMjsgKythZGRyZXNzKSB7Cj4gKyAgICAgICAgaWYgKH5iZS0+b3duX2Rl
dmljZXNfbWFzayAmICgxIDw8IGFkZHJlc3MpKSB7Cj4gKyAgICAgICAgICAgIGJyZWFrOwo+ICsg
ICAgICAgIH0KPiArICAgIH0KPiArCj4gKyAgICBkZXYgPSBnX25ldzAoU3BpY2VVc2JCYWNrZW5k
RGV2aWNlLCAxKTsKPiArICAgIGRldi0+ZGV2aWNlX2luZm8uYnVzID0gQlVTX05VTUJFUl9GT1Jf
RU1VTEFURURfVVNCOwo+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzID0gYWRkcmVzczsK
PiArICAgIGRldi0+cmVmX2NvdW50ID0gMTsKPiArCj4gKyAgICBkZXYtPmVkZXYgPSBlZGV2ID0g
Y3JlYXRlX3Byb2MoYmUsIGRldiwgY3JlYXRlX3BhcmFtcywgZXJyKTsKPiArICAgIGlmIChlZGV2
ID09IE5VTEwpIHsKPiArICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2
KTsKPiArICAgICAgICByZXR1cm4gTlVMTDsKPiArICAgIH0KPiArCj4gKyAgICBpZiAoIWRldmlj
ZV9vcHMoZWRldiktPmdldF9kZXNjcmlwdG9yKGVkZXYsIExJQlVTQl9EVF9ERVZJQ0UsIDAsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh2b2lkICoqKSZkZXNj
LCAmZGV2aWNlX2Rlc2Nfc2l6ZSkKPiArICAgICAgICB8fCBkZXZpY2VfZGVzY19zaXplICE9IHNp
emVvZigqZGVzYykpIHsKPiArCj4gKyAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3Vu
cmVmKGRldik7Cj4gKyAgICAgICAgZ19zZXRfZXJyb3IoZXJyLCBTUElDRV9DTElFTlRfRVJST1Is
IFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCj4gKyAgICAgICAgICAgICAgICAgICAgXygiY2Fu
J3QgY3JlYXRlIGRldmljZSAtIGludGVybmFsIGVycm9yIikpOwo+ICsgICAgICAgIHJldHVybiBO
VUxMOwo+ICsgICAgfQo+ICsKPiArICAgIGJlLT5vd25fZGV2aWNlc19tYXNrIHw9IDEgPDwgYWRk
cmVzczsKPiArCj4gKyAgICBkZXYtPmRldmljZV9pbmZvLnZpZCA9IGRlc2MtPmlkVmVuZG9yOwo+
ICsgICAgZGV2LT5kZXZpY2VfaW5mby5waWQgPSBkZXNjLT5pZFByb2R1Y3Q7Cj4gKyAgICBkZXYt
PmRldmljZV9pbmZvLmJjZFVTQiA9IGRlc2MtPmJjZFVTQjsKPiArICAgIGRldi0+ZGV2aWNlX2lu
Zm8uY2xhc3MgPSBkZXNjLT5iRGV2aWNlQ2xhc3M7Cj4gKyAgICBkZXYtPmRldmljZV9pbmZvLnN1
YmNsYXNzID0gZGVzYy0+YkRldmljZVN1YkNsYXNzOwo+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5w
cm90b2NvbCA9IGRlc2MtPmJEZXZpY2VQcm90b2NvbDsKPiArCj4gKyAgICBpZiAoYmUtPmhvdHBs
dWdfY2FsbGJhY2spIHsKPiArICAgICAgICBiZS0+aG90cGx1Z19jYWxsYmFjayhiZS0+aG90cGx1
Z191c2VyX2RhdGEsIGRldiwgVFJVRSk7Cj4gKyAgICB9CgpIZXJlIHRoZSBkaWZmZXJlbmNlIGZy
b20gbm9ybWFsIGRldmljZXMuIEluIG5vcm1hbCBkZXZpY2VzCmhvdHBsdWdfY2FsbGJhY2sgY2Fs
bGJhY2sgaXMgY2FsbGVkIGZyb20gaG90cGx1Z19jYWxsYmFjayBmdW5jdGlvbiB0aGVuCmRldmlj
ZSBpcyByZWxlYXNlZCB3aXRoIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZi4gSGVyZSB0
aGUKZnVuY3Rpb24gcmV0dXJucyB0aGUgb2JqZWN0LiBUaGlzIHBvaW50ZXIgaXMgcmV0dXJuZWQg
YnkgY3JlYXRlX2VtdWxhdGVkX2NkCnRoZW4gdGhlIGNhbGxlciAoc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX3NldF9wcm9wZXJ0eSkganVzdCBkaXNjYXJkCnRoZSBwb2ludGVyLgoKPiArCj4gKyAg
ICByZXR1cm4gZGV2Owo+ICt9Cj4gKwo+ICAjZW5kaWYgLyogVVNCX1JFRElSICovCj4gZGlmZiAt
LWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKPiBpbmRleCA2OWE0
OTBiLi42M2I5MjAyIDEwMDY0NAo+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5oCj4gKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmgKPiBAQCAtMzEsMTIgKzMxLDE1IEBAIHR5cGVkZWYgc3RydWN0IF9TcGlj
ZVVzYkJhY2tlbmQgU3BpY2VVc2JCYWNrZW5kOwo+ICB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JC
YWNrZW5kRGV2aWNlIFNwaWNlVXNiQmFja2VuZERldmljZTsKPiAgdHlwZWRlZiBzdHJ1Y3QgX1Nw
aWNlVXNiQmFja2VuZENoYW5uZWwgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbDsKPiAgCj4gKyNkZWZp
bmUgQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNCIEdfTUFYVUlOVDE2Cj4gKwo+ICB0eXBlZGVm
IHN0cnVjdCBVc2JEZXZpY2VJbmZvcm1hdGlvbgo+ICB7Cj4gICAgICB1aW50MTZfdCBidXM7Cj4g
ICAgICB1aW50MTZfdCBhZGRyZXNzOwo+ICAgICAgdWludDE2X3QgdmlkOwo+ICAgICAgdWludDE2
X3QgcGlkOwo+ICsgICAgdWludDE2X3QgYmNkVVNCOwo+ICAgICAgdWludDhfdCBjbGFzczsKPiAg
ICAgIHVpbnQ4X3Qgc3ViY2xhc3M7Cj4gICAgICB1aW50OF90IHByb3RvY29sOwo+IGRpZmYgLS1n
aXQgYS9zcmMvdXNiLWVtdWxhdGlvbi5oIGIvc3JjL3VzYi1lbXVsYXRpb24uaAo+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uOWU2MjZhMgo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9zcmMvdXNiLWVtdWxhdGlvbi5oCj4gQEAgLTAsMCArMSw5MSBAQAo+ICsvKiAtKi0gTW9k
ZTogQzsgYy1iYXNpYy1vZmZzZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6IG5pbCAtKi0gKi8KPiAr
LyoKPiArICAgIENvcHlyaWdodCAoQykgMjAxOSBSZWQgSGF0LCBJbmMuCj4gKwo+ICsgICAgUmVk
IEhhdCBBdXRob3JzOgo+ICsgICAgWXVyaSBCZW5kaXRvdmljaDx5YmVuZGl0b0ByZWRoYXQuY29t
Pgo+ICsKPiArICAgIFRoaXMgbGlicmFyeSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlz
dHJpYnV0ZSBpdCBhbmQvb3IKPiArICAgIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhl
IEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiArICAgIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5
IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlcgo+ICsgICAgdmVyc2lvbiAyLjEg
b2YgdGhlIExpY2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCj4g
Kwo+ICsgICAgVGhpcyBsaWJyYXJ5IGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQg
d2lsbCBiZSB1c2VmdWwsCj4gKyAgICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQg
ZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+ICsgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJ
VE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZSBHTlUKPiArICAgIExlc3Nl
ciBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCj4gKwo+ICsgICAgWW91
IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1
YmxpYwo+ICsgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUK
PiA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gKyovCj4gKwo+ICsjaWZuZGVmIF9f
U1BJQ0VfVVNCX0VNVUxBVElPTl9IX18KPiArI2RlZmluZSBfX1NQSUNFX1VTQl9FTVVMQVRJT05f
SF9fCj4gKwo+ICsjaW5jbHVkZSAidXNicmVkaXJwYXJzZXIuaCIKPiArI2luY2x1ZGUgInVzYi1i
YWNrZW5kLmgiCj4gKwo+ICt0eXBlZGVmIHN0cnVjdCBTcGljZVVzYkVtdWxhdGVkRGV2aWNlIFNw
aWNlVXNiRW11bGF0ZWREZXZpY2U7Cj4gK3R5cGVkZWYgU3BpY2VVc2JFbXVsYXRlZERldmljZSoK
PiArKCpTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlKShTcGljZVVzYkJhY2tlbmQgKmJlLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAq
cGFyZW50LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmNyZWF0ZV9w
YXJhbXMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKTsK
PiArCj4gKy8qCj4gKyAgICBmdW5jdGlvbiB0YWJsZSBmb3IgZW11bGF0ZWQgVVNCIGRldmljZQo+
ICsgICAgbXVzdCBiZSBmaXJzdCBtZW1iZXIgb2YgZGV2aWNlIHN0cnVjdHVyZQo+ICsgICAgYWxs
IGZ1bmN0aW9ucyBhcmUgbWFuZGF0b3J5IGZvciBpbXBsZW1lbnRhdGlvbgo+ICsqLwo+ICt0eXBl
ZGVmIHN0cnVjdCBVc2JEZXZpY2VPcHMgewo+ICsgICAgZ2Jvb2xlYW4gKCpnZXRfZGVzY3JpcHRv
cikoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdWludDhfdCB0eXBlLCB1aW50OF90IGluZGV4LAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdm9pZCAqKmJ1ZmZlciwgdWludDE2X3QgKnNpemUpOwo+ICsgICAg
Z2NoYXIgKiAoKmdldF9wcm9kdWN0X2Rlc2NyaXB0aW9uKShTcGljZVVzYkVtdWxhdGVkRGV2aWNl
ICpkZXZpY2UpOwo+ICsgICAgdm9pZCAoKmF0dGFjaCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAq
ZGV2aWNlLCBzdHJ1Y3QgdXNicmVkaXJwYXJzZXIKPiAqcGFyc2VyKTsKPiArICAgIHZvaWQgKCpy
ZXNldCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlKTsKPiArICAgIC8qCj4gKyAgICAg
ICAgcHJvY2Vzc2luZyBpcyBzeW5jaHJvbm91cywgZGVmYXVsdCA9IHN0YWxsOgo+ICsgICAgICAg
IC0gcmV0dXJuIHN1Y2Nlc3Mgd2l0aG91dCBkYXRhOiBzZXQgc3RhdHVzIHRvIDAKPiArICAgICAg
ICAtIHJldHVybiBlcnJvciAtIHNldCBzdGF0dXMgdG8gZXJyb3IKPiArICAgICAgICAtIHJldHVy
biBzdWNjZXNzIHdpdGggZGF0YSAtIHNldCBzdGF0dXMgdG8gMCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc2V0IGJ1ZmZlciB0byBzb21lIGJ1ZmZlcgo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZXQgbGVuZ3RoIHRvIG91dCBsZW4KPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1bmNhdGlvbiBpcyBhdXRvbWF0aWMK
PiArICAgICovCj4gKyAgICB2b2lkICgqY29udHJvbF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVk
RGV2aWNlICpkZXZpY2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpk
YXRhLCBpbnQgZGF0YV9sZW4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
dXNiX3JlZGlyX2NvbnRyb2xfcGFja2V0X2hlYWRlciAqaCwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZvaWQgKipidWZmZXIpOwo+ICsgICAgLyoKPiArICAgICAgICBwcm9jZXNzaW5n
IGlzIHN5bmNocm9ub3VzOgo+ICsgICAgICAgIC0gc2V0IGgtPnN0YXR1cyB0byByZXN1bHRpbmcg
c3RhdHVzLCBkZWZhdWx0ID0gc3RhbGwKPiArICAgICovCj4gKyAgICB2b2lkICgqYnVsa19vdXRf
cmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVpbnQ4X3QgZXAsIHVpbnQ4X3QgKmRhdGEsIGludCBkYXRhX2xlbiwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpzdGF0dXMpOwo+ICsgICAg
LyoKPiArICAgICAgICBpZiByZXR1cm5zIHRydWUsIHByb2Nlc3NpbmcgaXMgYXN5bmNocm9ub3Vz
Cj4gKyAgICAgICAgb3RoZXJ3aXNlIGhlYWRlciBjb250YWlucyBlcnJvciBzdGF0dXMKPiArICAg
ICovCj4gKyAgICBnYm9vbGVhbiAoKmJ1bGtfaW5fcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERl
dmljZSAqZGV2aWNlLCB1aW50NjRfdCBpZCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyCj4gKmJ1bGtfaGVhZGVyKTsKPiAr
ICAgIHZvaWQgKCpjYW5jZWxfcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNl
LCB1aW50NjRfdCBpZCk7Cj4gKyAgICB2b2lkICgqZGV0YWNoKShTcGljZVVzYkVtdWxhdGVkRGV2
aWNlICpkZXZpY2UpOwo+ICsgICAgdm9pZCAoKnVucmVhbGl6ZSkoU3BpY2VVc2JFbXVsYXRlZERl
dmljZSAqZGV2aWNlKTsKPiArfSBVc2JEZXZpY2VPcHM7Cj4gKwo+ICtzdGF0aWMgaW5saW5lIGNv
bnN0IFVzYkRldmljZU9wcyAqZGV2aWNlX29wcyhTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXYp
Cj4gK3sKPiArICAgIHJldHVybiAoY29uc3QgVXNiRGV2aWNlT3BzICopZGV2Owo+ICt9Cj4gKwo+
ICtTcGljZVVzYkJhY2tlbmREZXZpY2UqCj4gK3NwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVs
YXRlZF9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlCj4gY3JlYXRl
X3Byb2MsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAq
Y3JlYXRlX3BhcmFtcywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBHRXJyb3IgKiplcnIpOwo+ICt2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9lamVjdChT
cGljZVVzYkJhY2tlbmQgKmJlLAo+IFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKPiAr
dm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tl
bmQgKmJlLAo+IFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKPiArCj4gKyNlbmRpZgoK
RnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
