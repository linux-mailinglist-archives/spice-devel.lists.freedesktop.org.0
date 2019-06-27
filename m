Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 914A057F8E
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071216E1B2;
	Thu, 27 Jun 2019 09:46:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B796E175
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:46:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F188E3082231
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:46:01 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D5915D9E2;
 Thu, 27 Jun 2019 09:46:00 +0000 (UTC)
To: Kevin Pouget <kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
 <20190627083149.23283-2-kpouget@redhat.com>
 <1778342961.24949689.1561624831035.JavaMail.zimbra@redhat.com>
 <7ca551b0-09bc-c942-799a-17fc257a1480@redhat.com>
 <CADJ1XR3ACe_dF1UrcVT9abYonj7LP5uhCPdpj6fi3bnvbnYfAg@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <747484b7-53f7-5f73-ca08-be272c961877@redhat.com>
Date: Thu, 27 Jun 2019 12:45:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CADJ1XR3ACe_dF1UrcVT9abYonj7LP5uhCPdpj6fi3bnvbnYfAg@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 27 Jun 2019 09:46:02 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-server 1/2] streaming: Restart streams
 on video-codec changes
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
Reply-To: uril@redhat.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yNy8xOSAxMjoxOSBQTSwgS2V2aW4gUG91Z2V0IHdyb3RlOgo+IEhlbGxvIFVyaSwKPiAK
PiBPbiBUaHUsIEp1biAyNywgMjAxOSBhdCAxMTowNCBBTSBVcmkgTHVibGluIDx1cmlsQHJlZGhh
dC5jb20+IHdyb3RlOgo+Pgo+PiBPbiA2LzI3LzE5IDExOjQwIEFNLCBGcmVkaWFubyBaaWdsaW8g
d3JvdGU6Cj4+Pj4KPj4+PiBJbnRlcnJ1cHQvcmVzdGFydCB0aGUgdmlkZW8gc3RyZWFtcyB3aGVu
IHRoZSB1c2VyIGNoYW5nZXMgdGhlCj4+Pj4gcHJlZmVycmVkIHZpZGVvLWNvZGVjcyAoZGNjX2hh
bmRsZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZSkgb3Igd2hlbgo+Pj4+IHRoZSBob3N0IGFk
bWluIHVwZGF0ZXMgdGhlIGxpc3Qgb2YgdmlkZW8tY29kZWNzIGFsbG93ZWQKPj4+PiAoZGlzcGxh
eV9jaGFubmVsX3NldF92aWRlb19jb2RlY3MpCj4+Cj4+IEhpLAo+Pgo+PiBUaGlzIHBhdGNoIG9u
bHkgc3RvcHMgdGhlIHZpZGVvIHN0cmVhbS4KPj4gQSBuZXcgc3RyZWFtIHdpbGwgYmUgc3RhcnRl
ZCBhdXRvbWF0aWNhbGx5IGFjY29yZGluZyB0byBzcGljZSBydWxlcwo+PiAodmlkZW8tc3RyZWFt
IGRldGVjdGlvbikuCj4gCj4gaW5kZWVkLCBJIHdhc24ndCBzdXJlIGFib3V0IHRoZSB3b3JkaW5n
LCBiZWNhdXNlIHRoZSBwdXJwb3NlIG9mIHRoZQo+IHBhdGNoIGlzIHRvIHRyaWdnZXIgYSBzdHJl
YW0gcmVzdGFydCwgaXQncyBub3QgdG8gc3RvcCBpdCwgc28gSSBkb24ndAo+IGtub3cgd2hpY2gg
d29yZCB0byBwdXQgaW4gdGhlIGNvbW1pdCB0aXRsZSEgKEknbGwgYWRkIHlvdXIgc2VudGVuY2Ug
aW4KPiB0aGUgYm9keSBhbnl3YXkgdG8gY2xhcmlmeSkKClllcywgdGhlIHRpdGxlIGlzIGdvb2Qg
LS0gaXQgc3RhdGVzIHRoZSBwdXJwb3NlIG9mIHRoaXMgcGF0Y2guClRoYW5rcyBmb3IgYWRkaW5n
IHRoZSBhZGRpdGlvbmFsIHNlbnRlbmNlIHRvIHRoZSBib2R5LgoKVXJpLgoKPiAKPj4+PiAtLS0K
Pj4+PiAgICBzZXJ2ZXIvZGNjLmMgICAgICAgICAgICAgfCAyICsrCj4+Pj4gICAgc2VydmVyL2Rp
c3BsYXktY2hhbm5lbC5jIHwgMiArKwo+Pj4+ICAgIHNlcnZlci92aWRlby1zdHJlYW0uYyAgICB8
IDUgKysrKysKPj4+PiAgICAzIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+
Pj4gZGlmZiAtLWdpdCBhL3NlcnZlci9kY2MuYyBiL3NlcnZlci9kY2MuYwo+Pj4+IGluZGV4IGE5
NGUyN2U4Li4wZGVlZWQ4OCAxMDA2NDQKPj4+PiAtLS0gYS9zZXJ2ZXIvZGNjLmMKPj4+PiArKysg
Yi9zZXJ2ZXIvZGNjLmMKPj4+PiBAQCAtMTIwMSw2ICsxMjAxLDggQEAgc3RhdGljIGludAo+Pj4+
IGRjY19oYW5kbGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUoRGlzcGxheUNoYW5uZWxDbGll
bnQgKmRjYywKPj4+Pgo+Pj4+ICAgICAgICAvKiBOZXcgY2xpZW50IHByZWZlcmVuY2UgKi8KPj4+
PiAgICAgICAgZGNjX3VwZGF0ZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNzKGRjYyk7Cj4+Pj4gKyAg
ICB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERDQ19UT19EQyhkY2MpKTsKPj4+PiArCj4+
Pj4gICAgICAgIHJldHVybiBUUlVFOwo+Pj4+ICAgIH0KPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPj4+PiBp
bmRleCAwNzFjMDE0MC4uNGI4ZTZlOTAgMTAwNjQ0Cj4+Pj4gLS0tIGEvc2VydmVyL2Rpc3BsYXkt
Y2hhbm5lbC5jCj4+Pj4gKysrIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4+Pj4gQEAgLTI1
NSw2ICsyNTUsOCBAQCB2b2lkIGRpc3BsYXlfY2hhbm5lbF9zZXRfdmlkZW9fY29kZWNzKERpc3Bs
YXlDaGFubmVsCj4+Pj4gKmRpc3BsYXksIEdBcnJheSAqdmlkZW9fY29kCj4+Pj4gICAgICAgIGdf
Y2xlYXJfcG9pbnRlcigmZGlzcGxheS0+cHJpdi0+dmlkZW9fY29kZWNzLCBnX2FycmF5X3VucmVm
KTsKPj4+PiAgICAgICAgZGlzcGxheS0+cHJpdi0+dmlkZW9fY29kZWNzID0gZ19hcnJheV9yZWYo
dmlkZW9fY29kZWNzKTsKPj4+PiAgICAgICAgZ19vYmplY3Rfbm90aWZ5KEdfT0JKRUNUKGRpc3Bs
YXkpLCAidmlkZW8tY29kZWNzIik7Cj4+Pj4gKwo+Pj4+ICsgICAgdmlkZW9fc3RyZWFtX2RldGFj
aF9hbmRfc3RvcChkaXNwbGF5KTsKPj4+PiAgICB9Cj4+Pj4KPj4+PiAgICBHQXJyYXkgKmRpc3Bs
YXlfY2hhbm5lbF9nZXRfdmlkZW9fY29kZWNzKERpc3BsYXlDaGFubmVsICpkaXNwbGF5KQo+Pj4+
IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFt
LmMKPj4+PiBpbmRleCA0YWMyNWFmOC4uZjIyNzcxM2IgMTAwNjQ0Cj4+Pj4gLS0tIGEvc2VydmVy
L3ZpZGVvLXN0cmVhbS5jCj4+Pj4gKysrIGIvc2VydmVyL3ZpZGVvLXN0cmVhbS5jCj4+Pj4gQEAg
LTkyNSw2ICs5MjUsMTEgQEAgdm9pZCB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERpc3Bs
YXlDaGFubmVsCj4+Pj4gKmRpc3BsYXkpCj4+Pj4gICAgICAgIFJpbmdJdGVtICpzdHJlYW1faXRl
bTsKPj4+Pgo+Pj4+ICAgICAgICBzcGljZV9kZWJ1ZygidHJhY2UiKTsKPj4+PiArCj4+Pj4gKyAg
ICBpZiAoIXJpbmdfaXNfaW5pdGlhbGl6ZWQoJmRpc3BsYXktPnByaXYtPnN0cmVhbXMpKSB7Cj4+
Pj4gKyAgICAgICAgcmV0dXJuOwo+Pj4+ICsgICAgfQo+Pj4+ICsKPj4+Cj4+PiBJZiB0aGlzIGhh
cHBlbnMgSSB3b3VsZCBjb25zaWRlciBhIHByb2dyYW0gZXJyb3IgYW5kIEkgd291bGQgYWJvcnQo
KS4KPj4+Cj4+Pj4gICAgICAgIHdoaWxlICgoc3RyZWFtX2l0ZW0gPSByaW5nX2dldF9oZWFkKCZk
aXNwbGF5LT5wcml2LT5zdHJlYW1zKSkpIHsKPj4KPj4gV2hlbiB0aGUgcmluZyBpcyBlbXB0eSwg
cmluZ19nZXRfaGVhZCByZXR1cm5zIE5VTEwsIGFuZCB0aGUKPj4gd2hpbGUgbG9vcCBleGl0cyBp
bW1lZGlhdGVseS4gU28gdGhpcyBjYXNlIGlzIGFscmVhZHkgY292ZXJlZC4KPj4gKEl0IGFsc28g
YWJvcnRzIChzcGljZV9hc3NlcnQpIGlmIHRoZSB0aGUgcmluZyBpcyAibm90IGluaXRpYWxpemVk
IikKPiAKPiB5ZXMsIGl0IHdhcyBhIGJ1ZyB0aGF0IHRoZSBzdHJlYW0gd2FzIHVuaW5pdGlhbGl6
ZWQgYXQgdGhpcyBzdGFnZTsKPiBoZW5jZSByaW5nX2lzX2VtcHR5IHdhcyBhYm9ydGluZyB0aGUg
ZXhlY3V0aW9uCj4gCj4gSSB3aWxsIGxldCB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wIHVu
dG91Y2hlZAo+IAo+IAo+IHRoYW5rcywKPiAKPiBLZXZpbgo+IAo+Pj4+ICAgICAgICAgICAgVmlk
ZW9TdHJlYW0gKnN0cmVhbSA9IFNQSUNFX0NPTlRBSU5FUk9GKHN0cmVhbV9pdGVtLCBWaWRlb1N0
cmVhbSwKPj4+PiAgICAgICAgICAgIGxpbmspOwo+Pj4+Cj4+Pgo+Pj4gRnJlZGlhbm8KPj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKPj4+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbAo+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
