Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C036CA1E
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C980A6E336;
	Thu, 18 Jul 2019 07:42:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3486E336
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49CDE3082A98
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 41C255D71A
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:12 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A1484EA30
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:12 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:42:12 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1800130356.688215.1563435732192.JavaMail.zimbra@redhat.com>
In-Reply-To: <2049752019.26605797.1562570896888.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
 <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
 <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
 <1270089488.25084877.1561708422598.JavaMail.zimbra@redhat.com>
 <2049752019.26605797.1562570896888.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1zAbU0UI6I8KH7nwkxmSNlZtWxGx4=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 18 Jul 2019 07:42:12 +0000 (UTC)
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
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gZ19vYmplY3RfdW5yZWYg
aXMgZGlyZWN0bHkgdXNlZC4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+
ID4gPiA+ID4gIHNlcnZlci9jaGFyLWRldmljZS5jIHwgNiAtLS0tLS0KPiA+ID4gPiA+ID4gIHNl
cnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQo+ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2Uu
Ywo+ID4gPiA+ID4gPiBpbmRleCA5ZWUyNTU2NjQuLjBmNmEyOWQ2ZiAxMDA2NDQKPiA+ID4gPiA+
ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiA+ID4gKysrIGIvc2VydmVyL2No
YXItZGV2aWNlLmMKPiA+ID4gPiA+ID4gQEAgLTY5NywxMiArNjk3LDYgQEAgdm9pZAo+ID4gPiA+
ID4gPiByZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJlZENoYXJEZXZpY2UKPiA+
ID4gPiA+ID4gKmRldiwKPiA+ID4gPiA+ID4gICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1Qo
ZGV2KSwgInNpbiIpOwo+ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+IC12
b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2UgKmNoYXJfZGV2KQo+ID4g
PiA+ID4gPiAtewo+ID4gPiA+ID4gPiAtICAgIGdfcmV0dXJuX2lmX2ZhaWwoUkVEX0lTX0NIQVJf
REVWSUNFKGNoYXJfZGV2KSk7Cj4gPiA+ID4gPiA+IC0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9k
ZXYpOwo+ID4gPiA+ID4gPiAtfQo+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+ICBzdGF0aWMgUmVk
Q2hhckRldmljZUNsaWVudCAqcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXcoUmVkQ2xpZW50Cj4g
PiA+ID4gPiA+ICAqY2xpZW50LAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludAo+ID4gPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRvX2Zsb3dfY29u
dHJvbCwKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50MzJfdAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1heF9zZW5kX3F1ZXVlX3NpemUs
Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBiL3NlcnZlci9j
aGFyLWRldmljZS5oCj4gPiA+ID4gPiA+IGluZGV4IDg5M2QzZTRiMS4uNDE1ZDRmMTdjIDEwMDY0
NAo+ID4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ID4gPiArKysg
Yi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ID4gPiBAQCAtOTEsNyArOTEsNyBAQCBHVHlw
ZSByZWRfY2hhcl9kZXZpY2VfZ2V0X3R5cGUodm9pZCkKPiA+ID4gPiA+ID4gR19HTlVDX0NPTlNU
Owo+ID4gPiA+ID4gPiAgICogSG93IHRvIHVzZSB0aGUgYXBpOgo+ID4gPiA+ID4gPiAgICogPT09
PT09PT09PT09PT09PT09Cj4gPiA+ID4gPiA+ICAgKiBkZXZpY2UgYXR0YWNoZWQ6IGNyZWF0ZSBu
ZXcgb2JqZWN0IGluc3RhbnRpYXRpbmcgYQo+ID4gPiA+ID4gPiAgIFJlZENoYXJEZXZpY2UKPiA+
ID4gPiA+ID4gICBjaGlsZAo+ID4gPiA+ID4gPiAgIGNsYXNzCj4gPiA+ID4gPiA+IC0gKiBkZXZp
Y2UgZGV0YWNoZWQ6IGNhbGwgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3kvcmVzZXQKPiA+ID4gPiA+
ID4gKyAqIGRldmljZSBkZXRhY2hlZDogY2FsbCBnX29iamVjdF91bnJlZi9yZWRfY2hhcl9kZXZp
Y2VfcmVzZXQKPiA+ID4gPiA+ID4gICAqCj4gPiA+ID4gPiA+ICAgKiBjbGllbnQgY29ubmVjdGVk
IGFuZCBhc3NvY2lhdGVkIHdpdGggYSBkZXZpY2U6Cj4gPiA+ID4gPiA+ICAgcmVkX2NoYXJfZGV2
aWNlX19hZGQKPiA+ID4gPiA+ID4gICAqIGNsaWVudCBkaXNjb25uZWN0ZWQ6IHJlZF9jaGFyX2Rl
dmljZV9fcmVtb3ZlCj4gPiA+ID4gPiA+IEBAIC0xMjAsNyArMTIwLDcgQEAgR1R5cGUgcmVkX2No
YXJfZGV2aWNlX2dldF90eXBlKHZvaWQpCj4gPiA+ID4gPiA+IEdfR05VQ19DT05TVDsKPiA+ID4g
PiA+ID4gICAqIHJlZF9jaGFyX2RldmljZV93YWtldXAgKGZvciByZWFkaW5nIGZyb20gdGhlIGRl
dmljZSkKPiA+ID4gPiA+ID4gICAqLwo+ID4gPiA+ID4gPiAgLyogcmVmY291bnRpbmcgaXMgdXNl
ZCB0byBwcm90ZWN0IHRoZSBjaGFyX2RldiBmcm9tIGJlaW5nCj4gPiA+ID4gPiA+ICBkZWFsbG9j
YXRlZAo+ID4gPiA+ID4gPiAgaW4KPiA+ID4gPiA+ID4gLSAqIGNhc2UgcmVkX2NoYXJfZGV2aWNl
X2Rlc3Ryb3kgaGFzIGJlZW4gY2FsbGVkCj4gPiA+ID4gPiA+ICsgKiBjYXNlIGdfb2JqZWN0X3Vu
cmVmIGhhcyBiZWVuIGNhbGxlZAo+ID4gPiA+ID4gPiAgICogZHVyaW5nIGEgY2FsbGJhY2ssIGFu
ZCB3ZSBtaWdodCBzdGlsbCBhY2Nlc3MgdGhlIGNoYXJfZGV2Cj4gPiA+ID4gPiA+ICAgYWZ0ZXJ3
YXJkcy4KPiA+ID4gPiA+ID4gICAqLwo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+IEBAIC0xNjAs
NyArMTYwLDYgQEAgdHlwZWRlZiBzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyIHsKPiA+
ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2lu
c3RhbmNlKFJlZENoYXJEZXZpY2UgKmRldiwKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBTcGljZUNoYXJEZXZpY2VJbnN0YW5jZQo+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICpzaW4pOwo+ID4gPiA+
ID4gPiAtdm9pZCByZWRfY2hhcl9kZXZpY2VfZGVzdHJveShSZWRDaGFyRGV2aWNlICpkZXYpOwo+
ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICAvKiBvbmx5IG9uZSBjbGllbnQgaXMgc3VwcG9ydGVk
ICovCj4gPiA+ID4gPiA+ICB2b2lkIHJlZF9jaGFyX2RldmljZV9taWdyYXRlX2RhdGFfbWFyc2hh
bGwoUmVkQ2hhckRldmljZSAqZGV2LApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
