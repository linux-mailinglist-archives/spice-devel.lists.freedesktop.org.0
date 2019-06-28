Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB8459561
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA086E89B;
	Fri, 28 Jun 2019 07:52:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5736E89B
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9674A81F11
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DDAE6012D
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 866D34EA62
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:42 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:52:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
In-Reply-To: <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
 <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1zAbU0UI4=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 28 Jun 2019 07:52:42 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gZ19vYmpl
Y3RfdW5yZWYgaXMgZGlyZWN0bHkgdXNlZC4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNlcnZl
ci9jaGFyLWRldmljZS5jIHwgNiAtLS0tLS0KPiA+ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwg
NSArKy0tLQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9z
ZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiBpbmRleCA5ZWUyNTU2NjQuLjBmNmEyOWQ2ZiAxMDA2
NDQKPiA+ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gKysrIGIvc2VydmVyL2No
YXItZGV2aWNlLmMKPiA+ID4gQEAgLTY5NywxMiArNjk3LDYgQEAgdm9pZAo+ID4gPiByZWRfY2hh
cl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJlZENoYXJEZXZpY2UKPiA+ID4gKmRldiwKPiA+
ID4gICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1QoZGV2KSwgInNpbiIpOwo+ID4gPiAgfQo+
ID4gPiAgCj4gPiA+IC12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2Ug
KmNoYXJfZGV2KQo+ID4gPiAtewo+ID4gPiAtICAgIGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NI
QVJfREVWSUNFKGNoYXJfZGV2KSk7Cj4gPiA+IC0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9kZXYp
Owo+ID4gPiAtfQo+ID4gPiAtCj4gPiA+ICBzdGF0aWMgUmVkQ2hhckRldmljZUNsaWVudCAqcmVk
X2NoYXJfZGV2aWNlX2NsaWVudF9uZXcoUmVkQ2xpZW50Cj4gPiA+ICAqY2xpZW50LAo+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
dAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGRvX2Zsb3dfY29udHJvbCwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1heF9zZW5kX3F1ZXVl
X3NpemUsCj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBiL3NlcnZlci9j
aGFyLWRldmljZS5oCj4gPiA+IGluZGV4IDg5M2QzZTRiMS4uNDE1ZDRmMTdjIDEwMDY0NAo+ID4g
PiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiArKysgYi9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaAo+ID4gPiBAQCAtOTEsNyArOTEsNyBAQCBHVHlwZSByZWRfY2hhcl9kZXZpY2VfZ2V0X3R5
cGUodm9pZCkgR19HTlVDX0NPTlNUOwo+ID4gPiAgICogSG93IHRvIHVzZSB0aGUgYXBpOgo+ID4g
PiAgICogPT09PT09PT09PT09PT09PT09Cj4gPiA+ICAgKiBkZXZpY2UgYXR0YWNoZWQ6IGNyZWF0
ZSBuZXcgb2JqZWN0IGluc3RhbnRpYXRpbmcgYSBSZWRDaGFyRGV2aWNlCj4gPiA+ICAgY2hpbGQK
PiA+ID4gICBjbGFzcwo+ID4gPiAtICogZGV2aWNlIGRldGFjaGVkOiBjYWxsIHJlZF9jaGFyX2Rl
dmljZV9kZXN0cm95L3Jlc2V0Cj4gPiA+ICsgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmpl
Y3RfdW5yZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gPiA+ICAgKgo+ID4gPiAgICogY2xpZW50
IGNvbm5lY3RlZCBhbmQgYXNzb2NpYXRlZCB3aXRoIGEgZGV2aWNlOiByZWRfY2hhcl9kZXZpY2Vf
X2FkZAo+ID4gPiAgICogY2xpZW50IGRpc2Nvbm5lY3RlZDogcmVkX2NoYXJfZGV2aWNlX19yZW1v
dmUKPiA+ID4gQEAgLTEyMCw3ICsxMjAsNyBAQCBHVHlwZSByZWRfY2hhcl9kZXZpY2VfZ2V0X3R5
cGUodm9pZCkgR19HTlVDX0NPTlNUOwo+ID4gPiAgICogcmVkX2NoYXJfZGV2aWNlX3dha2V1cCAo
Zm9yIHJlYWRpbmcgZnJvbSB0aGUgZGV2aWNlKQo+ID4gPiAgICovCj4gPiA+ICAvKiByZWZjb3Vu
dGluZyBpcyB1c2VkIHRvIHByb3RlY3QgdGhlIGNoYXJfZGV2IGZyb20gYmVpbmcgZGVhbGxvY2F0
ZWQgaW4KPiA+ID4gLSAqIGNhc2UgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3kgaGFzIGJlZW4gY2Fs
bGVkCj4gPiA+ICsgKiBjYXNlIGdfb2JqZWN0X3VucmVmIGhhcyBiZWVuIGNhbGxlZAo+ID4gPiAg
ICogZHVyaW5nIGEgY2FsbGJhY2ssIGFuZCB3ZSBtaWdodCBzdGlsbCBhY2Nlc3MgdGhlIGNoYXJf
ZGV2IGFmdGVyd2FyZHMuCj4gPiA+ICAgKi8KPiA+ID4gIAo+ID4gPiBAQCAtMTYwLDcgKzE2MCw2
IEBAIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciB7Cj4gPiA+ICAKPiA+
ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNl
ICpkZXYsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3Bp
Y2VDaGFyRGV2aWNlSW5zdGFuY2UgKnNpbik7Cj4gPiA+IC12b2lkIHJlZF9jaGFyX2RldmljZV9k
ZXN0cm95KFJlZENoYXJEZXZpY2UgKmRldik7Cj4gPiA+ICAKPiA+ID4gIC8qIG9ubHkgb25lIGNs
aWVudCBpcyBzdXBwb3J0ZWQgKi8KPiA+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX21pZ3JhdGVf
ZGF0YV9tYXJzaGFsbChSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
