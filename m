Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1804976330
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BE56ED10;
	Fri, 26 Jul 2019 10:09:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5A56ED10
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 96A293CBDC
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BE6151
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 825E518089C8
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:34 +0000 (UTC)
Date: Fri, 26 Jul 2019 06:09:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <308560443.3099782.1564135774450.JavaMail.zimbra@redhat.com>
In-Reply-To: <1800130356.688215.1563435732192.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
 <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
 <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
 <1270089488.25084877.1561708422598.JavaMail.zimbra@redhat.com>
 <2049752019.26605797.1562570896888.JavaMail.zimbra@redhat.com>
 <1800130356.688215.1563435732192.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.26]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1zAbU0UI6I8KH7nwkxmSNlZtWxGx7OgoDYTA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 26 Jul 2019 10:09:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] char-device: Remove
 unused red_char_device_destroy function
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gcGluZwo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBnX29iamVjdF91bnJlZiBpcyBkaXJlY3Rs
eSB1c2VkLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRp
YW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDYgLS0tLS0tCj4gPiA+ID4gPiA+ID4gIHNl
cnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQo+ID4gPiA+ID4gPiA+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1k
ZXZpY2UuYwo+ID4gPiA+ID4gPiA+IGluZGV4IDllZTI1NTY2NC4uMGY2YTI5ZDZmIDEwMDY0NAo+
ID4gPiA+ID4gPiA+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+ID4gPiA+ID4gKysr
IGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiA+ID4gPiBAQCAtNjk3LDEyICs2OTcsNiBA
QCB2b2lkCj4gPiA+ID4gPiA+ID4gcmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShS
ZWRDaGFyRGV2aWNlCj4gPiA+ID4gPiA+ID4gKmRldiwKPiA+ID4gPiA+ID4gPiAgICAgIGdfb2Jq
ZWN0X25vdGlmeShHX09CSkVDVChkZXYpLCAic2luIik7Cj4gPiA+ID4gPiA+ID4gIH0KPiA+ID4g
PiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gLXZvaWQgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3koUmVk
Q2hhckRldmljZSAqY2hhcl9kZXYpCj4gPiA+ID4gPiA+ID4gLXsKPiA+ID4gPiA+ID4gPiAtICAg
IGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NIQVJfREVWSUNFKGNoYXJfZGV2KSk7Cj4gPiA+ID4g
PiA+ID4gLSAgICBnX29iamVjdF91bnJlZihjaGFyX2Rldik7Cj4gPiA+ID4gPiA+ID4gLX0KPiA+
ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gIHN0YXRpYyBSZWRDaGFyRGV2aWNlQ2xpZW50ICpy
ZWRfY2hhcl9kZXZpY2VfY2xpZW50X25ldyhSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiAgKmNsaWVu
dCwKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGludAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG9fZmxvd19jb250cm9sLAo+ID4gPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdWludDMyX3QKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1heF9zZW5kX3F1ZXVlX3NpemUsCj4gPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVyL2NoYXItZGV2
aWNlLmgKPiA+ID4gPiA+ID4gPiBpbmRleCA4OTNkM2U0YjEuLjQxNWQ0ZjE3YyAxMDA2NDQKPiA+
ID4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ID4gPiA+ICsrKyBi
L3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gPiA+ID4gQEAgLTkxLDcgKzkxLDcgQEAgR1R5
cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpCj4gPiA+ID4gPiA+ID4gR19HTlVDX0NP
TlNUOwo+ID4gPiA+ID4gPiA+ICAgKiBIb3cgdG8gdXNlIHRoZSBhcGk6Cj4gPiA+ID4gPiA+ID4g
ICAqID09PT09PT09PT09PT09PT09PQo+ID4gPiA+ID4gPiA+ICAgKiBkZXZpY2UgYXR0YWNoZWQ6
IGNyZWF0ZSBuZXcgb2JqZWN0IGluc3RhbnRpYXRpbmcgYQo+ID4gPiA+ID4gPiA+ICAgUmVkQ2hh
ckRldmljZQo+ID4gPiA+ID4gPiA+ICAgY2hpbGQKPiA+ID4gPiA+ID4gPiAgIGNsYXNzCj4gPiA+
ID4gPiA+ID4gLSAqIGRldmljZSBkZXRhY2hlZDogY2FsbCByZWRfY2hhcl9kZXZpY2VfZGVzdHJv
eS9yZXNldAo+ID4gPiA+ID4gPiA+ICsgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3Rf
dW5yZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gPiA+ID4gPiA+ID4gICAqCj4gPiA+ID4gPiA+
ID4gICAqIGNsaWVudCBjb25uZWN0ZWQgYW5kIGFzc29jaWF0ZWQgd2l0aCBhIGRldmljZToKPiA+
ID4gPiA+ID4gPiAgIHJlZF9jaGFyX2RldmljZV9fYWRkCj4gPiA+ID4gPiA+ID4gICAqIGNsaWVu
dCBkaXNjb25uZWN0ZWQ6IHJlZF9jaGFyX2RldmljZV9fcmVtb3ZlCj4gPiA+ID4gPiA+ID4gQEAg
LTEyMCw3ICsxMjAsNyBAQCBHVHlwZSByZWRfY2hhcl9kZXZpY2VfZ2V0X3R5cGUodm9pZCkKPiA+
ID4gPiA+ID4gPiBHX0dOVUNfQ09OU1Q7Cj4gPiA+ID4gPiA+ID4gICAqIHJlZF9jaGFyX2Rldmlj
ZV93YWtldXAgKGZvciByZWFkaW5nIGZyb20gdGhlIGRldmljZSkKPiA+ID4gPiA+ID4gPiAgICov
Cj4gPiA+ID4gPiA+ID4gIC8qIHJlZmNvdW50aW5nIGlzIHVzZWQgdG8gcHJvdGVjdCB0aGUgY2hh
cl9kZXYgZnJvbSBiZWluZwo+ID4gPiA+ID4gPiA+ICBkZWFsbG9jYXRlZAo+ID4gPiA+ID4gPiA+
ICBpbgo+ID4gPiA+ID4gPiA+IC0gKiBjYXNlIHJlZF9jaGFyX2RldmljZV9kZXN0cm95IGhhcyBi
ZWVuIGNhbGxlZAo+ID4gPiA+ID4gPiA+ICsgKiBjYXNlIGdfb2JqZWN0X3VucmVmIGhhcyBiZWVu
IGNhbGxlZAo+ID4gPiA+ID4gPiA+ICAgKiBkdXJpbmcgYSBjYWxsYmFjaywgYW5kIHdlIG1pZ2h0
IHN0aWxsIGFjY2VzcyB0aGUgY2hhcl9kZXYKPiA+ID4gPiA+ID4gPiAgIGFmdGVyd2FyZHMuCj4g
PiA+ID4gPiA+ID4gICAqLwo+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiBAQCAtMTYwLDcg
KzE2MCw2IEBAIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciB7Cj4gPiA+
ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICB2b2lkIHJlZF9jaGFyX2RldmljZV9yZXNldF9kZXZf
aW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UKPiA+ID4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICpzaW4pOwo+
ID4gPiA+ID4gPiA+IC12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2Ug
KmRldik7Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICAvKiBvbmx5IG9uZSBjbGllbnQg
aXMgc3VwcG9ydGVkICovCj4gPiA+ID4gPiA+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX21pZ3Jh
dGVfZGF0YV9tYXJzaGFsbChSZWRDaGFyRGV2aWNlICpkZXYsCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
