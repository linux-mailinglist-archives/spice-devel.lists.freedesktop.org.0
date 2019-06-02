Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05543239B
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 16:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBFF89213;
	Sun,  2 Jun 2019 14:37:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAFF089213
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 14:37:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7AEAFC058CA2
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 14:37:18 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D78CB17C41;
 Sun,  2 Jun 2019 14:37:17 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190601121413.932-1-fziglio@redhat.com>
 <20190601121413.932-2-fziglio@redhat.com>
Organization: Red Hat
Message-ID: <d929603e-a92d-a88d-e1e1-89c657935ce6@redhat.com>
Date: Sun, 2 Jun 2019 17:37:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190601121413.932-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Sun, 02 Jun 2019 14:37:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] spicevmc: Do not use
 RedCharDevice pipe items handling
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

T24gNi8xLzE5IDM6MTQgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBBcyB3ZSBkb24ndCB1
c2UgYW55IHRva2VuIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIG5vdCBxdWV1ZQo+IGRpcmVjdGx5IGlu
c3RlYWQgb2YgcGFzc2luZyB0aHJvdWdoIFJlZENoYXJEZXZpY2UuCj4gVGhpcyB3aWxsIG1ha2Ug
ZWFzaWVyIHRvIGxpbWl0IHRoZSBxdWV1ZSB3aGljaCBjdXJyZW50bHkgaXMKPiB1bmxpbWl0ZWQu
CgpIaSwKCklmIHdlIG5lZWQgZmxvdyBjb250cm9sLCBob3cgZGlmZmljdWx0IHdvdWxkIGl0IGJl
IHRvIGFkZCBzdXBwb3J0CmZvciB0b2tlbnMgPwooIHRoZXJlIGlzIGEgInRvZG86IGFkZCBmbG93
IGNvbnRyb2wiIGNvbW1lbnQgaW4gc3BpY2V2bWMgKS4KClVyaS4KCj4gCj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzZXJ2ZXIv
c3BpY2V2bWMuYyB8IDE1ICsrKysrLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9zcGlj
ZXZtYy5jIGIvc2VydmVyL3NwaWNldm1jLmMKPiBpbmRleCA4NGJiYjczYzIuLjhjNDE1NzNhZSAx
MDA2NDQKPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ICsrKyBiL3NlcnZlci9zcGljZXZtYy5j
Cj4gQEAgLTM2MCwyOSArMzYwLDI0IEBAIHN0YXRpYyBSZWRQaXBlSXRlbSAqc3BpY2V2bWNfY2hh
cmRldl9yZWFkX21zZ19mcm9tX2RldihSZWRDaGFyRGV2aWNlICpzZWxmLAo+ICAgCj4gICAgICAg
ICAgIG1zZ19pdGVtX2NvbXByZXNzZWQgPSB0cnlfY29tcHJlc3NfbHo0KGNoYW5uZWwsIG4sIG1z
Z19pdGVtKTsKPiAgICAgICAgICAgaWYgKG1zZ19pdGVtX2NvbXByZXNzZWQgIT0gTlVMTCkgewo+
IC0gICAgICAgICAgICByZXR1cm4gJm1zZ19pdGVtX2NvbXByZXNzZWQtPmJhc2U7Cj4gKyAgICAg
ICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywgJm1z
Z19pdGVtX2NvbXByZXNzZWQtPmJhc2UpOwo+ICsgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiAg
ICAgICAgICAgfQo+ICAgI2VuZGlmCj4gICAgICAgICAgIHN0YXRfaW5jX2NvdW50ZXIoY2hhbm5l
bC0+b3V0X2RhdGEsIG4pOwo+ICAgICAgICAgICBtc2dfaXRlbS0+dW5jb21wcmVzc2VkX2RhdGFf
c2l6ZSA9IG47Cj4gICAgICAgICAgIG1zZ19pdGVtLT5idWZfdXNlZCA9IG47Cj4gLSAgICAgICAg
cmV0dXJuICZtc2dfaXRlbS0+YmFzZTsKPiAtICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgY2hhbm5l
bC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3Bp
cGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLCAmbXNnX2l0ZW0tPmJhc2UpOwo+ICAgICAgICAgICBy
ZXR1cm4gTlVMTDsKPiAgICAgICB9Cj4gKyAgICBjaGFubmVsLT5waXBlX2l0ZW0gPSBtc2dfaXRl
bTsKPiArICAgIHJldHVybiBOVUxMOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBzcGljZXZt
Y19jaGFyZGV2X3NlbmRfbXNnX3RvX2NsaWVudChSZWRDaGFyRGV2aWNlICpzZWxmLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlwZUl0ZW0g
Km1zZywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFJlZENsaWVudCAqY2xpZW50KQo+ICAgewo+IC0gICAgUmVkQ2hhckRldmljZVNwaWNlVm1jICp2
bWMgPSBSRURfQ0hBUl9ERVZJQ0VfU1BJQ0VWTUMoc2VsZik7Cj4gLSAgICBSZWRWbWNDaGFubmVs
ICpjaGFubmVsID0gUkVEX1ZNQ19DSEFOTkVMKHZtYy0+Y2hhbm5lbCk7Cj4gLQo+IC0gICAgc3Bp
Y2VfYXNzZXJ0KHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2xpZW50KGNoYW5uZWwtPnJjYykgPT0g
Y2xpZW50KTsKPiAtICAgIHJlZF9waXBlX2l0ZW1fcmVmKG1zZyk7Cj4gLSAgICByZWRfY2hhbm5l
bF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsIG1zZyk7Cj4gICB9Cj4gICAKPiAg
IHN0YXRpYyB2b2lkIHJlZF9wb3J0X2luaXRfaXRlbV9mcmVlKHN0cnVjdCBSZWRQaXBlSXRlbSAq
YmFzZSkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
