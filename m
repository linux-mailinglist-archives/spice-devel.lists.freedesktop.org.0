Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB5AA719D
	for <lists+spice-devel@lfdr.de>; Tue,  3 Sep 2019 19:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637A389533;
	Tue,  3 Sep 2019 17:25:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA80A89533
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 17:25:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC9FF308219E
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 17:25:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E25636012A
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 17:25:16 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D7BC8180B536;
 Tue,  3 Sep 2019 17:25:16 +0000 (UTC)
Date: Tue, 3 Sep 2019 13:25:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <368259604.10494959.1567531516640.JavaMail.zimbra@redhat.com>
In-Reply-To: <77797fa3-02a3-277d-420b-c6282dff328f@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com>
 <2d4fe923-43e3-ee91-1ebf-f1d815e14f4a@redhat.com>
 <1987497362.10440756.1567512516505.JavaMail.zimbra@redhat.com>
 <77797fa3-02a3-277d-420b-c6282dff328f@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.3]
Thread-Topic: usb-backend: Rewrite USB emulation support
Thread-Index: LTucOjj8IUnAmpbZmQpgVvOAz+wBKg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 03 Sep 2019 17:25:16 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiA5LzMvMTkgMzowOCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+Cj4gPj4g
SGksCj4gPj4KPiA+PiBPbiA4LzI3LzE5IDEyOjIyIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6
Cj4gPj4+IE1ha2UgaW5pdGlhbGlzYXRpb24gZWFzaWVyLgo+ID4+PiBBbHdheXMgaW5pdGlhbGlz
ZSBwYXJzZXIuCj4gPj4+IEluaXRpYWxpc2UgYm90aCBwYXJzZXIgYW5kIGhvc3QgZHVyaW5nIHNw
aWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfbmV3Lgo+ID4+PiBTdXBwb3J0IG5vdCBoYXZpbmcgbGli
dXNiIGNvbnRleHQgKG5vIHBoeXNpY2FsIGRldmljZXMpLgo+ID4+PiBBdm9pZHMgdG9vIG11Y2gg
c3RhdGUgdmFyaWFibGVzLgo+ID4+PiBwYXJzZXIgaXMgYWx3YXlzIGluaXRpYWxpc2VkIGFmdGVy
IGNyZWF0aW9uIG1ha2luZyBzdXJlIHRoZSBzdGF0ZQo+ID4+PiBpcyBjb25zaXN0ZW50Lgo+ID4+
Cj4gPj4gSWYgdXNicmVkaXJob3N0IGlzIHVzZWQsIHdoeSBpcyB0aGVyZSBhIG5lZWQgZm9yIGEg
cGFyc2VyIHRvbyA/Cj4gPj4gQWxzbyBiZWxvdyBpbiBpbml0aWFsaXplX3BhcnNlciB0aGVyZSBp
cyBhIGNoZWNrIHRoYXQKPiA+PiBjaC0+dXNicmVkaXJob3N0IGlzIE5VTEwgKHBvc3NpYmx5IGJl
Y2F1c2UgdGhlIHBhcnNlciBpcyBhbHdheXMKPiA+PiBiZWluZyBpbml0aWFsaXplZCBiZWZvcmUg
dGhlIGhvc3QpLgo+ID4+Cj4gPiAKPiA+IEZvciBhIGxhcmdlciBleHBsYW5hdGlvbiBzZWUgZm9y
bWVyIHBhdGNoIGZyb20gWXVyaS4KPiA+IEZvciBhIHNob3J0ZXIgdG8gcGFyc2UgZGF0YSBkaXJl
Y3RlZCB0byBlbXVsYXRlZCBkZXZpY2VzLgo+ID4gU28gaG9zdCBkZXZpY2VzIChwaHlzaWNhbCkg
dGhyb3VnaCB1c2JyZWRpcmhvc3QsIGVtdWxhdGVkIGRldmljZXMKPiA+IHRocm91Z2ggdXNicGFy
c2VyLgo+IAo+IFRoZSBjb21taXQgbG9nIGlzIHNheWluZyB0aGUgcGFyc2VyIGlzIGFsd2F5cyBi
ZWluZyBpbml0aWFsaXplZC4KPiBJJ20gYXNraW5nIGlmIGl0IGlzIG5lZWRlZCBhbHNvIGZvciBw
aHlzaWNhbCBkZXZpY2VzLgo+IAoKTm8sIGl0J3MgdXNlZCBvbmx5IGZvciBlbXVsYXRlZCBkZXZp
Y2VzLgoKPiA+IAo+ID4gVGhlIGNoZWNrIGZvciBOVUxMIGFzIHRoaXMgcGF0aCBpcyBzdXBwb3Nl
ZCB0byBpbml0aWFsaXplIHRoZQo+ID4gcGFyc2Ugb25seSBpZiB1c2JyZWRpcmhvc3QgaXMgbm90
IGluaXRpYWxpemUgPiBNYXliZSB3b3VsZCBiZSB3b3J0aCBhCj4gPiBjb21tZW50IG9yIGFub3Ro
ZXIgbmFtZS4gT3IgbWF5YmUganVzdCBpbmxpbmUKPiA+IGl0IG5vdywgbm90IHZlcnkgbG9uZy4g
V2hhdCBkbyB5b3Ugc3VnZ2VzdD8KPiAKPiBKdXN0IGxlYXZlIGl0IGFzIGlzLiBJJ2xsIGxvb2sg
YXQgcHJldmlvdXMgcGF0Y2hlcyB0byBiZXR0ZXIgdW5kZXJzdGFuZC4KPiAKPiA+IAo+ID4+PiBV
c2UgYSBzaW5nbGUgc3RhdGUgdmFyaWFibGUsIGRhdGEgZmxvd3MgaW50by9mcm9tIGEgc2luZ2xl
IHBhcnNlci4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Cj4gPj4+IC0tLQo+ID4+PiAgICBzcmMvdXNiLWJhY2tlbmQuYyB8IDIz
NiArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+ICAg
IDEgZmlsZSBjaGFuZ2VkLCAxMTYgaW5zZXJ0aW9ucygrKSwgMTIwIGRlbGV0aW9ucygtKQo+ID4+
Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQu
Ywo+ID4+PiBpbmRleCAzNmE3M2E4OS4uZDYxNGU2OTMgMTAwNjQ0Cj4gPj4+IC0tLSBhL3NyYy91
c2ItYmFja2VuZC5jCj4gPj4+ICsrKyBiL3NyYy91c2ItYmFja2VuZC5jCj4gPj4+IEBAIC03OCwy
MSArNzgsMjEgQEAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmQKPiA+Pj4gICAgICAgIHVpbnQzMl90
IG93bl9kZXZpY2VzX21hc2s7Cj4gPj4+ICAgIH07Cj4gPj4+ICAgIAo+ID4+PiArdHlwZWRlZiBl
bnVtIHsKPiA+Pj4gKyAgICBVU0JfQ0hBTk5FTF9TVEFURV9JTklUSUFMSVpJTkcsCj4gPj4+ICsg
ICAgVVNCX0NIQU5ORUxfU1RBVEVfSE9TVCwKPiA+Pj4gKyAgICBVU0JfQ0hBTk5FTF9TVEFURV9Q
QVJTRVIsCj4gPj4+ICt9IFNwaWNlVXNiQmFja2VuZENoYW5uZWxTdGF0ZTsKPiA+Pj4gKwo+ID4+
PiAgICBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwKPiA+Pj4gICAgewo+ID4+PiAgICAg
ICAgc3RydWN0IHVzYnJlZGlyaG9zdCAqdXNicmVkaXJob3N0Owo+ID4+PiAtICAgIHN0cnVjdCB1
c2JyZWRpcmhvc3QgKmhpZGRlbl9ob3N0Owo+ID4+PiAgICAgICAgc3RydWN0IHVzYnJlZGlycGFy
c2VyICpwYXJzZXI7Cj4gPj4+IC0gICAgc3RydWN0IHVzYnJlZGlycGFyc2VyICpoaWRkZW5fcGFy
c2VyOwo+ID4+PiArICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWxTdGF0ZSBzdGF0ZTsKPiA+Pj4g
ICAgICAgIHVpbnQ4X3QgKnJlYWRfYnVmOwo+ID4+PiAgICAgICAgaW50IHJlYWRfYnVmX3NpemU7
Cj4gPj4+ICAgICAgICBzdHJ1Y3QgdXNicmVkaXJmaWx0ZXJfcnVsZSAqcnVsZXM7Cj4gPj4+ICAg
ICAgICBpbnQgcnVsZXNfY291bnQ7Cj4gPj4+IC0gICAgdWludDMyX3QgaG9zdF9jYXBzOwo+ID4+
PiAtICAgIHVpbnQzMl90IHBhcnNlcl9pbml0X2RvbmUgIDogMTsKPiA+Pj4gLSAgICB1aW50MzJf
dCBwYXJzZXJfd2l0aF9oZWxsbyA6IDE7Cj4gPj4+IC0gICAgdWludDMyX3QgaGVsbG9fZG9uZV9w
YXJzZXIgOiAxOwo+ID4+PiAtICAgIHVpbnQzMl90IGhlbGxvX3NlbnQgICAgICAgIDogMTsKPiA+
Pj4gICAgICAgIHVpbnQzMl90IHJlamVjdGVkICAgICAgICAgIDogMTsKPiA+Pj4gICAgICAgIHVp
bnQzMl90IHdhaXRfZGlzY29ubmVjdF9hY2sgOiAxOwo+ID4+PiAgICAgICAgU3BpY2VVc2JCYWNr
ZW5kRGV2aWNlICphdHRhY2hlZDsKPiA+Pj4gQEAgLTQwNSwxNSArNDA1LDE2IEBAIGZyb20gYm90
aCB0aGUgbWFpbiB0aHJlYWQgYXMgd2VsbCBhcyBmcm9tIHRoZSB1c2IKPiA+Pj4gZXZlbnQgaGFu
ZGxpbmcgdGhyZWFkICovCj4gPj4+ICAgIHN0YXRpYyB2b2lkIHVzYnJlZGlyX3dyaXRlX2ZsdXNo
X2NhbGxiYWNrKHZvaWQgKnVzZXJfZGF0YSkKPiA+Pj4gICAgewo+ID4+PiAgICAgICAgU3BpY2VV
c2JCYWNrZW5kQ2hhbm5lbCAqY2ggPSB1c2VyX2RhdGE7Cj4gPj4+ICsgICAgaWYgKGNoLT5wYXJz
ZXIgPT0gTlVMTCkgewo+ID4+PiArICAgICAgICByZXR1cm47Cj4gPj4+ICsgICAgfQo+ID4+PiAg
ICAgICAgaWYgKGlzX2NoYW5uZWxfcmVhZHkoY2gtPnVzZXJfZGF0YSkpIHsKPiA+Pj4gLSAgICAg
ICAgaWYgKGNoLT51c2JyZWRpcmhvc3QpIHsKPiA+Pgo+ID4+IERvIHlvdSBuZWVkIHRoZSBmb2xs
b3dpbmcgZ19hc3NlcnQsIG9yIGlzIHRoZSBjaC0+cGFyc2VyPT1OVUxMIGVub3VnaAo+ID4+ICAg
ICAgZ19hc3NlcnQoY2gtPnN0YXRlICE9IFVTQl9DSEFOTkVMX1NUQVRFX0lOSVRJQUxJWklORyk7
Cj4gPj4KPiA+IAo+ID4gV2hpY2ggb25lIGFyZSB5b3UgcmVmZXJyaW5nIHRvPwo+ID4gCj4gPj4+
ICsgICAgICAgIGlmIChjaC0+c3RhdGUgPT0gVVNCX0NIQU5ORUxfU1RBVEVfSE9TVCkgewo+ID4+
PiAgICAgICAgICAgICAgICBTUElDRV9ERUJVRygiJXMgY2ggJXAgLT4gdXNicmVkaXJob3N0Iiwg
X19GVU5DVElPTl9fLCBjaCk7Cj4gPj4+ICAgICAgICAgICAgICAgIHVzYnJlZGlyaG9zdF93cml0
ZV9ndWVzdF9kYXRhKGNoLT51c2JyZWRpcmhvc3QpOwo+ID4+PiAtICAgICAgICB9IGVsc2UgaWYg
KGNoLT5wYXJzZXIpIHsKPiA+Pj4gKyAgICAgICAgfSBlbHNlIHsKPiA+Pj4gICAgICAgICAgICAg
ICAgU1BJQ0VfREVCVUcoIiVzIGNoICVwIC0+IHBhcnNlciIsIF9fRlVOQ1RJT05fXywgY2gpOwo+
ID4+PiAgICAgICAgICAgICAgICB1c2JyZWRpcnBhcnNlcl9kb193cml0ZShjaC0+cGFyc2VyKTsK
PiA+Pj4gLSAgICAgICAgfSBlbHNlIHsKPiA+Pj4gLSAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIl
cyBjaCAlcCAoTk9UIEFDVElWRSkiLCBfX0ZVTkNUSU9OX18sIGNoKTsKPiA+Pj4gICAgICAgICAg
ICB9Cj4gPj4+ICAgICAgICB9IGVsc2Ugewo+ID4+PiAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIl
cyBjaCAlcCAobm90IHJlYWR5KSIsIF9fRlVOQ1RJT05fXywgY2gpOwo+ID4+PiBAQCAtNjczLDIx
ICs2NzQsNDIgQEAgc3RhdGljIHZvaWQgdXNicmVkaXJfbG9nKHZvaWQgKnVzZXJfZGF0YSwgaW50
Cj4gPj4+IGxldmVsLAo+ID4+PiBjb25zdCBjaGFyICptc2cpCj4gPj4+ICAgICAgICB9Cj4gPj4+
ICAgIH0KPiA+Pj4gICAgCj4gPj4+ICtzdGF0aWMgc3RydWN0IHVzYnJlZGlycGFyc2VyICpjcmVh
dGVfcGFyc2VyKFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoKTsKPiA+Pj4gKwo+ID4+PiAgICBz
dGF0aWMgaW50IHVzYnJlZGlyX3dyaXRlX2NhbGxiYWNrKHZvaWQgKnVzZXJfZGF0YSwgdWludDhf
dCAqZGF0YSwgaW50Cj4gPj4+ICAgIGNvdW50KQo+ID4+PiAgICB7Cj4gPj4+ICAgICAgICBTcGlj
ZVVzYkJhY2tlbmRDaGFubmVsICpjaCA9IHVzZXJfZGF0YTsKPiA+Pj4gICAgICAgIGludCByZXM7
Cj4gPj4+ICAgICAgICBTUElDRV9ERUJVRygiJXMgY2ggJXAsICVkIGJ5dGVzIiwgX19GVU5DVElP
Tl9fLCBjaCwgY291bnQpOwo+ID4+PiAtICAgIGlmICghY2gtPmhlbGxvX3NlbnQpIHsKPiA+Pj4g
LSAgICAgICAgLyogaGVsbG8gaXMgc2hvcnQgaGVhZGVyICgxMikgKyBoZWxsbyBzdHJ1Y3QgKDY0
KSArIGNhcGFiaWxpdGllcwo+ID4+PiAoNCkgKi8KPiA+Pj4gLSAgICAgICAgaW50IGhlbGxvX3Np
emUgPSBzaXplb2Yoc3RydWN0IHVzYl9yZWRpcl9oZWFkZXIpICsgc2l6ZW9mKHN0cnVjdAo+ID4+
PiB1c2JfcmVkaXJfaGVsbG9faGVhZGVyKTsKPiA+Pj4gLSAgICAgICAgY2gtPmhlbGxvX3NlbnQg
PSAxOwo+ID4+PiAtICAgICAgICBpZiAoY291bnQgPT0gaGVsbG9fc2l6ZSkgewo+ID4+PiAtICAg
ICAgICAgICAgbWVtY3B5KCZjaC0+aG9zdF9jYXBzLCBkYXRhICsgaGVsbG9fc2l6ZSAtCj4gPj4+
IHNpemVvZihjaC0+aG9zdF9jYXBzKSwKPiA+Pj4gLSAgICAgICAgICAgICAgICAgICBzaXplb2Yo
Y2gtPmhvc3RfY2FwcykpOwo+ID4+PiAtICAgICAgICAgICAgU1BJQ0VfREVCVUcoIiVzIGNoICVw
LCBzZW5kaW5nIGZpcnN0IGhlbGxvLCBjYXBzICUwOFgiLAo+ID4+PiAtICAgICAgICAgICAgICAg
ICAgICAgICAgX19GVU5DVElPTl9fLCBjaCwgY2gtPmhvc3RfY2Fwcyk7Cj4gPj4+ICsKPiA+Pj4g
KyAgICAvLyBoYW5kbGUgZmlyc3QgcGFja2V0IChIRUxMTykgY3JlYXRpbmcgcGFyc2VyIGZyb20g
Y2FwYWJpbGl0aWVzCj4gPj4+ICsgICAgaWYgKFNQSUNFX1VOTElLRUxZKGNoLT5wYXJzZXIgPT0g
TlVMTCkpIHsKPiA+Pj4gKyAgICAgICAgLy8gd2UgYXJlIHN0aWxsIGluaXRpYWxpemluZyB0aGUg
aG9zdAo+ID4+PiArICAgICAgICBpZiAoY2gtPnVzYnJlZGlyaG9zdCA9PSBOVUxMKSB7Cj4gPj4+
ICsgICAgICAgICAgICByZXR1cm4gMDsKPiA+Pj4gICAgICAgICAgICB9Cj4gPj4+ICsKPiA+Pj4g
KyAgICAgICAgY2gtPnBhcnNlciA9IGNyZWF0ZV9wYXJzZXIoY2gpOwo+ID4+PiArICAgICAgICBp
ZiAoIWNoLT5wYXJzZXIpIHsKPiA+Pj4gKyAgICAgICAgICAgIHJldHVybiAwOwo+ID4+PiArICAg
ICAgICB9Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgLyogaGVsbG8gaXMgc2hvcnQgaGVhZGVyICgx
MikgKyBoZWxsbyBzdHJ1Y3QgKDY0KSAqLwo+ID4+PiArICAgICAgICBjb25zdCBpbnQgaGVsbG9f
c2l6ZSA9IDEyICsgc2l6ZW9mKHN0cnVjdAo+ID4+PiB1c2JfcmVkaXJfaGVsbG9faGVhZGVyKTsK
PiA+Pgo+ID4+IHNpemVvZihzdHJ1Y3QgdXNiX3JlZGlyX2hlYWRlcikgaW5zdGVhZCBvZiAxMiAo
YW5kIGJ0dyBpdCdzIDE2KQo+ID4+Cj4gPiAKPiA+IFllcywgdGhhdCdzIHdoeSAxMiBpcyB1c2Vk
LiBJdCdzIG5vdCB1c2JfcmVkaXJfaGVhZGVyIHRoYXQgeW91IHdhbnQgYnV0IHRoZQo+ID4gMzIg
Yml0IHZlcnNpb24gd2hpY2ggaXMgZGVmaW5lZCBvbmx5IGludGVybmFsbHkgaW4gdXNicmVkaXIg
Y29kZSAobm90Cj4gPiBwdWJsaWMKPiA+IGhlYWRlcnMpLgo+IAo+IFVzaW5nIGludGVybmFsLW9u
bHkgY29tcGF0aWJpbGl0eSBoZWFkZXIgaXMgbm90IG5pY2UuCj4gV2h5IG5vdCB1c2UgNjRiaXQg
YW5kIHB1YmxpYyBoZWFkZXJzIChjaGVjayB0aGUgcGVlciBzdXBwb3J0cwo+IGl0IHRvbyBmaXJz
dCkgPwo+IChhZ2FpbiBpZiBpdCB3YXMgYW5zd2VyZWQgaW4gcHJldmlvdXMgZW1haWxzIEkgYXBv
bG9naXplKQo+IAoKRG8geW91IG1lYW4gdGhlIHBlZXIgY2FwYWJpbGl0aWVzPwpObywgaW4gdGhp
cyBjYXNlIHRoaXMgaXMgdGhlIGZpcnN0IG1lc3NhZ2UsIHRoZSBvbmUgd2l0aCBubyBjYXBhYmls
aXRpZXMKc3RpbGwgZGVjaWRlZCBzbyBpdCdzIGFzc3VtZWQgZm9yIEFCSSBjb21wYXRpYmlsaXR5
IHRvIGhhdmUgYWxsIGNhcGFiaWxpdGllcwpkaXNhYmxlZCwgdGhhdCBpcyB1c2luZyAzMiBiaXQg
aWQuIFRoZSBzdHJ1Y3R1cmUgaXMgZGVjbGFyZWQgaW4KdXNicmVkaXJwYXJzZXIvdXNicmVkaXJw
cm90by1jb21wYXQuaCBhbmQgaXQncwoKc3RydWN0IHVzYl9yZWRpcl9oZWFkZXJfMzJiaXRfaWQg
ewogICAgdWludDMyX3QgdHlwZTsKICAgIHVpbnQzMl90IGxlbmd0aDsKICAgIHVpbnQzMl90IGlk
Owp9IEFUVFJfUEFDS0VEOwoKTWF5YmUgd291bGQgYmUgd29ydGggaWYgd2UgZGVjbGFyZSBpdD8g
QnV0IGl0IHdvdWxkIGJlIHVzZWQgb25seSBmb3IgdGhlIHNpemVvZi4KCj4gPiAKPiA+Pj4gKyAg
ICAgICAgZ19hc3NlcnQoY291bnQgPj0gaGVsbG9fc2l6ZSArIDQpOwo+ID4+Cj4gPj4gbml0OiBN
YXliZSByZXBsYWNlIDQgd2l0aAo+ID4+ICAgICBjb25zdCBzaXplX3QgY2Fwc19zaXplID0gc2l6
ZW9mKHVpbnQzMl90KSAqIFVTQl9SRURJUl9DQVBTX1NJWkU7Cj4gPj4gICAgIGdfYXNzZXJ0KGNv
dW50ID49IGhlbGxvX3NpemUgKyBjYXBzX3NpemUpOwo+ID4+Cj4gPiAKPiA+IFRoaXMgcG90ZW50
aWFsbHkgY2FuIGNyYXNoIGluIHRoZSBmdXR1cmUgd2hlbiBVU0JfUkVESVJfQ0FQU19TSVpFIHdp
bGwKPiA+IGNoYW5nZS4KPiA+IEJ1dCBJIHN1cHBvc2UgeW91IGNhbiByZXBsYWNlICI0IiB3aXRo
IHNpemVvZih1aW50MzJfdCkuCj4gCj4gT0ssIHNvIGJhc2ljYWxseSB0aGVyZSBtdXN0IGJlIGF0
IGxlYXN0IDEgdWludDMyX3QgZm9yIGNhcHMgYW5kCj4gaW4gdGhlIGZ1dHVyZSBtYXliZSBtb3Jl
IChhY2NvcmRpbmcgdG8gY291bnQpLiBJZiBpdCBkb2VzIGNoYW5nZQo+IGluIHRoZSBmdXR1cmUg
YW5kIHdlIHJlYWxseSB3YW50IHRvLCB3ZSBjYW4gdGVsbCBieSBwZWVyIHZlcnNpb24uCj4gCgpJ
IGRpZG4ndCBwcm9iYWJseSBnZXQuCldoYXQgSSBjYW4gc2F5IGlzIHRoYXQgZm9yIGNvbXBhdGli
bGl0eSB0aGUgaGVsbG8gbWVzc2FnZSBoYXMgdG8ga2VlcAp0aGUgc2FtZSBzdHJ1Y3R1cmUuIEl0
J3MgYWxsb3dlZCB0byBleHRlbmQgdGhlIGNhcGFiaWxpdGllcyBmaWVsZHMgdG8KaW5jbHVkZSBt
b3JlIGNhcGFiaWxpdGllcyBhbmQgdGhpcyBzaG91bGQgYmUgZGV0ZWN0ZWQgbG9va2luZyBhdCB0
aGUKImNvdW50IiBmaWVsZCAoaW4gdGhpcyBwYXRjaCBpdCdzIHRoZSAiKGNvdW50IC0gaGVsbG9f
c2l6ZSkgLyBzaXplb2YodWludDMyX3QpIgpmb3JtdWxhZSkuCgo+IFRoYW5rcywKPiAgICAgIFVy
aS4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
