Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DA041BD5
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F728925E;
	Wed, 12 Jun 2019 05:57:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CE68925E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:57:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 44257309264D
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:57:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CCA9513EC
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:57:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33E2354D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:57:24 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:57:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-4-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 12 Jun 2019 05:57:24 +0000 (UTC)
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

cGluZwoKPiAKPiBVbnVzZWQuCj4gQWxzbyB0aGUgZGV2aWNlcyBzaG91bGQgYmUgYWJsZSB0byBy
ZWxlYXNlIHRoZW1zZWx2ZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgMyArLS0K
PiAgc2VydmVyL3JlZHMuYyAgICAgICAgfCAyICstCj4gIHNlcnZlci9zcGljZXZtYy5jICAgIHwg
MiArLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaAo+IGluZGV4IDUzMjdjMjVlNS4uOTcwMGRmOTk3IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9j
aGFyLWRldmljZS5oCj4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiBAQCAtMjM3LDggKzIz
Nyw3IEBAIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9yZWxlYXNlKFJlZENoYXJE
ZXZpY2UKPiAqZGV2LAo+ICBSZWRDaGFyRGV2aWNlICpzcGljZXZtY19kZXZpY2VfY29ubmVjdChS
ZWRzU3RhdGUgKnJlZHMsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVpbnQ4X3QgY2hhbm5lbF90eXBlKTsKPiAtdm9pZCBzcGljZXZtY19k
ZXZpY2VfZGlzY29ubmVjdChSZWRzU3RhdGUgKnJlZHMsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmNoYXJfZGV2aWNlKTsKPiArdm9p
ZCBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqY2hh
cl9kZXZpY2UpOwo+ICAKPiAgU3BpY2VDaGFyRGV2aWNlSW50ZXJmYWNlCj4gICpzcGljZV9jaGFy
X2RldmljZV9nZXRfaW50ZXJmYWNlKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICppbnN0YW5jZSk7
Cj4gIAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwo+IGluZGV4
IDc5MmU5ODM4MS4uNzA0M2U0ZDJhIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9yZWRzLmMKPiArKysg
Yi9zZXJ2ZXIvcmVkcy5jCj4gQEAgLTMzNzksNyArMzM3OSw3IEBAIHN0YXRpYyBpbnQKPiBzcGlj
ZV9zZXJ2ZXJfY2hhcl9kZXZpY2VfcmVtb3ZlX2ludGVyZmFjZShSZWRzU3RhdGUgKnJlZHMsIFNw
aWNlQmFzZUkKPiAgI2VuZGlmCj4gICAgICBlbHNlIGlmIChzdHJjbXAoY2hhcl9kZXZpY2UtPnN1
YnR5cGUsIFNVQlRZUEVfVVNCUkVESVIpID09IDAgfHwKPiAgICAgICAgICAgICAgIHN0cmNtcChj
aGFyX2RldmljZS0+c3VidHlwZSwgU1VCVFlQRV9QT1JUKSA9PSAwKSB7Cj4gLSAgICAgICAgc3Bp
Y2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QocmVkcywgY2hhcl9kZXZpY2UpOwo+ICsgICAgICAgIHNw
aWNldm1jX2RldmljZV9kaXNjb25uZWN0KGNoYXJfZGV2aWNlKTsKPiAgICAgIH0gZWxzZSB7Cj4g
ICAgICAgICAgc3BpY2Vfd2FybmluZygiZmFpbGVkIHRvIHJlbW92ZSBjaGFyIGRldmljZSAlcyIs
Cj4gICAgICAgICAgY2hhcl9kZXZpY2UtPnN1YnR5cGUpOwo+ICAgICAgfQo+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gaW5kZXggNDYwZWRiMDRm
Li5iZmUzY2Y2ZTUgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3NwaWNldm1jLmMKPiArKysgYi9zZXJ2
ZXIvc3BpY2V2bWMuYwo+IEBAIC04MTIsNyArODEyLDcgQEAgUmVkQ2hhckRldmljZSAqc3BpY2V2
bWNfZGV2aWNlX2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLAo+ICB9Cj4gIAo+ICAvKiBNdXN0IGJl
IGNhbGxlZCBmcm9tIFJlZENsaWVudCBoYW5kbGluZyB0aHJlYWQuICovCj4gLXZvaWQgc3BpY2V2
bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLCBTcGljZUNoYXJEZXZpY2VJbnN0
YW5jZQo+ICpzaW4pCj4gK3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFy
RGV2aWNlSW5zdGFuY2UgKnNpbikKPiAgewo+ICAgICAgZ19vYmplY3RfdW5yZWYoUkVEX0NIQVJf
REVWSUNFKHNpbi0+c3QpKTsKPiAgICAgIHNpbi0+c3QgPSBOVUxMOwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
