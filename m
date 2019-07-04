Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E55F900
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 15:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272108901F;
	Thu,  4 Jul 2019 13:18:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8E78901F
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:17:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2FAD85A07
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 13:17:58 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2132E1724A;
 Thu,  4 Jul 2019 13:17:57 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190704093357.2098-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
Date: Thu, 4 Jul 2019 16:17:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190704093357.2098-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 04 Jul 2019 13:17:58 +0000 (UTC)
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy80LzE5IDEyOjMzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gUmVtb3ZlIHVzZS1h
ZnRlci1mcmVlIGludHJvZHVjZWQgYnkgYTc4YTdkMjUxMDQyODkyMTgyYjE1ODY1MDI5MWQxOWE4
NWJiZDZiMQo+IC0tLQo+ICAgc2VydmVyL2RjYy1zZW5kLmMgfCA5ICsrKysrLS0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+IGluZGV4IDU2NWE3
OWYzMy4uNDU4MmUzNTQ1IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9kY2Mtc2VuZC5jCj4gKysrIGIv
c2VydmVyL2RjYy1zZW5kLmMKPiBAQCAtNzI1LDcgKzcyNSw2IEBAIHN0YXRpYyB2b2lkIHJlZF9w
aXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVs
Q2xpZW50Cj4gICAgICAgICAgIFJlZFBpcGVJdGVtICpwaXBlX2l0ZW0gPSBsLT5kYXRhOwo+ICAg
ICAgICAgICBEcmF3YWJsZSAqZHJhd2FibGU7Cj4gICAgICAgICAgIFJlZERyYXdhYmxlUGlwZUl0
ZW0gKmRwaTsKPiAtICAgICAgICBSZWRJbWFnZUl0ZW0gKmltYWdlOwo+ICAgCj4gICAgICAgICAg
IGlmIChwaXBlX2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCj4gICAgICAg
ICAgICAgICBjb250aW51ZTsKPiBAQCAtNzQ1LDE0ICs3NDQsMTYgQEAgc3RhdGljIHZvaWQgcmVk
X3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5u
ZWxDbGllbnQKPiAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAgICAgICB9Cj4gICAKPiAt
ICAgICAgICBpbWFnZSA9IGRjY19hZGRfc3VyZmFjZV9hcmVhX2ltYWdlKGRjYywgZHJhd2FibGUt
PnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICZkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94LCBsLCBUUlVFKTsK
PiArICAgICAgICBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsIGRyYXdhYmxlLT5yZWRf
ZHJhd2FibGUtPnN1cmZhY2VfaWQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJmRyYXdhYmxlLT5yZWRfZHJhd2FibGUtPmJib3gsIGwsIFRSVUUpOwo+ICAgICAgICAgICBy
ZXNlbnRfc3VyZmFjZV9pZHNbbnVtX3Jlc2VudF0gPSBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5z
dXJmYWNlX2lkOwo+ICAgICAgICAgICByZXNlbnRfYXJlYXNbbnVtX3Jlc2VudF0gPSBkcmF3YWJs
ZS0+cmVkX2RyYXdhYmxlLT5iYm94Owo+ICAgICAgICAgICBudW1fcmVzZW50Kys7Cj4gICAKPiAt
ICAgICAgICBzcGljZV9hc3NlcnQoaW1hZ2UpOwo+ICsgICAgICAgIEdMaXN0ICppbWFnZV9wb3Mg
PSBsLT5uZXh0OwoKbCBtYXkgYmUgdGhlIHF1ZXVlIHRhaWwsIGFuZCBpbiB0aGF0IGNhc2UgbC0+
bmV4dCB3b3VsZCBiZQpOVUxMLCB3b3VsZG4ndCBpdCA/Cgo+ICsgICAgICAgIHNwaWNlX2Fzc2Vy
dChpbWFnZV9wb3MpOwo+ICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9yZW1vdmVf
YW5kX3JlbGVhc2VfcG9zKFJFRF9DSEFOTkVMX0NMSUVOVChkY2MpLCBsKTsKPiArICAgICAgICBs
ID0gaW1hZ2VfcG9zOwo+ICAgICAgIH0KPiAgIH0KPiAgIAo+IAoKSSBzb2x2ZWQgaXQgZGlmZmVy
ZW50bHk6CgpkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQu
YwppbmRleCA4NGZhMWJlNzIuLjI1NWU4OTNmNyAxMDA2NDQKLS0tIGEvc2VydmVyL2RjYy1zZW5k
LmMKKysrIGIvc2VydmVyL2RjYy1zZW5kLmMKQEAgLTcxMyw3ICs3MTMsNyBAQCBzdGF0aWMgdm9p
ZCAKcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxh
eUNoYW5uZWxDbGllbnQKICAgICAgaW50IHJlc2VudF9zdXJmYWNlX2lkc1tNQVhfUElQRV9TSVpF
XTsKICAgICAgU3BpY2VSZWN0IHJlc2VudF9hcmVhc1tNQVhfUElQRV9TSVpFXTsgLy8gbm90IHBv
aW50ZXJzIHNpbmNlIApkcmF3YWJsZXMgbWF5IGJlIHJlbGVhc2VkCiAgICAgIGludCBudW1fcmVz
ZW50OwotICAgIEdMaXN0ICpsOworICAgIEdMaXN0ICpsLCAqbHByZXY7CiAgICAgIEdRdWV1ZSAq
cGlwZTsKCiAgICAgIHJlc2VudF9zdXJmYWNlX2lkc1swXSA9IGZpcnN0X3N1cmZhY2VfaWQ7CkBA
IC03MjMsMTIgKzcyMywxMyBAQCBzdGF0aWMgdm9pZCAKcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJl
ZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKICAgICAgcGlwZSA9
IHJlZF9jaGFubmVsX2NsaWVudF9nZXRfcGlwZShSRURfQ0hBTk5FTF9DTElFTlQoZGNjKSk7Cgog
ICAgICAvLyBnb2luZyBmcm9tIHRoZSBvbGRlc3QgdG8gdGhlIG5ld2VzdAotICAgIGZvciAobCA9
IHBpcGUtPnRhaWw7IGwgIT0gTlVMTDsgbCA9IGwtPnByZXYpIHsKKyAgICBmb3IgKGwgPSBwaXBl
LT50YWlsOyBsICE9IE5VTEw7IGwgPSBscHJldikgewogICAgICAgICAgUmVkUGlwZUl0ZW0gKnBp
cGVfaXRlbSA9IGwtPmRhdGE7CiAgICAgICAgICBEcmF3YWJsZSAqZHJhd2FibGU7CiAgICAgICAg
ICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7CiAgICAgICAgICBSZWRJbWFnZUl0ZW0gKmltYWdl
OwoKKyAgICAgICAgbHByZXYgPSBsLT5wcmV2OwogICAgICAgICAgaWYgKHBpcGVfaXRlbS0+dHlw
ZSAhPSBSRURfUElQRV9JVEVNX1RZUEVfRFJBVykKICAgICAgICAgICAgICBjb250aW51ZTsKICAg
ICAgICAgIGRwaSA9IFNQSUNFX1VQQ0FTVChSZWREcmF3YWJsZVBpcGVJdGVtLCBwaXBlX2l0ZW0p
OwoKCgoKVXJpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
