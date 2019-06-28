Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E19CB59564
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EFC6E89F;
	Fri, 28 Jun 2019 07:53:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114006E89F
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B229485541
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A7D2A1001B02
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F8E054D3C
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:42 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:53:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1270089488.25084877.1561708422598.JavaMail.zimbra@redhat.com>
In-Reply-To: <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
 <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
 <1943796972.23041914.1560770846233.JavaMail.zimbra@redhat.com>
 <1322438021.25084611.1561708362506.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jv7UkG1zAbU0UI6I8KH7nw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 28 Jun 2019 07:53:42 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBnX29iamVjdF91bnJlZiBpcyBkaXJlY3RseSB1c2VkLgo+
ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDYg
LS0tLS0tCj4gPiA+ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgNSArKy0tLQo+ID4gPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1k
ZXZpY2UuYwo+ID4gPiA+IGluZGV4IDllZTI1NTY2NC4uMGY2YTI5ZDZmIDEwMDY0NAo+ID4gPiA+
IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+ID4gKysrIGIvc2VydmVyL2NoYXItZGV2
aWNlLmMKPiA+ID4gPiBAQCAtNjk3LDEyICs2OTcsNiBAQCB2b2lkCj4gPiA+ID4gcmVkX2NoYXJf
ZGV2aWNlX3Jlc2V0X2Rldl9pbnN0YW5jZShSZWRDaGFyRGV2aWNlCj4gPiA+ID4gKmRldiwKPiA+
ID4gPiAgICAgIGdfb2JqZWN0X25vdGlmeShHX09CSkVDVChkZXYpLCAic2luIik7Cj4gPiA+ID4g
IH0KPiA+ID4gPiAgCj4gPiA+ID4gLXZvaWQgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3koUmVkQ2hh
ckRldmljZSAqY2hhcl9kZXYpCj4gPiA+ID4gLXsKPiA+ID4gPiAtICAgIGdfcmV0dXJuX2lmX2Zh
aWwoUkVEX0lTX0NIQVJfREVWSUNFKGNoYXJfZGV2KSk7Cj4gPiA+ID4gLSAgICBnX29iamVjdF91
bnJlZihjaGFyX2Rldik7Cj4gPiA+ID4gLX0KPiA+ID4gPiAtCj4gPiA+ID4gIHN0YXRpYyBSZWRD
aGFyRGV2aWNlQ2xpZW50ICpyZWRfY2hhcl9kZXZpY2VfY2xpZW50X25ldyhSZWRDbGllbnQKPiA+
ID4gPiAgKmNsaWVudCwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGludAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG9fZmxvd19jb250cm9sLAo+ID4gPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dWludDMyX3QKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG1heF9zZW5kX3F1ZXVlX3NpemUsCj4gPiA+ID4gZGlmZiAtLWdpdCBh
L3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiBpbmRl
eCA4OTNkM2U0YjEuLjQxNWQ0ZjE3YyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1k
ZXZpY2UuaAo+ID4gPiA+ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gQEAgLTkx
LDcgKzkxLDcgQEAgR1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpIEdfR05VQ19D
T05TVDsKPiA+ID4gPiAgICogSG93IHRvIHVzZSB0aGUgYXBpOgo+ID4gPiA+ICAgKiA9PT09PT09
PT09PT09PT09PT0KPiA+ID4gPiAgICogZGV2aWNlIGF0dGFjaGVkOiBjcmVhdGUgbmV3IG9iamVj
dCBpbnN0YW50aWF0aW5nIGEgUmVkQ2hhckRldmljZQo+ID4gPiA+ICAgY2hpbGQKPiA+ID4gPiAg
IGNsYXNzCj4gPiA+ID4gLSAqIGRldmljZSBkZXRhY2hlZDogY2FsbCByZWRfY2hhcl9kZXZpY2Vf
ZGVzdHJveS9yZXNldAo+ID4gPiA+ICsgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3Rf
dW5yZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gPiA+ID4gICAqCj4gPiA+ID4gICAqIGNsaWVu
dCBjb25uZWN0ZWQgYW5kIGFzc29jaWF0ZWQgd2l0aCBhIGRldmljZTogcmVkX2NoYXJfZGV2aWNl
X19hZGQKPiA+ID4gPiAgICogY2xpZW50IGRpc2Nvbm5lY3RlZDogcmVkX2NoYXJfZGV2aWNlX19y
ZW1vdmUKPiA+ID4gPiBAQCAtMTIwLDcgKzEyMCw3IEBAIEdUeXBlIHJlZF9jaGFyX2RldmljZV9n
ZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gPiA+ID4gICAqIHJlZF9jaGFyX2RldmljZV93
YWtldXAgKGZvciByZWFkaW5nIGZyb20gdGhlIGRldmljZSkKPiA+ID4gPiAgICovCj4gPiA+ID4g
IC8qIHJlZmNvdW50aW5nIGlzIHVzZWQgdG8gcHJvdGVjdCB0aGUgY2hhcl9kZXYgZnJvbSBiZWlu
ZyBkZWFsbG9jYXRlZAo+ID4gPiA+ICBpbgo+ID4gPiA+IC0gKiBjYXNlIHJlZF9jaGFyX2Rldmlj
ZV9kZXN0cm95IGhhcyBiZWVuIGNhbGxlZAo+ID4gPiA+ICsgKiBjYXNlIGdfb2JqZWN0X3VucmVm
IGhhcyBiZWVuIGNhbGxlZAo+ID4gPiA+ICAgKiBkdXJpbmcgYSBjYWxsYmFjaywgYW5kIHdlIG1p
Z2h0IHN0aWxsIGFjY2VzcyB0aGUgY2hhcl9kZXYKPiA+ID4gPiAgIGFmdGVyd2FyZHMuCj4gPiA+
ID4gICAqLwo+ID4gPiA+ICAKPiA+ID4gPiBAQCAtMTYwLDcgKzE2MCw2IEBAIHR5cGVkZWYgc3Ry
dWN0IFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciB7Cj4gPiA+ID4gIAo+ID4gPiA+ICB2b2lkIHJl
ZF9jaGFyX2RldmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VDaGFyRGV2
aWNlSW5zdGFuY2UgKnNpbik7Cj4gPiA+ID4gLXZvaWQgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3ko
UmVkQ2hhckRldmljZSAqZGV2KTsKPiA+ID4gPiAgCj4gPiA+ID4gIC8qIG9ubHkgb25lIGNsaWVu
dCBpcyBzdXBwb3J0ZWQgKi8KPiA+ID4gPiAgdm9pZCByZWRfY2hhcl9kZXZpY2VfbWlncmF0ZV9k
YXRhX21hcnNoYWxsKFJlZENoYXJEZXZpY2UgKmRldiwKPiA+ID4gCj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
