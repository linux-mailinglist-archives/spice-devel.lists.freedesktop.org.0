Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A120F6CA24
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F0E6E33C;
	Thu, 18 Jul 2019 07:42:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24BD26E33C
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8A04C30705FE
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FDF75DA34
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A0AD1800206
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:42:40 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:42:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
In-Reply-To: <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jE
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 18 Jul 2019 07:42:40 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
 RedCharDevice pipe items handling
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

cGluZwoKPiAKPiBwaW5nIHRoZSBzZXJpZXMKPiAKPiA+IAo+ID4gQXMgd2UgZG9uJ3QgdXNlIGFu
eSB0b2tlbiB0aGVyZSdzIG5vIHJlYXNvbiB0byBub3QgcXVldWUgZGlyZWN0bHkgaW5zdGVhZAo+
ID4gb2YgcGFzc2luZyB0aHJvdWdoIFJlZENoYXJEZXZpY2UuCj4gPiBUaGlzIHdpbGwgbWFrZSBl
YXNpZXIgdG8gbGltaXQgdGhlIHF1ZXVlIHdoaWNoIGN1cnJlbnRseSBpcyB1bmxpbWl0ZWQuCj4g
PiAKPiA+IFJlZENoYXJEZXZpY2UgZmxvdyBjb250cm9sIGhhcyBzb21lIHByb2JsZW1zOgo+ID4g
LSBpdCdzIHJlYWxseSBkZXNpZ25lZCB3aXRoIFZESSBpbiBtaW5kLiBUaGlzIGZvciBTcGljZVZN
QyB3b3VsZCBjYXVzZQo+ID4gICBjb2RlIGltcGxlbWVudGF0aW9uIHRvIGJlIGNvbmZ1c2luZyBo
YXZpbmcgdG8gc2F0aXNmeSB0aGUgYWdlbnQgdG9rZW4KPiA+ICAgaGFuZGxpbmc7Cj4gPiAtIGl0
J3MgdXNpbmcgaXRlbXMgYXMgdW5pdCBub3QgYWxsb3dpbmcgY291bnRpbmcgYnl0ZXM7Cj4gPiAt
IGl0IGR1cGxpY2F0ZXMgc29tZSBxdWV1ZSBtYW5hZ2VtZW50IGJldHdlZW4gUmVkQ2hhbm5lbENs
aWVudDsKPiA+IC0gaXQncyBicm9rZW4gKHNlZSBjb21tZW50cyBpbiBjaGFyLWRldmljZS5oKTsK
PiA+IC0gaXQgZm9yY2VzICJjbGllbnRzIiB0byBiZWhhdmUgaW4gc29tZSB3YXkgbm90IGFsdGVy
aW5nIGZvciBpbnN0YW5jZSB0aGUKPiA+ICAgcXVldWVkIGl0ZW1zICh3aGljaCBpcyB2ZXJ5IHVz
ZWZ1bCBpZiBpdGVtcyBjYW4gYmUgY29sbGFwc2VkIHRvZ2V0aGVyKTsKPiA+IC0gaXQgcmVwbGlj
YXRlcyB0aGUgdG9rZW4gaGFuZGxpbmcgb24gdGhlIGRldmljZSBxdWV1ZSB0b28uIFRoaXMgY291
bGQKPiA+ICAgc2VlbXMgcmlnaHQgYnV0IGlzIG5vdCB0aGF0IGlmIHlvdSBoYXZlIGEgbmV0d29y
ayBjYXJkIGdvaW5nIEAgMSBHQml0L3MKPiA+ICAgeW91IGFyZSBhYmxlIHRvIHVwbG9hZCBtb3Jl
IHRoYW4gMSBHYml0L3MganVzdCB1c2luZyBtdWx0aXBsZQo+ID4gICBjb25uZWN0aW9ucy4gVGhl
IGtlcm5lbCB3aWxsIHVzZSBhIHNpbmdsZSBxdWV1ZSBmb3IgdGhlIG5ldHdvcmsgaW50ZXJmYWNl
Cj4gPiAgIGxpbWl0aW5nIGFuZCBzaGFyaW5nIGRlIGZhY3RvIHRoZSB2YXJpb3VzIGJ1ZmZlcnMg
YmV0d2VlbiB0aGUgbXVsdGlwbGUKPiA+ICAgY29ubmVjdGlvbnMuCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiBD
aGFuZ2VzIGluIHYyOgo+ID4gLSBtb3JlIGNvbW1pdCBtZXNzYWdlIGNvbW1lbnRzCj4gPiAtLS0K
PiA+ICBzZXJ2ZXIvc3BpY2V2bWMuYyB8IDE1ICsrKysrLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvc2VydmVyL3NwaWNldm1jLmMgYi9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gaW5kZXggODRi
YmI3M2MyLi44YzQxNTczYWUgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4g
KysrIGIvc2VydmVyL3NwaWNldm1jLmMKPiA+IEBAIC0zNjAsMjkgKzM2MCwyNCBAQCBzdGF0aWMg
UmVkUGlwZUl0ZW0KPiA+ICpzcGljZXZtY19jaGFyZGV2X3JlYWRfbXNnX2Zyb21fZGV2KFJlZENo
YXJEZXZpY2UgKnNlbGYsCj4gPiAgCj4gPiAgICAgICAgICBtc2dfaXRlbV9jb21wcmVzc2VkID0g
dHJ5X2NvbXByZXNzX2x6NChjaGFubmVsLCBuLCBtc2dfaXRlbSk7Cj4gPiAgICAgICAgICBpZiAo
bXNnX2l0ZW1fY29tcHJlc3NlZCAhPSBOVUxMKSB7Cj4gPiAtICAgICAgICAgICAgcmV0dXJuICZt
c2dfaXRlbV9jb21wcmVzc2VkLT5iYXNlOwo+ID4gKyAgICAgICAgICAgIHJlZF9jaGFubmVsX2Ns
aWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywKPiA+ICZtc2dfaXRlbV9jb21wcmVzc2Vk
LT5iYXNlKTsKPiA+ICsgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICAgICAgICAgIH0KPiA+
ICAjZW5kaWYKPiA+ICAgICAgICAgIHN0YXRfaW5jX2NvdW50ZXIoY2hhbm5lbC0+b3V0X2RhdGEs
IG4pOwo+ID4gICAgICAgICAgbXNnX2l0ZW0tPnVuY29tcHJlc3NlZF9kYXRhX3NpemUgPSBuOwo+
ID4gICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91c2VkID0gbjsKPiA+IC0gICAgICAgIHJldHVybiAm
bXNnX2l0ZW0tPmJhc2U7Cj4gPiAtICAgIH0gZWxzZSB7Cj4gPiAtICAgICAgICBjaGFubmVsLT5w
aXBlX2l0ZW0gPSBtc2dfaXRlbTsKPiA+ICsgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBl
X2FkZF9wdXNoKGNoYW5uZWwtPnJjYywgJm1zZ19pdGVtLT5iYXNlKTsKPiA+ICAgICAgICAgIHJl
dHVybiBOVUxMOwo+ID4gICAgICB9Cj4gPiArICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1zZ19p
dGVtOwo+ID4gKyAgICByZXR1cm4gTlVMTDsKPiA+ICB9Cj4gPiAgCj4gPiAgc3RhdGljIHZvaWQg
c3BpY2V2bWNfY2hhcmRldl9zZW5kX21zZ190b19jbGllbnQoUmVkQ2hhckRldmljZSAqc2VsZiwK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRQ
aXBlSXRlbSAqbXNnLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50KQo+ID4gIHsKPiA+IC0gICAgUmVkQ2hhckRldmlj
ZVNwaWNlVm1jICp2bWMgPSBSRURfQ0hBUl9ERVZJQ0VfU1BJQ0VWTUMoc2VsZik7Cj4gPiAtICAg
IFJlZFZtY0NoYW5uZWwgKmNoYW5uZWwgPSBSRURfVk1DX0NIQU5ORUwodm1jLT5jaGFubmVsKTsK
PiA+IC0KPiA+IC0gICAgc3BpY2VfYXNzZXJ0KHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2xpZW50
KGNoYW5uZWwtPnJjYykgPT0gY2xpZW50KTsKPiA+IC0gICAgcmVkX3BpcGVfaXRlbV9yZWYobXNn
KTsKPiA+IC0gICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hhbm5lbC0+cmNj
LCBtc2cpOwo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCByZWRfcG9ydF9pbml0X2l0ZW1f
ZnJlZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJhc2UpCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
