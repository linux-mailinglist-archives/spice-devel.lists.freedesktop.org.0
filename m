Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C7CE59F
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 16:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2346E061;
	Mon,  7 Oct 2019 14:46:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5AD96E061
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 14:46:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67D0480F79
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 14:46:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F3691001B11
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 14:46:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 573C718089DC;
 Mon,  7 Oct 2019 14:46:34 +0000 (UTC)
Date: Mon, 7 Oct 2019 10:46:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <140780214.5806799.1570459594056.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191007130735.sc36pirys43x5voi@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007130735.sc36pirys43x5voi@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.19]
Thread-Topic: proto: Demarshal Smartcard data field
Thread-Index: nPrS2JRR7UmrBYH0C1dOZKyF5+d9qw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 07 Oct 2019 14:46:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] proto: Demarshal Smartcard
 data field
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

PiAKPiBIaSwKPiAKPiBPbiBNb24sIE9jdCAwNywgMjAxOSBhdCAxMTozODo1OEFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBDdXJyZW50bHkgdGhlIGRlbWFyc2hhbGVyIGNvZGUg
aXMgbm90IHVzZWQgYnkgc3BpY2Utc2VydmVyLgo+ID4gRGVtYXJzaGFsIGFsbCB0aGUgZmllbGRz
IG9mIHRoZSBoZWFkZXIgbWVzc2FnZSwgbm90IG9ubHkgdGhlIGhlYWRlci4KPiA+IFVzaW5nIGdl
bmVyYXRlZCBjb2RlIGFsbG93cyB0byBlYXNpbHkgY2hlY2sgZGF0YSBhbmQgc3VwcG9ydAo+ID4g
YmlnIGVuZGlhbiBtYWNoaW5lcy4gR2VuZXJhdGVkIGNvZGUgd2lsbCBiZSB1c2VkIGJ5IHNwaWNl
LXNlcnZlci4KPiA+IAo+ID4gVGhlIHJlc3VsdGluZyBjaGFuZ2UgaXMuCj4gPiAKPiA+ICAgIGRp
ZmYgLXJ1IGdlbi9nZW5lcmF0ZWRfY2xpZW50X21hcnNoYWxsZXJzLmMKPiA+ICAgIGNvbW1vbi9n
ZW5lcmF0ZWRfY2xpZW50X21hcnNoYWxsZXJzLmMKPiA+ICAgICAtLS0gZ2VuL2dlbmVyYXRlZF9j
bGllbnRfbWFyc2hhbGxlcnMuYyAgICAgIDIwMTktMTAtMDUKPiA+ICAgICAyMDo0NDo1NC4wMDAw
MDAwMDAgKzAxMDAKPiA+ICAgICArKysgY29tbW9uL2dlbmVyYXRlZF9jbGllbnRfbWFyc2hhbGxl
cnMuYyAgIDIwMTktMTAtMDUKPiA+ICAgICAyMDo0NTozMy4wMDAwMDAwMDAgKzAxMDAKPiA+ICAg
ICBAQCAtMjgzLDYgKzI4Myw3IEBACj4gPiAgICAgICAgICBzcGljZV9tYXJzaGFsbGVyX2FkZF91
aW50MzIobSwgc3JjLT50eXBlKTsKPiA+ICAgICAgICAgIHNwaWNlX21hcnNoYWxsZXJfYWRkX3Vp
bnQzMihtLCBzcmMtPnJlYWRlcl9pZCk7Cj4gPiAgICAgICAgICBzcGljZV9tYXJzaGFsbGVyX2Fk
ZF91aW50MzIobSwgc3JjLT5sZW5ndGgpOwo+ID4gICAgICsgICAgLyogRG9uJ3QgbWFyc2hhbGwg
QG5vbWFyc2hhbCBkYXRhICovCj4gPiAgICAgIH0KPiA+IAo+ID4gICAgICAjZW5kaWYgLyogVVNF
X1NNQVJUQ0FSRCAqLwo+ID4gICAgIGRpZmYgLXJ1IGdlbi9nZW5lcmF0ZWRfc2VydmVyX2RlbWFy
c2hhbGxlcnMuYwo+ID4gICAgIGNvbW1vbi9nZW5lcmF0ZWRfc2VydmVyX2RlbWFyc2hhbGxlcnMu
Ywo+ID4gICAgIC0tLSBnZW4vZ2VuZXJhdGVkX3NlcnZlcl9kZW1hcnNoYWxsZXJzLmMgICAgMjAx
OS0xMC0wNQo+ID4gICAgIDIwOjQ0OjU0LjAwMDAwMDAwMCArMDEwMAo+ID4gICAgICsrKyBjb21t
b24vZ2VuZXJhdGVkX3NlcnZlcl9kZW1hcnNoYWxsZXJzLmMgMjAxOS0xMC0wNQo+ID4gICAgIDIw
OjQ1OjMzLjAwMDAwMDAwMCArMDEwMAo+ID4gICAgIEBAIC0xNDUxLDEwICsxNDUxLDI1IEBACj4g
PiAgICAgICAgICB1aW50NjRfdCBud19zaXplOwo+ID4gICAgICAgICAgdWludDY0X3QgbWVtX3Np
emU7Cj4gPiAgICAgICAgICB1aW50OF90ICppbiwgKmVuZDsKPiA+ICAgICArICAgIHVpbnQ2NF90
IGRhdGFfX253X3NpemUsIGRhdGFfX21lbV9zaXplOwo+ID4gICAgICsgICAgdWludDY0X3QgZGF0
YV9fbmVsZW1lbnRzOwo+ID4gICAgICAgICAgVlNDTXNnSGVhZGVyICpvdXQ7Cj4gPiAKPiA+ICAg
ICAtICAgIG53X3NpemUgPSAxMjsKPiA+ICAgICAtICAgIG1lbV9zaXplID0gc2l6ZW9mKFZTQ01z
Z0hlYWRlcik7Cj4gPiAgICAgKyAgICB7IC8qIGRhdGEgKi8KPiA+ICAgICArICAgICAgICB1aW50
MzJfdCBsZW5ndGhfX3ZhbHVlOwo+ID4gICAgICsgICAgICAgIHBvcyA9IHN0YXJ0ICsgODsKPiA+
ICAgICArICAgICAgICBpZiAoU1BJQ0VfVU5MSUtFTFkocG9zICsgNCA+IG1lc3NhZ2VfZW5kKSkg
ewo+ID4gICAgICsgICAgICAgICAgICBnb3RvIGVycm9yOwo+ID4gICAgICsgICAgICAgIH0KPiA+
ICAgICArICAgICAgICBsZW5ndGhfX3ZhbHVlID0gcmVhZF91aW50MzIocG9zKTsKPiA+ICAgICAr
ICAgICAgICBkYXRhX19uZWxlbWVudHMgPSBsZW5ndGhfX3ZhbHVlOwo+ID4gICAgICsKPiA+ICAg
ICArICAgICAgICBkYXRhX19ud19zaXplID0gZGF0YV9fbmVsZW1lbnRzOwo+ID4gICAgICsgICAg
ICAgIGRhdGFfX21lbV9zaXplID0gc2l6ZW9mKHVpbnQ4X3QpICogZGF0YV9fbmVsZW1lbnRzOwo+
ID4gICAgICsgICAgfQo+ID4gICAgICsKPiA+ICAgICArICAgIG53X3NpemUgPSAxMiArIGRhdGFf
X253X3NpemU7Cj4gPiAgICAgKyAgICBtZW1fc2l6ZSA9IHNpemVvZihWU0NNc2dIZWFkZXIpICsg
ZGF0YV9fbWVtX3NpemU7Cj4gPiAKPiA+ICAgICAgICAgIC8qIENoZWNrIGlmIG1lc3NhZ2UgZml0
cyBpbiByZXBvcnRlZCBzaWRlICovCj4gPiAgICAgICAgICBpZiAobndfc2l6ZSA+ICh1aW50cHRy
X3QpIChtZXNzYWdlX2VuZCAtIHN0YXJ0KSkgewo+ID4gICAgIEBAIC0xNDc0LDYgKzE0ODksMTAg
QEAKPiA+ICAgICAgICAgIG91dC0+dHlwZSA9IGNvbnN1bWVfdWludDMyKCZpbik7Cj4gPiAgICAg
ICAgICBvdXQtPnJlYWRlcl9pZCA9IGNvbnN1bWVfdWludDMyKCZpbik7Cj4gPiAgICAgICAgICBv
dXQtPmxlbmd0aCA9IGNvbnN1bWVfdWludDMyKCZpbik7Cj4gPiAgICAgKyAgICB2ZXJpZnkoc2l6
ZW9mKG91dC0+ZGF0YSkgPT0gMCk7Cj4gPiAgICAgKyAgICBtZW1jcHkob3V0LT5kYXRhLCBpbiwg
ZGF0YV9fbmVsZW1lbnRzKTsKPiA+ICAgICArICAgIGluICs9IGRhdGFfX25lbGVtZW50czsKPiA+
ICAgICArICAgIGVuZCArPSBkYXRhX19uZWxlbWVudHM7Cj4gPiAKPiA+ICAgICAgICAgIGFzc2Vy
dChpbiA8PSBtZXNzYWdlX2VuZCk7Cj4gPiAgICAgICAgICBhc3NlcnQoZW5kIDw9IGRhdGEgKyBt
ZW1fc2l6ZSk7Cj4gPiAKPiA+IFRoZSBAbm9tYXJzaGFsIGF0dHJpYnV0ZSBhbGxvd3MgdG8gbm90
IGNoYW5nZSB0aGUgbWFyc2hhbGluZyBjb2RlCj4gPiAodXNlZCBieSBzcGljZS1ndGspLgo+IAo+
IEFoLCBJIHdhcyB0aGlua2luZyBhYm91dCB0aGF0IGZvciBhIGJpdC4gVGhhdCdzIGludGVyZXN0
aW5nIGNhc2UuCj4gV2UgZG8gaGF2ZSBkYXRhIGJlaW5nIHNlbnQgYnV0IG5vdCBkZXNjcmliZWQg
aW4gdGhlIHNwaWNlLnByb3RvCj4gZmlsZS4gRnJvbSBwcm90b2NvbCBwb2ludCBvZiB2aWV3LCBJ
IGZvdW5kIHRoYXQgdmVyeSB3ZWlyZC4gSXMKPiBpdD8gKGhvbmVzdCBxdWVzdGlvbikKPiAKClRo
ZXJlIGFyZSBxdWl0ZSBhIGxvdCBvZiBvZGRpdGllcyBpbiB0aGUgU21hcnRjYXJkIHNwZWNpZmlj
YWxseToKLSBzZXJ2ZXIgZG9lcyBub3QgdXNlIHBhcnNlciAocmVtb3ZlZCBieSBuZXh0IHNlcmll
cykKLSBtdWx0aXBsZSBtZXNzYWdlcyB3aXRoIHNhbWUgaWRzIChyZW1vdmVkLCBzdGlsbCBpbiBj
b21tZW50cykKLSBzdHJ1Y3R1cmVzIGZyb20gZXh0ZXJuYWwgaGVhZGVyKHMpIHVzZWQgKGluc3Rl
YWQgb2YganVzdCBzcGljZSkKCkl0J3Mgd2VpcmQsIHNvbWUgb2YgIkBub21hcnNoYWwiIGFyZSB1
c2VkIGZvciBlbmRpbmcgYXJyYXlzIHRvCmF2b2lkIGEgcG90ZW50aWFsIGV4dHJhIGNvcHkuIEJ1
dCBhdCBsZWFzdCBAbm9tYXJzaGFsIGZpZWxkcwphcmUgaW4gdGhlIHByb3RvY29sLgoKSXQncyBh
Y3R1YWxseSBhIGJpdCB1bmNvbW1vbiB0aGF0IHRoZSAucHJvdG8gZmlsZXMgY29udGFpbnMgc29t
ZQpkZXRhaWxzIG9mIHRoZSBzcGVjaWZpYyBjbGllbnQvc2VydmVyIGltcGxlbWVudGF0aW9ucy4K
CkJ1dCBzdXJlbHkgd291bGQgYmUgbmljZSBpZiB0aGUgcHJvdG9jb2wgbWVzc2FnZXMgZGVzY3Jp
YmUgdGhlCmZ1bGwgbWVzc2FnZSB3aXRoIGF0IGxlYXN0IHNvbWUgcmF3IGRhdGEgaXMgdGhlIGVt
YmVkZGVkIGRhdGEKYXJlICJleHRlcm5hbCIgKGNvbWluZyBmcm9tIG90aGVyIHN0cnVjdHVyZXMg
b3IgbWFyc2hhbGxlcnMKZm9yIGluc3RhbmNlKS4KCkl0J3MgYWxzbyBvZGQgdGhhdCB0aGUgbmV0
d29yayBzdHJ1Y3R1cmVzIGFyZSBsaXR0bGUgZW5kaWFuCmJ1dCB0aGUgZGV2aWNlIG9uZXMgYXJl
IGJpZyBlbmRpYW4gKHNvIHlvdSBuZWVkIHRvIHJldmVydAptb3ZpbmcgZnJvbSBjaGFubmVsIHRv
IGRldmljZSBhbmQgdmljZSB2ZXJzYSkuCgpBYm91dCB0aGUgdGVzdCBzZWUgcGF0Y2ggMi84LiBJ
dCdzIHN1cmVseSBub3QgZnVsbCBidXQgaXQncwp0ZXN0aW5nIHRoaXMgcGF0aC4KCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBQYXRj
aCBzZWVtcyBmaW5lLCBJJ3ZlIGFza2VkIGJlZm9yZSBlbHNld2hlcmUgYnV0IEknZCBsb3ZlIHRv
Cj4gaGF2ZSBhIHNpbXBsZSB3YXkgdG8gdGVzdCBzbWFydGNhcmQgaWYgdGhhdCBleGlzdHMhCj4g
Cj4gPiAtLS0KPiA+ICBzcGljZS5wcm90byB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3BpY2UucHJvdG8gYi9zcGljZS5wcm90
bwo+ID4gaW5kZXggMzRiYTNjOC4uNjE2Yjk2MCAxMDA2NDQKPiA+IC0tLSBhL3NwaWNlLnByb3Rv
Cj4gPiArKysgYi9zcGljZS5wcm90bwo+ID4gQEAgLTEzMDUsNiArMTMwNSw3IEBAIGNoYW5uZWwg
U21hcnRjYXJkQ2hhbm5lbCA6IEJhc2VDaGFubmVsIHsKPiA+ICAgICAgICAgIHZzY19tZXNzYWdl
X3R5cGUgdHlwZTsKPiA+ICAgICAgICAgIHVpbnQzMiByZWFkZXJfaWQ7Cj4gPiAgICAgICAgICB1
aW50MzIgbGVuZ3RoOwo+ID4gKyAgICAgICAgdWludDggZGF0YVtsZW5ndGhdIEBlbmQgQG5vbWFy
c2hhbDsKPiAKPiBUaGlzIHRydWx5IHNlZW1zIGxpa2UgYSBwcm90b2NvbCBmaXggdG8gbWUuCj4g
Cj4gQ2hlZXJzLAo+IAo+ID4gICAgICB9IEBjdHlwZShWU0NNc2dIZWFkZXIpIGhlYWRlciA9IDEw
MTsKPiA+ICAvKiBTZWUgY29tbWVudCBvbiBjbGllbnQgZGF0YSBtZXNzYWdlIGFib3ZlICovCj4g
PiAgLyoKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
