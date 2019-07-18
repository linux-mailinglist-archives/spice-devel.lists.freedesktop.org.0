Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B14F86CA0F
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D4F6E32C;
	Thu, 18 Jul 2019 07:40:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881A76E32B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EDA233082145
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E3C3D5D71A
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D7C764EA30
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:07 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:40:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <458249857.688065.1563435607531.JavaMail.zimbra@redhat.com>
In-Reply-To: <874108618.26606012.1562570987741.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
 <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
 <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
 <1067255912.25083032.1561708090897.JavaMail.zimbra@redhat.com>
 <874108618.26606012.1562570987741.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhUpvgadlmGh5R3zY1BANZXPjH5r8
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 18 Jul 2019 07:40:07 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IFVudXNlZC4KPiA+ID4gPiA+IEFsc28gdGhlIGRldmljZXMgc2hvdWxkIGJlIGFibGUgdG8gcmVs
ZWFzZSB0aGVtc2VsdmVzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4g
IHNlcnZlci9jaGFyLWRldmljZS5oIHwgMyArLS0KPiA+ID4gPiA+ICBzZXJ2ZXIvcmVkcy5jICAg
ICAgICB8IDIgKy0KPiA+ID4gPiA+ICBzZXJ2ZXIvc3BpY2V2bWMuYyAgICB8IDIgKy0KPiA+ID4g
PiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiA+IGluZGV4IDUzMjdjMjVlNS4uOTcwMGRmOTk3IDEw
MDY0NAo+ID4gPiA+ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmgKPiA+ID4gPiA+ICsrKyBi
L3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gPiBAQCAtMjM3LDggKzIzNyw3IEBAIHZvaWQK
PiA+ID4gPiA+IHJlZF9jaGFyX2RldmljZV93cml0ZV9idWZmZXJfcmVsZWFzZShSZWRDaGFyRGV2
aWNlCj4gPiA+ID4gPiAqZGV2LAo+ID4gPiA+ID4gIFJlZENoYXJEZXZpY2UgKnNwaWNldm1jX2Rl
dmljZV9jb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqc2luLAo+ID4g
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgY2hh
bm5lbF90eXBlKTsKPiA+ID4gPiA+IC12b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0KFJl
ZHNTdGF0ZSAqcmVkcywKPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFNwaWNlQ2hhckRldmljZUluc3RhbmNlCj4gPiA+ID4gPiAqY2hhcl9kZXZpY2UpOwo+ID4gPiA+
ID4gK3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFyRGV2aWNlSW5zdGFu
Y2UKPiA+ID4gPiA+ICpjaGFyX2RldmljZSk7Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgU3BpY2VD
aGFyRGV2aWNlSW50ZXJmYWNlCj4gPiA+ID4gPiAgKnNwaWNlX2NoYXJfZGV2aWNlX2dldF9pbnRl
cmZhY2UoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmluc3RhbmNlKTsKPiA+ID4gPiA+ICAKPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwo+ID4gPiA+
ID4gaW5kZXggNzkyZTk4MzgxLi43MDQzZTRkMmEgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9zZXJ2
ZXIvcmVkcy5jCj4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkcy5jCj4gPiA+ID4gPiBAQCAtMzM3
OSw3ICszMzc5LDcgQEAgc3RhdGljIGludAo+ID4gPiA+ID4gc3BpY2Vfc2VydmVyX2NoYXJfZGV2
aWNlX3JlbW92ZV9pbnRlcmZhY2UoUmVkc1N0YXRlICpyZWRzLCBTcGljZUJhc2VJCj4gPiA+ID4g
PiAgI2VuZGlmCj4gPiA+ID4gPiAgICAgIGVsc2UgaWYgKHN0cmNtcChjaGFyX2RldmljZS0+c3Vi
dHlwZSwgU1VCVFlQRV9VU0JSRURJUikgPT0gMCB8fAo+ID4gPiA+ID4gICAgICAgICAgICAgICBz
dHJjbXAoY2hhcl9kZXZpY2UtPnN1YnR5cGUsIFNVQlRZUEVfUE9SVCkgPT0gMCkgewo+ID4gPiA+
ID4gLSAgICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QocmVkcywgY2hhcl9kZXZpY2Up
Owo+ID4gPiA+ID4gKyAgICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoY2hhcl9kZXZp
Y2UpOwo+ID4gPiA+ID4gICAgICB9IGVsc2Ugewo+ID4gPiA+ID4gICAgICAgICAgc3BpY2Vfd2Fy
bmluZygiZmFpbGVkIHRvIHJlbW92ZSBjaGFyIGRldmljZSAlcyIsCj4gPiA+ID4gPiAgICAgICAg
ICBjaGFyX2RldmljZS0+c3VidHlwZSk7Cj4gPiA+ID4gPiAgICAgIH0KPiA+ID4gPiA+IGRpZmYg
LS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+ID4gPiBp
bmRleCA0NjBlZGIwNGYuLmJmZTNjZjZlNSAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL3NlcnZlci9z
cGljZXZtYy5jCj4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiA+ID4gQEAg
LTgxMiw3ICs4MTIsNyBAQCBSZWRDaGFyRGV2aWNlICpzcGljZXZtY19kZXZpY2VfY29ubmVjdChS
ZWRzU3RhdGUKPiA+ID4gPiA+ICpyZWRzLAo+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ICAKPiA+ID4g
PiA+ICAvKiBNdXN0IGJlIGNhbGxlZCBmcm9tIFJlZENsaWVudCBoYW5kbGluZyB0aHJlYWQuICov
Cj4gPiA+ID4gPiAtdm9pZCBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChSZWRzU3RhdGUgKnJl
ZHMsCj4gPiA+ID4gPiBTcGljZUNoYXJEZXZpY2VJbnN0YW5jZQo+ID4gPiA+ID4gKnNpbikKPiA+
ID4gPiA+ICt2b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25uZWN0KFNwaWNlQ2hhckRldmljZUlu
c3RhbmNlICpzaW4pCj4gPiA+ID4gPiAgewo+ID4gPiA+ID4gICAgICBnX29iamVjdF91bnJlZihS
RURfQ0hBUl9ERVZJQ0Uoc2luLT5zdCkpOwo+ID4gPiA+ID4gICAgICBzaW4tPnN0ID0gTlVMTDsK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
