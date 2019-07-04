Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78095FC91
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 19:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07226E39C;
	Thu,  4 Jul 2019 17:37:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232CA6E39C
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 17:37:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B68DF2F8BC4
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 17:37:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE0D25D71B
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 17:37:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A0FA14EBC3;
 Thu,  4 Jul 2019 17:37:51 +0000 (UTC)
Date: Thu, 4 Jul 2019 13:37:50 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1418353593.26468098.1562261870139.JavaMail.zimbra@redhat.com>
In-Reply-To: <787632e1-d3af-f6b8-fc69-9e2769564158@redhat.com>
References: <20190704093357.2098-1-fziglio@redhat.com>
 <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
 <1318423445.26431316.1562246887335.JavaMail.zimbra@redhat.com>
 <2065711672.26431619.1562247105263.JavaMail.zimbra@redhat.com>
 <787632e1-d3af-f6b8-fc69-9e2769564158@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.11]
Thread-Topic: fixup! dcc-send: remove useless pipe_item assignment pipe_item
Thread-Index: 9pSe0y3c8HsSJZcfOmD9IZdpzOZSaw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 04 Jul 2019 17:37:51 +0000 (UTC)
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

PiAKPiBPbiA3LzQvMTkgNDozMSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+Pgo+ID4+
PiBPbiA3LzQvMTkgMTI6MzMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+Pj4+IFJlbW92
ZSB1c2UtYWZ0ZXItZnJlZSBpbnRyb2R1Y2VkIGJ5Cj4gPj4+PiBhNzhhN2QyNTEwNDI4OTIxODJi
MTU4NjUwMjkxZDE5YTg1YmJkNmIxCj4gPj4+PiAtLS0KPiA+Pj4+ICAgIHNlcnZlci9kY2Mtc2Vu
ZC5jIHwgOSArKysrKy0tLS0KPiA+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL3NlcnZlci9kY2Mt
c2VuZC5jIGIvc2VydmVyL2RjYy1zZW5kLmMKPiA+Pj4+IGluZGV4IDU2NWE3OWYzMy4uNDU4MmUz
NTQ1IDEwMDY0NAo+ID4+Pj4gLS0tIGEvc2VydmVyL2RjYy1zZW5kLmMKPiA+Pj4+ICsrKyBiL3Nl
cnZlci9kY2Mtc2VuZC5jCj4gPj4+PiBAQCAtNzI1LDcgKzcyNSw2IEBAIHN0YXRpYyB2b2lkCj4g
Pj4+PiByZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNw
bGF5Q2hhbm5lbENsaWVudAo+ID4+Pj4gICAgICAgICAgICBSZWRQaXBlSXRlbSAqcGlwZV9pdGVt
ID0gbC0+ZGF0YTsKPiA+Pj4+ICAgICAgICAgICAgRHJhd2FibGUgKmRyYXdhYmxlOwo+ID4+Pj4g
ICAgICAgICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Cj4gPj4+PiAtICAgICAgICBSZWRJ
bWFnZUl0ZW0gKmltYWdlOwo+ID4+Pj4gICAgCj4gPj4+PiAgICAgICAgICAgIGlmIChwaXBlX2l0
ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCj4gPj4+PiAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+Pj4+IEBAIC03NDUsMTQgKzc0NCwxNiBAQCBzdGF0aWMgdm9pZAo+ID4+
Pj4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxh
eUNoYW5uZWxDbGllbnQKPiA+Pj4+ICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4+Pj4gICAg
ICAgICAgICB9Cj4gPj4+PiAgICAKPiA+Pj4+IC0gICAgICAgIGltYWdlID0gZGNjX2FkZF9zdXJm
YWNlX2FyZWFfaW1hZ2UoZGNjLAo+ID4+Pj4gZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+c3VyZmFj
ZV9pZCwKPiA+Pj4+IC0KPiA+Pj4+ICZkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94LAo+ID4+
Pj4gbCwgVFJVRSk7Cj4gPj4+PiArICAgICAgICBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShk
Y2MsCj4gPj4+PiBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkLAo+ID4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRyYXdhYmxlLT5yZWRfZHJhd2FibGUt
PmJib3gsIGwsCj4gPj4+PiBUUlVFKTsKPiA+Pj4+ICAgICAgICAgICAgcmVzZW50X3N1cmZhY2Vf
aWRzW251bV9yZXNlbnRdID0KPiA+Pj4+ICAgICAgICAgICAgZHJhd2FibGUtPnJlZF9kcmF3YWJs
ZS0+c3VyZmFjZV9pZDsKPiA+Pj4+ICAgICAgICAgICAgcmVzZW50X2FyZWFzW251bV9yZXNlbnRd
ID0gZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveDsKPiA+Pj4+ICAgICAgICAgICAgbnVtX3Jl
c2VudCsrOwo+ID4+Pj4gICAgCj4gPj4+PiAtICAgICAgICBzcGljZV9hc3NlcnQoaW1hZ2UpOwo+
ID4+Pj4gKyAgICAgICAgR0xpc3QgKmltYWdlX3BvcyA9IGwtPm5leHQ7Cj4gPj4+PiArICAgICAg
ICBzcGljZV9hc3NlcnQoaW1hZ2VfcG9zKTsKPiA+Pj4+ICAgICAgICAgICAgcmVkX2NoYW5uZWxf
Y2xpZW50X3BpcGVfcmVtb3ZlX2FuZF9yZWxlYXNlX3BvcyhSRURfQ0hBTk5FTF9DTElFTlQoZGNj
KSwKPiA+Pj4+ICAgICAgICAgICAgbCk7Cj4gPj4+PiArICAgICAgICBsID0gaW1hZ2VfcG9zOwo+
ID4+Pj4gICAgICAgIH0KPiA+Pj4+ICAgIH0KPiA+Pj4+ICAgIAo+ID4+Pj4KPiA+Pj4KPiA+Pj4g
SSBzb2x2ZWQgaXQgZGlmZmVyZW50bHk6Cj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
ZGNjLXNlbmQuYyBiL3NlcnZlci9kY2Mtc2VuZC5jCj4gPj4+IGluZGV4IDg0ZmExYmU3Mi4uMjU1
ZTg5M2Y3IDEwMDY0NAo+ID4+PiAtLS0gYS9zZXJ2ZXIvZGNjLXNlbmQuYwo+ID4+PiArKysgYi9z
ZXJ2ZXIvZGNjLXNlbmQuYwo+ID4+PiBAQCAtNzEzLDcgKzcxMyw3IEBAIHN0YXRpYyB2b2lkCj4g
Pj4+IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3Bs
YXlDaGFubmVsQ2xpZW50Cj4gPj4+ICAgICAgICBpbnQgcmVzZW50X3N1cmZhY2VfaWRzW01BWF9Q
SVBFX1NJWkVdOwo+ID4+PiAgICAgICAgU3BpY2VSZWN0IHJlc2VudF9hcmVhc1tNQVhfUElQRV9T
SVpFXTsgLy8gbm90IHBvaW50ZXJzIHNpbmNlCj4gPj4+IGRyYXdhYmxlcyBtYXkgYmUgcmVsZWFz
ZWQKPiA+Pj4gICAgICAgIGludCBudW1fcmVzZW50Owo+ID4+PiAtICAgIEdMaXN0ICpsOwo+ID4+
PiArICAgIEdMaXN0ICpsLCAqbHByZXY7Cj4gPj4KPiA+PiBJIHdvdWxkIHVzZSBqdXN0ICJwcmV2
IiBvciAibF9wcmV2Ii4KPiA+Pgo+ID4+PiAgICAgICAgR1F1ZXVlICpwaXBlOwo+ID4+Pgo+ID4+
PiAgICAgICAgcmVzZW50X3N1cmZhY2VfaWRzWzBdID0gZmlyc3Rfc3VyZmFjZV9pZDsKPiA+Pj4g
QEAgLTcyMywxMiArNzIzLDEzIEBAIHN0YXRpYyB2b2lkCj4gPj4+IHJlZF9waXBlX3JlcGxhY2Vf
cmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVsQ2xpZW50Cj4gPj4+
ICAgICAgICBwaXBlID0gcmVkX2NoYW5uZWxfY2xpZW50X2dldF9waXBlKFJFRF9DSEFOTkVMX0NM
SUVOVChkY2MpKTsKPiA+Pj4KPiA+Pj4gICAgICAgIC8vIGdvaW5nIGZyb20gdGhlIG9sZGVzdCB0
byB0aGUgbmV3ZXN0Cj4gPj4+IC0gICAgZm9yIChsID0gcGlwZS0+dGFpbDsgbCAhPSBOVUxMOyBs
ID0gbC0+cHJldikgewo+ID4+PiArICAgIGZvciAobCA9IHBpcGUtPnRhaWw7IGwgIT0gTlVMTDsg
bCA9IGxwcmV2KSB7Cj4gPj4+ICAgICAgICAgICAgUmVkUGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwt
PmRhdGE7Cj4gPj4+ICAgICAgICAgICAgRHJhd2FibGUgKmRyYXdhYmxlOwo+ID4+PiAgICAgICAg
ICAgIFJlZERyYXdhYmxlUGlwZUl0ZW0gKmRwaTsKPiA+Pj4gICAgICAgICAgICBSZWRJbWFnZUl0
ZW0gKmltYWdlOwo+ID4+Pgo+ID4+PiArICAgICAgICBscHJldiA9IGwtPnByZXY7Cj4gPj4+ICAg
ICAgICAgICAgaWYgKHBpcGVfaXRlbS0+dHlwZSAhPSBSRURfUElQRV9JVEVNX1RZUEVfRFJBVykK
PiA+Pj4gICAgICAgICAgICAgICAgY29udGludWU7Cj4gPj4+ICAgICAgICAgICAgZHBpID0gU1BJ
Q0VfVVBDQVNUKFJlZERyYXdhYmxlUGlwZUl0ZW0sIHBpcGVfaXRlbSk7Cj4gPj4+Cj4gPj4+Cj4g
Pj4+Cj4gPj4+Cj4gPj4+IFVyaS4KPiA+Pj4KPiA+Pgo+ID4+IEZpbmUgd2l0aCBpdC4KPiA+PiBP
ciBtYXliZSB5b3UgY2FuIHVwZGF0ZSAibCIgZGlyZWN0bHkgYW5kIHVzZSBhICJjdXJyIiBpbnN0
ZWFkIHdpdGgKPiA+PiBsaW1pdGVkIHNjb3BlIChpbnNpZGUgdGhlICJmb3IiKSBhbmQgYWx3YXlz
IGluaXRpYWxpemVkPwo+ID4+Cj4gPiAKPiA+IFdoeSBub3QgdXNpbmcgR0xJU1RfRk9SRUFDSF9S
RVZFUlNFRCA/Cj4gCj4gQXQgZmlyc3QgSSB0aG91Z2h0IGl0IHdvcmtzLCBidXQgaG93IGRvIHlv
dSBnZXQKPiB0aGUgbG9jYXRpb24gdG8gYWRkIHRoZSBpbWFnZSB3aGVuIGNhbGxpbmcKPiBkY2Nf
YWRkX3N1cmZhY2VfYXJlYV9pbWFnZSA/Cj4gCj4gCgpZZXMsIHlvdSBhcmUgcmlnaHQsIGluIHRo
aXMgY2FzZSBiZXR0ZXIgdGhlIG9sZCAibWFudWFsIiB3YXkuCgpGcmVkaWFubwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
