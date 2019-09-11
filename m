Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09B5AF719
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 09:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D166EA3F;
	Wed, 11 Sep 2019 07:43:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8152A6EA3F
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:43:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1337D307D945
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:43:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 08EBC19C4F
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:43:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F245318089C8;
 Wed, 11 Sep 2019 07:43:45 +0000 (UTC)
Date: Wed, 11 Sep 2019 03:43:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <392846067.11493336.1568187825565.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190911071206.7345-1-kpouget@redhat.com>
References: <20190911071206.7345-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.17]
Thread-Topic: common/recorder.h: do not complain on unused (dummy) recorders
Thread-Index: UMQPxRc3PWFCE8PGrUmDAVaKQ6wKSQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 11 Sep 2019 07:43:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] common/recorder.h: do not
 complain on unused (dummy) recorders
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0LmNvbT4KCkkg
bmVlZGVkIHRoaXMgdG8gY29tcGlsZSAobWF5YmUgZGlmZmVyZW50IG9wdGlvbnMpOgoKZGlmZiAt
LWdpdCBhL3Rlc3RzL01ha2VmaWxlLmFtIGIvdGVzdHMvTWFrZWZpbGUuYW0KaW5kZXggNGI4YmNm
NC4uZTg3NjZkOCAxMDA2NDQKLS0tIGEvdGVzdHMvTWFrZWZpbGUuYW0KKysrIGIvdGVzdHMvTWFr
ZWZpbGUuYW0KQEAgLTczLDYgKzczLDcgQEAgdGVzdF9kdW1teV9yZWNvcmRlcl9TT1VSQ0VTID0g
ICAgICAgICBcCiAgICAgICAgJChOVUxMKQogdGVzdF9kdW1teV9yZWNvcmRlcl9DRkxBR1MgPSAg
ICAgICAgICAgXAogICAgICAgIC1JJCh0b3Bfc3JjZGlyKSAgICAgICAgICAgICAgICAgXAorICAg
ICAgICQoUFJPVE9DT0xfQ0ZMQUdTKSAgICAgICAgICAgICAgXAogICAgICAgICQoTlVMTCkKIHRl
c3RfZHVtbXlfcmVjb3JkZXJfTERBREQgPSAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCiAg
ICAgICAgJCh0b3BfYnVpbGRkaXIpL2NvbW1vbi9saWJzcGljZS1jb21tb24ubGEgICAgICAgXAoK
Cj4gLS0tCj4gIGNvbW1vbi9yZWNvcmRlci5oIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9jb21tb24vcmVj
b3JkZXIuaCBiL2NvbW1vbi9yZWNvcmRlci5oCj4gaW5kZXggOThiODc5Ny4uODQ0OGUwMiAxMDA2
NDQKPiAtLS0gYS9jb21tb24vcmVjb3JkZXIuaAo+ICsrKyBiL2NvbW1vbi9yZWNvcmRlci5oCj4g
QEAgLTIwLDYgKzIwLDcgQEAKPiAgCj4gICNpbmNsdWRlIDxzdGRpby5oPgo+ICAjaW5jbHVkZSA8
c3RkaW50Lmg+Cj4gKyNpbmNsdWRlIDxzcGljZS9tYWNyb3MuaD4KPiAgCj4gIC8qIFJlcGxhY2Vt
ZW50IGRlY2xhcmF0aW9ucy4KPiAgICogVGhlcmUgZGVjbGFyYXRpb25zIHNob3VsZCBnZW5lcmF0
ZSBubyBjb2RlIChiZXNpZGUgd2hlbiBubyBvcHRpbWl6YXRpb24KPiAgIGFyZQo+IEBAIC00NSw3
ICs0Niw3IEBAIHR5cGVkZWYgc3RydWN0IFNwaWNlRHVtbXlUd2VhayB7Cj4gICNkZWZpbmUgUkVD
T1JERVIocmVjLCBudW1fcmluZ3MsIGNvbW1lbnQpIFwKPiAgICAgIFJFQ09SREVSX0RFRklORShy
ZWMsIG51bV9yaW5ncywgY29tbWVudCkKPiAgI2RlZmluZSBSRUNPUkRFUl9ERUZJTkUocmVjLCBu
dW1fcmluZ3MsIGNvbW1lbnQpIFwKPiAtICAgIGNvbnN0IFNwaWNlRW1wdHlTdHJ1Y3Qgc3BpY2Vf
cmVjb3JkZXJfICMjIHJlYyA9IHt9Cj4gKyAgICBjb25zdCBTcGljZUVtcHR5U3RydWN0IFNQSUNF
X0dOVUNfVU5VU0VEIHNwaWNlX3JlY29yZGVyXyAjIyByZWMgPSB7fQo+ICAjZGVmaW5lIFJFQ09S
REVSX1RSQUNFKHJlYykgXAo+ICAgICAgKHNpemVvZihzcGljZV9yZWNvcmRlcl8gIyMgcmVjKSAh
PSBzaXplb2YoU3BpY2VFbXB0eVN0cnVjdCkpCj4gICNkZWZpbmUgUkVDT1JERVJfVFdFQUtfREVD
TEFSRShyZWMpIFwKCkJlc2lkZSB0aGF0IHBhdGNoIGxvb2tzIHdvcmtzIGZvciBtZS4KCkZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
