Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F41BB878
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 17:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051D56E952;
	Mon, 23 Sep 2019 15:50:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024BE6E952
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:50:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 940F7307D90D
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:50:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AE975D713
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:50:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83D1D18089C8
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:50:29 +0000 (UTC)
Date: Mon, 23 Sep 2019 11:50:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1984279006.2957978.1569253829503.JavaMail.zimbra@redhat.com>
In-Reply-To: <956511970.10215186.1567173258125.JavaMail.zimbra@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
 <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
 <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
 <1964755682.7680572.1566286821676.JavaMail.zimbra@redhat.com>
 <956511970.10215186.1567173258125.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.3]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+prvnA7jEKa1YIoBfwCK9gaV3Mce9TAs09GpLGAXZhA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 23 Sep 2019 15:50:29 +0000 (UTC)
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
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gcGluZyB0aGUgc2VyaWVz
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEFzIHdlIGRvbid0IHVz
ZSBhbnkgdG9rZW4gdGhlcmUncyBubyByZWFzb24gdG8gbm90IHF1ZXVlIGRpcmVjdGx5Cj4gPiA+
ID4gPiA+ID4gaW5zdGVhZAo+ID4gPiA+ID4gPiA+IG9mIHBhc3NpbmcgdGhyb3VnaCBSZWRDaGFy
RGV2aWNlLgo+ID4gPiA+ID4gPiA+IFRoaXMgd2lsbCBtYWtlIGVhc2llciB0byBsaW1pdCB0aGUg
cXVldWUgd2hpY2ggY3VycmVudGx5IGlzCj4gPiA+ID4gPiA+ID4gdW5saW1pdGVkLgo+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2UgZmxvdyBjb250cm9sIGhhcyBzb21l
IHByb2JsZW1zOgo+ID4gPiA+ID4gPiA+IC0gaXQncyByZWFsbHkgZGVzaWduZWQgd2l0aCBWREkg
aW4gbWluZC4gVGhpcyBmb3IgU3BpY2VWTUMgd291bGQKPiA+ID4gPiA+ID4gPiBjYXVzZQo+ID4g
PiA+ID4gPiA+ICAgY29kZSBpbXBsZW1lbnRhdGlvbiB0byBiZSBjb25mdXNpbmcgaGF2aW5nIHRv
IHNhdGlzZnkgdGhlIGFnZW50Cj4gPiA+ID4gPiA+ID4gICB0b2tlbgo+ID4gPiA+ID4gPiA+ICAg
aGFuZGxpbmc7Cj4gPiA+ID4gPiA+ID4gLSBpdCdzIHVzaW5nIGl0ZW1zIGFzIHVuaXQgbm90IGFs
bG93aW5nIGNvdW50aW5nIGJ5dGVzOwo+ID4gPiA+ID4gPiA+IC0gaXQgZHVwbGljYXRlcyBzb21l
IHF1ZXVlIG1hbmFnZW1lbnQgYmV0d2VlbiBSZWRDaGFubmVsQ2xpZW50Owo+ID4gPiA+ID4gPiA+
IC0gaXQncyBicm9rZW4gKHNlZSBjb21tZW50cyBpbiBjaGFyLWRldmljZS5oKTsKPiA+ID4gPiA+
ID4gPiAtIGl0IGZvcmNlcyAiY2xpZW50cyIgdG8gYmVoYXZlIGluIHNvbWUgd2F5IG5vdCBhbHRl
cmluZyBmb3IKPiA+ID4gPiA+ID4gPiBpbnN0YW5jZQo+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+
ID4gPiA+ICAgcXVldWVkIGl0ZW1zICh3aGljaCBpcyB2ZXJ5IHVzZWZ1bCBpZiBpdGVtcyBjYW4g
YmUgY29sbGFwc2VkCj4gPiA+ID4gPiA+ID4gICB0b2dldGhlcik7Cj4gPiA+ID4gPiA+ID4gLSBp
dCByZXBsaWNhdGVzIHRoZSB0b2tlbiBoYW5kbGluZyBvbiB0aGUgZGV2aWNlIHF1ZXVlIHRvby4g
VGhpcwo+ID4gPiA+ID4gPiA+IGNvdWxkCj4gPiA+ID4gPiA+ID4gICBzZWVtcyByaWdodCBidXQg
aXMgbm90IHRoYXQgaWYgeW91IGhhdmUgYSBuZXR3b3JrIGNhcmQgZ29pbmcgQAo+ID4gPiA+ID4g
PiA+ICAgMQo+ID4gPiA+ID4gPiA+ICAgR0JpdC9zCj4gPiA+ID4gPiA+ID4gICB5b3UgYXJlIGFi
bGUgdG8gdXBsb2FkIG1vcmUgdGhhbiAxIEdiaXQvcyBqdXN0IHVzaW5nIG11bHRpcGxlCj4gPiA+
ID4gPiA+ID4gICBjb25uZWN0aW9ucy4gVGhlIGtlcm5lbCB3aWxsIHVzZSBhIHNpbmdsZSBxdWV1
ZSBmb3IgdGhlIG5ldHdvcmsKPiA+ID4gPiA+ID4gPiAgIGludGVyZmFjZQo+ID4gPiA+ID4gPiA+
ICAgbGltaXRpbmcgYW5kIHNoYXJpbmcgZGUgZmFjdG8gdGhlIHZhcmlvdXMgYnVmZmVycyBiZXR3
ZWVuIHRoZQo+ID4gPiA+ID4gPiA+ICAgbXVsdGlwbGUKPiA+ID4gPiA+ID4gPiAgIGNvbm5lY3Rp
b25zLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4g
PiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+ID4gPiA+ID4gLSBtb3JlIGNvbW1pdCBtZXNzYWdlIGNv
bW1lbnRzCj4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4gIHNlcnZlci9zcGljZXZtYy5j
IHwgMTUgKysrKystLS0tLS0tLS0tCj4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+
ID4gPiA+ID4gaW5kZXggODRiYmI3M2MyLi44YzQxNTczYWUgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4g
LS0tIGEvc2VydmVyL3NwaWNldm1jLmMKPiA+ID4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvc3BpY2V2
bWMuYwo+ID4gPiA+ID4gPiA+IEBAIC0zNjAsMjkgKzM2MCwyNCBAQCBzdGF0aWMgUmVkUGlwZUl0
ZW0KPiA+ID4gPiA+ID4gPiAqc3BpY2V2bWNfY2hhcmRldl9yZWFkX21zZ19mcm9tX2RldihSZWRD
aGFyRGV2aWNlICpzZWxmLAo+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiAgICAgICAgICBt
c2dfaXRlbV9jb21wcmVzc2VkID0gdHJ5X2NvbXByZXNzX2x6NChjaGFubmVsLCBuLAo+ID4gPiA+
ID4gPiA+ICAgICAgICAgIG1zZ19pdGVtKTsKPiA+ID4gPiA+ID4gPiAgICAgICAgICBpZiAobXNn
X2l0ZW1fY29tcHJlc3NlZCAhPSBOVUxMKSB7Cj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgIHJl
dHVybiAmbXNnX2l0ZW1fY29tcHJlc3NlZC0+YmFzZTsKPiA+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLAo+ID4gPiA+
ID4gPiA+ICZtc2dfaXRlbV9jb21wcmVzc2VkLT5iYXNlKTsKPiA+ID4gPiA+ID4gPiArICAgICAg
ICAgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ID4gPiA+ID4gICAgICAgICAgfQo+ID4gPiA+ID4gPiA+
ICAjZW5kaWYKPiA+ID4gPiA+ID4gPiAgICAgICAgICBzdGF0X2luY19jb3VudGVyKGNoYW5uZWwt
Pm91dF9kYXRhLCBuKTsKPiA+ID4gPiA+ID4gPiAgICAgICAgICBtc2dfaXRlbS0+dW5jb21wcmVz
c2VkX2RhdGFfc2l6ZSA9IG47Cj4gPiA+ID4gPiA+ID4gICAgICAgICAgbXNnX2l0ZW0tPmJ1Zl91
c2VkID0gbjsKPiA+ID4gPiA+ID4gPiAtICAgICAgICByZXR1cm4gJm1zZ19pdGVtLT5iYXNlOwo+
ID4gPiA+ID4gPiA+IC0gICAgfSBlbHNlIHsKPiA+ID4gPiA+ID4gPiAtICAgICAgICBjaGFubmVs
LT5waXBlX2l0ZW0gPSBtc2dfaXRlbTsKPiA+ID4gPiA+ID4gPiArICAgICAgICByZWRfY2hhbm5l
bF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsCj4gPiA+ID4gPiA+ID4gJm1zZ19p
dGVtLT5iYXNlKTsKPiA+ID4gPiA+ID4gPiAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiA+
ID4gPiAgICAgIH0KPiA+ID4gPiA+ID4gPiArICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1zZ19p
dGVtOwo+ID4gPiA+ID4gPiA+ICsgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ID4gPiA+ID4gIH0KPiA+
ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIHNwaWNldm1jX2NoYXJkZXZf
c2VuZF9tc2dfdG9fY2xpZW50KFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gPiAgKnNlbGYsCj4g
PiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFJlZFBpcGVJdGVtCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICptc2csCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudAo+ID4gPiA+ID4gPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqY2xpZW50
KQo+ID4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ID4gLSAgICBSZWRDaGFyRGV2aWNlU3BpY2VW
bWMgKnZtYyA9IFJFRF9DSEFSX0RFVklDRV9TUElDRVZNQyhzZWxmKTsKPiA+ID4gPiA+ID4gPiAt
ICAgIFJlZFZtY0NoYW5uZWwgKmNoYW5uZWwgPSBSRURfVk1DX0NIQU5ORUwodm1jLT5jaGFubmVs
KTsKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gLSAgICBzcGljZV9hc3NlcnQocmVkX2No
YW5uZWxfY2xpZW50X2dldF9jbGllbnQoY2hhbm5lbC0+cmNjKSA9PQo+ID4gPiA+ID4gPiA+IGNs
aWVudCk7Cj4gPiA+ID4gPiA+ID4gLSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwo+ID4gPiA+
ID4gPiA+IC0gICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1c2goY2hhbm5lbC0+cmNj
LCBtc2cpOwo+ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICBz
dGF0aWMgdm9pZCByZWRfcG9ydF9pbml0X2l0ZW1fZnJlZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJh
c2UpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
