Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687B9A6A7C
	for <lists+spice-devel@lfdr.de>; Tue,  3 Sep 2019 15:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3087892DC;
	Tue,  3 Sep 2019 13:54:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0496892DC
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 13:54:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 88A87107DD01
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 13:54:02 +0000 (UTC)
Received: from lub.tlv (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BE62C6012A;
 Tue,  3 Sep 2019 13:54:01 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com>
 <2d4fe923-43e3-ee91-1ebf-f1d815e14f4a@redhat.com>
 <1987497362.10440756.1567512516505.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <77797fa3-02a3-277d-420b-c6282dff328f@redhat.com>
Date: Tue, 3 Sep 2019 16:54:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1987497362.10440756.1567512516505.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Tue, 03 Sep 2019 13:54:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 24/29] usb-backend: Rewrite
 USB emulation support
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

T24gOS8zLzE5IDM6MDggUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gSGksCj4+Cj4+
IE9uIDgvMjcvMTkgMTI6MjIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+IE1ha2UgaW5p
dGlhbGlzYXRpb24gZWFzaWVyLgo+Pj4gQWx3YXlzIGluaXRpYWxpc2UgcGFyc2VyLgo+Pj4gSW5p
dGlhbGlzZSBib3RoIHBhcnNlciBhbmQgaG9zdCBkdXJpbmcgc3BpY2VfdXNiX2JhY2tlbmRfY2hh
bm5lbF9uZXcuCj4+PiBTdXBwb3J0IG5vdCBoYXZpbmcgbGlidXNiIGNvbnRleHQgKG5vIHBoeXNp
Y2FsIGRldmljZXMpLgo+Pj4gQXZvaWRzIHRvbyBtdWNoIHN0YXRlIHZhcmlhYmxlcy4KPj4+IHBh
cnNlciBpcyBhbHdheXMgaW5pdGlhbGlzZWQgYWZ0ZXIgY3JlYXRpb24gbWFraW5nIHN1cmUgdGhl
IHN0YXRlCj4+PiBpcyBjb25zaXN0ZW50Lgo+Pgo+PiBJZiB1c2JyZWRpcmhvc3QgaXMgdXNlZCwg
d2h5IGlzIHRoZXJlIGEgbmVlZCBmb3IgYSBwYXJzZXIgdG9vID8KPj4gQWxzbyBiZWxvdyBpbiBp
bml0aWFsaXplX3BhcnNlciB0aGVyZSBpcyBhIGNoZWNrIHRoYXQKPj4gY2gtPnVzYnJlZGlyaG9z
dCBpcyBOVUxMIChwb3NzaWJseSBiZWNhdXNlIHRoZSBwYXJzZXIgaXMgYWx3YXlzCj4+IGJlaW5n
IGluaXRpYWxpemVkIGJlZm9yZSB0aGUgaG9zdCkuCj4+Cj4gCj4gRm9yIGEgbGFyZ2VyIGV4cGxh
bmF0aW9uIHNlZSBmb3JtZXIgcGF0Y2ggZnJvbSBZdXJpLgo+IEZvciBhIHNob3J0ZXIgdG8gcGFy
c2UgZGF0YSBkaXJlY3RlZCB0byBlbXVsYXRlZCBkZXZpY2VzLgo+IFNvIGhvc3QgZGV2aWNlcyAo
cGh5c2ljYWwpIHRocm91Z2ggdXNicmVkaXJob3N0LCBlbXVsYXRlZCBkZXZpY2VzCj4gdGhyb3Vn
aCB1c2JwYXJzZXIuCgpUaGUgY29tbWl0IGxvZyBpcyBzYXlpbmcgdGhlIHBhcnNlciBpcyBhbHdh
eXMgYmVpbmcgaW5pdGlhbGl6ZWQuCkknbSBhc2tpbmcgaWYgaXQgaXMgbmVlZGVkIGFsc28gZm9y
IHBoeXNpY2FsIGRldmljZXMuCgo+IAo+IFRoZSBjaGVjayBmb3IgTlVMTCBhcyB0aGlzIHBhdGgg
aXMgc3VwcG9zZWQgdG8gaW5pdGlhbGl6ZSB0aGUKPiBwYXJzZSBvbmx5IGlmIHVzYnJlZGlyaG9z
dCBpcyBub3QgaW5pdGlhbGl6ZSA+IE1heWJlIHdvdWxkIGJlIHdvcnRoIGEgY29tbWVudCBvciBh
bm90aGVyIG5hbWUuIE9yIG1heWJlIGp1c3QgaW5saW5lCj4gaXQgbm93LCBub3QgdmVyeSBsb25n
LiBXaGF0IGRvIHlvdSBzdWdnZXN0PwoKSnVzdCBsZWF2ZSBpdCBhcyBpcy4gSSdsbCBsb29rIGF0
IHByZXZpb3VzIHBhdGNoZXMgdG8gYmV0dGVyIHVuZGVyc3RhbmQuCgo+IAo+Pj4gVXNlIGEgc2lu
Z2xlIHN0YXRlIHZhcmlhYmxlLCBkYXRhIGZsb3dzIGludG8vZnJvbSBhIHNpbmdsZSBwYXJzZXIu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4+PiAtLS0KPj4+ICAgIHNyYy91c2ItYmFja2VuZC5jIHwgMjM2ICsrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAx
MTYgaW5zZXJ0aW9ucygrKSwgMTIwIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9z
cmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4+PiBpbmRleCAzNmE3M2E4OS4u
ZDYxNGU2OTMgMTAwNjQ0Cj4+PiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+Pj4gKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmMKPj4+IEBAIC03OCwyMSArNzgsMjEgQEAgc3RydWN0IF9TcGljZVVzYkJh
Y2tlbmQKPj4+ICAgICAgICB1aW50MzJfdCBvd25fZGV2aWNlc19tYXNrOwo+Pj4gICAgfTsKPj4+
ICAgIAo+Pj4gK3R5cGVkZWYgZW51bSB7Cj4+PiArICAgIFVTQl9DSEFOTkVMX1NUQVRFX0lOSVRJ
QUxJWklORywKPj4+ICsgICAgVVNCX0NIQU5ORUxfU1RBVEVfSE9TVCwKPj4+ICsgICAgVVNCX0NI
QU5ORUxfU1RBVEVfUEFSU0VSLAo+Pj4gK30gU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbFN0YXRlOwo+
Pj4gKwo+Pj4gICAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmRDaGFubmVsCj4+PiAgICB7Cj4+PiAg
ICAgICAgc3RydWN0IHVzYnJlZGlyaG9zdCAqdXNicmVkaXJob3N0Owo+Pj4gLSAgICBzdHJ1Y3Qg
dXNicmVkaXJob3N0ICpoaWRkZW5faG9zdDsKPj4+ICAgICAgICBzdHJ1Y3QgdXNicmVkaXJwYXJz
ZXIgKnBhcnNlcjsKPj4+IC0gICAgc3RydWN0IHVzYnJlZGlycGFyc2VyICpoaWRkZW5fcGFyc2Vy
Owo+Pj4gKyAgICBTcGljZVVzYkJhY2tlbmRDaGFubmVsU3RhdGUgc3RhdGU7Cj4+PiAgICAgICAg
dWludDhfdCAqcmVhZF9idWY7Cj4+PiAgICAgICAgaW50IHJlYWRfYnVmX3NpemU7Cj4+PiAgICAg
ICAgc3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUgKnJ1bGVzOwo+Pj4gICAgICAgIGludCBydWxl
c19jb3VudDsKPj4+IC0gICAgdWludDMyX3QgaG9zdF9jYXBzOwo+Pj4gLSAgICB1aW50MzJfdCBw
YXJzZXJfaW5pdF9kb25lICA6IDE7Cj4+PiAtICAgIHVpbnQzMl90IHBhcnNlcl93aXRoX2hlbGxv
IDogMTsKPj4+IC0gICAgdWludDMyX3QgaGVsbG9fZG9uZV9wYXJzZXIgOiAxOwo+Pj4gLSAgICB1
aW50MzJfdCBoZWxsb19zZW50ICAgICAgICA6IDE7Cj4+PiAgICAgICAgdWludDMyX3QgcmVqZWN0
ZWQgICAgICAgICAgOiAxOwo+Pj4gICAgICAgIHVpbnQzMl90IHdhaXRfZGlzY29ubmVjdF9hY2sg
OiAxOwo+Pj4gICAgICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqYXR0YWNoZWQ7Cj4+PiBAQCAt
NDA1LDE1ICs0MDUsMTYgQEAgZnJvbSBib3RoIHRoZSBtYWluIHRocmVhZCBhcyB3ZWxsIGFzIGZy
b20gdGhlIHVzYgo+Pj4gZXZlbnQgaGFuZGxpbmcgdGhyZWFkICovCj4+PiAgICBzdGF0aWMgdm9p
ZCB1c2JyZWRpcl93cml0ZV9mbHVzaF9jYWxsYmFjayh2b2lkICp1c2VyX2RhdGEpCj4+PiAgICB7
Cj4+PiAgICAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2ggPSB1c2VyX2RhdGE7Cj4+PiAr
ICAgIGlmIChjaC0+cGFyc2VyID09IE5VTEwpIHsKPj4+ICsgICAgICAgIHJldHVybjsKPj4+ICsg
ICAgfQo+Pj4gICAgICAgIGlmIChpc19jaGFubmVsX3JlYWR5KGNoLT51c2VyX2RhdGEpKSB7Cj4+
PiAtICAgICAgICBpZiAoY2gtPnVzYnJlZGlyaG9zdCkgewo+Pgo+PiBEbyB5b3UgbmVlZCB0aGUg
Zm9sbG93aW5nIGdfYXNzZXJ0LCBvciBpcyB0aGUgY2gtPnBhcnNlcj09TlVMTCBlbm91Z2gKPj4g
ICAgICBnX2Fzc2VydChjaC0+c3RhdGUgIT0gVVNCX0NIQU5ORUxfU1RBVEVfSU5JVElBTElaSU5H
KTsKPj4KPiAKPiBXaGljaCBvbmUgYXJlIHlvdSByZWZlcnJpbmcgdG8/Cj4gCj4+PiArICAgICAg
ICBpZiAoY2gtPnN0YXRlID09IFVTQl9DSEFOTkVMX1NUQVRFX0hPU1QpIHsKPj4+ICAgICAgICAg
ICAgICAgIFNQSUNFX0RFQlVHKCIlcyBjaCAlcCAtPiB1c2JyZWRpcmhvc3QiLCBfX0ZVTkNUSU9O
X18sIGNoKTsKPj4+ICAgICAgICAgICAgICAgIHVzYnJlZGlyaG9zdF93cml0ZV9ndWVzdF9kYXRh
KGNoLT51c2JyZWRpcmhvc3QpOwo+Pj4gLSAgICAgICAgfSBlbHNlIGlmIChjaC0+cGFyc2VyKSB7
Cj4+PiArICAgICAgICB9IGVsc2Ugewo+Pj4gICAgICAgICAgICAgICAgU1BJQ0VfREVCVUcoIiVz
IGNoICVwIC0+IHBhcnNlciIsIF9fRlVOQ1RJT05fXywgY2gpOwo+Pj4gICAgICAgICAgICAgICAg
dXNicmVkaXJwYXJzZXJfZG9fd3JpdGUoY2gtPnBhcnNlcik7Cj4+PiAtICAgICAgICB9IGVsc2Ug
ewo+Pj4gLSAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIlcyBjaCAlcCAoTk9UIEFDVElWRSkiLCBf
X0ZVTkNUSU9OX18sIGNoKTsKPj4+ICAgICAgICAgICAgfQo+Pj4gICAgICAgIH0gZWxzZSB7Cj4+
PiAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIlcyBjaCAlcCAobm90IHJlYWR5KSIsIF9fRlVOQ1RJ
T05fXywgY2gpOwo+Pj4gQEAgLTY3MywyMSArNjc0LDQyIEBAIHN0YXRpYyB2b2lkIHVzYnJlZGly
X2xvZyh2b2lkICp1c2VyX2RhdGEsIGludCBsZXZlbCwKPj4+IGNvbnN0IGNoYXIgKm1zZykKPj4+
ICAgICAgICB9Cj4+PiAgICB9Cj4+PiAgICAKPj4+ICtzdGF0aWMgc3RydWN0IHVzYnJlZGlycGFy
c2VyICpjcmVhdGVfcGFyc2VyKFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoKTsKPj4+ICsKPj4+
ICAgIHN0YXRpYyBpbnQgdXNicmVkaXJfd3JpdGVfY2FsbGJhY2sodm9pZCAqdXNlcl9kYXRhLCB1
aW50OF90ICpkYXRhLCBpbnQKPj4+ICAgIGNvdW50KQo+Pj4gICAgewo+Pj4gICAgICAgIFNwaWNl
VXNiQmFja2VuZENoYW5uZWwgKmNoID0gdXNlcl9kYXRhOwo+Pj4gICAgICAgIGludCByZXM7Cj4+
PiAgICAgICAgU1BJQ0VfREVCVUcoIiVzIGNoICVwLCAlZCBieXRlcyIsIF9fRlVOQ1RJT05fXywg
Y2gsIGNvdW50KTsKPj4+IC0gICAgaWYgKCFjaC0+aGVsbG9fc2VudCkgewo+Pj4gLSAgICAgICAg
LyogaGVsbG8gaXMgc2hvcnQgaGVhZGVyICgxMikgKyBoZWxsbyBzdHJ1Y3QgKDY0KSArIGNhcGFi
aWxpdGllcwo+Pj4gKDQpICovCj4+PiAtICAgICAgICBpbnQgaGVsbG9fc2l6ZSA9IHNpemVvZihz
dHJ1Y3QgdXNiX3JlZGlyX2hlYWRlcikgKyBzaXplb2Yoc3RydWN0Cj4+PiB1c2JfcmVkaXJfaGVs
bG9faGVhZGVyKTsKPj4+IC0gICAgICAgIGNoLT5oZWxsb19zZW50ID0gMTsKPj4+IC0gICAgICAg
IGlmIChjb3VudCA9PSBoZWxsb19zaXplKSB7Cj4+PiAtICAgICAgICAgICAgbWVtY3B5KCZjaC0+
aG9zdF9jYXBzLCBkYXRhICsgaGVsbG9fc2l6ZSAtCj4+PiBzaXplb2YoY2gtPmhvc3RfY2Fwcyks
Cj4+PiAtICAgICAgICAgICAgICAgICAgIHNpemVvZihjaC0+aG9zdF9jYXBzKSk7Cj4+PiAtICAg
ICAgICAgICAgU1BJQ0VfREVCVUcoIiVzIGNoICVwLCBzZW5kaW5nIGZpcnN0IGhlbGxvLCBjYXBz
ICUwOFgiLAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgIF9fRlVOQ1RJT05fXywgY2gsIGNo
LT5ob3N0X2NhcHMpOwo+Pj4gKwo+Pj4gKyAgICAvLyBoYW5kbGUgZmlyc3QgcGFja2V0IChIRUxM
TykgY3JlYXRpbmcgcGFyc2VyIGZyb20gY2FwYWJpbGl0aWVzCj4+PiArICAgIGlmIChTUElDRV9V
TkxJS0VMWShjaC0+cGFyc2VyID09IE5VTEwpKSB7Cj4+PiArICAgICAgICAvLyB3ZSBhcmUgc3Rp
bGwgaW5pdGlhbGl6aW5nIHRoZSBob3N0Cj4+PiArICAgICAgICBpZiAoY2gtPnVzYnJlZGlyaG9z
dCA9PSBOVUxMKSB7Cj4+PiArICAgICAgICAgICAgcmV0dXJuIDA7Cj4+PiAgICAgICAgICAgIH0K
Pj4+ICsKPj4+ICsgICAgICAgIGNoLT5wYXJzZXIgPSBjcmVhdGVfcGFyc2VyKGNoKTsKPj4+ICsg
ICAgICAgIGlmICghY2gtPnBhcnNlcikgewo+Pj4gKyAgICAgICAgICAgIHJldHVybiAwOwo+Pj4g
KyAgICAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgICAgLyogaGVsbG8gaXMgc2hvcnQgaGVhZGVyICgx
MikgKyBoZWxsbyBzdHJ1Y3QgKDY0KSAqLwo+Pj4gKyAgICAgICAgY29uc3QgaW50IGhlbGxvX3Np
emUgPSAxMiArIHNpemVvZihzdHJ1Y3QgdXNiX3JlZGlyX2hlbGxvX2hlYWRlcik7Cj4+Cj4+IHNp
emVvZihzdHJ1Y3QgdXNiX3JlZGlyX2hlYWRlcikgaW5zdGVhZCBvZiAxMiAoYW5kIGJ0dyBpdCdz
IDE2KQo+Pgo+IAo+IFllcywgdGhhdCdzIHdoeSAxMiBpcyB1c2VkLiBJdCdzIG5vdCB1c2JfcmVk
aXJfaGVhZGVyIHRoYXQgeW91IHdhbnQgYnV0IHRoZQo+IDMyIGJpdCB2ZXJzaW9uIHdoaWNoIGlz
IGRlZmluZWQgb25seSBpbnRlcm5hbGx5IGluIHVzYnJlZGlyIGNvZGUgKG5vdCBwdWJsaWMKPiBo
ZWFkZXJzKS4KClVzaW5nIGludGVybmFsLW9ubHkgY29tcGF0aWJpbGl0eSBoZWFkZXIgaXMgbm90
IG5pY2UuCldoeSBub3QgdXNlIDY0Yml0IGFuZCBwdWJsaWMgaGVhZGVycyAoY2hlY2sgdGhlIHBl
ZXIgc3VwcG9ydHMKaXQgdG9vIGZpcnN0KSA/CihhZ2FpbiBpZiBpdCB3YXMgYW5zd2VyZWQgaW4g
cHJldmlvdXMgZW1haWxzIEkgYXBvbG9naXplKQoKPiAKPj4+ICsgICAgICAgIGdfYXNzZXJ0KGNv
dW50ID49IGhlbGxvX3NpemUgKyA0KTsKPj4KPj4gbml0OiBNYXliZSByZXBsYWNlIDQgd2l0aAo+
PiAgICAgY29uc3Qgc2l6ZV90IGNhcHNfc2l6ZSA9IHNpemVvZih1aW50MzJfdCkgKiBVU0JfUkVE
SVJfQ0FQU19TSVpFOwo+PiAgICAgZ19hc3NlcnQoY291bnQgPj0gaGVsbG9fc2l6ZSArIGNhcHNf
c2l6ZSk7Cj4+Cj4gCj4gVGhpcyBwb3RlbnRpYWxseSBjYW4gY3Jhc2ggaW4gdGhlIGZ1dHVyZSB3
aGVuIFVTQl9SRURJUl9DQVBTX1NJWkUgd2lsbCBjaGFuZ2UuCj4gQnV0IEkgc3VwcG9zZSB5b3Ug
Y2FuIHJlcGxhY2UgIjQiIHdpdGggc2l6ZW9mKHVpbnQzMl90KS4KCk9LLCBzbyBiYXNpY2FsbHkg
dGhlcmUgbXVzdCBiZSBhdCBsZWFzdCAxIHVpbnQzMl90IGZvciBjYXBzIGFuZAppbiB0aGUgZnV0
dXJlIG1heWJlIG1vcmUgKGFjY29yZGluZyB0byBjb3VudCkuIElmIGl0IGRvZXMgY2hhbmdlCmlu
IHRoZSBmdXR1cmUgYW5kIHdlIHJlYWxseSB3YW50IHRvLCB3ZSBjYW4gdGVsbCBieSBwZWVyIHZl
cnNpb24uCgpUaGFua3MsCiAgICAgVXJpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
