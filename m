Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0985961B3E
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A2289B12;
	Mon,  8 Jul 2019 07:28:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8755789B12
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 32D8630BC588
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A8551001B02
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 20A7E206D1
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:17 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:28:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2049752019.26605797.1562570896888.JavaMail.zimbra@redhat.com>
In-Reply-To: <1270089488.25084877.1561708422598.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
 <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
 <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
 <1270089488.25084877.1561708422598.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1zAbU0UI6I8KH7nwkxmSNl
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 08 Jul 2019 07:28:17 +0000 (UTC)
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
IGdfb2JqZWN0X3VucmVmIGlzIGRpcmVjdGx5IHVzZWQuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAgc2VydmVyL2NoYXItZGV2aWNlLmMgfCA2IC0tLS0tLQo+ID4gPiA+
ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQo+ID4gPiA+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2Uu
Ywo+ID4gPiA+ID4gaW5kZXggOWVlMjU1NjY0Li4wZjZhMjlkNmYgMTAwNjQ0Cj4gPiA+ID4gPiAt
LS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiA+ID4gKysrIGIvc2VydmVyL2NoYXItZGV2
aWNlLmMKPiA+ID4gPiA+IEBAIC02OTcsMTIgKzY5Nyw2IEBAIHZvaWQKPiA+ID4gPiA+IHJlZF9j
aGFyX2RldmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZQo+ID4gPiA+ID4gKmRl
diwKPiA+ID4gPiA+ICAgICAgZ19vYmplY3Rfbm90aWZ5KEdfT0JKRUNUKGRldiksICJzaW4iKTsK
PiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAtdm9pZCByZWRfY2hhcl9kZXZpY2Vf
ZGVzdHJveShSZWRDaGFyRGV2aWNlICpjaGFyX2RldikKPiA+ID4gPiA+IC17Cj4gPiA+ID4gPiAt
ICAgIGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NIQVJfREVWSUNFKGNoYXJfZGV2KSk7Cj4gPiA+
ID4gPiAtICAgIGdfb2JqZWN0X3VucmVmKGNoYXJfZGV2KTsKPiA+ID4gPiA+IC19Cj4gPiA+ID4g
PiAtCj4gPiA+ID4gPiAgc3RhdGljIFJlZENoYXJEZXZpY2VDbGllbnQgKnJlZF9jaGFyX2Rldmlj
ZV9jbGllbnRfbmV3KFJlZENsaWVudAo+ID4gPiA+ID4gICpjbGllbnQsCj4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludAo+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBkb19mbG93X2NvbnRyb2wsCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90Cj4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1heF9z
ZW5kX3F1ZXVlX3NpemUsCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNl
LmggYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ID4gaW5kZXggODkzZDNlNGIxLi40MTVk
NGYxN2MgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+
ID4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiA+IEBAIC05MSw3ICs5MSw3IEBA
IEdUeXBlIHJlZF9jaGFyX2RldmljZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiA+
ID4gPiAgICogSG93IHRvIHVzZSB0aGUgYXBpOgo+ID4gPiA+ID4gICAqID09PT09PT09PT09PT09
PT09PQo+ID4gPiA+ID4gICAqIGRldmljZSBhdHRhY2hlZDogY3JlYXRlIG5ldyBvYmplY3QgaW5z
dGFudGlhdGluZyBhIFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ICAgY2hpbGQKPiA+ID4gPiA+ICAg
Y2xhc3MKPiA+ID4gPiA+IC0gKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgcmVkX2NoYXJfZGV2aWNl
X2Rlc3Ryb3kvcmVzZXQKPiA+ID4gPiA+ICsgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmpl
Y3RfdW5yZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gPiA+ID4gPiAgICoKPiA+ID4gPiA+ICAg
KiBjbGllbnQgY29ubmVjdGVkIGFuZCBhc3NvY2lhdGVkIHdpdGggYSBkZXZpY2U6Cj4gPiA+ID4g
PiAgIHJlZF9jaGFyX2RldmljZV9fYWRkCj4gPiA+ID4gPiAgICogY2xpZW50IGRpc2Nvbm5lY3Rl
ZDogcmVkX2NoYXJfZGV2aWNlX19yZW1vdmUKPiA+ID4gPiA+IEBAIC0xMjAsNyArMTIwLDcgQEAg
R1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpCj4gPiA+ID4gPiBHX0dOVUNfQ09O
U1Q7Cj4gPiA+ID4gPiAgICogcmVkX2NoYXJfZGV2aWNlX3dha2V1cCAoZm9yIHJlYWRpbmcgZnJv
bSB0aGUgZGV2aWNlKQo+ID4gPiA+ID4gICAqLwo+ID4gPiA+ID4gIC8qIHJlZmNvdW50aW5nIGlz
IHVzZWQgdG8gcHJvdGVjdCB0aGUgY2hhcl9kZXYgZnJvbSBiZWluZwo+ID4gPiA+ID4gIGRlYWxs
b2NhdGVkCj4gPiA+ID4gPiAgaW4KPiA+ID4gPiA+IC0gKiBjYXNlIHJlZF9jaGFyX2RldmljZV9k
ZXN0cm95IGhhcyBiZWVuIGNhbGxlZAo+ID4gPiA+ID4gKyAqIGNhc2UgZ19vYmplY3RfdW5yZWYg
aGFzIGJlZW4gY2FsbGVkCj4gPiA+ID4gPiAgICogZHVyaW5nIGEgY2FsbGJhY2ssIGFuZCB3ZSBt
aWdodCBzdGlsbCBhY2Nlc3MgdGhlIGNoYXJfZGV2Cj4gPiA+ID4gPiAgIGFmdGVyd2FyZHMuCj4g
PiA+ID4gPiAgICovCj4gPiA+ID4gPiAgCj4gPiA+ID4gPiBAQCAtMTYwLDcgKzE2MCw2IEBAIHR5
cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciB7Cj4gPiA+ID4gPiAgCj4gPiA+
ID4gPiAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJlZENoYXJEZXZp
Y2UgKmRldiwKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKnNpbik7Cj4gPiA+ID4gPiAtdm9pZCByZWRfY2hhcl9kZXZp
Y2VfZGVzdHJveShSZWRDaGFyRGV2aWNlICpkZXYpOwo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gIC8q
IG9ubHkgb25lIGNsaWVudCBpcyBzdXBwb3J0ZWQgKi8KPiA+ID4gPiA+ICB2b2lkIHJlZF9jaGFy
X2RldmljZV9taWdyYXRlX2RhdGFfbWFyc2hhbGwoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+
IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWwKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IFNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
