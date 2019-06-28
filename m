Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF5459554
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2A36E892;
	Fri, 28 Jun 2019 07:48:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFE06E892
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 06E743092649
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F19FB60C4E
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E84461806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:10 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:48:10 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1067255912.25083032.1561708090897.JavaMail.zimbra@redhat.com>
In-Reply-To: <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
 <1379459240.22408188.1560319044165.JavaMail.zimbra@redhat.com>
 <1975889384.23872977.1561102531244.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: spicevmc: Remove reds parameter from spicevmc_device_disconnect
Thread-Index: zZ/hUOiDM9Z/daruEiyp38/yuN0PhUpvgadlmGh5R3w=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 28 Jun 2019 07:48:11 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gVW51c2Vk
Lgo+ID4gPiBBbHNvIHRoZSBkZXZpY2VzIHNob3VsZCBiZSBhYmxlIHRvIHJlbGVhc2UgdGhlbXNl
bHZlcy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgMyAr
LS0KPiA+ID4gIHNlcnZlci9yZWRzLmMgICAgICAgIHwgMiArLQo+ID4gPiAgc2VydmVyL3NwaWNl
dm1jLmMgICAgfCAyICstCj4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaCBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gPiA+IGluZGV4IDUzMjdjMjVlNS4uOTcwMGRm
OTk3IDEwMDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiArKysgYi9z
ZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ID4gPiBAQCAtMjM3LDggKzIzNyw3IEBAIHZvaWQKPiA+ID4g
cmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9yZWxlYXNlKFJlZENoYXJEZXZpY2UKPiA+ID4g
KmRldiwKPiA+ID4gIFJlZENoYXJEZXZpY2UgKnNwaWNldm1jX2RldmljZV9jb25uZWN0KFJlZHNT
dGF0ZSAqcmVkcywKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sCj4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1aW50OF90IGNoYW5uZWxfdHlwZSk7Cj4gPiA+IC12b2lkIHNw
aWNldm1jX2RldmljZV9kaXNjb25uZWN0KFJlZHNTdGF0ZSAqcmVkcywKPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmNoYXJfZGV2
aWNlKTsKPiA+ID4gK3ZvaWQgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QoU3BpY2VDaGFyRGV2
aWNlSW5zdGFuY2UgKmNoYXJfZGV2aWNlKTsKPiA+ID4gIAo+ID4gPiAgU3BpY2VDaGFyRGV2aWNl
SW50ZXJmYWNlCj4gPiA+ICAqc3BpY2VfY2hhcl9kZXZpY2VfZ2V0X2ludGVyZmFjZShTcGljZUNo
YXJEZXZpY2VJbnN0YW5jZSAqaW5zdGFuY2UpOwo+ID4gPiAgCj4gPiA+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwo+ID4gPiBpbmRleCA3OTJlOTgzODEuLjcwNDNl
NGQyYSAxMDA2NDQKPiA+ID4gLS0tIGEvc2VydmVyL3JlZHMuYwo+ID4gPiArKysgYi9zZXJ2ZXIv
cmVkcy5jCj4gPiA+IEBAIC0zMzc5LDcgKzMzNzksNyBAQCBzdGF0aWMgaW50Cj4gPiA+IHNwaWNl
X3NlcnZlcl9jaGFyX2RldmljZV9yZW1vdmVfaW50ZXJmYWNlKFJlZHNTdGF0ZSAqcmVkcywgU3Bp
Y2VCYXNlSQo+ID4gPiAgI2VuZGlmCj4gPiA+ICAgICAgZWxzZSBpZiAoc3RyY21wKGNoYXJfZGV2
aWNlLT5zdWJ0eXBlLCBTVUJUWVBFX1VTQlJFRElSKSA9PSAwIHx8Cj4gPiA+ICAgICAgICAgICAg
ICAgc3RyY21wKGNoYXJfZGV2aWNlLT5zdWJ0eXBlLCBTVUJUWVBFX1BPUlQpID09IDApIHsKPiA+
ID4gLSAgICAgICAgc3BpY2V2bWNfZGV2aWNlX2Rpc2Nvbm5lY3QocmVkcywgY2hhcl9kZXZpY2Up
Owo+ID4gPiArICAgICAgICBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChjaGFyX2RldmljZSk7
Cj4gPiA+ICAgICAgfSBlbHNlIHsKPiA+ID4gICAgICAgICAgc3BpY2Vfd2FybmluZygiZmFpbGVk
IHRvIHJlbW92ZSBjaGFyIGRldmljZSAlcyIsCj4gPiA+ICAgICAgICAgIGNoYXJfZGV2aWNlLT5z
dWJ0eXBlKTsKPiA+ID4gICAgICB9Cj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMu
YyBiL3NlcnZlci9zcGljZXZtYy5jCj4gPiA+IGluZGV4IDQ2MGVkYjA0Zi4uYmZlM2NmNmU1IDEw
MDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2V2bWMuYwo+ID4gPiArKysgYi9zZXJ2ZXIvc3Bp
Y2V2bWMuYwo+ID4gPiBAQCAtODEyLDcgKzgxMiw3IEBAIFJlZENoYXJEZXZpY2UgKnNwaWNldm1j
X2RldmljZV9jb25uZWN0KFJlZHNTdGF0ZQo+ID4gPiAqcmVkcywKPiA+ID4gIH0KPiA+ID4gIAo+
ID4gPiAgLyogTXVzdCBiZSBjYWxsZWQgZnJvbSBSZWRDbGllbnQgaGFuZGxpbmcgdGhyZWFkLiAq
Lwo+ID4gPiAtdm9pZCBzcGljZXZtY19kZXZpY2VfZGlzY29ubmVjdChSZWRzU3RhdGUgKnJlZHMs
IFNwaWNlQ2hhckRldmljZUluc3RhbmNlCj4gPiA+ICpzaW4pCj4gPiA+ICt2b2lkIHNwaWNldm1j
X2RldmljZV9kaXNjb25uZWN0KFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4pCj4gPiA+ICB7
Cj4gPiA+ICAgICAgZ19vYmplY3RfdW5yZWYoUkVEX0NIQVJfREVWSUNFKHNpbi0+c3QpKTsKPiA+
ID4gICAgICBzaW4tPnN0ID0gTlVMTDsKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
