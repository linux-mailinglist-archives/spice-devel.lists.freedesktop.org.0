Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FA94EF49
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 21:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363FA6E916;
	Fri, 21 Jun 2019 19:14:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83896E916
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 19:14:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5DEEC3086258;
 Fri, 21 Jun 2019 19:14:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5543E5D9E2;
 Fri, 21 Jun 2019 19:14:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B44E3F6E4;
 Fri, 21 Jun 2019 19:14:15 +0000 (UTC)
Date: Fri, 21 Jun 2019 15:14:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <797375845.23937427.1561144453809.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1heLTR-0008Ui-Gr@amboise>
References: <E1heLTR-0008Ui-Gr@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.1]
Thread-Topic: macros: Mark unused SPICE_GNUC_XXX macros as deprecated
Thread-Index: YBmQkqW5rXGHtjQES2Qi0ze2ZrSj1g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 21 Jun 2019 19:14:15 +0000 (UTC)
Subject: Re: [Spice-devel] [protocol] macros: Mark unused SPICE_GNUC_XXX
 macros as deprecated
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBXZSBkb24ndCB3YW50IHRvIG1haW50YWluIG1vcmUgbWFjcm9zIHRoYW4gbmVjZXNzYXJ5
IGFuZCBpbiB0aGUgZW5kCj4gdGhlIGVxdWl2YWxlbnQgR19HTlVDX1hYWCBtYWNyb3Mgc2hvdWxk
IGJlIHByZWZlcnJlZC4KCnNwaWNlLXByb3RvY29sIHB1YmxpYyBoZWFkZXIgYXJlIHBsYWluIEMg
c28gc3VnZ2VzdGluZyB0byB1c2UgR2xpYiBpcwpub3QgY29ycmVjdC4KCj4gU2hvdWxkIGFueSBw
cm9qZWN0IGFjdHVhbGx5IGRlcGVuZCBvbiB0aGVzZSBtYWNyb3MgdGhleSBjYW4ga2VlcCB1c2lu
Zwo+IHRoZW0gYnkgZGVmaW5pbmcgdGhlIHVzdWFsIFNQSUNFX0RFUFJFQ0FURUQgbWFjcm8gdW50
aWwgdGhleSBtaWdyYXRlCj4gYXdheSBmcm9tIHRoZW0gb3IgdGhlIG1hY3JvcyBhcmUgcmVpbnN0
YXRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdl
YXZlcnMuY29tPgo+IC0tLQo+IAo+IEkgbm90aWNlZCB0aGF0IHRoaXMgcGF0Y2ggZmVsbCBvZmYg
ZGVzcGl0ZSB3aGF0IGxvb2tlZCBsaWtlIGdlbmVyYWwKPiBhZ3JlZW1lbnQuIEkgcmUtZ3JlcHBl
ZCBmb3IgdGhlc2UgbWFjcm9zIGFuZCBkaWQgbm90IGZpbmQgdGhlbSB1c2VkIGluCj4gdGhlIGN1
cnJlbnQgU3BpY2UgY29kZWJhc2Ugd2hpY2ggbWVhbnMgdGhleSBoYXZlIG5vdCBiZWVuIHVzZWQg
Zm9yIGF0Cj4gbGVhc3QgdHdvIHllYXJzLgo+IAoKVGhlbiBtYXliZSB0aGUgcmlnaHQgYXBwcm9h
Y2ggc2hvdWxkIGJlIHJlbW92ZSB0aGVtLgoKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9hcmNoaXZlcy9zcGljZS1kZXZlbC8yMDE2LURlY2VtYmVyLzAzNDU3OC5odG1sCj4gCj4gIHNw
aWNlL21hY3Jvcy5oIHwgMTggKysrKysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcGljZS9t
YWNyb3MuaCBiL3NwaWNlL21hY3Jvcy5oCj4gaW5kZXggYWIxZDA1Ni4uOTVjMTJkNCAxMDA2NDQK
PiAtLS0gYS9zcGljZS9tYWNyb3MuaAo+ICsrKyBiL3NwaWNlL21hY3Jvcy5oCj4gQEAgLTMzLDgg
KzMzLDE0IEBACj4gIAo+ICAjaW5jbHVkZSA8c3BpY2UvdHlwZXMuaD4KPiAgCj4gKyNpZm5kZWYg
U1BJQ0VfREVQUkVDQVRFRAo+ICsjZGVmaW5lIFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKGF0
dHJpYnV0ZSwgbmFtZSkKPiBfX2F0dHJpYnV0ZV9fKChhdHRyaWJ1dGUsIHdhcm5pbmcoImRlcHJl
Y2F0ZWQsIHVzZSAtRFNQSUNFX0RFUFJFQ0FURUQgb3IgIgo+IG5hbWUgIiBpbnN0ZWFkIikpKQo+
ICsjZWxzZQo+ICsjZGVmaW5lIFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKGF0dHJpYnV0ZSwg
bmFtZSkKPiBfX2F0dHJpYnV0ZV9fKChhdHRyaWJ1dGUpKQo+ICsjZW5kaWYKPiArCj4gICNpZiAg
ICBfX0dOVUNfXyA+IDIgfHwgKF9fR05VQ19fID09IDIgJiYgX19HTlVDX01JTk9SX18gPj0gOTYp
Cj4gLSNkZWZpbmUgU1BJQ0VfR05VQ19QVVJFIF9fYXR0cmlidXRlX18oKF9fcHVyZV9fKSkKPiAr
I2RlZmluZSBTUElDRV9HTlVDX1BVUkUgU1BJQ0VfQVRUUklCVVRFX0RFUFJFQ0FURUQoX19wdXJl
X18sICJHX0dOVUNfUFVSRSIpCj4gICNkZWZpbmUgU1BJQ0VfR05VQ19NQUxMT0MgX19hdHRyaWJ1
dGVfXygoX19tYWxsb2NfXykpCj4gICNlbHNlCj4gICNkZWZpbmUgU1BJQ0VfR05VQ19QVVJFCj4g
QEAgLTQyLDcgKzQ4LDcgQEAKPiAgI2VuZGlmCj4gIAo+ICAjaWYgICAgIF9fR05VQ19fID49IDQK
PiAtI2RlZmluZSBTUElDRV9HTlVDX05VTExfVEVSTUlOQVRFRCBfX2F0dHJpYnV0ZV9fKChfX3Nl
bnRpbmVsX18pKQo+ICsjZGVmaW5lIFNQSUNFX0dOVUNfTlVMTF9URVJNSU5BVEVEIFNQSUNFX0FU
VFJJQlVURV9ERVBSRUNBVEVEKF9fc2VudGluZWxfXywKPiAiR19HTlVDX05VTExfVEVSTUlOQVRF
RCIpCj4gICNlbHNlCj4gICNkZWZpbmUgU1BJQ0VfR05VQ19OVUxMX1RFUk1JTkFURUQKPiAgI2Vu
ZGlmCj4gQEAgLTYyLDEyICs2OCwxMiBAQAo+ICAKPiAgI2lmICAgICBfX0dOVUNfXyA+IDIgfHwg
KF9fR05VQ19fID09IDIgJiYgX19HTlVDX01JTk9SX18gPiA0KQo+ICAjZGVmaW5lIFNQSUNFX0dO
VUNfUFJJTlRGKCBmb3JtYXRfaWR4LCBhcmdfaWR4ICkgX19hdHRyaWJ1dGVfXygoX19mb3JtYXRf
Xwo+ICAoX19wcmludGZfXywgZm9ybWF0X2lkeCwgYXJnX2lkeCkpKQo+IC0jZGVmaW5lIFNQSUNF
X0dOVUNfU0NBTkYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKSBfX2F0dHJpYnV0ZV9fKChfX2Zvcm1h
dF9fCj4gKF9fc2NhbmZfXywgZm9ybWF0X2lkeCwgYXJnX2lkeCkpKQo+IC0jZGVmaW5lIFNQSUNF
X0dOVUNfRk9STUFUKCBhcmdfaWR4ICkgX19hdHRyaWJ1dGVfXygoX19mb3JtYXRfYXJnX18KPiAo
YXJnX2lkeCkpKQo+ICsjZGVmaW5lIFNQSUNFX0dOVUNfU0NBTkYoIGZvcm1hdF9pZHgsIGFyZ19p
ZHggKQo+IFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKF9fZm9ybWF0X18gKF9fc2NhbmZfXywg
Zm9ybWF0X2lkeCwgYXJnX2lkeCksCj4gIkdfR05VQ19TQ0FORiIpCj4gKyNkZWZpbmUgU1BJQ0Vf
R05VQ19GT1JNQVQoIGFyZ19pZHggKQo+IFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKF9fZm9y
bWF0X2FyZ19fIChhcmdfaWR4KSwgIkdfR05VQ19GT1JNQVQiKQo+ICAjZGVmaW5lIFNQSUNFX0dO
VUNfTk9SRVRVUk4gX19hdHRyaWJ1dGVfXygoX19ub3JldHVybl9fKSkKPiAtI2RlZmluZSBTUElD
RV9HTlVDX0NPTlNUIF9fYXR0cmlidXRlX18oKF9fY29uc3RfXykpCj4gKyNkZWZpbmUgU1BJQ0Vf
R05VQ19DT05TVCBTUElDRV9BVFRSSUJVVEVfREVQUkVDQVRFRChfX2NvbnN0X18sCj4gIkdfR05V
Q19DT05TVCIpCj4gICNkZWZpbmUgU1BJQ0VfR05VQ19VTlVTRUQgX19hdHRyaWJ1dGVfXygoX191
bnVzZWRfXykpCj4gLSNkZWZpbmUgU1BJQ0VfR05VQ19OT19JTlNUUlVNRU5UIF9fYXR0cmlidXRl
X18oKF9fbm9faW5zdHJ1bWVudF9mdW5jdGlvbl9fKSkKPiArI2RlZmluZSBTUElDRV9HTlVDX05P
X0lOU1RSVU1FTlQKPiBTUElDRV9BVFRSSUJVVEVfREVQUkVDQVRFRChfX25vX2luc3RydW1lbnRf
ZnVuY3Rpb25fXywKPiAiR19HTlVDX05PX0lOU1RSVU1FTlQiKQo+ICAjZWxzZSAgIC8qICFfX0dO
VUNfXyAqLwo+ICAjZGVmaW5lIFNQSUNFX0dOVUNfUFJJTlRGKCBmb3JtYXRfaWR4LCBhcmdfaWR4
ICkKPiAgI2RlZmluZSBTUElDRV9HTlVDX1NDQU5GKCBmb3JtYXRfaWR4LCBhcmdfaWR4ICkKCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
