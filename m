Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ACDA152E
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 11:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947506E08E;
	Thu, 29 Aug 2019 09:54:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5F46E08E
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 09:54:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27172107DD01
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 09:54:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ED7D1001B05
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 09:54:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11FC41800B74;
 Thu, 29 Aug 2019 09:54:17 +0000 (UTC)
Date: Thu, 29 Aug 2019 05:54:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <782333838.10040153.1567072456525.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190829091126.21279-1-kpouget@redhat.com>
References: <20190829091126.21279-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.17]
Thread-Topic: streaming: make draw-area visible on MJPEG encoder creation
Thread-Index: gRRN8rMZY3n4yPTD0nLyDcMXAHd4fA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Thu, 29 Aug 2019 09:54:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] streaming: make draw-area
 visible on MJPEG encoder creation
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

PiAgCj4gVGhpcyBwYXRjaCBhbGxvd3MgdGhlIE1KUEVHIGVuY29kZXIgdG8gaW5mb3JtIHRoZSBz
cGljZS13aWRnZXQgdGhhdAo+IGl0cyB2aWRlbyBkcmF3aW5nIGFyZWEgKGRyYXctYXJlYSkgc2hv
dWxkIGJlIG1hZGUgdmlzaWJsZSBvbiBzY3JlZW4uCj4gCj4gVGhpcyBpcyByZXF1aXJlZCB0byBz
d2l0Y2ggZnJvbSBHU1QgdmlkZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1KUEVHCj4gZGVjb2Rpbmcs
IG90aGVyd2lzZSB0aGUgZ3N0LWFyZWEgcmVtYWluZWQgb24gdG9wIGFuZCB0aGUgTUpQRUcgdmlk
ZW8KPiBzdHJlYW0gd2FzIG5ldmVyIHNob3duLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtldmluIFBv
dWdldCA8a3BvdWdldEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IEkgaGF2ZSBzaW1wbGlmaWVkIHRo
ZSBwYXRjaCB0byByZXVzZSB0aGUgZXhpc3RpbmcKPiBTUElDRV9ESVNQTEFZX09WRVJMQVkgc2ln
bmFsICh3aXRoIHBpcGVsaW5lX3B0ciA9PSBOVUxMKSwgaW5zdGVhZCBvZgo+IGNyZWF0aW5nIGEg
bmV3IG9uZSBkZWRpY2F0ZWQgdG8gdGhlIG5hdGl2ZSBNSlBFRyBkZWNvZGVyLgo+IAo+IC0tLQo+
ICBzcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgfCAgMiArKwo+ICBzcmMvY2hhbm5lbC1kaXNw
bGF5LXByaXYuaCAgfCAgMiArLQo+ICBzcmMvY2hhbm5lbC1kaXNwbGF5LmMgICAgICAgfCAxMiAr
KysrKysrKysrKysKPiAgc3JjL3NwaWNlLXdpZGdldC5jICAgICAgICAgIHwgIDkgKysrKysrKyst
Cj4gIDQgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIGIvc3JjL2NoYW5uZWwt
ZGlzcGxheS1tanBlZy5jCj4gaW5kZXggNjQ3ZDMxYi4uNmYxYTRkNyAxMDA2NDQKPiAtLS0gYS9z
cmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LW1q
cGVnLmMKPiBAQCAtMzAwLDUgKzMwMCw3IEBAIFZpZGVvRGVjb2RlciogY3JlYXRlX21qcGVnX2Rl
Y29kZXIoaW50IGNvZGVjX3R5cGUsCj4gZGlzcGxheV9zdHJlYW0gKnN0cmVhbSkKPiAKPiAgICAg
IC8qIEFsbCB0aGUgb3RoZXIgZmllbGRzIGFyZSBpbml0aWFsaXplZCB0byB6ZXJvIGJ5IGdfbmV3
MCgpLiAqLwo+IAo+ICsgICAgc2hvd19tanBlZ193aWRnZXQoc3RyZWFtKTsKPiArCgpXaHkgbm90
IGp1c3QgY2FsbGluZyBoYW5kX3BpcGVsaW5lX3RvX3dpZGdldCBwYXNzaW5nIE5VTEwgYXMgcGlw
ZWxpbmU/Cgo+ICAgICAgcmV0dXJuIChWaWRlb0RlY29kZXIqKWRlY29kZXI7Cj4gIH0KPiBkaWZm
IC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmggYi9zcmMvY2hhbm5lbC1kaXNwbGF5
LXByaXYuaAo+IGluZGV4IGI1ZDY3MjguLjkwZTA4YWMgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5u
ZWwtZGlzcGxheS1wcml2LmgKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAo+IEBA
IC0xOTgsNyArMTk4LDcgQEAgdm9pZCBzdHJlYW1fZHJvcHBlZF9mcmFtZV9vbl9wbGF5YmFjayhk
aXNwbGF5X3N0cmVhbQo+ICpzdCk7Cj4gIHZvaWQgc3RyZWFtX2Rpc3BsYXlfZnJhbWUoZGlzcGxh
eV9zdHJlYW0gKnN0LCBTcGljZUZyYW1lICpmcmFtZSwgdWludDMyX3QKPiAgd2lkdGgsIHVpbnQz
Ml90IGhlaWdodCwgaW50IHN0cmlkZSwgdWludDhfdCogZGF0YSk7Cj4gIGd1aW50cHRyIGdldF93
aW5kb3dfaGFuZGxlKGRpc3BsYXlfc3RyZWFtICpzdCk7Cj4gIGdib29sZWFuIGhhbmRfcGlwZWxp
bmVfdG9fd2lkZ2V0KGRpc3BsYXlfc3RyZWFtICpzdCwgIEdzdFBpcGVsaW5lCj4gICpwaXBlbGlu
ZSk7Cj4gLQo+ICtnYm9vbGVhbiBzaG93X21qcGVnX3dpZGdldChkaXNwbGF5X3N0cmVhbSAqc3Qp
Owo+ICB2b2lkIHNwaWNlX2ZyYW1lX2ZyZWUoU3BpY2VGcmFtZSAqZnJhbWUpOwo+IAo+ICBHX0VO
RF9ERUNMUwo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LmMgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LmMKPiBpbmRleCA1OWM4MDlkLi5iOGEyN2UzIDEwMDY0NAo+IC0tLSBhL3NyYy9j
aGFubmVsLWRpc3BsYXkuYwo+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXkuYwo+IEBAIC0xNDg0
LDYgKzE0ODQsMTggQEAgZ2Jvb2xlYW4gaGFuZF9waXBlbGluZV90b193aWRnZXQoZGlzcGxheV9z
dHJlYW0gKnN0LAo+IEdzdFBpcGVsaW5lICpwaXBlbGluZSkKPiAgICAgIHJldHVybiByZXM7Cj4g
IH0KPiAKPiArR19HTlVDX0lOVEVSTkFMCj4gK2dib29sZWFuIHNob3dfbWpwZWdfd2lkZ2V0KGRp
c3BsYXlfc3RyZWFtICpzdCkKPiArewo+ICsgICAgZ2Jvb2xlYW4gcmVzID0gZmFsc2U7Cj4gKwo+
ICsgICAgaWYgKHN0LT5zdXJmYWNlLT5zdHJlYW1pbmdfbW9kZSkgewo+ICsgICAgICAgIGdfc2ln
bmFsX2VtaXQoc3QtPmNoYW5uZWwsIHNpZ25hbHNbU1BJQ0VfRElTUExBWV9PVkVSTEFZXSwgMCwg
TlVMTCwKPiAmcmVzKTsKPiArICAgIH0KPiArCj4gKyAgICByZXR1cm4gcmVzOwo+ICt9Cj4gKwo+
ICAvKiBhZnRlciBhIHNlcXVlbmNlIG9mIDMgZHJvcHMsIHB1c2ggYSByZXBvcnQgdG8gdGhlIHNl
cnZlciwgZXZlbgo+ICAgKiBpZiB0aGUgcmVwb3J0IHdpbmRvdyBpcyBiaWdnZXIgKi8KPiAgI2Rl
ZmluZSBTVFJFQU1fUkVQT1JUX0RST1BfU0VRX0xFTl9MSU1JVCAzCj4gZGlmZiAtLWdpdCBhL3Ny
Yy9zcGljZS13aWRnZXQuYyBiL3NyYy9zcGljZS13aWRnZXQuYwo+IGluZGV4IGE5YmExZjEuLjdj
MjU3ZmYgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLXdpZGdldC5jCj4gKysrIGIvc3JjL3NwaWNl
LXdpZGdldC5jCj4gQEAgLTI3ODAsMTMgKzI3ODAsMjAgQEAgc3RhdGljIHZvaWQgZ3N0X3NpemVf
YWxsb2NhdGUoR3RrV2lkZ2V0ICp3aWRnZXQsCj4gR2RrUmVjdGFuZ2xlICphLCBncG9pbnRlciBk
YXRhKQo+ICB9Cj4gCj4gIC8qIFRoaXMgY2FsbGJhY2sgc2hvdWxkIHBhc3MgdG8gdGhlIHdpZGdl
dCBhIHBvaW50ZXIgb2YgdGhlIHBpcGVsaW5lCj4gLSAqIHNvIHRoYXQgd2UgY2FuIHNldCBwaXBl
bGluZSBhbmQgb3ZlcmxheSByZWxhdGVkIGNhbGxzIGZyb20gaGVyZS4KPiArICogc28gdGhhdCB3
ZSBjYW4gdGhlIHNldCBHU1QgcGlwZWxpbmUgYW5kIG92ZXJsYXkgcmVsYXRlZCBjYWxscyBmcm9t
Cj4gKyAqIGhlcmUuICBJZiB0aGUgcGlwZWxpbmUgcG9pbnRlciBpcyBOVUxMLCB0aGUgZHJhd2lu
ZyBhcmVhIG9mIHRoZQo+ICsgKiBuYXRpdmUgcmVuZGVyZXIgaXMgc2V0IHZpc2libGUuCj4gICAq
Lwo+ICBzdGF0aWMgZ2Jvb2xlYW4gc2V0X292ZXJsYXkoU3BpY2VDaGFubmVsICpjaGFubmVsLCB2
b2lkKiBwaXBlbGluZV9wdHIsCj4gIFNwaWNlRGlzcGxheSAqZGlzcGxheSkKPiAgewo+ICAjaWYg
ZGVmaW5lZChHREtfV0lORE9XSU5HX1gxMSkKPiAgICAgIFNwaWNlRGlzcGxheVByaXZhdGUgKmQg
PSBkaXNwbGF5LT5wcml2Owo+IAo+ICsgICAgaWYgKHBpcGVsaW5lX3B0ciA9PSBOVUxMKSB7Cj4g
KyAgICAgICAgZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssICJkcmF3
LWFyZWEiKTsKPiArICAgICAgICByZXR1cm4gdHJ1ZTsKPiArICAgIH0KPiArCj4gICAgICAvKiBH
c3RWaWRlb092ZXJsYXkgaXMgY3VycmVudGx5IHVzZWQgb25seSB1bmRlciB4ICovCj4gICAgICBp
ZiAoIWdfZ2V0ZW52KCJESVNBQkxFX0dTVFZJREVPT1ZFUkxBWSIpICYmCj4gICAgICAgICAgR0RL
X0lTX1gxMV9ESVNQTEFZKGdka19kaXNwbGF5X2dldF9kZWZhdWx0KCkpKSB7CgpGcmVkaWFubwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
