Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FF34809E
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 13:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9184E89165;
	Mon, 17 Jun 2019 11:27:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADC589165
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:27:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AB94C7FDE9
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:27:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A202B10840C9
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:27:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 98493206D1
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:27:27 +0000 (UTC)
Date: Mon, 17 Jun 2019 07:27:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
In-Reply-To: <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.51, 10.4.195.13]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1z
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 17 Jun 2019 11:27:27 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IGdfb2JqZWN0X3VucmVmIGlzIGRpcmVjdGx5IHVz
ZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gLS0tCj4gPiAgc2VydmVyL2NoYXItZGV2aWNlLmMgfCA2IC0tLS0tLQo+ID4g
IHNlcnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gaW5kZXggOWVlMjU1NjY0
Li4wZjZhMjlkNmYgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gKysr
IGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+IEBAIC02OTcsMTIgKzY5Nyw2IEBAIHZvaWQgcmVk
X2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNlCj4gPiAqZGV2LAo+
ID4gICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1QoZGV2KSwgInNpbiIpOwo+ID4gIH0KPiA+
ICAKPiA+IC12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2UgKmNoYXJf
ZGV2KQo+ID4gLXsKPiA+IC0gICAgZ19yZXR1cm5faWZfZmFpbChSRURfSVNfQ0hBUl9ERVZJQ0Uo
Y2hhcl9kZXYpKTsKPiA+IC0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9kZXYpOwo+ID4gLX0KPiA+
IC0KPiA+ICBzdGF0aWMgUmVkQ2hhckRldmljZUNsaWVudCAqcmVkX2NoYXJfZGV2aWNlX2NsaWVu
dF9uZXcoUmVkQ2xpZW50ICpjbGllbnQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludAo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkb19mbG93X2NvbnRyb2wsCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVp
bnQzMl90Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG1heF9zZW5kX3F1ZXVlX3NpemUsCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2No
YXItZGV2aWNlLmggYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gaW5kZXggODkzZDNlNGIxLi40
MTVkNGYxN2MgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gKysrIGIv
c2VydmVyL2NoYXItZGV2aWNlLmgKPiA+IEBAIC05MSw3ICs5MSw3IEBAIEdUeXBlIHJlZF9jaGFy
X2RldmljZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiAgICogSG93IHRvIHVzZSB0
aGUgYXBpOgo+ID4gICAqID09PT09PT09PT09PT09PT09PQo+ID4gICAqIGRldmljZSBhdHRhY2hl
ZDogY3JlYXRlIG5ldyBvYmplY3QgaW5zdGFudGlhdGluZyBhIFJlZENoYXJEZXZpY2UgY2hpbGQK
PiA+ICAgY2xhc3MKPiA+IC0gKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgcmVkX2NoYXJfZGV2aWNl
X2Rlc3Ryb3kvcmVzZXQKPiA+ICsgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3RfdW5y
ZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gPiAgICoKPiA+ICAgKiBjbGllbnQgY29ubmVjdGVk
IGFuZCBhc3NvY2lhdGVkIHdpdGggYSBkZXZpY2U6IHJlZF9jaGFyX2RldmljZV9fYWRkCj4gPiAg
ICogY2xpZW50IGRpc2Nvbm5lY3RlZDogcmVkX2NoYXJfZGV2aWNlX19yZW1vdmUKPiA+IEBAIC0x
MjAsNyArMTIwLDcgQEAgR1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpIEdfR05V
Q19DT05TVDsKPiA+ICAgKiByZWRfY2hhcl9kZXZpY2Vfd2FrZXVwIChmb3IgcmVhZGluZyBmcm9t
IHRoZSBkZXZpY2UpCj4gPiAgICovCj4gPiAgLyogcmVmY291bnRpbmcgaXMgdXNlZCB0byBwcm90
ZWN0IHRoZSBjaGFyX2RldiBmcm9tIGJlaW5nIGRlYWxsb2NhdGVkIGluCj4gPiAtICogY2FzZSBy
ZWRfY2hhcl9kZXZpY2VfZGVzdHJveSBoYXMgYmVlbiBjYWxsZWQKPiA+ICsgKiBjYXNlIGdfb2Jq
ZWN0X3VucmVmIGhhcyBiZWVuIGNhbGxlZAo+ID4gICAqIGR1cmluZyBhIGNhbGxiYWNrLCBhbmQg
d2UgbWlnaHQgc3RpbGwgYWNjZXNzIHRoZSBjaGFyX2RldiBhZnRlcndhcmRzLgo+ID4gICAqLwo+
ID4gIAo+ID4gQEAgLTE2MCw3ICsxNjAsNiBAQCB0eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2aWNl
V3JpdGVCdWZmZXIgewo+ID4gIAo+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3Jlc2V0X2Rldl9p
bnN0YW5jZShSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4pOwo+ID4gLXZvaWQg
cmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3koUmVkQ2hhckRldmljZSAqZGV2KTsKPiA+ICAKPiA+ICAv
KiBvbmx5IG9uZSBjbGllbnQgaXMgc3VwcG9ydGVkICovCj4gPiAgdm9pZCByZWRfY2hhcl9kZXZp
Y2VfbWlncmF0ZV9kYXRhX21hcnNoYWxsKFJlZENoYXJEZXZpY2UgKmRldiwKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
