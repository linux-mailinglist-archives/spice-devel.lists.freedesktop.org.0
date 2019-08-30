Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5D7A381F
	for <lists+spice-devel@lfdr.de>; Fri, 30 Aug 2019 15:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A9C6E345;
	Fri, 30 Aug 2019 13:54:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F47B6E345
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 375CE18F350F
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F20360C05
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 280352551B
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:18 +0000 (UTC)
Date: Fri, 30 Aug 2019 09:54:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <956511970.10215186.1567173258125.JavaMail.zimbra@redhat.com>
In-Reply-To: <1964755682.7680572.1566286821676.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
 <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
 <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
 <1964755682.7680572.1566286821676.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.10]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jEKa1YIoBfwCK9gaV3Mce9TAs09Go=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Fri, 30 Aug 2019 13:54:18 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IHBpbmcgdGhlIHNlcmllcwo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBBcyB3
ZSBkb24ndCB1c2UgYW55IHRva2VuIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIG5vdCBxdWV1ZSBkaXJl
Y3RseQo+ID4gPiA+ID4gPiBpbnN0ZWFkCj4gPiA+ID4gPiA+IG9mIHBhc3NpbmcgdGhyb3VnaCBS
ZWRDaGFyRGV2aWNlLgo+ID4gPiA+ID4gPiBUaGlzIHdpbGwgbWFrZSBlYXNpZXIgdG8gbGltaXQg
dGhlIHF1ZXVlIHdoaWNoIGN1cnJlbnRseSBpcwo+ID4gPiA+ID4gPiB1bmxpbWl0ZWQuCj4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiBSZWRDaGFyRGV2aWNlIGZsb3cgY29udHJvbCBoYXMgc29tZSBw
cm9ibGVtczoKPiA+ID4gPiA+ID4gLSBpdCdzIHJlYWxseSBkZXNpZ25lZCB3aXRoIFZESSBpbiBt
aW5kLiBUaGlzIGZvciBTcGljZVZNQyB3b3VsZAo+ID4gPiA+ID4gPiBjYXVzZQo+ID4gPiA+ID4g
PiAgIGNvZGUgaW1wbGVtZW50YXRpb24gdG8gYmUgY29uZnVzaW5nIGhhdmluZyB0byBzYXRpc2Z5
IHRoZSBhZ2VudAo+ID4gPiA+ID4gPiAgIHRva2VuCj4gPiA+ID4gPiA+ICAgaGFuZGxpbmc7Cj4g
PiA+ID4gPiA+IC0gaXQncyB1c2luZyBpdGVtcyBhcyB1bml0IG5vdCBhbGxvd2luZyBjb3VudGlu
ZyBieXRlczsKPiA+ID4gPiA+ID4gLSBpdCBkdXBsaWNhdGVzIHNvbWUgcXVldWUgbWFuYWdlbWVu
dCBiZXR3ZWVuIFJlZENoYW5uZWxDbGllbnQ7Cj4gPiA+ID4gPiA+IC0gaXQncyBicm9rZW4gKHNl
ZSBjb21tZW50cyBpbiBjaGFyLWRldmljZS5oKTsKPiA+ID4gPiA+ID4gLSBpdCBmb3JjZXMgImNs
aWVudHMiIHRvIGJlaGF2ZSBpbiBzb21lIHdheSBub3QgYWx0ZXJpbmcgZm9yCj4gPiA+ID4gPiA+
IGluc3RhbmNlCj4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4gPiAgIHF1ZXVlZCBpdGVtcyAod2hp
Y2ggaXMgdmVyeSB1c2VmdWwgaWYgaXRlbXMgY2FuIGJlIGNvbGxhcHNlZAo+ID4gPiA+ID4gPiAg
IHRvZ2V0aGVyKTsKPiA+ID4gPiA+ID4gLSBpdCByZXBsaWNhdGVzIHRoZSB0b2tlbiBoYW5kbGlu
ZyBvbiB0aGUgZGV2aWNlIHF1ZXVlIHRvby4gVGhpcwo+ID4gPiA+ID4gPiBjb3VsZAo+ID4gPiA+
ID4gPiAgIHNlZW1zIHJpZ2h0IGJ1dCBpcyBub3QgdGhhdCBpZiB5b3UgaGF2ZSBhIG5ldHdvcmsg
Y2FyZCBnb2luZyBAIDEKPiA+ID4gPiA+ID4gICBHQml0L3MKPiA+ID4gPiA+ID4gICB5b3UgYXJl
IGFibGUgdG8gdXBsb2FkIG1vcmUgdGhhbiAxIEdiaXQvcyBqdXN0IHVzaW5nIG11bHRpcGxlCj4g
PiA+ID4gPiA+ICAgY29ubmVjdGlvbnMuIFRoZSBrZXJuZWwgd2lsbCB1c2UgYSBzaW5nbGUgcXVl
dWUgZm9yIHRoZSBuZXR3b3JrCj4gPiA+ID4gPiA+ICAgaW50ZXJmYWNlCj4gPiA+ID4gPiA+ICAg
bGltaXRpbmcgYW5kIHNoYXJpbmcgZGUgZmFjdG8gdGhlIHZhcmlvdXMgYnVmZmVycyBiZXR3ZWVu
IHRoZQo+ID4gPiA+ID4gPiAgIG11bHRpcGxlCj4gPiA+ID4gPiA+ICAgY29ubmVjdGlvbnMuCj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+IENoYW5nZXMgaW4g
djI6Cj4gPiA+ID4gPiA+IC0gbW9yZSBjb21taXQgbWVzc2FnZSBjb21tZW50cwo+ID4gPiA+ID4g
PiAtLS0KPiA+ID4gPiA+ID4gIHNlcnZlci9zcGljZXZtYy5jIHwgMTUgKysrKystLS0tLS0tLS0t
Cj4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2
bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+ID4gPiA+IGluZGV4IDg0YmJiNzNjMi4uOGM0
MTU3M2FlIDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiA+
ID4gPiArKysgYi9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiA+ID4gPiBAQCAtMzYwLDI5ICszNjAs
MjQgQEAgc3RhdGljIFJlZFBpcGVJdGVtCj4gPiA+ID4gPiA+ICpzcGljZXZtY19jaGFyZGV2X3Jl
YWRfbXNnX2Zyb21fZGV2KFJlZENoYXJEZXZpY2UgKnNlbGYsCj4gPiA+ID4gPiA+ICAKPiA+ID4g
PiA+ID4gICAgICAgICAgbXNnX2l0ZW1fY29tcHJlc3NlZCA9IHRyeV9jb21wcmVzc19sejQoY2hh
bm5lbCwgbiwKPiA+ID4gPiA+ID4gICAgICAgICAgbXNnX2l0ZW0pOwo+ID4gPiA+ID4gPiAgICAg
ICAgICBpZiAobXNnX2l0ZW1fY29tcHJlc3NlZCAhPSBOVUxMKSB7Cj4gPiA+ID4gPiA+IC0gICAg
ICAgICAgICByZXR1cm4gJm1zZ19pdGVtX2NvbXByZXNzZWQtPmJhc2U7Cj4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2Ms
Cj4gPiA+ID4gPiA+ICZtc2dfaXRlbV9jb21wcmVzc2VkLT5iYXNlKTsKPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gPiA+ID4gPiAgICAgICAgICB9Cj4gPiA+ID4gPiA+
ICAjZW5kaWYKPiA+ID4gPiA+ID4gICAgICAgICAgc3RhdF9pbmNfY291bnRlcihjaGFubmVsLT5v
dXRfZGF0YSwgbik7Cj4gPiA+ID4gPiA+ICAgICAgICAgIG1zZ19pdGVtLT51bmNvbXByZXNzZWRf
ZGF0YV9zaXplID0gbjsKPiA+ID4gPiA+ID4gICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91c2VkID0g
bjsKPiA+ID4gPiA+ID4gLSAgICAgICAgcmV0dXJuICZtc2dfaXRlbS0+YmFzZTsKPiA+ID4gPiA+
ID4gLSAgICB9IGVsc2Ugewo+ID4gPiA+ID4gPiAtICAgICAgICBjaGFubmVsLT5waXBlX2l0ZW0g
PSBtc2dfaXRlbTsKPiA+ID4gPiA+ID4gKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVf
YWRkX3B1c2goY2hhbm5lbC0+cmNjLAo+ID4gPiA+ID4gPiAmbXNnX2l0ZW0tPmJhc2UpOwo+ID4g
PiA+ID4gPiAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiA+ID4gICAgICB9Cj4gPiA+ID4g
PiA+ICsgICAgY2hhbm5lbC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gPiA+ID4gPiA+ICsgICAg
cmV0dXJuIE5VTEw7Cj4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIHN0
YXRpYyB2b2lkIHNwaWNldm1jX2NoYXJkZXZfc2VuZF9tc2dfdG9fY2xpZW50KFJlZENoYXJEZXZp
Y2UKPiA+ID4gPiA+ID4gICpzZWxmLAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlwZUl0ZW0gKm1zZywKPiA+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVu
dCAqY2xpZW50KQo+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4gPiAtICAgIFJlZENoYXJEZXZpY2VT
cGljZVZtYyAqdm1jID0gUkVEX0NIQVJfREVWSUNFX1NQSUNFVk1DKHNlbGYpOwo+ID4gPiA+ID4g
PiAtICAgIFJlZFZtY0NoYW5uZWwgKmNoYW5uZWwgPSBSRURfVk1DX0NIQU5ORUwodm1jLT5jaGFu
bmVsKTsKPiA+ID4gPiA+ID4gLQo+ID4gPiA+ID4gPiAtICAgIHNwaWNlX2Fzc2VydChyZWRfY2hh
bm5lbF9jbGllbnRfZ2V0X2NsaWVudChjaGFubmVsLT5yY2MpID09Cj4gPiA+ID4gPiA+IGNsaWVu
dCk7Cj4gPiA+ID4gPiA+IC0gICAgcmVkX3BpcGVfaXRlbV9yZWYobXNnKTsKPiA+ID4gPiA+ID4g
LSAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsIG1zZyk7
Cj4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIHJl
ZF9wb3J0X2luaXRfaXRlbV9mcmVlKHN0cnVjdCBSZWRQaXBlSXRlbSAqYmFzZSkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
