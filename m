Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40585FBBE
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 18:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7D76E392;
	Thu,  4 Jul 2019 16:31:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDBC6E391
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 16:31:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5CAA25944C
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 16:31:37 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BFCE3968DD;
 Thu,  4 Jul 2019 16:31:36 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190704093357.2098-1-fziglio@redhat.com>
 <35211c00-0022-597e-e8eb-6a60b1baf75d@redhat.com>
 <1318423445.26431316.1562246887335.JavaMail.zimbra@redhat.com>
 <2065711672.26431619.1562247105263.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <787632e1-d3af-f6b8-fc69-9e2769564158@redhat.com>
Date: Thu, 4 Jul 2019 19:31:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2065711672.26431619.1562247105263.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 04 Jul 2019 16:31:37 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy80LzE5IDQ6MzEgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+Cj4+PiBPbiA3LzQv
MTkgMTI6MzMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+PiBSZW1vdmUgdXNlLWFmdGVy
LWZyZWUgaW50cm9kdWNlZCBieQo+Pj4+IGE3OGE3ZDI1MTA0Mjg5MjE4MmIxNTg2NTAyOTFkMTlh
ODViYmQ2YjEKPj4+PiAtLS0KPj4+PiAgICBzZXJ2ZXIvZGNjLXNlbmQuYyB8IDkgKysrKystLS0t
Cj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
Pj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLXNlbmQuYyBiL3NlcnZlci9kY2Mtc2Vu
ZC5jCj4+Pj4gaW5kZXggNTY1YTc5ZjMzLi40NTgyZTM1NDUgMTAwNjQ0Cj4+Pj4gLS0tIGEvc2Vy
dmVyL2RjYy1zZW5kLmMKPj4+PiArKysgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+Pj4+IEBAIC03MjUs
NyArNzI1LDYgQEAgc3RhdGljIHZvaWQKPj4+PiByZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2Ry
YXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hhbm5lbENsaWVudAo+Pj4+ICAgICAgICAgICAg
UmVkUGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwtPmRhdGE7Cj4+Pj4gICAgICAgICAgICBEcmF3YWJs
ZSAqZHJhd2FibGU7Cj4+Pj4gICAgICAgICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Cj4+
Pj4gLSAgICAgICAgUmVkSW1hZ2VJdGVtICppbWFnZTsKPj4+PiAgICAKPj4+PiAgICAgICAgICAg
IGlmIChwaXBlX2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCj4+Pj4gICAg
ICAgICAgICAgICAgY29udGludWU7Cj4+Pj4gQEAgLTc0NSwxNCArNzQ0LDE2IEBAIHN0YXRpYyB2
b2lkCj4+Pj4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMo
RGlzcGxheUNoYW5uZWxDbGllbnQKPj4+PiAgICAgICAgICAgICAgICBjb250aW51ZTsKPj4+PiAg
ICAgICAgICAgIH0KPj4+PiAgICAKPj4+PiAtICAgICAgICBpbWFnZSA9IGRjY19hZGRfc3VyZmFj
ZV9hcmVhX2ltYWdlKGRjYywKPj4+PiBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lk
LAo+Pj4+IC0KPj4+PiAmZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveCwKPj4+PiBsLCBUUlVF
KTsKPj4+PiArICAgICAgICBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsCj4+Pj4gZHJh
d2FibGUtPnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZCwKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveCwgbCwKPj4+PiBU
UlVFKTsKPj4+PiAgICAgICAgICAgIHJlc2VudF9zdXJmYWNlX2lkc1tudW1fcmVzZW50XSA9Cj4+
Pj4gICAgICAgICAgICBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkOwo+Pj4+ICAg
ICAgICAgICAgcmVzZW50X2FyZWFzW251bV9yZXNlbnRdID0gZHJhd2FibGUtPnJlZF9kcmF3YWJs
ZS0+YmJveDsKPj4+PiAgICAgICAgICAgIG51bV9yZXNlbnQrKzsKPj4+PiAgICAKPj4+PiAtICAg
ICAgICBzcGljZV9hc3NlcnQoaW1hZ2UpOwo+Pj4+ICsgICAgICAgIEdMaXN0ICppbWFnZV9wb3Mg
PSBsLT5uZXh0Owo+Pj4+ICsgICAgICAgIHNwaWNlX2Fzc2VydChpbWFnZV9wb3MpOwo+Pj4+ICAg
ICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfcmVtb3ZlX2FuZF9yZWxlYXNlX3BvcyhS
RURfQ0hBTk5FTF9DTElFTlQoZGNjKSwKPj4+PiAgICAgICAgICAgIGwpOwo+Pj4+ICsgICAgICAg
IGwgPSBpbWFnZV9wb3M7Cj4+Pj4gICAgICAgIH0KPj4+PiAgICB9Cj4+Pj4gICAgCj4+Pj4KPj4+
Cj4+PiBJIHNvbHZlZCBpdCBkaWZmZXJlbnRseToKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvc2VydmVy
L2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+Pj4gaW5kZXggODRmYTFiZTcyLi4yNTVl
ODkzZjcgMTAwNjQ0Cj4+PiAtLS0gYS9zZXJ2ZXIvZGNjLXNlbmQuYwo+Pj4gKysrIGIvc2VydmVy
L2RjYy1zZW5kLmMKPj4+IEBAIC03MTMsNyArNzEzLDcgQEAgc3RhdGljIHZvaWQKPj4+IHJlZF9w
aXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVs
Q2xpZW50Cj4+PiAgICAgICAgaW50IHJlc2VudF9zdXJmYWNlX2lkc1tNQVhfUElQRV9TSVpFXTsK
Pj4+ICAgICAgICBTcGljZVJlY3QgcmVzZW50X2FyZWFzW01BWF9QSVBFX1NJWkVdOyAvLyBub3Qg
cG9pbnRlcnMgc2luY2UKPj4+IGRyYXdhYmxlcyBtYXkgYmUgcmVsZWFzZWQKPj4+ICAgICAgICBp
bnQgbnVtX3Jlc2VudDsKPj4+IC0gICAgR0xpc3QgKmw7Cj4+PiArICAgIEdMaXN0ICpsLCAqbHBy
ZXY7Cj4+Cj4+IEkgd291bGQgdXNlIGp1c3QgInByZXYiIG9yICJsX3ByZXYiLgo+Pgo+Pj4gICAg
ICAgIEdRdWV1ZSAqcGlwZTsKPj4+Cj4+PiAgICAgICAgcmVzZW50X3N1cmZhY2VfaWRzWzBdID0g
Zmlyc3Rfc3VyZmFjZV9pZDsKPj4+IEBAIC03MjMsMTIgKzcyMywxMyBAQCBzdGF0aWMgdm9pZAo+
Pj4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxh
eUNoYW5uZWxDbGllbnQKPj4+ICAgICAgICBwaXBlID0gcmVkX2NoYW5uZWxfY2xpZW50X2dldF9w
aXBlKFJFRF9DSEFOTkVMX0NMSUVOVChkY2MpKTsKPj4+Cj4+PiAgICAgICAgLy8gZ29pbmcgZnJv
bSB0aGUgb2xkZXN0IHRvIHRoZSBuZXdlc3QKPj4+IC0gICAgZm9yIChsID0gcGlwZS0+dGFpbDsg
bCAhPSBOVUxMOyBsID0gbC0+cHJldikgewo+Pj4gKyAgICBmb3IgKGwgPSBwaXBlLT50YWlsOyBs
ICE9IE5VTEw7IGwgPSBscHJldikgewo+Pj4gICAgICAgICAgICBSZWRQaXBlSXRlbSAqcGlwZV9p
dGVtID0gbC0+ZGF0YTsKPj4+ICAgICAgICAgICAgRHJhd2FibGUgKmRyYXdhYmxlOwo+Pj4gICAg
ICAgICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Cj4+PiAgICAgICAgICAgIFJlZEltYWdl
SXRlbSAqaW1hZ2U7Cj4+Pgo+Pj4gKyAgICAgICAgbHByZXYgPSBsLT5wcmV2Owo+Pj4gICAgICAg
ICAgICBpZiAocGlwZV9pdGVtLT50eXBlICE9IFJFRF9QSVBFX0lURU1fVFlQRV9EUkFXKQo+Pj4g
ICAgICAgICAgICAgICAgY29udGludWU7Cj4+PiAgICAgICAgICAgIGRwaSA9IFNQSUNFX1VQQ0FT
VChSZWREcmF3YWJsZVBpcGVJdGVtLCBwaXBlX2l0ZW0pOwo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+IFVy
aS4KPj4+Cj4+Cj4+IEZpbmUgd2l0aCBpdC4KPj4gT3IgbWF5YmUgeW91IGNhbiB1cGRhdGUgImwi
IGRpcmVjdGx5IGFuZCB1c2UgYSAiY3VyciIgaW5zdGVhZCB3aXRoCj4+IGxpbWl0ZWQgc2NvcGUg
KGluc2lkZSB0aGUgImZvciIpIGFuZCBhbHdheXMgaW5pdGlhbGl6ZWQ/Cj4+Cj4gCj4gV2h5IG5v
dCB1c2luZyBHTElTVF9GT1JFQUNIX1JFVkVSU0VEID8KCkF0IGZpcnN0IEkgdGhvdWdodCBpdCB3
b3JrcywgYnV0IGhvdyBkbyB5b3UgZ2V0CnRoZSBsb2NhdGlvbiB0byBhZGQgdGhlIGltYWdlIHdo
ZW4gY2FsbGluZwpkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZSA/CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
