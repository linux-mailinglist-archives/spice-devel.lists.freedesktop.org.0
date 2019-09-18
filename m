Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF46AB6103
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 12:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 287626EE9D;
	Wed, 18 Sep 2019 10:03:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B756EE9D
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:03:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A701B3082145
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:03:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E320100194E
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:03:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 904B41808878;
 Wed, 18 Sep 2019 10:03:30 +0000 (UTC)
Date: Wed, 18 Sep 2019 06:03:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <212500435.450993.1568801010307.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190916102104.20943-5-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-5-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.21]
Thread-Topic: usb-backend: no emulated isoch devices
Thread-Index: QnfbZDzck2PIuLG+EBogHdQZ2tg6pQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 18 Sep 2019 10:03:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 04/20] usb-backend: no emulated isoch
 devices
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

PiAKPiBGcm9tOiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+
Cj4gCj4gU3BpY2VVc2JCYWNrZW5kRGV2aWNlIGRlYWxzIHdpdGggcmVhbCBhbmQgZW11bGF0ZWQg
ZGV2aWNlcyBidXQgdGhlcmUKPiBpcyBubyBwbGFucyB0byBpbXBsZW1lbnQgZW11bGF0ZWQgaXNv
Y2hyb25vdXMgZGV2aWNlcy4KPiAKPiBUaGlzIHBhdGNoIGFkZHMgY2hlY2sgdG8gZWRldiAoZW11
bGF0ZWQgZGV2aWNlKSBpbiB0aGUgZ3VhcmQsIGZpeCB0aGUKPiByZXR1cm4gdmFsdWUgdG8gRkFM
U0UgaW5zdGVhZCBvZiBwbGFpbiAwIGFuZCByZXR1cm4gZWFybHkgaW4gY2FzZSB0aGUKPiBjb2Rl
IHBhdGggaXMgYXJvdW5kIGVtdWxhdGVkIGRldmljZXMuCj4gCj4gVGhpcyBpcyBhIHByZXBhcmF0
b3J5IHBhdGNoIHRvIGV4dGVuZCBlbXVsYXRlZCBkZXZpY2VzIHN1cHBvcnQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KClNob3VsZCBub3Qg
YWxzbyBoYXZlIHRoZSBzaWduZWQtb2ZmIGZyb20gb3JpZ2luYWwgYXV0aG9yPwoKPiAKPiB0IwoK
dHlwbyA/Cgo+IC0tLQo+ICBzcmMvdXNiLWJhY2tlbmQuYyB8IDggKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4gaW5kZXggNWI1MmE0MC4u
MzI1ODI0MCAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ICsrKyBiL3NyYy91c2It
YmFja2VuZC5jCj4gQEAgLTM1NywxMSArMzU3LDE3IEBAIGdib29sZWFuCj4gc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQo+ICAgICAgZ2lu
dCBpLCBqLCBrOwo+ICAgICAgaW50IHJjOwo+ICAKPiArICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWls
KGxpYmRldiAhPSBOVUxMIHx8IGRldi0+ZWRldiAhPSBOVUxMLCBGQUxTRSk7Cj4gKwo+ICsgICAg
aWYgKGRldi0+ZWRldikgewoKIiE9IE5VTEwiID8gU29tZXRpbWVzIHdlIHVzZSBzb21ldGltZXMg
bm90LCBub3Qgc3Ryb25nIGFib3V0LgoKPiArICAgICAgICAvKiBjdXJyZW50bHkgd2UgZG8gbm90
IGVtdWxhdGUgaXNvY2ggZGV2aWNlcyAqLwo+ICsgICAgICAgIHJldHVybiBGQUxTRTsKPiArICAg
IH0KPiArCj4gICAgICBpZiAoZGV2LT5jYWNoZWRfaXNvY2hyb25vdXNfdmFsaWQpIHsKPiAgICAg
ICAgICByZXR1cm4gZGV2LT5jYWNoZWRfaXNvY2hyb25vdXM7Cj4gICAgICB9Cj4gIAo+IC0gICAg
Z19yZXR1cm5fdmFsX2lmX2ZhaWwobGliZGV2ICE9IE5VTEwsIDApOwo+ICAKPiAgICAgIHJjID0g
bGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rlc2NyaXB0b3IobGliZGV2LCAmY29uZl9kZXNjKTsK
PiAgICAgIGlmIChyYykgewoKT3RoZXJ3aXNlIGZpbmUgZm9yIG1lLgoKRnJlZGlhbm8KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
