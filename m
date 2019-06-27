Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E36257E67
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BCC6E836;
	Thu, 27 Jun 2019 08:40:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCD16E836
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:40:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2E4F12F8BF0
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:40:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 22A766012E
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:40:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 188E6206D1;
 Thu, 27 Jun 2019 08:40:31 +0000 (UTC)
Date: Thu, 27 Jun 2019 04:40:31 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1778342961.24949689.1561624831035.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190627083149.23283-2-kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
 <20190627083149.23283-2-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.23]
Thread-Topic: streaming: Restart streams on video-codec changes
Thread-Index: CvNyEbWTc8niujJxQFI7EKECh1k4GQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 27 Jun 2019 08:40:31 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-server 1/2] streaming: Restart streams
 on video-codec changes
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

PiAKPiBJbnRlcnJ1cHQvcmVzdGFydCB0aGUgdmlkZW8gc3RyZWFtcyB3aGVuIHRoZSB1c2VyIGNo
YW5nZXMgdGhlCj4gcHJlZmVycmVkIHZpZGVvLWNvZGVjcyAoZGNjX2hhbmRsZV9wcmVmZXJyZWRf
dmlkZW9fY29kZWNfdHlwZSkgb3Igd2hlbgo+IHRoZSBob3N0IGFkbWluIHVwZGF0ZXMgdGhlIGxp
c3Qgb2YgdmlkZW8tY29kZWNzIGFsbG93ZWQKPiAoZGlzcGxheV9jaGFubmVsX3NldF92aWRlb19j
b2RlY3MpCj4gLS0tCj4gIHNlcnZlci9kY2MuYyAgICAgICAgICAgICB8IDIgKysKPiAgc2VydmVy
L2Rpc3BsYXktY2hhbm5lbC5jIHwgMiArKwo+ICBzZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgICAgfCA1
ICsrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL3NlcnZlci9kY2MuYyBiL3NlcnZlci9kY2MuYwo+IGluZGV4IGE5NGUyN2U4Li4wZGVlZWQ4
OCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZGNjLmMKPiArKysgYi9zZXJ2ZXIvZGNjLmMKPiBAQCAt
MTIwMSw2ICsxMjAxLDggQEAgc3RhdGljIGludAo+IGRjY19oYW5kbGVfcHJlZmVycmVkX3ZpZGVv
X2NvZGVjX3R5cGUoRGlzcGxheUNoYW5uZWxDbGllbnQgKmRjYywKPiAKPiAgICAgIC8qIE5ldyBj
bGllbnQgcHJlZmVyZW5jZSAqLwo+ICAgICAgZGNjX3VwZGF0ZV9wcmVmZXJyZWRfdmlkZW9fY29k
ZWNzKGRjYyk7Cj4gKyAgICB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERDQ19UT19EQyhk
Y2MpKTsKPiArCj4gICAgICByZXR1cm4gVFJVRTsKPiAgfQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2
ZXIvZGlzcGxheS1jaGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPiBpbmRleCAw
NzFjMDE0MC4uNGI4ZTZlOTAgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5j
Cj4gKysrIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gQEAgLTI1NSw2ICsyNTUsOCBAQCB2
b2lkIGRpc3BsYXlfY2hhbm5lbF9zZXRfdmlkZW9fY29kZWNzKERpc3BsYXlDaGFubmVsCj4gKmRp
c3BsYXksIEdBcnJheSAqdmlkZW9fY29kCj4gICAgICBnX2NsZWFyX3BvaW50ZXIoJmRpc3BsYXkt
PnByaXYtPnZpZGVvX2NvZGVjcywgZ19hcnJheV91bnJlZik7Cj4gICAgICBkaXNwbGF5LT5wcml2
LT52aWRlb19jb2RlY3MgPSBnX2FycmF5X3JlZih2aWRlb19jb2RlY3MpOwo+ICAgICAgZ19vYmpl
Y3Rfbm90aWZ5KEdfT0JKRUNUKGRpc3BsYXkpLCAidmlkZW8tY29kZWNzIik7Cj4gKwo+ICsgICAg
dmlkZW9fc3RyZWFtX2RldGFjaF9hbmRfc3RvcChkaXNwbGF5KTsKPiAgfQo+IAo+ICBHQXJyYXkg
KmRpc3BsYXlfY2hhbm5lbF9nZXRfdmlkZW9fY29kZWNzKERpc3BsYXlDaGFubmVsICpkaXNwbGF5
KQo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgYi9zZXJ2ZXIvdmlkZW8tc3Ry
ZWFtLmMKPiBpbmRleCA0YWMyNWFmOC4uZjIyNzcxM2IgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3Zp
ZGVvLXN0cmVhbS5jCj4gKysrIGIvc2VydmVyL3ZpZGVvLXN0cmVhbS5jCj4gQEAgLTkyNSw2ICs5
MjUsMTEgQEAgdm9pZCB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERpc3BsYXlDaGFubmVs
Cj4gKmRpc3BsYXkpCj4gICAgICBSaW5nSXRlbSAqc3RyZWFtX2l0ZW07Cj4gCj4gICAgICBzcGlj
ZV9kZWJ1ZygidHJhY2UiKTsKPiArCj4gKyAgICBpZiAoIXJpbmdfaXNfaW5pdGlhbGl6ZWQoJmRp
c3BsYXktPnByaXYtPnN0cmVhbXMpKSB7Cj4gKyAgICAgICAgcmV0dXJuOwo+ICsgICAgfQo+ICsK
CklmIHRoaXMgaGFwcGVucyBJIHdvdWxkIGNvbnNpZGVyIGEgcHJvZ3JhbSBlcnJvciBhbmQgSSB3
b3VsZCBhYm9ydCgpLgoKPiAgICAgIHdoaWxlICgoc3RyZWFtX2l0ZW0gPSByaW5nX2dldF9oZWFk
KCZkaXNwbGF5LT5wcml2LT5zdHJlYW1zKSkpIHsKPiAgICAgICAgICBWaWRlb1N0cmVhbSAqc3Ry
ZWFtID0gU1BJQ0VfQ09OVEFJTkVST0Yoc3RyZWFtX2l0ZW0sIFZpZGVvU3RyZWFtLAo+ICAgICAg
ICAgIGxpbmspOwo+IAoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
