Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 609007632B
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EE76ED0D;
	Fri, 26 Jul 2019 10:08:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3174E6ED0D
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C6BC330C26DE
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BC00B5DA97
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF1DE41F53
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:32 +0000 (UTC)
Date: Fri, 26 Jul 2019 06:08:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1228162423.3099690.1564135712528.JavaMail.zimbra@redhat.com>
In-Reply-To: <458249857.688065.1563435607531.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
 <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
 <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
 <1067255912.25083032.1561708090897.JavaMail.zimbra@redhat.com>
 <874108618.26606012.1562570987741.JavaMail.zimbra@redhat.com>
 <458249857.688065.1563435607531.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.26]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhUpvgadlmGh5R3zY1BANZXPjH5r8unxJnjY=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 26 Jul 2019 10:08:32 +0000 (UTC)
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
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVW51c2VkLgo+ID4gPiA+
ID4gPiBBbHNvIHRoZSBkZXZpY2VzIHNob3VsZCBiZSBhYmxlIHRvIHJlbGVhc2UgdGhlbXNlbHZl
cy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gIHNlcnZl
ci9jaGFyLWRldmljZS5oIHwgMyArLS0KPiA+ID4gPiA+ID4gIHNlcnZlci9yZWRzLmMgICAgICAg
IHwgMiArLQo+ID4gPiA+ID4gPiAgc2VydmVyL3NwaWNldm1jLmMgICAgfCAyICstCj4gPiA+ID4g
PiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBi
L3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+ID4gPiA+IGluZGV4IDUzMjdjMjVlNS4uOTcwMGRm
OTk3IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+
ID4gPiArKysgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiA+ID4gPiBAQCAtMjM3LDggKzIz
Nyw3IEBAIHZvaWQKPiA+ID4gPiA+ID4gcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9yZWxl
YXNlKFJlZENoYXJEZXZpY2UKPiA+ID4gPiA+ID4gKmRldiwKPiA+ID4gPiA+ID4gIFJlZENoYXJE
ZXZpY2UgKnNwaWNldm1jX2RldmljZV9jb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKPiA+ID4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlQ2hhckRldmlj
ZUluc3RhbmNlCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqc2luLAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdWludDhfdCBjaGFubmVsX3R5cGUpOwo+ID4gPiA+ID4gPiAtdm9pZCBzcGljZXZtY19k
ZXZpY2VfZGlzY29ubmVjdChSZWRzU3RhdGUgKnJlZHMsCj4gPiA+ID4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFNwaWNlQ2hhckRldmljZUluc3RhbmNlCj4gPiA+ID4gPiA+
ICpjaGFyX2RldmljZSk7Cj4gPiA+ID4gPiA+ICt2b2lkIHNwaWNldm1jX2RldmljZV9kaXNjb25u
ZWN0KFNwaWNlQ2hhckRldmljZUluc3RhbmNlCj4gPiA+ID4gPiA+ICpjaGFyX2RldmljZSk7Cj4g
PiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIFNwaWNlQ2hhckRldmljZUludGVyZmFjZQo+ID4gPiA+
ID4gPiAgKnNwaWNlX2NoYXJfZGV2aWNlX2dldF9pbnRlcmZhY2UoU3BpY2VDaGFyRGV2aWNlSW5z
dGFuY2UKPiA+ID4gPiA+ID4gICppbnN0YW5jZSk7Cj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmMgYi9zZXJ2ZXIvcmVkcy5jCj4gPiA+ID4gPiA+IGlu
ZGV4IDc5MmU5ODM4MS4uNzA0M2U0ZDJhIDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIv
cmVkcy5jCj4gPiA+ID4gPiA+ICsrKyBiL3NlcnZlci9yZWRzLmMKPiA+ID4gPiA+ID4gQEAgLTMz
NzksNyArMzM3OSw3IEBAIHN0YXRpYyBpbnQKPiA+ID4gPiA+ID4gc3BpY2Vfc2VydmVyX2NoYXJf
ZGV2aWNlX3JlbW92ZV9pbnRlcmZhY2UoUmVkc1N0YXRlICpyZWRzLAo+ID4gPiA+ID4gPiBTcGlj
ZUJhc2VJCj4gPiA+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiA+ID4gICAgICBlbHNlIGlmIChzdHJj
bXAoY2hhcl9kZXZpY2UtPnN1YnR5cGUsIFNVQlRZUEVfVVNCUkVESVIpID09IDAKPiA+ID4gPiA+
ID4gICAgICB8fAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgIHN0cmNtcChjaGFyX2RldmljZS0+
c3VidHlwZSwgU1VCVFlQRV9QT1JUKSA9PSAwKSB7Cj4gPiA+ID4gPiA+IC0gICAgICAgIHNwaWNl
dm1jX2RldmljZV9kaXNjb25uZWN0KHJlZHMsIGNoYXJfZGV2aWNlKTsKPiA+ID4gPiA+ID4gKyAg
ICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoY2hhcl9kZXZpY2UpOwo+ID4gPiA+ID4g
PiAgICAgIH0gZWxzZSB7Cj4gPiA+ID4gPiA+ICAgICAgICAgIHNwaWNlX3dhcm5pbmcoImZhaWxl
ZCB0byByZW1vdmUgY2hhciBkZXZpY2UgJXMiLAo+ID4gPiA+ID4gPiAgICAgICAgICBjaGFyX2Rl
dmljZS0+c3VidHlwZSk7Cj4gPiA+ID4gPiA+ICAgICAgfQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvc2VydmVyL3NwaWNldm1jLmMgYi9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiA+ID4gPiBpbmRl
eCA0NjBlZGIwNGYuLmJmZTNjZjZlNSAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvc2VydmVyL3Nw
aWNldm1jLmMKPiA+ID4gPiA+ID4gKysrIGIvc2VydmVyL3NwaWNldm1jLmMKPiA+ID4gPiA+ID4g
QEAgLTgxMiw3ICs4MTIsNyBAQCBSZWRDaGFyRGV2aWNlCj4gPiA+ID4gPiA+ICpzcGljZXZtY19k
ZXZpY2VfY29ubmVjdChSZWRzU3RhdGUKPiA+ID4gPiA+ID4gKnJlZHMsCj4gPiA+ID4gPiA+ICB9
Cj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIC8qIE11c3QgYmUgY2FsbGVkIGZyb20gUmVkQ2xp
ZW50IGhhbmRsaW5nIHRocmVhZC4gKi8KPiA+ID4gPiA+ID4gLXZvaWQgc3BpY2V2bWNfZGV2aWNl
X2Rpc2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLAo+ID4gPiA+ID4gPiBTcGljZUNoYXJEZXZpY2VJ
bnN0YW5jZQo+ID4gPiA+ID4gPiAqc2luKQo+ID4gPiA+ID4gPiArdm9pZCBzcGljZXZtY19kZXZp
Y2VfZGlzY29ubmVjdChTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqc2luKQo+ID4gPiA+ID4gPiAg
ewo+ID4gPiA+ID4gPiAgICAgIGdfb2JqZWN0X3VucmVmKFJFRF9DSEFSX0RFVklDRShzaW4tPnN0
KSk7Cj4gPiA+ID4gPiA+ICAgICAgc2luLT5zdCA9IE5VTEw7Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
