Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 908644E149
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7F86E84B;
	Fri, 21 Jun 2019 07:35:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0AB6E84B
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 62A7B88304
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 577F85D772
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B5ED1806B18
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:31 +0000 (UTC)
Date: Fri, 21 Jun 2019 03:35:31 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
In-Reply-To: <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
 <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.2]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhUpvgadl
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 21 Jun 2019 07:35:31 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFVudXNlZC4KPiA+IEFsc28gdGhlIGRldmljZXMg
c2hvdWxkIGJlIGFibGUgdG8gcmVsZWFzZSB0aGVtc2VsdmVzLgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNl
cnZlci9jaGFyLWRldmljZS5oIHwgMyArLS0KPiA+ICBzZXJ2ZXIvcmVkcy5jICAgICAgICB8IDIg
Ky0KPiA+ICBzZXJ2ZXIvc3BpY2V2bWMuYyAgICB8IDIgKy0KPiA+ICAzIGZpbGVzIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+IGluZGV4IDUzMjdj
MjVlNS4uOTcwMGRmOTk3IDEwMDY0NAo+ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+
ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiBAQCAtMjM3LDggKzIzNyw3IEBAIHZvaWQg
cmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9yZWxlYXNlKFJlZENoYXJEZXZpY2UKPiA+ICpk
ZXYsCj4gPiAgUmVkQ2hhckRldmljZSAqc3BpY2V2bWNfZGV2aWNlX2Nvbm5lY3QoUmVkc1N0YXRl
ICpyZWRzLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNl
Q2hhckRldmljZUluc3RhbmNlICpzaW4sCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdWludDhfdCBjaGFubmVsX3R5cGUpOwo+ID4gLXZvaWQgc3BpY2V2bWNfZGV2
aWNlX2Rpc2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLAo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmNoYXJfZGV2aWNlKTsKPiA+ICt2
b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0KFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpj
aGFyX2RldmljZSk7Cj4gPiAgCj4gPiAgU3BpY2VDaGFyRGV2aWNlSW50ZXJmYWNlCj4gPiAgKnNw
aWNlX2NoYXJfZGV2aWNlX2dldF9pbnRlcmZhY2UoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmlu
c3RhbmNlKTsKPiA+ICAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3Jl
ZHMuYwo+ID4gaW5kZXggNzkyZTk4MzgxLi43MDQzZTRkMmEgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2
ZXIvcmVkcy5jCj4gPiArKysgYi9zZXJ2ZXIvcmVkcy5jCj4gPiBAQCAtMzM3OSw3ICszMzc5LDcg
QEAgc3RhdGljIGludAo+ID4gc3BpY2Vfc2VydmVyX2NoYXJfZGV2aWNlX3JlbW92ZV9pbnRlcmZh
Y2UoUmVkc1N0YXRlICpyZWRzLCBTcGljZUJhc2VJCj4gPiAgI2VuZGlmCj4gPiAgICAgIGVsc2Ug
aWYgKHN0cmNtcChjaGFyX2RldmljZS0+c3VidHlwZSwgU1VCVFlQRV9VU0JSRURJUikgPT0gMCB8
fAo+ID4gICAgICAgICAgICAgICBzdHJjbXAoY2hhcl9kZXZpY2UtPnN1YnR5cGUsIFNVQlRZUEVf
UE9SVCkgPT0gMCkgewo+ID4gLSAgICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QocmVk
cywgY2hhcl9kZXZpY2UpOwo+ID4gKyAgICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3Qo
Y2hhcl9kZXZpY2UpOwo+ID4gICAgICB9IGVsc2Ugewo+ID4gICAgICAgICAgc3BpY2Vfd2Fybmlu
ZygiZmFpbGVkIHRvIHJlbW92ZSBjaGFyIGRldmljZSAlcyIsCj4gPiAgICAgICAgICBjaGFyX2Rl
dmljZS0+c3VidHlwZSk7Cj4gPiAgICAgIH0KPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2
bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiBpbmRleCA0NjBlZGIwNGYuLmJmZTNjZjZlNSAx
MDA2NDQKPiA+IC0tLSBhL3NlcnZlci9zcGljZXZtYy5jCj4gPiArKysgYi9zZXJ2ZXIvc3BpY2V2
bWMuYwo+ID4gQEAgLTgxMiw3ICs4MTIsNyBAQCBSZWRDaGFyRGV2aWNlICpzcGljZXZtY19kZXZp
Y2VfY29ubmVjdChSZWRzU3RhdGUgKnJlZHMsCj4gPiAgfQo+ID4gIAo+ID4gIC8qIE11c3QgYmUg
Y2FsbGVkIGZyb20gUmVkQ2xpZW50IGhhbmRsaW5nIHRocmVhZC4gKi8KPiA+IC12b2lkIHNwaWNl
dm1jX2RldmljZV9kaXNjb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywgU3BpY2VDaGFyRGV2aWNlSW5z
dGFuY2UKPiA+ICpzaW4pCj4gPiArdm9pZCBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChTcGlj
ZUNoYXJEZXZpY2VJbnN0YW5jZSAqc2luKQo+ID4gIHsKPiA+ICAgICAgZ19vYmplY3RfdW5yZWYo
UkVEX0NIQVJfREVWSUNFKHNpbi0+c3QpKTsKPiA+ICAgICAgc2luLT5zdCA9IE5VTEw7Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
