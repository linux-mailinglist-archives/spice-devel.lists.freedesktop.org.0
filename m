Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0BEAE735
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EBA6E8A5;
	Tue, 10 Sep 2019 09:42:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2356E8A2
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:42:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C48318CB8FB
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:42:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81C0919C4F
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:42:12 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78E682551B
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:42:12 +0000 (UTC)
Date: Tue, 10 Sep 2019 05:42:12 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1281163263.11342454.1568108532448.JavaMail.zimbra@redhat.com>
In-Reply-To: <1132861722.10215223.1567173282854.JavaMail.zimbra@redhat.com>
References: <20190602193226.19766-1-fziglio@redhat.com>
 <1889820364.25083803.1561708152942.JavaMail.zimbra@redhat.com>
 <1197893127.26605865.1562570935834.JavaMail.zimbra@redhat.com>
 <973229028.688120.1563435680180.JavaMail.zimbra@redhat.com>
 <43025609.4230434.1564676493366.JavaMail.zimbra@redhat.com>
 <467027073.5430343.1565416932413.JavaMail.zimbra@redhat.com>
 <190923746.7680578.1566286839700.JavaMail.zimbra@redhat.com>
 <1132861722.10215223.1567173282854.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.19]
Thread-Topic: char-device: Don't use RedClient API
Thread-Index: Sg/oat//pL1AriXPPyqD/AnMyOxFlxLHy8uQGoLepAWvEw8ICUWJRbQ9Jr8/VVOISM2ITZObXJD/+cGY7S4=
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 10 Sep 2019 09:42:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/2] char-device: Don't
 use RedClient API
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
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gcGluZwo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiBwaW5nCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+IHBpbmcgdGhlIHNlcmllcwo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBSZWRDbGllbnQgd2FzIGFuIG9wYXF1ZSBzdHJ1Y3R1
cmUgZm9yIFJlZENoYXJEZXZpY2UuCj4gPiA+ID4gPiA+ID4gPiA+IEl0IHN0YXJ0ZWQgdG8gYmUg
dXNlZCB3aGVuIFJlZHNTdGF0ZSBzdGFydGVkIHRvIGNvbnRhaW4gYWxsCj4gPiA+ID4gPiA+ID4g
PiA+IHRoZSBnbG9iYWwgc3RhdGUuCj4gPiA+ID4gPiA+ID4gPiA+IE1ha2UgaXQgb3BhcXVlIGFn
YWluIHVzaW5nIGEgbmV3IFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUuCj4gPiA+ID4gPiA+ID4g
PiA+IFRoZSBSZWRDaGFyRGV2aWNlQ2xpZW50T3BhcXVlIGRlZmluZSBpbiB0aGUgaGVhZGVyIGFs
bG93cwo+ID4gPiA+ID4gPiA+ID4gPiB1c2Vycwo+ID4gPiA+ID4gPiA+ID4gPiBvZiB0aGUgY2xh
c3MgdG8gb3ZlcnJpZGUgdGhlIHR5cGUgdG8gZ2V0IGEgbW9yZSBzYWZlIHR5cGUKPiA+ID4gPiA+
ID4gPiA+ID4gdGhhbiBSZWRDbGllbnQuCj4gPiA+ID4gPiA+ID4gPiA+IFRoZSBkZWZpbmUgYXQg
dGhlIGJlZ2lubmluZyBvZiBDIGZpbGUgaXMgdG8gbWFrZSBzdXJlIHdlCj4gPiA+ID4gPiA+ID4g
PiA+IGRvbid0Cj4gPiA+ID4gPiA+ID4gPiA+IHVzZSB0aGUgb3BhcXVlIHR5cGUgYXMgYSBzcGVj
aWZpYyBvbmUuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiA+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiA+ID4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDUyCj4gPiA+
ID4gPiA+ID4gPiA+ICArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ID4gPiA+ID4gPiA+ID4gPiAgc2VydmVyL2NoYXItZGV2aWNlLmggfCAyMiArKysrKysrKysr
Ky0tLS0tLS0tCj4gPiA+ID4gPiA+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlv
bnMoKyksIDMyIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+
ID4gVGhpcyBwYXRjaCB3YXMgbmFtZWQgImNoYXItZGV2aWNlOiBNYWtlIFJlZENsaWVudCBhbiBv
cGFxdWUKPiA+ID4gPiA+ID4gPiA+ID4gc3RydWN0dXJlCj4gPiA+ID4gPiA+ID4gPiA+IGFnYWlu
Igo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZl
ci9jaGFyLWRldmljZS5jIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiA+ID4gPiA+ID4g
aW5kZXggOWVlMjU1NjY0Li44MjI1NWU4MTEgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gPiA+IC0tLSBh
L3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+ID4gPiA+ID4gPiA+ICsrKyBiL3NlcnZlci9jaGFy
LWRldmljZS5jCj4gPiA+ID4gPiA+ID4gPiA+IEBAIC0yMiw4ICsyMiwxMiBAQAo+ID4gPiA+ID4g
PiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8Y29uZmlnLmg+Cj4gPiA+ID4g
PiA+ID4gPiA+ICAjaW5jbHVkZSA8aW50dHlwZXMuaD4KPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4g
PiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICt0eXBlZGVmIHN0cnVjdCBSZWRDaGFy
RGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2VDbGllbnRP
cGFxdWU7Cj4gPiA+ID4gPiA+ID4gPiA+ICsjZGVmaW5lIFJlZENoYXJEZXZpY2VDbGllbnRPcGFx
dWUgUmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4g
PiA+ID4gPiA+ICAjaW5jbHVkZSAiY2hhci1kZXZpY2UuaCIKPiA+ID4gPiA+ID4gPiA+ID4gLSNp
bmNsdWRlICJyZWQtY2xpZW50LmgiCj4gPiA+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSAicmVkcy5o
Igo+ID4gPiA+ID4gPiA+ID4gPiAgI2luY2x1ZGUgImdsaWItY29tcGF0LmgiCj4gPiA+ID4gPiA+
ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTM5LDcgKzQzLDcgQEAgdHlwZWRlZiBlbnVt
IHsKPiA+ID4gPiA+ID4gPiA+ID4gIH0gV3JpdGVCdWZmZXJPcmlnaW47Cj4gPiA+ID4gPiA+ID4g
PiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gIHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXJQ
cml2YXRlIHsKPiA+ID4gPiA+ID4gPiA+ID4gLSAgICBSZWRDbGllbnQgKmNsaWVudDsgLyogVGhl
IGNsaWVudCB0aGF0IHNlbnQgdGhlIG1lc3NhZ2UKPiA+ID4gPiA+ID4gPiA+ID4gdG8KPiA+ID4g
PiA+ID4gPiA+ID4gdGhlCj4gPiA+ID4gPiA+ID4gPiA+IGRldmljZS4KPiA+ID4gPiA+ID4gPiA+
ID4gKyAgICBSZWRDaGFyRGV2aWNlQ2xpZW50T3BhcXVlICpjbGllbnQ7IC8qIFRoZSBjbGllbnQg
dGhhdAo+ID4gPiA+ID4gPiA+ID4gPiBzZW50Cj4gPiA+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+
ID4gPiA+ID4gPiBtZXNzYWdlCj4gPiA+ID4gPiA+ID4gPiA+IHRvIHRoZSBkZXZpY2UuCj4gPiA+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwgaWYgdGhlIHNlcnZl
ciBjcmVhdGVkIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBtZXNzYWdlCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICov
Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgV3JpdGVCdWZmZXJPcmlnaW4gb3JpZ2luOwo+ID4gPiA+
ID4gPiA+ID4gPiAgICAgIHVpbnQzMl90IHRva2VuX3ByaWNlOwo+ID4gPiA+ID4gPiA+ID4gPiBA
QCAtNDksNyArNTMsNyBAQCBzdHJ1Y3QgUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyUHJpdmF0ZSB7
Cj4gPiA+ID4gPiA+ID4gPiA+ICB0eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2aWNlQ2xpZW50IFJl
ZENoYXJEZXZpY2VDbGllbnQ7Cj4gPiA+ID4gPiA+ID4gPiA+ICBzdHJ1Y3QgUmVkQ2hhckRldmlj
ZUNsaWVudCB7Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgUmVkQ2hhckRldmljZSAqZGV2Owo+ID4g
PiA+ID4gPiA+ID4gPiAtICAgIFJlZENsaWVudCAqY2xpZW50Owo+ID4gPiA+ID4gPiA+ID4gPiAr
ICAgIFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUgKmNsaWVudDsKPiA+ID4gPiA+ID4gPiA+ID4g
ICAgICBpbnQgZG9fZmxvd19jb250cm9sOwo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIHVpbnQ2NF90
IG51bV9jbGllbnRfdG9rZW5zOwo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIHVpbnQ2NF90IG51bV9j
bGllbnRfdG9rZW5zX2ZyZWU7IC8qIGNsaWVudCBtZXNzYWdlcyB0aGF0Cj4gPiA+ID4gPiA+ID4g
PiA+ICAgICAgd2VyZQo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIGNvbnN1bWVkCj4gPiA+ID4gPiA+
ID4gPiA+ICAgICAgYnkgdGhlIGRldmljZSAqLwo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMTA4LDcg
KzExMiw3IEBACj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9yZWFkX29uZV9tc2df
ZnJvbV9kZXZpY2UoUmVkQ2hhckRldmljZQo+ID4gPiA+ID4gPiA+ID4gPiAqZGV2KQo+ID4gPiA+
ID4gPiA+ID4gPiAgc3RhdGljIHZvaWQKPiA+ID4gPiA+ID4gPiA+ID4gIHJlZF9jaGFyX2Rldmlj
ZV9zZW5kX21zZ190b19jbGllbnQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRQaXBlSXRlbSAqbXNnLAo+
ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRD
bGllbnQgKmNsaWVudCkKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgUmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAq
Y2xpZW50KQo+ID4gPiA+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4gPiA+ID4gPiAgICAgUmVkQ2hh
ckRldmljZUNsYXNzICprbGFzcyA9Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICBSRURfQ0hBUl9ERVZJ
Q0VfR0VUX0NMQVNTKGRldik7Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4g
QEAgLTExNyw3ICsxMjEsNyBAQAo+ID4gPiA+ID4gPiA+ID4gPiByZWRfY2hhcl9kZXZpY2Vfc2Vu
ZF9tc2dfdG9fY2xpZW50KFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gPiA+ID4gKmRldiwKPiA+
ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgc3RhdGljIHZvaWQKPiA+ID4gPiA+
ID4gPiA+ID4gIHJlZF9jaGFyX2RldmljZV9zZW5kX3Rva2Vuc190b19jbGllbnQoUmVkQ2hhckRl
dmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+
ID4gPiA+ID4gPiBSZWRDaGFyRGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+ICpj
bGllbnQsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVpbnQzMl90IHRva2VucykKPiA+ID4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4g
PiA+ID4gICAgIFJlZENoYXJEZXZpY2VDbGFzcyAqa2xhc3MgPQo+ID4gPiA+ID4gPiA+ID4gPiAg
ICAgUkVEX0NIQVJfREVWSUNFX0dFVF9DTEFTUyhkZXYpOwo+ID4gPiA+ID4gPiA+ID4gPiBAQCAt
MTQwLDcgKzE0NCw3IEBACj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9vbl9mcmVl
X3NlbGZfdG9rZW4oUmVkQ2hhckRldmljZQo+ID4gPiA+ID4gPiA+ID4gPiAqZGV2KQo+ID4gPiA+
ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICBzdGF0
aWMgdm9pZAo+ID4gPiA+ID4gPiA+ID4gPiAtcmVkX2NoYXJfZGV2aWNlX3JlbW92ZV9jbGllbnQo
UmVkQ2hhckRldmljZSAqZGV2LCBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCkK
PiA+ID4gPiA+ID4gPiA+ID4gK3JlZF9jaGFyX2RldmljZV9yZW1vdmVfY2xpZW50KFJlZENoYXJE
ZXZpY2UgKmRldiwKPiA+ID4gPiA+ID4gPiA+ID4gUmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+
ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50KQo+ID4gPiA+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4g
PiA+ID4gPiAgICAgUmVkQ2hhckRldmljZUNsYXNzICprbGFzcyA9Cj4gPiA+ID4gPiA+ID4gPiA+
ICAgICBSRURfQ0hBUl9ERVZJQ0VfR0VUX0NMQVNTKGRldik7Cj4gPiA+ID4gPiA+ID4gPiA+ICAK
PiA+ID4gPiA+ID4gPiA+ID4gQEAgLTIyMiw3ICsyMjYsNyBAQCBzdGF0aWMgdm9pZAo+ID4gPiA+
ID4gPiA+ID4gPiByZWRfY2hhcl9kZXZpY2VfaGFuZGxlX2NsaWVudF9vdmVyZmxvdyhSZWRDaGFy
RGV2aWNlQ2xpZW50Cj4gPiA+ID4gPiA+ID4gPiA+ICpkZXZfY2xpZQo+ID4gPiA+ID4gPiA+ID4g
PiAgfQo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICBzdGF0aWMgUmVkQ2hh
ckRldmljZUNsaWVudAo+ID4gPiA+ID4gPiA+ID4gPiAgKnJlZF9jaGFyX2RldmljZV9jbGllbnRf
ZmluZChSZWRDaGFyRGV2aWNlCj4gPiA+ID4gPiA+ID4gPiA+ICAqZGV2LAo+ID4gPiA+ID4gPiA+
ID4gPiAtCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENsaWVudAo+ID4gPiA+ID4gPiA+ID4gPiAqY2xp
ZW50KQo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2VD
bGllbnRPcGFxdWUKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCkKPiA+ID4gPiA+ID4gPiA+ID4g
IHsKPiA+ID4gPiA+ID4gPiA+ID4gICAgICBHTGlzdCAqaXRlbTsKPiA+ID4gPiA+ID4gPiA+ID4g
IAo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtNDAwLDcgKzQwNCw3IEBAIHN0YXRpYyB2b2lkCj4gPiA+
ID4gPiA+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3Ji
KFJlZENoYXJEZXZpY2VDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKmRlCj4gPiA+ID4gPiA+ID4g
PiA+ICB9Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gIHZvaWQgcmVkX2No
YXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQoUmVkQ2hhckRldmljZQo+ID4gPiA+
ID4gPiA+ID4gPiAgKmRldiwKPiA+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50Cj4gPiA+ID4gPiA+ID4gPiA+ICpj
bGllbnQsCj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gUmVkQ2hhckRldmlj
ZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50LAo+ID4gPiA+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJf
dAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB0b2tlbnMpCj4gPiA+ID4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ID4gPiA+
ICAgICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKPiA+ID4gPiA+ID4gPiA+ID4g
QEAgLTQxNSw3ICs0MTksNyBAQCB2b2lkCj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFyX2Rldmlj
ZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWRkKFJlZENoYXJEZXZpY2UgKmRldiwKPiA+ID4gPiA+
ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgdm9pZCBy
ZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldChSZWRDaGFyRGV2aWNlCj4g
PiA+ID4gPiA+ID4gPiA+ICAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+
ID4gKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiBSZWRDaGFy
RGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+ICpjbGllbnQsCj4gPiA+ID4gPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVp
bnQzMl90Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRva2VucykKPiA+ID4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4g
PiA+ID4gICAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50Owo+ID4gPiA+ID4gPiA+
ID4gPiBAQCAtNTM0LDcgKzUzOCw3IEBAIHN0YXRpYyB2b2lkCj4gPiA+ID4gPiA+ID4gPiA+IHJl
ZF9jaGFyX2RldmljZV93cml0ZV9yZXRyeSh2b2lkCj4gPiA+ID4gPiA+ID4gPiA+ICpvcGFxdWUp
Cj4gPiA+ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+
ID4gIHN0YXRpYyBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIgKgo+ID4gPiA+ID4gPiA+ID4gPiAt
cmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9nZXQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4g
PiA+ID4gPiA+ID4gPiBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCwKPiA+ID4g
PiA+ID4gPiA+ID4gaW50Cj4gPiA+ID4gPiA+ID4gPiA+IHNpemUsCj4gPiA+ID4gPiA+ID4gPiA+
ICtyZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2dldChSZWRDaGFyRGV2aWNlICpkZXYsCj4g
PiA+ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUgKmNsaWVudCwgaW50IHNp
emUsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBX
cml0ZUJ1ZmZlck9yaWdpbiBvcmlnaW4sCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnQKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG1pZ3JhdGVkX2RhdGFfdG9rZW5zKQo+ID4gPiA+ID4gPiA+ID4g
PiAgewo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIFJlZENoYXJEZXZpY2VXcml0ZUJ1ZmZlciAqcmV0
Owo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtNTk4LDcgKzYwMiw3IEBAIGVycm9yOgo+ID4gPiA+ID4g
PiA+ID4gPiAgfQo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICBSZWRDaGFy
RGV2aWNlV3JpdGVCdWZmZXIKPiA+ID4gPiA+ID4gPiA+ID4gICpyZWRfY2hhcl9kZXZpY2Vfd3Jp
dGVfYnVmZmVyX2dldF9jbGllbnQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4g
PiAtCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENsaWVudAo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50
LAo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2VDbGll
bnRPcGFxdWUKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGludAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSkKPiA+ID4gPiA+ID4g
PiA+ID4gIHsKPiA+ID4gPiA+ID4gPiA+ID4gICAgICBzcGljZV9hc3NlcnQoY2xpZW50KTsKPiA+
ID4gPiA+ID4gPiA+ID4gQEAgLTY1OCw3ICs2NjIsNyBAQCB2b2lkCj4gPiA+ID4gPiA+ID4gPiA+
IHJlZF9jaGFyX2RldmljZV93cml0ZV9idWZmZXJfcmVsZWFzZShSZWRDaGFyRGV2aWNlCj4gPiA+
ID4gPiA+ID4gPiA+ICpkZXYsCj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4g
ICAgICBXcml0ZUJ1ZmZlck9yaWdpbiBidWZfb3JpZ2luID0gd3JpdGVfYnVmLT5wcml2LT5vcmln
aW47Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgdWludDMyX3QgYnVmX3Rva2VuX3ByaWNlID0gd3Jp
dGVfYnVmLT5wcml2LT50b2tlbl9wcmljZTsKPiA+ID4gPiA+ID4gPiA+ID4gLSAgICBSZWRDbGll
bnQgKmNsaWVudCA9IHdyaXRlX2J1Zi0+cHJpdi0+Y2xpZW50Owo+ID4gPiA+ID4gPiA+ID4gPiAr
ICAgIFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUgKmNsaWVudCA9Cj4gPiA+ID4gPiA+ID4gPiA+
IHdyaXRlX2J1Zi0+cHJpdi0+Y2xpZW50Owo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+
ID4gPiA+ICAgICAgaWYgKCFkZXYpIHsKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgZ193YXJu
aW5nKCJubyBkZXZpY2UuIHdyaXRlIGJ1ZmZlciBpcyBmcmVlZCIpOwo+ID4gPiA+ID4gPiA+ID4g
PiBAQCAtNzAzLDExICs3MDcsMTMgQEAgdm9pZAo+ID4gPiA+ID4gPiA+ID4gPiByZWRfY2hhcl9k
ZXZpY2VfZGVzdHJveShSZWRDaGFyRGV2aWNlCj4gPiA+ID4gPiA+ID4gPiA+ICpjaGFyX2RldikK
PiA+ID4gPiA+ID4gPiA+ID4gICAgICBnX29iamVjdF91bnJlZihjaGFyX2Rldik7Cj4gPiA+ID4g
PiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gLXN0YXRp
YyBSZWRDaGFyRGV2aWNlQ2xpZW50Cj4gPiA+ID4gPiA+ID4gPiA+ICpyZWRfY2hhcl9kZXZpY2Vf
Y2xpZW50X25ldyhSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCwKPiA+ID4gPiA+
ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpbnQKPiA+ID4gPiA+ID4gPiA+ID4gZG9fZmxvd19jb250cm9sLAo+ID4gPiA+ID4g
PiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gPiA+IHVpbnQzMl90Cj4gPiA+ID4gPiA+ID4gPiA+IG1h
eF9zZW5kX3F1ZXVlX3NpemUsCj4gPiA+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiA+ID4g
dWludDMyX3QKPiA+ID4gPiA+ID4gPiA+ID4gbnVtX2NsaWVudF90b2tlbnMsCj4gPiA+ID4gPiA+
ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiA+ID4gdWludDMyX3QKPiA+ID4gPiA+ID4gPiA+ID4gbnVt
X3NlbmRfdG9rZW5zKQo+ID4gPiA+ID4gPiA+ID4gPiArc3RhdGljIFJlZENoYXJEZXZpY2VDbGll
bnQgKgo+ID4gPiA+ID4gPiA+ID4gPiArcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXcoUmVkc1N0
YXRlICpyZWRzLAo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
UmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50LAo+ID4g
PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGRvX2Zsb3dfY29u
dHJvbCwKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQz
Ml90IG1heF9zZW5kX3F1ZXVlX3NpemUsCj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICB1aW50MzJfdCBudW1fY2xpZW50X3Rva2VucywKPiA+ID4gPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IG51bV9zZW5kX3Rva2VucykK
PiA+ID4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gPiA+ID4gICAgICBSZWRDaGFyRGV2aWNl
Q2xpZW50ICpkZXZfY2xpZW50Owo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+
IEBAIC03MTcsOCArNzIzLDYgQEAgc3RhdGljIFJlZENoYXJEZXZpY2VDbGllbnQKPiA+ID4gPiA+
ID4gPiA+ID4gKnJlZF9jaGFyX2RldmljZV9jbGllbnRfbmV3KFJlZENsaWVudCAqY2xpZW50LAo+
ID4gPiA+ID4gPiA+ID4gPiAgICAgIGRldl9jbGllbnQtPm1heF9zZW5kX3F1ZXVlX3NpemUgPSBt
YXhfc2VuZF9xdWV1ZV9zaXplOwo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIGRldl9jbGllbnQtPmRv
X2Zsb3dfY29udHJvbCA9IGRvX2Zsb3dfY29udHJvbDsKPiA+ID4gPiA+ID4gPiA+ID4gICAgICBp
ZiAoZG9fZmxvd19jb250cm9sKSB7Cj4gPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgIFJlZHNTdGF0
ZSAqcmVkcyA9IHJlZF9jbGllbnRfZ2V0X3NlcnZlcihjbGllbnQpOwo+ID4gPiA+ID4gPiA+ID4g
PiAtCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgIGRldl9jbGllbnQtPndhaXRfZm9yX3Rva2Vu
c190aW1lciA9Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICByZWRzX2NvcmVfdGltZXJf
YWRkKHJlZHMsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICBkZXZpY2VfY2xpZW50X3dh
aXRfZm9yX3Rva2Vuc190aW1lb3V0LAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkZXZfY2xpZW50KTsKPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTczNiw3
ICs3NDAsNyBAQCBzdGF0aWMgUmVkQ2hhckRldmljZUNsaWVudAo+ID4gPiA+ID4gPiA+ID4gPiAq
cmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXcoUmVkQ2xpZW50ICpjbGllbnQsCj4gPiA+ID4gPiA+
ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gIGJvb2wgcmVk
X2NoYXJfZGV2aWNlX2NsaWVudF9hZGQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwK
PiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2hh
ckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50LAo+ID4gPiA+ID4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgZG9fZmxvd19jb250
cm9sLAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
aW50MzJfdAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBtYXhfc2VuZF9xdWV1ZV9zaXplLAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50MzJfdCBudW1fY2xpZW50X3Rva2VucywKPiA+ID4gPiA+ID4g
PiA+ID4gQEAgLTc1Nyw3ICs3NjEsOSBAQCBib29sCj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFy
X2RldmljZV9jbGllbnRfYWRkKFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gPiA+ID4gKmRldiwK
PiA+ID4gPiA+ID4gPiA+ID4gICAgICBkZXYtPnByaXYtPndhaXRfZm9yX21pZ3JhdGVfZGF0YSA9
Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgd2FpdF9mb3JfbWlncmF0ZV9kYXRhOwo+ID4gPiA+ID4g
PiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgc3BpY2VfZGVidWcoImNoYXIgZGV2aWNl
ICVwLCBjbGllbnQgJXAiLCBkZXYsIGNsaWVudCk7Cj4gPiA+ID4gPiA+ID4gPiA+IC0gICAgZGV2
X2NsaWVudCA9IHJlZF9jaGFyX2RldmljZV9jbGllbnRfbmV3KGNsaWVudCwKPiA+ID4gPiA+ID4g
PiA+ID4gZG9fZmxvd19jb250cm9sLAo+ID4gPiA+ID4gPiA+ID4gPiArICAgIGRldl9jbGllbnQg
PSByZWRfY2hhcl9kZXZpY2VfY2xpZW50X25ldyhkZXYtPnByaXYtPnJlZHMsCj4gPiA+ID4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsaWVu
dCwKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZG9fZmxvd19jb250cm9sLAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXhfc2VuZF9xdWV1ZV9zaXplLAo+ID4g
PiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBudW1fY2xpZW50X3Rva2VucywKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbnVtX3NlbmRfdG9rZW5zKTsKPiA+ID4gPiA+ID4g
PiA+ID4gQEAgLTc2OSw3ICs3NzUsNyBAQCBib29sCj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFy
X2RldmljZV9jbGllbnRfYWRkKFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gPiA+ID4gKmRldiwK
PiA+ID4gPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4g
PiAgdm9pZCByZWRfY2hhcl9kZXZpY2VfY2xpZW50X3JlbW92ZShSZWRDaGFyRGV2aWNlICpkZXYs
Cj4gPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJl
ZENsaWVudCAqY2xpZW50KQo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBSZWRDaGFyRGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+
ICpjbGllbnQpCj4gPiA+ID4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgUmVk
Q2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+
ID4gPiA+ID4gPiBAQCAtNzk2LDcgKzgwMiw3IEBAIHZvaWQKPiA+ID4gPiA+ID4gPiA+ID4gcmVk
X2NoYXJfZGV2aWNlX2NsaWVudF9yZW1vdmUoUmVkQ2hhckRldmljZQo+ID4gPiA+ID4gPiA+ID4g
PiAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4g
PiA+ID4gPiA+ICBpbnQgcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9leGlzdHMoUmVkQ2hhckRldmlj
ZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFJlZENsaWVudCAqY2xpZW50KQo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUKPiA+ID4gPiA+ID4g
PiA+ID4gKmNsaWVudCkKPiA+ID4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gPiA+ID4gICAg
ICByZXR1cm4gKHJlZF9jaGFyX2RldmljZV9jbGllbnRfZmluZChkZXYsIGNsaWVudCkgIT0KPiA+
ID4gPiA+ID4gPiA+ID4gICAgICBOVUxMKTsKPiA+ID4gPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVyL2NoYXIt
ZGV2aWNlLmgKPiA+ID4gPiA+ID4gPiA+ID4gaW5kZXggMzJlZTRmNzhhLi45ZDRjZjlkOTIgMTAw
NjQ0Cj4gPiA+ID4gPiA+ID4gPiA+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4g
PiA+ID4gPiA+ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gPiA+ID4gPiA+IEBA
IC0zOCw2ICszOCwxMCBAQCB0eXBlZGVmIHN0cnVjdCBTcGljZUNoYXJEZXZpY2VTdGF0ZQo+ID4g
PiA+ID4gPiA+ID4gPiBSZWRDaGFyRGV2aWNlOwo+ID4gPiA+ID4gPiA+ID4gPiAgdHlwZWRlZiBz
dHJ1Y3QgUmVkQ2hhckRldmljZUNsYXNzIFJlZENoYXJEZXZpY2VDbGFzczsKPiA+ID4gPiA+ID4g
PiA+ID4gIHR5cGVkZWYgc3RydWN0IFJlZENoYXJEZXZpY2VQcml2YXRlIFJlZENoYXJEZXZpY2VQ
cml2YXRlOwo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICsjaWZuZGVmIFJl
ZENoYXJEZXZpY2VDbGllbnRPcGFxdWUKPiA+ID4gPiA+ID4gPiA+ID4gKyNkZWZpbmUgUmVkQ2hh
ckRldmljZUNsaWVudE9wYXF1ZSBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKyNlbmRpZgo+
ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICAvKiAnU3BpY2VDaGFyRGV2aWNl
U3RhdGUnIG5hbWUgaXMgdXNlZCBmb3IgY29uc2lzdGVuY3kgd2l0aAo+ID4gPiA+ID4gPiA+ID4g
PiAgd2hhdAo+ID4gPiA+ID4gPiA+ID4gPiAgc3BpY2UtY2hhci5oIGV4cG9ydHMgKi8KPiA+ID4g
PiA+ID4gPiA+ID4gIHN0cnVjdCBTcGljZUNoYXJEZXZpY2VTdGF0ZQo+ID4gPiA+ID4gPiA+ID4g
PiAgewo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtNjIsMTIgKzY2LDEyIEBAIHN0cnVjdCBSZWRDaGFy
RGV2aWNlQ2xhc3MKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAvKiBhZnRlciB0aGlzIGNhbGwsIHRo
ZSBtZXNzYWdlIGlzIHVucmVmZXJlbmNlZCAqLwo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIHZvaWQg
KCpzZW5kX21zZ190b19jbGllbnQpKFJlZENoYXJEZXZpY2UgKnNlbGYsCj4gPiA+ID4gPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlwZUl0ZW0gKm1zZywKPiA+
ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQg
KmNsaWVudCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgUmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50KTsK
PiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIC8qIFRoZSBjYiBpcyBj
YWxsZWQgd2hlbiBhIHByZWRlZmluZWQgbnVtYmVyIG9mIHdyaXRlCj4gPiA+ID4gPiA+ID4gPiA+
ICAgICAgYnVmZmVycwo+ID4gPiA+ID4gPiA+ID4gPiAgICAgIHdlcmUKPiA+ID4gPiA+ID4gPiA+
ID4gICAgICBjb25zdW1lZCBieSB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgKiBkZXZpY2Ug
Ki8KPiA+ID4gPiA+ID4gPiA+ID4gICAgICB2b2lkICgqc2VuZF90b2tlbnNfdG9fY2xpZW50KShS
ZWRDaGFyRGV2aWNlICpzZWxmLAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50LAo+ID4gPiA+ID4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUK
PiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMpOwo+ID4gPiA+ID4gPiA+ID4g
PiAgCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgLyogVGhlIGNiIGlzIGNhbGxlZCB3aGVuIGEgc2Vy
dmVyIChzZWxmKSBtZXNzYWdlIHRoYXQKPiA+ID4gPiA+ID4gPiA+ID4gICAgICB3YXMKPiA+ID4g
PiA+ID4gPiA+ID4gICAgICBhZGRyZXNzZWQKPiA+ID4gPiA+ID4gPiA+ID4gICAgICB0bwo+ID4g
PiA+ID4gPiA+ID4gPiAgICAgIHRoZSBkZXZpY2UsCj4gPiA+ID4gPiA+ID4gPiA+IEBAIC03Nyw3
ICs4MSw3IEBAIHN0cnVjdCBSZWRDaGFyRGV2aWNlQ2xhc3MKPiA+ID4gPiA+ID4gPiA+ID4gICAg
ICAvKiBUaGlzIGNiIGlzIGNhbGxlZCBpZiBpdCBpcyByZWNvbW1lbmRlZCB0byByZW1vdmUgdGhl
Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgY2xpZW50Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICog
ZHVlIHRvIHNsb3cgZmxvdyBvciBkdWUgdG8gc29tZSBvdGhlciBlcnJvci4KPiA+ID4gPiA+ID4g
PiA+ID4gICAgICAgKiBUaGUgY2FsbGVkIGluc3RhbmNlIHNob3VsZCBkaXNjb25uZWN0IHRoZSBj
bGllbnQsIG9yCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgIGF0Cj4gPiA+ID4gPiA+ID4gPiA+ICAg
ICAgIGxlYXN0Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiAg
ICAgICBjb3JyZXNwb25kaW5nIGNoYW5uZWwgKi8KPiA+ID4gPiA+ID4gPiA+ID4gLSAgICB2b2lk
ICgqcmVtb3ZlX2NsaWVudCkoUmVkQ2hhckRldmljZSAqc2VsZiwgUmVkQ2xpZW50Cj4gPiA+ID4g
PiA+ID4gPiA+ICpjbGllbnQpOwo+ID4gPiA+ID4gPiA+ID4gPiArICAgIHZvaWQgKCpyZW1vdmVf
Y2xpZW50KShSZWRDaGFyRGV2aWNlICpzZWxmLAo+ID4gPiA+ID4gPiA+ID4gPiBSZWRDaGFyRGV2
aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+ICpjbGllbnQpOwo+ID4gPiA+ID4gPiA+
ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgLyogVGhpcyBjYiBpcyBjYWxsZWQgd2hlbiBk
ZXZpY2UgcmVjZWl2ZXMgYW4gZXZlbnQgKi8KPiA+ID4gPiA+ID4gPiA+ID4gICAgICB2b2lkICgq
cG9ydF9ldmVudCkoUmVkQ2hhckRldmljZSAqc2VsZiwgdWludDhfdCBldmVudCk7Cj4gPiA+ID4g
PiA+ID4gPiA+IEBAIC0xODgsNyArMTkyLDcgQEAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXQo
UmVkQ2hhckRldmljZQo+ID4gPiA+ID4gPiA+ID4gPiAqZGV2KTsKPiA+ID4gPiA+ID4gPiA+ID4g
IC8qIG1heF9zZW5kX3F1ZXVlX3NpemUgPSBob3cgbWFueSBtZXNzYWdlcyB3ZSBjYW4gcmVhZCBm
cm9tCj4gPiA+ID4gPiA+ID4gPiA+ICB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gIGRldmljZQo+ID4g
PiA+ID4gPiA+ID4gPiAgYW5kCj4gPiA+ID4gPiA+ID4gPiA+ICBlbnF1ZXVlIGZvciB0aGlzIGNs
aWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gICAqIHdoZW4gd2UgaGF2ZSB0b2tlbnMgZm9yIG90aGVy
IGNsaWVudHMgYW5kIG5vIHRva2VucyBmb3IKPiA+ID4gPiA+ID4gPiA+ID4gICB0aGlzCj4gPiA+
ID4gPiA+ID4gPiA+ICAgb25lCj4gPiA+ID4gPiA+ID4gPiA+ICAgKi8KPiA+ID4gPiA+ID4gPiA+
ID4gIGJvb2wgcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9hZGQoUmVkQ2hhckRldmljZSAqZGV2LAo+
ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGll
bnQgKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUmVkQ2hhckRldmljZUNsaWVudE9wYXF1ZQo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50
LAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQg
ZG9fZmxvd19jb250cm9sLAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1aW50MzJfdAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBtYXhfc2VuZF9xdWV1ZV9zaXplLAo+ID4gPiA+ID4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCBudW1fY2xpZW50X3Rva2VucywK
PiA+ID4gPiA+ID4gPiA+ID4gQEAgLTE5Niw5ICsyMDAsOSBAQCBib29sCj4gPiA+ID4gPiA+ID4g
PiA+IHJlZF9jaGFyX2RldmljZV9jbGllbnRfYWRkKFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4g
PiA+ID4gKmRldiwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50IHdhaXRfZm9yX21pZ3JhdGVfZGF0YSk7Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+
ID4gPiA+ID4gPiA+ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9yZW1vdmUoUmVkQ2hh
ckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUKPiA+
ID4gPiA+ID4gPiA+ID4gKmNsaWVudCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICBpbnQgcmVkX2NoYXJf
ZGV2aWNlX2NsaWVudF9leGlzdHMoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50KTsK
PiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRD
aGFyRGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+ICpjbGllbnQpOwo+ID4gPiA+
ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICB2b2lkIHJlZF9jaGFyX2RldmljZV9zdGFy
dChSZWRDaGFyRGV2aWNlICpkZXYpOwo+ID4gPiA+ID4gPiA+ID4gPiAgdm9pZCByZWRfY2hhcl9k
ZXZpY2Vfc3RvcChSZWRDaGFyRGV2aWNlICpkZXYpOwo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMjA5
LDE3ICsyMTMsMTcgQEAgU3BpY2VTZXJ2ZXIqCj4gPiA+ID4gPiA+ID4gPiA+IHJlZF9jaGFyX2Rl
dmljZV9nZXRfc2VydmVyKFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gPiA+ID4gKmRldik7Cj4g
PiA+ID4gPiA+ID4gPiA+ICB2b2lkIHJlZF9jaGFyX2RldmljZV93YWtldXAoUmVkQ2hhckRldmlj
ZSAqZGV2KTsKPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgdm9pZCByZWRf
Y2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2FkZChSZWRDaGFyRGV2aWNlCj4gPiA+
ID4gPiA+ID4gPiA+ICAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4g
KmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiBSZWRDaGFyRGV2
aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4gPiA+ID4gPiA+ICpjbGllbnQsCj4gPiA+ID4gPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQz
Ml90Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHRva2Vucyk7Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+
ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgdm9pZCByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGll
bnRfdG9rZW5zX3NldChSZWRDaGFyRGV2aWNlCj4gPiA+ID4gPiA+ID4gPiA+ICAqZGV2LAo+ID4g
PiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBSZWRDbGllbnQKPiA+ID4gPiA+ID4gPiA+ID4gKmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiBSZWRDaGFyRGV2aWNlQ2xpZW50T3BhcXVlCj4gPiA+ID4g
PiA+ID4gPiA+ICpjbGllbnQsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90Cj4gPiA+ID4gPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRva2Vucyk7Cj4g
PiA+ID4gPiA+ID4gPiA+ICAvKiogV3JpdGUgdG8gZGV2aWNlICoqLwo+ID4gPiA+ID4gPiA+ID4g
PiAgCj4gPiA+ID4gPiA+ID4gPiA+ICBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIKPiA+ID4gPiA+
ID4gPiA+ID4gICpyZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2dldF9jbGllbnQoUmVkQ2hh
ckRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gPiA+IFJlZENs
aWVudAo+ID4gPiA+ID4gPiA+ID4gPiAqY2xpZW50LAo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ID4gPiA+IFJlZENoYXJEZXZpY2VDbGllbnRPcGFxdWUKPiA+ID4gPiA+ID4gPiA+ID4g
KmNsaWVudCwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludAo+ID4gPiA+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc2l6ZSk7Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4g
IC8qIFJldHVybnMgTlVMTCBpZiB1c2VfdG9rZW4gPT0gdHJ1ZSBhbmQgbm8gdG9rZW5zIGFyZQo+
ID4gPiA+ID4gPiA+ID4gPiAgYXZhaWxhYmxlCj4gPiA+ID4gPiA+ID4gPiA+ICAqLwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
