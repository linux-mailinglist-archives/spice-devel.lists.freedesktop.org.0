Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4672B90D0B
	for <lists+spice-devel@lfdr.de>; Sat, 17 Aug 2019 07:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51716E370;
	Sat, 17 Aug 2019 05:05:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C3F6E370
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Aug 2019 05:05:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13BDD106FA9E;
 Sat, 17 Aug 2019 05:05:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B780383F;
 Sat, 17 Aug 2019 05:05:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3F6518005A0;
 Sat, 17 Aug 2019 05:05:31 +0000 (UTC)
Date: Sat, 17 Aug 2019 01:05:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Brendan Shanks <bshanks@codeweavers.com>
Message-ID: <1068062958.6620087.1566018330530.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190816220129.22027-4-bshanks@codeweavers.com>
References: <20190816220129.22027-1-bshanks@codeweavers.com>
 <20190816220129.22027-4-bshanks@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.26, 10.4.195.1]
Thread-Topic: Add cache for SHM segments
Thread-Index: A3CbdAR408NSFiqtl61SOxeIc5w7hw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Sat, 17 Aug 2019 05:05:32 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice v3 3/3] Add cache for SHM segments
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

PiAKPiBBZGQgYSBjYWNoZSB0byBhbGxvdyB0aGUgcmV1c2Ugb2YgU0hNIHNlZ21lbnRzLgo+IFNo
YXJlZCBtZW1vcnkgc2VnbWVudHMgYXJlIGFkZGVkIHRvIHRoZSBjYWNoZSBpbnN0ZWFkIG9mIGJl
aW5nCj4gZGVhbGxvY2F0ZWQsIGFuZCB0aGUgY2FjaGUgaXMgc2VhcmNoZWQgaW5zdGVhZCBvZi9i
ZWZvcmUgYWxsb2NhdGluZyBhCj4gbmV3IHNlZ21lbnQuCj4gCj4gQm90aCB0aGUgU0hNIHNlZ21l
bnRzIGFuZCB0aGVpciBhdHRhY2htZW50IHdpdGggdGhlIFggc2VydmVyIGFyZSBjYWNoZWQuCj4g
Cj4gVGhlIGNhY2hlIGN1cnJlbnRseSBoYXMgYSBmaXhlZCBudW1iZXIgb2YgMTAgZW50cmllcywg
dGhpcyBwcm92aWRlZCBhCj4gZ29vZCBjYWNoZSBoaXQgcmF0ZSB3aGlsZSBrZWVwaW5nIG1lbW9y
eSB1c2FnZSB1bmRlciBjb250cm9sLgo+IEJ1aWxkaW5nIHdpdGggREVCVUdfU0hNX0NBQ0hFIGRl
ZmluZWQgYW5kIHJ1bm5pbmcgd2l0aAo+IEdfTUVTU0FHRVNfREVCVUc9YWxsIHdpbGwgcGVyaW9k
aWNhbGx5IHByaW50IG91dCB0aGUgU0hNIGNhY2hlIGhpdAo+IHJhdGUuCj4gCj4gT24gbXkgVWJ1
bnR1IDE4LjA0IHN5c3RlbSBydW5uaW5nIFhGQ0U0IHdpdGggYSAyNTYweDE0NDAgc2NyZWVuLCB0
aGUKPiBjYWNoZSBoaXQgcmF0ZSBzdGFydHMgYXJvdW5kIDcyJS4gT24tc2NyZWVuIHdpbmRvd3Mg
dGhhdCB1cGRhdGUgb2Z0ZW4KPiBhbmQgaGF2ZSBjb25zaXN0ZW50bHktc2l6ZWQgZGFtYWdlIHJl
Y3RhbmdsZXMgYXJlIHRoZSBiZXN0IGNhc2UuIFdpdGgKPiBzZXZlcmFsIG9mIHRob3NlIChzY3Jv
bGxpbmcgdGVybWluYWwgd2luZG93cywgd2ViIGJyb3dzZXIgc2hvd2luZyBhCj4gV2ViR0wgZGVt
byksIHRoZSBoaXQgcmF0ZSBzbG93bHkgcmlzZXMgdG8gYXJvdW5kIDkyJS4KPiBPcGVyYXRpb25z
IHRoYXQgZ2VuZXJhdGUgcmFwaWQgZGFtYWdlIHJlcG9ydHMgKGxpa2UgcmVzaXppbmcgb3IgbW92
aW5nCj4gd2luZG93cykgd2lsbCBsb3dlciB0aGUgaGl0IHJhdGUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQnJlbmRhbiBTaGFua3MgPGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgo+IC0tLQo+ICBzcmMv
ZGlzcGxheS5jIHwgMTc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tCj4gIHNyYy9kaXNwbGF5LmggfCAgMTEgKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDE3MCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3Jj
L2Rpc3BsYXkuYyBiL3NyYy9kaXNwbGF5LmMKPiBpbmRleCBhMmExOGI4Li41NTQ2MWEyIDEwMDY0
NAo+IC0tLSBhL3NyYy9kaXNwbGF5LmMKPiArKysgYi9zcmMvZGlzcGxheS5jCj4gQEAgLTIxMywx
MSArMjEzLDE1NSBAQCBzdGF0aWMgaW50IHJlZ2lzdGVyX2Zvcl9ldmVudHMoZGlzcGxheV90ICpk
KQo+ICAgICAgcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHNobV9zZWdtZW50X2Rl
c3Ryb3koZGlzcGxheV90ICpkLCBzaG1fc2VnbWVudF90ICpzZWdtZW50KQo+ICt7Cj4gKyAgICBp
ZiAoc2VnbWVudC0+c2htaWQgPT0gLTEpIHsKPiArICAgICAgICByZXR1cm47Cj4gKyAgICB9Cj4g
Kwo+ICsgICAgeGNiX3NobV9kZXRhY2goZC0+Yywgc2VnbWVudC0+c2htc2VnKTsKPiArICAgIHNl
Z21lbnQtPnNobXNlZyA9IC0xOwo+ICsKPiArICAgIHNobWR0KHNlZ21lbnQtPnNobWFkZHIpOwo+
ICsgICAgc2VnbWVudC0+c2htYWRkciA9IE5VTEw7Cj4gKwo+ICsgICAgc2htY3RsKHNlZ21lbnQt
PnNobWlkLCBJUENfUk1JRCwgTlVMTCk7Cj4gKyAgICBzZWdtZW50LT5zaG1pZCA9IC0xOwo+ICt9
Cj4gKwo+ICsKPiArc3RhdGljIGludCBzaG1fY2FjaGVfZ2V0KGRpc3BsYXlfdCAqZCwgc2l6ZV90
IHNpemUsIHNobV9zZWdtZW50X3QgKnNlZ21lbnQpCj4gK3sKPiArICAgIGludCBpLCByZXQ7Cj4g
KyAgICBzaG1fc2VnbWVudF90ICpiaWdnZXJfZW50cnkgPSBOVUxMOwo+ICsgICAgc2htX3NlZ21l
bnRfdCAqZW50cnlfdG9fdXNlID0gTlVMTDsKPiArCj4gKyNpZiBkZWZpbmVkKERFQlVHX1NITV9D
QUNIRSkKPiArICAgIHN0YXRpYyBndWludCBjYWNoZV9oaXRzID0gMDsKPiArICAgIHN0YXRpYyBn
dWludCBjYWNoZV90b3RhbCA9IDA7Cj4gKwo+ICsgICAgY2FjaGVfdG90YWwrKzsKPiArI2VuZGlm
Cj4gKwo+ICsgICAgZ19tdXRleF9sb2NrKCZkLT5zaG1fY2FjaGVfbXV0ZXgpOwo+ICsKPiArICAg
IC8qIENoZWNrIHRoZSBjYWNoZSBmb3IgYSBzZWdtZW50IG9mIHNpemUgJ3NpemUnIG9yIGJpZ2dl
ci4KPiArICAgICAqIFVzZSBhbiBleGFjdC1zaXplIHNlZ21lbnQgaWYgZm91bmQuCj4gKyAgICAg
KiBJZiBub3QsIHVzZSB0aGUgc21hbGxlc3QgZW50cnkgdGhhdCBpcyBiaWcgZW5vdWdoLgo+ICsg
ICAgICovCj4gKyAgICBmb3IgKGkgPSAwOyBpIDwgR19OX0VMRU1FTlRTKGQtPnNobV9jYWNoZSk7
IGkrKykgewo+ICsgICAgICAgIHNobV9zZWdtZW50X3QgKmVudHJ5ID0gJmQtPnNobV9jYWNoZVtp
XTsKPiArCj4gKyAgICAgICAgaWYgKGVudHJ5LT5zaG1pZCAhPSAtMSkgewo+ICsgICAgICAgICAg
ICAvKiBJZiBhIGNhY2hlIGVudHJ5IG9mIHRoZSBleGFjdCBzaXplIGJlaW5nIHJlcXVlc3RlZCBp
cyBmb3VuZCwKPiB1c2UgdGhhdCAqLwo+ICsgICAgICAgICAgICBpZiAoc2l6ZSA9PSBlbnRyeS0+
c2l6ZSkgewo+ICsgICAgICAgICAgICAgICAgZW50cnlfdG9fdXNlID0gZW50cnk7Cj4gKyAgICAg
ICAgICAgICAgICBicmVhazsKPiArICAgICAgICAgICAgfQo+ICsKPiArICAgICAgICAgICAgLyog
S2VlcCB0cmFjayBvZiB0aGUgbmV4dC1iaWdnZXN0IGVudHJ5IGluIGNhc2UgYW4gZXhhY3Qtc2l6
ZQo+IG1hdGNoIGlzbid0IGZvdW5kICovCj4gKyAgICAgICAgICAgIGlmIChzaXplIDwgZW50cnkt
PnNpemUpIHsKPiArICAgICAgICAgICAgICAgIGlmICgoYmlnZ2VyX2VudHJ5ICYmIGVudHJ5LT5z
aXplIDwgYmlnZ2VyX2VudHJ5LT5zaXplKSB8fAo+ICFiaWdnZXJfZW50cnkpIHsKClRoaXMgaXMg
ZXF1aXZhbGVudCB0byAKCiAgIGlmICghYmlnZ2VyX2VudHJ5IHx8IGVudHJ5LT5zaXplIDwgYmln
Z2VyX2VudHJ5LT5zaXplKSB7Cgo+ICsgICAgICAgICAgICAgICAgICAgIGJpZ2dlcl9lbnRyeSA9
IGVudHJ5Owo+ICsgICAgICAgICAgICAgICAgfQo+ICsgICAgICAgICAgICB9Cj4gKyAgICAgICAg
fQo+ICsgICAgfQo+ICsKPiArICAgIC8qIEFuIGV4YWN0LXNpemUgZW50cnkgd2Fzbid0IGZvdW5k
LCB1c2UgdGhlIG5leHQgYmlnZ2VzdCBlbnRyeSB0aGF0IHdhcwo+IGZvdW5kICovCj4gKyAgICBp
ZiAoIWVudHJ5X3RvX3VzZSkgewo+ICsgICAgICAgIGVudHJ5X3RvX3VzZSA9IGJpZ2dlcl9lbnRy
eTsKPiArICAgIH0KPiArCj4gKyAgICBpZiAoZW50cnlfdG9fdXNlKSB7Cj4gKyAgICAgICAgKnNl
Z21lbnQgPSAqZW50cnlfdG9fdXNlOwo+ICsgICAgICAgIGVudHJ5X3RvX3VzZS0+c2htaWQgPSAt
MTsKPiArCj4gKyAgICAgICAgcmV0ID0gMTsKPiArCj4gKyNpZiBkZWZpbmVkKERFQlVHX1NITV9D
QUNIRSkKPiArICAgICAgICBjYWNoZV9oaXRzKys7Cj4gKyAgICAgICAgaWYgKChjYWNoZV9oaXRz
ICUgMTAwID09IDApKSB7Cj4gKyAgICAgICAgICAgIGdfZGVidWcoIlNITSBjYWNoZSBoaXRyYXRl
OiAldS8ldSAoJS4yZiUlKSIsIGNhY2hlX2hpdHMsCj4gY2FjaGVfdG90YWwsCj4gKyAgICAgICAg
ICAgICAgICAgICAgKGZsb2F0KSAoKGZsb2F0KSBjYWNoZV9oaXRzIC8gKGZsb2F0KSBjYWNoZV90
b3RhbCkgKgo+IDEwMCk7Cj4gKyAgICAgICAgfQo+ICsjZW5kaWYKPiArICAgIH0gZWxzZSB7Cj4g
KyAgICAgICAgLyogTm8gdXNhYmxlIGVudHJ5IGZvdW5kIGluIHRoZSBjYWNoZSAqLwo+ICsgICAg
ICAgIHJldCA9IDA7Cj4gKyAgICB9Cj4gKwo+ICsgICAgZ19tdXRleF91bmxvY2soJmQtPnNobV9j
YWNoZV9tdXRleCk7Cj4gKyAgICByZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHNo
bV9jYWNoZV9hZGQoZGlzcGxheV90ICpkLCBzaG1fc2VnbWVudF90ICpzZWdtZW50KQo+ICt7Cj4g
KyAgICBpbnQgaSwgcmV0Owo+ICsgICAgc2htX3NlZ21lbnRfdCAqc21hbGxlc3RfZW50cnkgPSBO
VUxMOwo+ICsgICAgc2htX3NlZ21lbnRfdCAqZW50cnlfdG9fdXNlID0gTlVMTDsKPiArCj4gKyAg
ICBnX211dGV4X2xvY2soJmQtPnNobV9jYWNoZV9tdXRleCk7Cj4gKwo+ICsgICAgLyogJ3NlZ21l
bnQnIGlzIG5vdyB1bnVzZWQsIHRyeSB0byBhZGQgaXQgdG8gdGhlIGNhY2hlLgo+ICsgICAgICog
VXNlIGFuIGVtcHR5IHNsb3QgaW4gdGhlIGNhY2hlIGlmIGF2YWlsYWJsZS4KPiArICAgICAqIElm
IG5vdCwgZXZpY3QgdGhlIHNtYWxsZXN0IGVudHJ5ICh3aGljaCBhbHNvIG11c3QgYmUgc21hbGxl
ciB0aGFuCj4gJ3NlZ21lbnQnKSBmcm9tIHRoZSBjYWNoZS4KPiArICAgICAqLwo+ICsgICAgZm9y
IChpID0gMDsgaSA8IEdfTl9FTEVNRU5UUyhkLT5zaG1fY2FjaGUpOyBpKyspIHsKPiArICAgICAg
ICBzaG1fc2VnbWVudF90ICplbnRyeSA9ICZkLT5zaG1fY2FjaGVbaV07Cj4gKwo+ICsgICAgICAg
IGlmIChlbnRyeS0+c2htaWQgPT0gLTEpIHsKPiArICAgICAgICAgICAgLyogVXNlIGFuIGVtcHR5
IHNsb3QgaWYgZm91bmQgKi8KPiArICAgICAgICAgICAgZW50cnlfdG9fdXNlID0gZW50cnk7Cj4g
KyAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgIH0KPiArCj4gKyAgICAgICAgLyogS2VlcCB0
cmFjayBvZiB0aGUgc21hbGxlc3QgZW50cnkgdGhhdCdzIHNtYWxsZXIgdGhhbiAnc2VnbWVudCcg
Ki8KPiArICAgICAgICBpZiAoZW50cnktPnNpemUgPCBzZWdtZW50LT5zaXplKSB7Cj4gKyAgICAg
ICAgICAgIGlmIChzbWFsbGVzdF9lbnRyeSAmJiBlbnRyeS0+c2l6ZSA8IHNtYWxsZXN0X2VudHJ5
LT5zaXplKSB7Cj4gKyAgICAgICAgICAgICAgICBzbWFsbGVzdF9lbnRyeSA9IGVudHJ5Owo+ICsg
ICAgICAgICAgICB9IGVsc2UgaWYgKCFzbWFsbGVzdF9lbnRyeSkgewoKU2ltaWxhciBoZXJlIChz
aW5nbGUgaWYpLAoKICBpZiAoIXNtYWxsZXN0X2VudHJ5IHx8IGVudHJ5LT5zaXplIDwgc21hbGxl
c3RfZW50cnktPnNpemUpIHsKCj4gKyAgICAgICAgICAgICAgICBzbWFsbGVzdF9lbnRyeSA9IGVu
dHJ5Owo+ICsgICAgICAgICAgICB9Cj4gKyAgICAgICAgfQo+ICsgICAgfQo+ICsKPiArICAgIC8q
IElmIG5vIGVtcHR5IGVudHJpZXMgd2VyZSBmb3VuZCwgZXZpY3QgJ3NtYWxsZXN0X2VudHJ5JyBh
bmQgcmV1c2UgaXQKPiAqLwo+ICsgICAgaWYgKCFlbnRyeV90b191c2UgJiYgc21hbGxlc3RfZW50
cnkpIHsKPiArICAgICAgICBzaG1fc2VnbWVudF9kZXN0cm95KGQsIHNtYWxsZXN0X2VudHJ5KTsK
PiArICAgICAgICBlbnRyeV90b191c2UgPSBzbWFsbGVzdF9lbnRyeTsKPiArICAgIH0KPiArCj4g
KyAgICBpZiAoZW50cnlfdG9fdXNlKSB7Cj4gKyAgICAgICAgKmVudHJ5X3RvX3VzZSA9ICpzZWdt
ZW50Owo+ICsgICAgICAgIHJldCA9IDE7Cj4gKyAgICB9IGVsc2Ugewo+ICsgICAgICAgIC8qIENh
Y2hlIGlzIGZ1bGwsIGFuZCBjb250YWluZWQgbm8gZW50cmllcyBzbWFsbGVyIHRoYW4gdGhlIG9u
ZQo+IGJlaW5nIGFkZGVkICovCj4gKyAgICAgICAgcmV0ID0gMDsKPiArICAgIH0KPiArCj4gKyAg
ICBnX211dGV4X3VubG9jaygmZC0+c2htX2NhY2hlX211dGV4KTsKPiArICAgIHJldHVybiByZXQ7
Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHNobV9jYWNoZV9kZXN0cm95KGRpc3BsYXlfdCAqZCkK
PiArewo+ICsgICAgaW50IGk7Cj4gKwo+ICsgICAgZ19tdXRleF9sb2NrKCZkLT5zaG1fY2FjaGVf
bXV0ZXgpOwo+ICsgICAgZm9yIChpID0gMDsgaSA8IEdfTl9FTEVNRU5UUyhkLT5zaG1fY2FjaGUp
OyBpKyspIHsKPiArICAgICAgICBzaG1fc2VnbWVudF90ICplbnRyeSA9ICZkLT5zaG1fY2FjaGVb
aV07Cj4gKwo+ICsgICAgICAgIHNobV9zZWdtZW50X2Rlc3Ryb3koZCwgZW50cnkpOwo+ICsgICAg
fQo+ICsgICAgZ19tdXRleF91bmxvY2soJmQtPnNobV9jYWNoZV9tdXRleCk7Cj4gK30KPiAgCj4g
IGludCBkaXNwbGF5X29wZW4oZGlzcGxheV90ICpkLCBzZXNzaW9uX3QgKnNlc3Npb24pCj4gIHsK
PiAgICAgIGludCBzY3I7Cj4gICAgICBpbnQgcmM7Cj4gKyAgICBpbnQgaTsKPiAgICAgIHhjYl9k
YW1hZ2VfcXVlcnlfdmVyc2lvbl9jb29raWVfdCBkY29va2llOwo+ICAgICAgeGNiX2RhbWFnZV9x
dWVyeV92ZXJzaW9uX3JlcGx5X3QgKmRhbWFnZV92ZXJzaW9uOwo+ICAgICAgeGNiX3hrYl91c2Vf
ZXh0ZW5zaW9uX2Nvb2tpZV90IHVzZV9jb29raWU7Cj4gQEAgLTMxNCw2ICs0NTgsMTEgQEAgaW50
IGRpc3BsYXlfb3BlbihkaXNwbGF5X3QgKmQsIHNlc3Npb25fdCAqc2Vzc2lvbikKPiAgICAgIGlm
IChyYykKPiAgICAgICAgICByZXR1cm4gcmM7Cj4gIAo+ICsgICAgZ19tdXRleF9pbml0KCZkLT5z
aG1fY2FjaGVfbXV0ZXgpOwo+ICsgICAgZm9yIChpID0gMDsgaSA8IEdfTl9FTEVNRU5UUyhkLT5z
aG1fY2FjaGUpOyBpKyspIHsKPiArICAgICAgICBkLT5zaG1fY2FjaGVbaV0uc2htaWQgPSAtMTsK
PiArICAgIH0KPiArCj4gICAgICByYyA9IGRpc3BsYXlfY3JlYXRlX3NjcmVlbl9pbWFnZXMoZCk7
Cj4gIAo+ICAgICAgZ19tZXNzYWdlKCJEaXNwbGF5ICVzIG9wZW5lZCIsIHNlc3Npb24tPm9wdGlv
bnMuZGlzcGxheSA/Cj4gICAgICBzZXNzaW9uLT5vcHRpb25zLmRpc3BsYXkgOiAiIik7Cj4gQEAg
LTMyMSwxNyArNDcwLDYgQEAgaW50IGRpc3BsYXlfb3BlbihkaXNwbGF5X3QgKmQsIHNlc3Npb25f
dCAqc2Vzc2lvbikKPiAgICAgIHJldHVybiByYzsKPiAgfQo+ICAKPiAtLyoKPiAtICBUT0RPOiBJ
bXBsZW1lbnQgYSBjYWNoZSBmb3Igc2hhcmVkIG1lbW9yeSBoYW5kbGVzCj4gLSAgICAgICAgVGhh
dCBpcywgaW5zdGVhZCBvZiBkb2luZyB0aGUgc2htZ2V0L3NobWF0IGZvciBldmVyeSByZWFkLAo+
IC0gICAgICAgIHdlIHNob3VsZCBjYWNoZSB0aGUgc2htaWQsIGFuZCByZXVzZSBpZiB3ZSdyZSBk
b2luZyBhIGxhdGVyCj4gLSAgICAgICAgcmVhZCBvZiBhIHNpbWlsYXIgc2l6ZS4KPiAtCj4gLSAg
ICAgICAgV2Ugd291bGQgbGlrZWx5IHNlZSBhIDQwJSBpbXByb3ZlbWVudCBpbiByYXcgcmVhZCB0
aW1lLiAgTm90ZQo+IC0gICAgICAgIHRoYXQgYSBjYWxsZ3JpbmQgcnVuIHN1Z2dlc3RlZCB0aGF0
IHdvdWxkIGJlIG9uIHRoZSBvcmRlciBvZiA1JQo+IC0gICAgICAgIG92ZXJhbGwuCj4gLSovCj4g
LQo+ICBzaG1faW1hZ2VfdCAqY3JlYXRlX3NobV9pbWFnZShkaXNwbGF5X3QgKmQsIHVuc2lnbmVk
IGludCB3LCB1bnNpZ25lZCBpbnQgaCkKPiAgewo+ICAgICAgc2htX2ltYWdlX3QgKnNobWk7Cj4g
QEAgLTM0OSw2ICs0ODcsMTEgQEAgc2htX2ltYWdlX3QgKmNyZWF0ZV9zaG1faW1hZ2UoZGlzcGxh
eV90ICpkLCB1bnNpZ25lZCBpbnQKPiB3LCB1bnNpZ25lZCBpbnQgaCkKPiAgICAgIHNobWktPmJ5
dGVzX3Blcl9saW5lID0gKGJpdHNfcGVyX3BpeGVsKGQpIC8gOCkgKiBzaG1pLT53Owo+ICAgICAg
aW1nc2l6ZSA9IHNobWktPmJ5dGVzX3Blcl9saW5lICogc2htaS0+aDsKPiAgCj4gKyAgICBpZiAo
c2htX2NhY2hlX2dldChkLCBpbWdzaXplLCAmc2htaS0+c2VnbWVudCkpIHsKPiArICAgICAgICBy
ZXR1cm4gc2htaTsKPiArICAgIH0KPiArCj4gKyAgICAvKiBObyB1c2FibGUgc2hhcmVkIG1lbW9y
eSBzZWdtZW50IGZvdW5kIGluIGNhY2hlLCBhbGxvY2F0ZSBhIG5ldyBvbmUgKi8KPiAgICAgIHNo
bWktPnNlZ21lbnQuc2htaWQgPSBzaG1nZXQoSVBDX1BSSVZBVEUsIGltZ3NpemUsIElQQ19DUkVB
VCB8IDA3MDApOwo+ICAgICAgaWYgKHNobWktPnNlZ21lbnQuc2htaWQgIT0gLTEpCj4gICAgICAg
ICAgc2htaS0+c2VnbWVudC5zaG1hZGRyID0gc2htYXQoc2htaS0+c2VnbWVudC5zaG1pZCwgMCwg
MCk7Cj4gQEAgLTM2MCw2ICs1MDMsNyBAQCBzaG1faW1hZ2VfdCAqY3JlYXRlX3NobV9pbWFnZShk
aXNwbGF5X3QgKmQsIHVuc2lnbmVkIGludAo+IHcsIHVuc2lnbmVkIGludCBoKQo+ICAgICAgLyog
V2UgdGVsbCBzaG1jdGwgdG8gZGV0YWNoIG5vdzsgdGhhdCBwcmV2ZW50cyB1cyBmcm9tIGhvbGRp
bmcgdGhpcwo+ICAgICAgICAgc2hhcmVkIG1lbW9yeSBzZWdtZW50IGZvcmV2ZXIgaW4gY2FzZSBv
ZiBhYm5vcm1hbCBwcm9jZXNzIGV4aXQuICovCj4gICAgICBzaG1jdGwoc2htaS0+c2VnbWVudC5z
aG1pZCwgSVBDX1JNSUQsIE5VTEwpOwo+ICsgICAgc2htaS0+c2VnbWVudC5zaXplID0gaW1nc2l6
ZTsKPiAgCj4gICAgICBzaG1pLT5zZWdtZW50LnNobXNlZyA9IHhjYl9nZW5lcmF0ZV9pZChkLT5j
KTsKPiAgICAgIGNvb2tpZSA9IHhjYl9zaG1fYXR0YWNoX2NoZWNrZWQoZC0+Yywgc2htaS0+c2Vn
bWVudC5zaG1zZWcsCj4gICAgICBzaG1pLT5zZWdtZW50LnNobWlkLCAwKTsKPiBAQCAtNDUxLDkg
KzU5NSwxMCBAQCB2b2lkIGRpc3BsYXlfY29weV9pbWFnZV9pbnRvX2Z1bGxzY3JlZW4oZGlzcGxh
eV90ICpkLAo+IHNobV9pbWFnZV90ICpzaG1pLCBpbnQgeCwKPiAgCj4gIHZvaWQgZGVzdHJveV9z
aG1faW1hZ2UoZGlzcGxheV90ICpkLCBzaG1faW1hZ2VfdCAqc2htaSkKPiAgewo+IC0gICAgeGNi
X3NobV9kZXRhY2goZC0+Yywgc2htaS0+c2VnbWVudC5zaG1zZWcpOwo+IC0gICAgc2htZHQoc2ht
aS0+c2VnbWVudC5zaG1hZGRyKTsKPiAtICAgIHNobWN0bChzaG1pLT5zZWdtZW50LnNobWlkLCBJ
UENfUk1JRCwgTlVMTCk7Cj4gKyAgICBpZiAoIXNobV9jYWNoZV9hZGQoZCwgJnNobWktPnNlZ21l
bnQpKSB7Cj4gKyAgICAgICAgLyogQ291bGQgbm90IGFkZCB0byBjYWNoZSwgZGVzdHJveSB0aGlz
IHNlZ21lbnQgKi8KPiArICAgICAgICBzaG1fc2VnbWVudF9kZXN0cm95KGQsICZzaG1pLT5zZWdt
ZW50KTsKPiArICAgIH0KPiAgICAgIGlmIChzaG1pLT5kcmF3YWJsZV9wdHIpCj4gICAgICAgICAg
ZnJlZShzaG1pLT5kcmF3YWJsZV9wdHIpOwo+ICAgICAgZnJlZShzaG1pKTsKPiBAQCAtNTIxLDYg
KzY2Niw4IEBAIHZvaWQgZGlzcGxheV9zdG9wX2V2ZW50X3RocmVhZChkaXNwbGF5X3QgKmQpCj4g
IAo+ICB2b2lkIGRpc3BsYXlfY2xvc2UoZGlzcGxheV90ICpkKQo+ICB7Cj4gKyAgICBzaG1fY2Fj
aGVfZGVzdHJveShkKTsKPiArICAgIGdfbXV0ZXhfY2xlYXIoJmQtPnNobV9jYWNoZV9tdXRleCk7
Cj4gICAgICB4Y2JfZGFtYWdlX2Rlc3Ryb3koZC0+YywgZC0+ZGFtYWdlKTsKPiAgICAgIGRpc3Bs
YXlfZGVzdHJveV9zY3JlZW5faW1hZ2VzKGQpOwo+ICAgICAgeGNiX2Rpc2Nvbm5lY3QoZC0+Yyk7
Cj4gZGlmZiAtLWdpdCBhL3NyYy9kaXNwbGF5LmggYi9zcmMvZGlzcGxheS5oCj4gaW5kZXggZGEx
Yjk5MS4uMGFlYTM0OCAxMDA2NDQKPiAtLS0gYS9zcmMvZGlzcGxheS5oCj4gKysrIGIvc3JjL2Rp
c3BsYXkuaAo+IEBAIC0yMSwxOCArMjEsMTkgQEAKPiAgI2lmbmRlZiBESVNQTEFZX0hfCj4gICNk
ZWZpbmUgRElTUExBWV9IXwo+ICAKPiArI2luY2x1ZGUgPGdsaWIuaD4KPiAgI2luY2x1ZGUgPHhj
Yi94Y2IuaD4KPiAgI2luY2x1ZGUgPHhjYi9kYW1hZ2UuaD4KPiAgI2luY2x1ZGUgPHhjYi9zaG0u
aD4KPiAgCj4gLQo+ICBzdHJ1Y3Qgc2Vzc2lvbl9zdHJ1Y3Q7Cj4gIAo+ICAvKi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAgKiogIFN0cnVjdHVyZSBkZWZpbml0aW9ucwo+ICAqKi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tKi8KPiAgdHlwZWRlZiBzdHJ1Y3Qgewo+IC0gICAgaW50IHNobWlkOwo+ICsgICAgaW50IHNo
bWlkOyAgICAgIC8qIGlmIHNobWlkIGlzIC0xOiB0aGUgc2htX3NlZ21lbnRfdCBpcyAiZW1wdHki
LCBvdGhlcgo+IG1lbWJlcnMgYXJlIHVuZGVmaW5lZCAqLwo+ICsgICAgc2l6ZV90IHNpemU7Cj4g
ICAgICB4Y2Jfc2htX3NlZ190IHNobXNlZzsKPiAgICAgIHZvaWQgKnNobWFkZHI7Cj4gIH0gc2ht
X3NlZ21lbnRfdDsKPiBAQCAtNjMsNiArNjQsMTIgQEAgdHlwZWRlZiBzdHJ1Y3Qgewo+ICAgICAg
c2htX2ltYWdlX3QgKmZ1bGxzY3JlZW47Cj4gICAgICBzaG1faW1hZ2VfdCAqc2NhbmxpbmU7Cj4g
IAo+ICsgICAgLyogVGhlIFNITSBjYWNoZSBob2xkcyB1cCB0byAxMCBzZWdtZW50cywgdGhpcyBw
cm92aWRlcyBhIGdvb2QgY2FjaGUKPiArICAgICAqIGhpdCByYXRlIHdoaWxlIGtlZXBpbmcgbWVt
b3J5IHVzYWdlIHJlYXNvbmFibGUuCj4gKyAgICAgKi8KPiArICAgIHNobV9zZWdtZW50X3Qgc2ht
X2NhY2hlWzEwXTsKPiArICAgIEdNdXRleCBzaG1fY2FjaGVfbXV0ZXg7Cj4gKwo+ICAgICAgcHRo
cmVhZF90IGV2ZW50X3RocmVhZDsKPiAgICAgIHN0cnVjdCBzZXNzaW9uX3N0cnVjdCAqc2Vzc2lv
bjsKPiAgfSBkaXNwbGF5X3Q7CgpJdCBzZWVtcyBmaW5lLCBsYXN0IHdvcmQgdG8gSmVyZW15CgpG
cmVkaWFubwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
