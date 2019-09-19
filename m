Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2709B7576
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E716E6F4E5;
	Thu, 19 Sep 2019 08:51:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630446F4E5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:51:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 01FC5308218D
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:51:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EC69660BF1
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:51:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2AF64A460;
 Thu, 19 Sep 2019 08:51:42 +0000 (UTC)
Date: Thu, 19 Sep 2019 04:51:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1014878350.2490912.1568883102055.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190919083233.rjhnuxwzix3tm2ss@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-14-victortoso@redhat.com>
 <20190919083233.rjhnuxwzix3tm2ss@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.14]
Thread-Topic: build: Do not build usbredir dependent file is usbredir disabled
Thread-Index: GhgHcvs5cLgxunx7HOJ1VhcyAACVCQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 19 Sep 2019 08:51:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 13/20] build: Do not build usbredir
 dependent file is usbredir disabled
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

PiAKPiBIaSwKPiAKPiBPbiBNb24sIFNlcCAxNiwgMjAxOSBhdCAxMjoyMDo1NlBNICswMjAwLCBW
aWN0b3IgVG9zbyB3cm90ZToKPiA+IEZyb206IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gCj4gPiBUaGVzZSBmaWxlcyB3b3VsZCBlbmQgdXAgdG8gY29tcGlsZSBlbXB0
eSBjb2RlLCBubyByZWFzb24KPiA+IHRvIGNvbXBpbGUgYW5kIGxpbmsgdGhlbS4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gCj4g
QWNrZWQtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gCgpCZWZvcmUg
SSBmb3JnZXQsIHR5cG8gaW4gdGl0bGUsIHNob3VsZCBiZQoKImJ1aWxkOiBEbyBub3QgYnVpbGQg
dXNicmVkaXIgZGVwZW5kZW50IGZpbGUgaWYgdXNicmVkaXIgaXMgZGlzYWJsZWQiCgpIb3BlIGl0
IGdldHMgaW4gdjgKCj4gPiAtLS0KPiA+ICBzcmMvbWVzb24uYnVpbGQgICB8IDEwICsrKysrLS0t
LS0KPiA+ICBzcmMvdXNiLWJhY2tlbmQuYyB8ICA0IC0tLS0KPiA+ICBzcmMvdXNidXRpbC5jICAg
ICB8ICAzIC0tLQo+ID4gIHNyYy91c2J1dGlsLmggICAgIHwgIDQgLS0tLQo+ID4gIDQgZmlsZXMg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAo+ID4gaW5kZXggMDBlYjI3
Ny4uMDQ2MWRlYSAxMDA2NDQKPiA+IC0tLSBhL3NyYy9tZXNvbi5idWlsZAo+ID4gKysrIGIvc3Jj
L21lc29uLmJ1aWxkCj4gPiBAQCAtMTE5LDExICsxMTksNiBAQCBzcGljZV9jbGllbnRfZ2xpYl9z
b3VyY2VzID0gWwo+ID4gICAgJ3NwaWNlLXVyaS1wcml2LmgnLAo+ID4gICAgJ3NwaWNlLXV0aWwt
cHJpdi5oJywKPiA+ICAgICd1c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oJywKPiA+IC0gICd1c2J1
dGlsLmMnLAo+ID4gLSAgJ3VzYnV0aWwuaCcsCj4gPiAtICAndXNiLWJhY2tlbmQuYycsCj4gPiAt
ICAndXNiLWVtdWxhdGlvbi5oJywKPiA+IC0gICd1c2ItYmFja2VuZC5oJywKPiA+ICAgICd2bWNz
dHJlYW0uYycsCj4gPiAgICAndm1jc3RyZWFtLmgnLAo+ID4gIF0KPiA+IEBAIC0xNTksNiArMTU0
LDExIEBAIGVuZGlmCj4gPiAgCj4gPiAgaWYgc3BpY2VfZ3RrX2hhc191c2JyZWRpcgo+ID4gICAg
c3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyArPSBbCj4gPiArICAgICd1c2J1dGlsLmMnLAo+ID4g
KyAgICAndXNidXRpbC5oJywKPiA+ICsgICAgJ3VzYi1iYWNrZW5kLmMnLAo+ID4gKyAgICAndXNi
LWVtdWxhdGlvbi5oJywKPiA+ICsgICAgJ3VzYi1iYWNrZW5kLmgnLAo+ID4gICAgICAndXNiLWRl
dmljZS1jZC5jJywKPiA+ICAgICAgJ3VzYi1kZXZpY2UtY2QuaCcsCj4gPiAgICAgICdjZC1zY3Np
LmMnLAo+ID4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5k
LmMKPiA+IGluZGV4IDgxZDdjOWUuLjNhNWE4NzMgMTAwNjQ0Cj4gPiAtLS0gYS9zcmMvdXNiLWJh
Y2tlbmQuYwo+ID4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+IEBAIC0yMiw4ICsyMiw2IEBA
Cj4gPiAgCj4gPiAgI2luY2x1ZGUgImNvbmZpZy5oIgo+ID4gIAo+ID4gLSNpZmRlZiBVU0VfVVNC
UkVESVIKPiA+IC0KPiA+ICAjaW5jbHVkZSA8Z2xpYi1vYmplY3QuaD4KPiA+ICAjaW5jbHVkZSA8
aW50dHlwZXMuaD4KPiA+ICAjaW5jbHVkZSA8Z2lvL2dpby5oPgo+ID4gQEAgLTE1MjIsNSArMTUy
MCwzIEBACj4gPiBzcGljZV91c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNl
VXNiQmFja2VuZCAqYmUsCj4gPiAgCj4gPiAgICAgIHJldHVybiBUUlVFOwo+ID4gIH0KPiA+IC0K
PiA+IC0jZW5kaWYgLyogVVNCX1JFRElSICovCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYnV0aWwu
YyBiL3NyYy91c2J1dGlsLmMKPiA+IGluZGV4IDUwNTJlZjMuLmFlYmVkMzUgMTAwNjQ0Cj4gPiAt
LS0gYS9zcmMvdXNidXRpbC5jCj4gPiArKysgYi9zcmMvdXNidXRpbC5jCj4gPiBAQCAtMjYsNyAr
MjYsNiBAQAo+ID4gICNpbmNsdWRlIDxjdHlwZS5oPgo+ID4gICNpbmNsdWRlIDxzdGRsaWIuaD4K
PiA+ICAKPiA+IC0jaWZkZWYgVVNFX1VTQlJFRElSCj4gPiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4g
PiAgI2lmZGVmIF9fbGludXhfXwo+ID4gICNpbmNsdWRlIDx1bmlzdGQuaD4KPiA+IEBAIC0yNzUs
OCArMjc0LDYgQEAgdm9pZCBzcGljZV91c2JfdXRpbF9nZXRfZGV2aWNlX3N0cmluZ3MoaW50IGJ1
cywgaW50Cj4gPiBhZGRyZXNzLAo+ID4gICAgICB9Cj4gPiAgfQo+ID4gIAo+ID4gLSNlbmRpZgo+
ID4gLQo+ID4gICNpZmRlZiBVU0JVVElMX1RFU1QKPiA+ICBpbnQgbWFpbigpCj4gPiAgewo+ID4g
ZGlmZiAtLWdpdCBhL3NyYy91c2J1dGlsLmggYi9zcmMvdXNidXRpbC5oCj4gPiBpbmRleCA2YzU3
MGQ5Li4yZjY4M2ZhIDEwMDY0NAo+ID4gLS0tIGEvc3JjL3VzYnV0aWwuaAo+ID4gKysrIGIvc3Jj
L3VzYnV0aWwuaAo+ID4gQEAgLTIxLDggKzIxLDYgQEAKPiA+ICAjcHJhZ21hIG9uY2UKPiA+ICAK
PiA+ICAjaW5jbHVkZSA8Z2xpYi5oPgo+ID4gLQo+ID4gLSNpZmRlZiBVU0VfVVNCUkVESVIKPiA+
ICAjaW5jbHVkZSA8bGlidXNiLmg+Cj4gPiAgCj4gPiAgR19CRUdJTl9ERUNMUwo+ID4gQEAgLTMy
LDUgKzMwLDMgQEAgdm9pZCBzcGljZV91c2JfdXRpbF9nZXRfZGV2aWNlX3N0cmluZ3MoaW50IGJ1
cywgaW50Cj4gPiBhZGRyZXNzLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGdjaGFyICoqbWFudWZhY3R1cmVyLCBnY2hhcgo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoqcHJvZHVjdCk7Cj4gPiAgCj4gPiAgR19FTkRfREVDTFMK
PiA+IC0KPiA+IC0jZW5kaWYgLyogVVNFX1VTQlJFRElSICovCgpGcmVkaWFubwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
