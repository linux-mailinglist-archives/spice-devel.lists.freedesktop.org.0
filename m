Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5B45F918
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 15:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C216E343;
	Thu,  4 Jul 2019 13:28:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643F16E343
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:28:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0382A4ACDF
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:28:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF8A51001B14
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:28:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E0438206D1;
 Thu,  4 Jul 2019 13:28:08 +0000 (UTC)
Date: Thu, 4 Jul 2019 09:28:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1318423445.26431316.1562246887335.JavaMail.zimbra@redhat.com>
In-Reply-To: <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
References: <20190704093357.2098-1-fziglio@redhat.com>
 <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.27]
Thread-Topic: fixup! dcc-send: remove useless pipe_item assignment pipe_item
Thread-Index: o7P7k0MITNdko1FYNLVgtkY4ECzZQQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 04 Jul 2019 13:28:09 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] fixup! dcc-send: remove
 useless pipe_item assignment pipe_item
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

PiAKPiBPbiA3LzQvMTkgMTI6MzMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IFJlbW92
ZSB1c2UtYWZ0ZXItZnJlZSBpbnRyb2R1Y2VkIGJ5Cj4gPiBhNzhhN2QyNTEwNDI4OTIxODJiMTU4
NjUwMjkxZDE5YTg1YmJkNmIxCj4gPiAtLS0KPiA+ICAgc2VydmVyL2RjYy1zZW5kLmMgfCA5ICsr
KysrLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNj
LXNlbmQuYwo+ID4gaW5kZXggNTY1YTc5ZjMzLi40NTgyZTM1NDUgMTAwNjQ0Cj4gPiAtLS0gYS9z
ZXJ2ZXIvZGNjLXNlbmQuYwo+ID4gKysrIGIvc2VydmVyL2RjYy1zZW5kLmMKPiA+IEBAIC03MjUs
NyArNzI1LDYgQEAgc3RhdGljIHZvaWQKPiA+IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJh
d2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVsQ2xpZW50Cj4gPiAgICAgICAgICAgUmVk
UGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwtPmRhdGE7Cj4gPiAgICAgICAgICAgRHJhd2FibGUgKmRy
YXdhYmxlOwo+ID4gICAgICAgICAgIFJlZERyYXdhYmxlUGlwZUl0ZW0gKmRwaTsKPiA+IC0gICAg
ICAgIFJlZEltYWdlSXRlbSAqaW1hZ2U7Cj4gPiAgIAo+ID4gICAgICAgICAgIGlmIChwaXBlX2l0
ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCj4gPiAgICAgICAgICAgICAgIGNv
bnRpbnVlOwo+ID4gQEAgLTc0NSwxNCArNzQ0LDE2IEBAIHN0YXRpYyB2b2lkCj4gPiByZWRfcGlw
ZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hhbm5lbENs
aWVudAo+ID4gICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICAgICAgICAgICB9Cj4gPiAgIAo+
ID4gLSAgICAgICAgaW1hZ2UgPSBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsCj4gPiBk
cmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkLAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAmZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveCwK
PiA+IGwsIFRSVUUpOwo+ID4gKyAgICAgICAgZGNjX2FkZF9zdXJmYWNlX2FyZWFfaW1hZ2UoZGNj
LAo+ID4gZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZCwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94LCBs
LAo+ID4gVFJVRSk7Cj4gPiAgICAgICAgICAgcmVzZW50X3N1cmZhY2VfaWRzW251bV9yZXNlbnRd
ID0KPiA+ICAgICAgICAgICBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkOwo+ID4g
ICAgICAgICAgIHJlc2VudF9hcmVhc1tudW1fcmVzZW50XSA9IGRyYXdhYmxlLT5yZWRfZHJhd2Fi
bGUtPmJib3g7Cj4gPiAgICAgICAgICAgbnVtX3Jlc2VudCsrOwo+ID4gICAKPiA+IC0gICAgICAg
IHNwaWNlX2Fzc2VydChpbWFnZSk7Cj4gPiArICAgICAgICBHTGlzdCAqaW1hZ2VfcG9zID0gbC0+
bmV4dDsKPiAKPiBsIG1heSBiZSB0aGUgcXVldWUgdGFpbCwgYW5kIGluIHRoYXQgY2FzZSBsLT5u
ZXh0IHdvdWxkIGJlCj4gTlVMTCwgd291bGRuJ3QgaXQgPwo+IAoKTm8sIGRjY19hZGRfc3VyZmFj
ZV9hcmVhX2ltYWdlIGFkZCBhbiBlbGVtZW50IGFmdGVyIGwgc28gbC0+bmV4dCBjYW4ndCBiZSBO
VUxMLgoKPiA+ICsgICAgICAgIHNwaWNlX2Fzc2VydChpbWFnZV9wb3MpOwo+ID4gICAgICAgICAg
IHJlZF9jaGFubmVsX2NsaWVudF9waXBlX3JlbW92ZV9hbmRfcmVsZWFzZV9wb3MoUkVEX0NIQU5O
RUxfQ0xJRU5UKGRjYyksCj4gPiAgICAgICAgICAgbCk7Cj4gPiArICAgICAgICBsID0gaW1hZ2Vf
cG9zOwo+ID4gICAgICAgfQo+ID4gICB9Cj4gPiAgIAo+ID4gCj4gCj4gSSBzb2x2ZWQgaXQgZGlm
ZmVyZW50bHk6Cj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9kY2Mtc2VuZC5jIGIvc2VydmVyL2Rj
Yy1zZW5kLmMKPiBpbmRleCA4NGZhMWJlNzIuLjI1NWU4OTNmNyAxMDA2NDQKPiAtLS0gYS9zZXJ2
ZXIvZGNjLXNlbmQuYwo+ICsrKyBiL3NlcnZlci9kY2Mtc2VuZC5jCj4gQEAgLTcxMyw3ICs3MTMs
NyBAQCBzdGF0aWMgdm9pZAo+IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dp
dGhfaW1hZ2VzKERpc3BsYXlDaGFubmVsQ2xpZW50Cj4gICAgICAgaW50IHJlc2VudF9zdXJmYWNl
X2lkc1tNQVhfUElQRV9TSVpFXTsKPiAgICAgICBTcGljZVJlY3QgcmVzZW50X2FyZWFzW01BWF9Q
SVBFX1NJWkVdOyAvLyBub3QgcG9pbnRlcnMgc2luY2UKPiBkcmF3YWJsZXMgbWF5IGJlIHJlbGVh
c2VkCj4gICAgICAgaW50IG51bV9yZXNlbnQ7Cj4gLSAgICBHTGlzdCAqbDsKPiArICAgIEdMaXN0
ICpsLCAqbHByZXY7CgpJIHdvdWxkIHVzZSBqdXN0ICJwcmV2IiBvciAibF9wcmV2Ii4KCj4gICAg
ICAgR1F1ZXVlICpwaXBlOwo+IAo+ICAgICAgIHJlc2VudF9zdXJmYWNlX2lkc1swXSA9IGZpcnN0
X3N1cmZhY2VfaWQ7Cj4gQEAgLTcyMywxMiArNzIzLDEzIEBAIHN0YXRpYyB2b2lkCj4gcmVkX3Bp
cGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5uZWxD
bGllbnQKPiAgICAgICBwaXBlID0gcmVkX2NoYW5uZWxfY2xpZW50X2dldF9waXBlKFJFRF9DSEFO
TkVMX0NMSUVOVChkY2MpKTsKPiAKPiAgICAgICAvLyBnb2luZyBmcm9tIHRoZSBvbGRlc3QgdG8g
dGhlIG5ld2VzdAo+IC0gICAgZm9yIChsID0gcGlwZS0+dGFpbDsgbCAhPSBOVUxMOyBsID0gbC0+
cHJldikgewo+ICsgICAgZm9yIChsID0gcGlwZS0+dGFpbDsgbCAhPSBOVUxMOyBsID0gbHByZXYp
IHsKPiAgICAgICAgICAgUmVkUGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwtPmRhdGE7Cj4gICAgICAg
ICAgIERyYXdhYmxlICpkcmF3YWJsZTsKPiAgICAgICAgICAgUmVkRHJhd2FibGVQaXBlSXRlbSAq
ZHBpOwo+ICAgICAgICAgICBSZWRJbWFnZUl0ZW0gKmltYWdlOwo+IAo+ICsgICAgICAgIGxwcmV2
ID0gbC0+cHJldjsKPiAgICAgICAgICAgaWYgKHBpcGVfaXRlbS0+dHlwZSAhPSBSRURfUElQRV9J
VEVNX1RZUEVfRFJBVykKPiAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAgICAgICBkcGkg
PSBTUElDRV9VUENBU1QoUmVkRHJhd2FibGVQaXBlSXRlbSwgcGlwZV9pdGVtKTsKPiAKPiAKPiAK
PiAKPiBVcmkuCj4gCgpGaW5lIHdpdGggaXQuCk9yIG1heWJlIHlvdSBjYW4gdXBkYXRlICJsIiBk
aXJlY3RseSBhbmQgdXNlIGEgImN1cnIiIGluc3RlYWQgd2l0aApsaW1pdGVkIHNjb3BlIChpbnNp
ZGUgdGhlICJmb3IiKSBhbmQgYWx3YXlzIGluaXRpYWxpemVkPwoKRnJlZGlhbm8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
