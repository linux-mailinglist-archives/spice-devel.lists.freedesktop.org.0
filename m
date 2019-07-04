Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA8F5F92B
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 15:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1BD6E343;
	Thu,  4 Jul 2019 13:31:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7366E345
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:31:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6390130860A3
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:31:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 59D9E140FD
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:31:45 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5045618433A0;
 Thu,  4 Jul 2019 13:31:45 +0000 (UTC)
Date: Thu, 4 Jul 2019 09:31:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <2065711672.26431619.1562247105263.JavaMail.zimbra@redhat.com>
In-Reply-To: <1318423445.26431316.1562246887335.JavaMail.zimbra@redhat.com>
References: <20190704093357.2098-1-fziglio@redhat.com>
 <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
 <1318423445.26431316.1562246887335.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.1]
Thread-Topic: fixup! dcc-send: remove useless pipe_item assignment pipe_item
Thread-Index: o7P7k0MITNdko1FYNLVgtkY4ECzZQU+/f3tB
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 04 Jul 2019 13:31:45 +0000 (UTC)
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

PiA+IAo+ID4gT24gNy80LzE5IDEyOjMzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiA+
IFJlbW92ZSB1c2UtYWZ0ZXItZnJlZSBpbnRyb2R1Y2VkIGJ5Cj4gPiA+IGE3OGE3ZDI1MTA0Mjg5
MjE4MmIxNTg2NTAyOTFkMTlhODViYmQ2YjEKPiA+ID4gLS0tCj4gPiA+ICAgc2VydmVyL2RjYy1z
ZW5kLmMgfCA5ICsrKysrLS0tLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy1z
ZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+ID4gPiBpbmRleCA1NjVhNzlmMzMuLjQ1ODJlMzU0
NSAxMDA2NDQKPiA+ID4gLS0tIGEvc2VydmVyL2RjYy1zZW5kLmMKPiA+ID4gKysrIGIvc2VydmVy
L2RjYy1zZW5kLmMKPiA+ID4gQEAgLTcyNSw3ICs3MjUsNiBAQCBzdGF0aWMgdm9pZAo+ID4gPiBy
ZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hh
bm5lbENsaWVudAo+ID4gPiAgICAgICAgICAgUmVkUGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwtPmRh
dGE7Cj4gPiA+ICAgICAgICAgICBEcmF3YWJsZSAqZHJhd2FibGU7Cj4gPiA+ICAgICAgICAgICBS
ZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Cj4gPiA+IC0gICAgICAgIFJlZEltYWdlSXRlbSAqaW1h
Z2U7Cj4gPiA+ICAgCj4gPiA+ICAgICAgICAgICBpZiAocGlwZV9pdGVtLT50eXBlICE9IFJFRF9Q
SVBFX0lURU1fVFlQRV9EUkFXKQo+ID4gPiAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gPiBA
QCAtNzQ1LDE0ICs3NDQsMTYgQEAgc3RhdGljIHZvaWQKPiA+ID4gcmVkX3BpcGVfcmVwbGFjZV9y
ZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKPiA+ID4g
ICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ID4gICAgICAgICAgIH0KPiA+ID4gICAKPiA+ID4g
LSAgICAgICAgaW1hZ2UgPSBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsCj4gPiA+IGRy
YXdhYmxlLT5yZWRfZHJhd2FibGUtPnN1cmZhY2VfaWQsCj4gPiA+IC0KPiA+ID4gJmRyYXdhYmxl
LT5yZWRfZHJhd2FibGUtPmJib3gsCj4gPiA+IGwsIFRSVUUpOwo+ID4gPiArICAgICAgICBkY2Nf
YWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsCj4gPiA+IGRyYXdhYmxlLT5yZWRfZHJhd2FibGUt
PnN1cmZhY2VfaWQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZk
cmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94LCBsLAo+ID4gPiBUUlVFKTsKPiA+ID4gICAgICAg
ICAgIHJlc2VudF9zdXJmYWNlX2lkc1tudW1fcmVzZW50XSA9Cj4gPiA+ICAgICAgICAgICBkcmF3
YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkOwo+ID4gPiAgICAgICAgICAgcmVzZW50X2Fy
ZWFzW251bV9yZXNlbnRdID0gZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveDsKPiA+ID4gICAg
ICAgICAgIG51bV9yZXNlbnQrKzsKPiA+ID4gICAKPiA+ID4gLSAgICAgICAgc3BpY2VfYXNzZXJ0
KGltYWdlKTsKPiA+ID4gKyAgICAgICAgR0xpc3QgKmltYWdlX3BvcyA9IGwtPm5leHQ7Cj4gPiAK
PiA+IGwgbWF5IGJlIHRoZSBxdWV1ZSB0YWlsLCBhbmQgaW4gdGhhdCBjYXNlIGwtPm5leHQgd291
bGQgYmUKPiA+IE5VTEwsIHdvdWxkbid0IGl0ID8KPiA+IAo+IAo+IE5vLCBkY2NfYWRkX3N1cmZh
Y2VfYXJlYV9pbWFnZSBhZGQgYW4gZWxlbWVudCBhZnRlciBsIHNvIGwtPm5leHQgY2FuJ3QgYmUK
PiBOVUxMLgo+IAo+ID4gPiArICAgICAgICBzcGljZV9hc3NlcnQoaW1hZ2VfcG9zKTsKPiA+ID4g
ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX3JlbW92ZV9hbmRfcmVsZWFzZV9wb3Mo
UkVEX0NIQU5ORUxfQ0xJRU5UKGRjYyksCj4gPiA+ICAgICAgICAgICBsKTsKPiA+ID4gKyAgICAg
ICAgbCA9IGltYWdlX3BvczsKPiA+ID4gICAgICAgfQo+ID4gPiAgIH0KPiA+ID4gICAKPiA+ID4g
Cj4gPiAKPiA+IEkgc29sdmVkIGl0IGRpZmZlcmVudGx5Ogo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
c2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+ID4gaW5kZXggODRmYTFiZTcy
Li4yNTVlODkzZjcgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvZGNjLXNlbmQuYwo+ID4gKysrIGIv
c2VydmVyL2RjYy1zZW5kLmMKPiA+IEBAIC03MTMsNyArNzEzLDcgQEAgc3RhdGljIHZvaWQKPiA+
IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlD
aGFubmVsQ2xpZW50Cj4gPiAgICAgICBpbnQgcmVzZW50X3N1cmZhY2VfaWRzW01BWF9QSVBFX1NJ
WkVdOwo+ID4gICAgICAgU3BpY2VSZWN0IHJlc2VudF9hcmVhc1tNQVhfUElQRV9TSVpFXTsgLy8g
bm90IHBvaW50ZXJzIHNpbmNlCj4gPiBkcmF3YWJsZXMgbWF5IGJlIHJlbGVhc2VkCj4gPiAgICAg
ICBpbnQgbnVtX3Jlc2VudDsKPiA+IC0gICAgR0xpc3QgKmw7Cj4gPiArICAgIEdMaXN0ICpsLCAq
bHByZXY7Cj4gCj4gSSB3b3VsZCB1c2UganVzdCAicHJldiIgb3IgImxfcHJldiIuCj4gCj4gPiAg
ICAgICBHUXVldWUgKnBpcGU7Cj4gPiAKPiA+ICAgICAgIHJlc2VudF9zdXJmYWNlX2lkc1swXSA9
IGZpcnN0X3N1cmZhY2VfaWQ7Cj4gPiBAQCAtNzIzLDEyICs3MjMsMTMgQEAgc3RhdGljIHZvaWQK
PiA+IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3Bs
YXlDaGFubmVsQ2xpZW50Cj4gPiAgICAgICBwaXBlID0gcmVkX2NoYW5uZWxfY2xpZW50X2dldF9w
aXBlKFJFRF9DSEFOTkVMX0NMSUVOVChkY2MpKTsKPiA+IAo+ID4gICAgICAgLy8gZ29pbmcgZnJv
bSB0aGUgb2xkZXN0IHRvIHRoZSBuZXdlc3QKPiA+IC0gICAgZm9yIChsID0gcGlwZS0+dGFpbDsg
bCAhPSBOVUxMOyBsID0gbC0+cHJldikgewo+ID4gKyAgICBmb3IgKGwgPSBwaXBlLT50YWlsOyBs
ICE9IE5VTEw7IGwgPSBscHJldikgewo+ID4gICAgICAgICAgIFJlZFBpcGVJdGVtICpwaXBlX2l0
ZW0gPSBsLT5kYXRhOwo+ID4gICAgICAgICAgIERyYXdhYmxlICpkcmF3YWJsZTsKPiA+ICAgICAg
ICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Cj4gPiAgICAgICAgICAgUmVkSW1hZ2VJdGVt
ICppbWFnZTsKPiA+IAo+ID4gKyAgICAgICAgbHByZXYgPSBsLT5wcmV2Owo+ID4gICAgICAgICAg
IGlmIChwaXBlX2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCj4gPiAgICAg
ICAgICAgICAgIGNvbnRpbnVlOwo+ID4gICAgICAgICAgIGRwaSA9IFNQSUNFX1VQQ0FTVChSZWRE
cmF3YWJsZVBpcGVJdGVtLCBwaXBlX2l0ZW0pOwo+ID4gCj4gPiAKPiA+IAo+ID4gCj4gPiBVcmku
Cj4gPiAKPiAKPiBGaW5lIHdpdGggaXQuCj4gT3IgbWF5YmUgeW91IGNhbiB1cGRhdGUgImwiIGRp
cmVjdGx5IGFuZCB1c2UgYSAiY3VyciIgaW5zdGVhZCB3aXRoCj4gbGltaXRlZCBzY29wZSAoaW5z
aWRlIHRoZSAiZm9yIikgYW5kIGFsd2F5cyBpbml0aWFsaXplZD8KPiAKCldoeSBub3QgdXNpbmcg
R0xJU1RfRk9SRUFDSF9SRVZFUlNFRCA/CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
