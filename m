Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C28561B46
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE5689C46;
	Mon,  8 Jul 2019 07:29:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C3F89C46
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D2516308FE8D
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C8BF454587
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:47 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFE8C206D1
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:47 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:29:47 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <874108618.26606012.1562570987741.JavaMail.zimbra@redhat.com>
In-Reply-To: <1067255912.25083032.1561708090897.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
 <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
 <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
 <1067255912.25083032.1561708090897.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhUpvgadlmGh5R3zY1BANZQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 08 Jul 2019 07:29:47 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 04/13] spicevmc: Remove reds
 parameter from spicevmc_device_disconnect
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBVbnVzZWQuCj4gPiA+ID4gQWxzbyB0aGUgZGV2aWNlcyBz
aG91bGQgYmUgYWJsZSB0byByZWxlYXNlIHRoZW1zZWx2ZXMuCj4gPiA+ID4gCj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4g
LS0tCj4gPiA+ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgMyArLS0KPiA+ID4gPiAgc2VydmVy
L3JlZHMuYyAgICAgICAgfCAyICstCj4gPiA+ID4gIHNlcnZlci9zcGljZXZtYy5jICAgIHwgMiAr
LQo+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9z
ZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+IGluZGV4IDUzMjdjMjVlNS4uOTcwMGRmOTk3IDEw
MDY0NAo+ID4gPiA+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gKysrIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiBAQCAtMjM3LDggKzIzNyw3IEBAIHZvaWQKPiA+ID4g
PiByZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX3JlbGVhc2UoUmVkQ2hhckRldmljZQo+ID4g
PiA+ICpkZXYsCj4gPiA+ID4gIFJlZENoYXJEZXZpY2UgKnNwaWNldm1jX2RldmljZV9jb25uZWN0
KFJlZHNTdGF0ZSAqcmVkcywKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKnNpbiwKPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCBjaGFubmVsX3R5cGUpOwo+ID4g
PiA+IC12b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZUNoYXJEZXZpY2VJbnN0
YW5jZSAqY2hhcl9kZXZpY2UpOwo+ID4gPiA+ICt2b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25u
ZWN0KFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpjaGFyX2RldmljZSk7Cj4gPiA+ID4gIAo+ID4g
PiA+ICBTcGljZUNoYXJEZXZpY2VJbnRlcmZhY2UKPiA+ID4gPiAgKnNwaWNlX2NoYXJfZGV2aWNl
X2dldF9pbnRlcmZhY2UoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmluc3RhbmNlKTsKPiA+ID4g
PiAgCj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmMgYi9zZXJ2ZXIvcmVkcy5jCj4g
PiA+ID4gaW5kZXggNzkyZTk4MzgxLi43MDQzZTRkMmEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvc2Vy
dmVyL3JlZHMuYwo+ID4gPiA+ICsrKyBiL3NlcnZlci9yZWRzLmMKPiA+ID4gPiBAQCAtMzM3OSw3
ICszMzc5LDcgQEAgc3RhdGljIGludAo+ID4gPiA+IHNwaWNlX3NlcnZlcl9jaGFyX2RldmljZV9y
ZW1vdmVfaW50ZXJmYWNlKFJlZHNTdGF0ZSAqcmVkcywgU3BpY2VCYXNlSQo+ID4gPiA+ICAjZW5k
aWYKPiA+ID4gPiAgICAgIGVsc2UgaWYgKHN0cmNtcChjaGFyX2RldmljZS0+c3VidHlwZSwgU1VC
VFlQRV9VU0JSRURJUikgPT0gMCB8fAo+ID4gPiA+ICAgICAgICAgICAgICAgc3RyY21wKGNoYXJf
ZGV2aWNlLT5zdWJ0eXBlLCBTVUJUWVBFX1BPUlQpID09IDApIHsKPiA+ID4gPiAtICAgICAgICBz
cGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChyZWRzLCBjaGFyX2RldmljZSk7Cj4gPiA+ID4gKyAg
ICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoY2hhcl9kZXZpY2UpOwo+ID4gPiA+ICAg
ICAgfSBlbHNlIHsKPiA+ID4gPiAgICAgICAgICBzcGljZV93YXJuaW5nKCJmYWlsZWQgdG8gcmVt
b3ZlIGNoYXIgZGV2aWNlICVzIiwKPiA+ID4gPiAgICAgICAgICBjaGFyX2RldmljZS0+c3VidHlw
ZSk7Cj4gPiA+ID4gICAgICB9Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9zcGljZXZtYy5j
IGIvc2VydmVyL3NwaWNldm1jLmMKPiA+ID4gPiBpbmRleCA0NjBlZGIwNGYuLmJmZTNjZjZlNSAx
MDA2NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiA+ICsrKyBiL3NlcnZl
ci9zcGljZXZtYy5jCj4gPiA+ID4gQEAgLTgxMiw3ICs4MTIsNyBAQCBSZWRDaGFyRGV2aWNlICpz
cGljZXZtY19kZXZpY2VfY29ubmVjdChSZWRzU3RhdGUKPiA+ID4gPiAqcmVkcywKPiA+ID4gPiAg
fQo+ID4gPiA+ICAKPiA+ID4gPiAgLyogTXVzdCBiZSBjYWxsZWQgZnJvbSBSZWRDbGllbnQgaGFu
ZGxpbmcgdGhyZWFkLiAqLwo+ID4gPiA+IC12b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0
KFJlZHNTdGF0ZSAqcmVkcywKPiA+ID4gPiBTcGljZUNoYXJEZXZpY2VJbnN0YW5jZQo+ID4gPiA+
ICpzaW4pCj4gPiA+ID4gK3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFy
RGV2aWNlSW5zdGFuY2UgKnNpbikKPiA+ID4gPiAgewo+ID4gPiA+ICAgICAgZ19vYmplY3RfdW5y
ZWYoUkVEX0NIQVJfREVWSUNFKHNpbi0+c3QpKTsKPiA+ID4gPiAgICAgIHNpbi0+c3QgPSBOVUxM
Owo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
