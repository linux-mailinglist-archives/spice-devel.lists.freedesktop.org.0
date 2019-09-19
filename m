Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB161B7BD4
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BF76F91A;
	Thu, 19 Sep 2019 14:11:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10566F87A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5E9F691764
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:38 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D8C305C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:37 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:18 +0200
Message-Id: <20190919141133.10691-6-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 19 Sep 2019 14:11:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 05/20] usb-backend: add guard and doc to
 check_filter()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKKiBBZGQgZG9jdW1lbnRhdGlv
biBvbiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKCkKKiBBZGQgZ3VhcmQg
b24gbGlidXNiX2RldmljZQoqIEFkZHMgR19HTlVDX0lOVEVSTkFMIGFzIHRoaXMgaXMgb25seSBj
YWxsZWQgaW50ZXJuYWxseSBpbgogIHVzYi1kZXZpY2UtbWFuYWdlci5jCiogQ2hhbmdlZCB0aGUg
c3R5bGUgYSBiaXQsIHN0aWxsIHVuZGVyIDEwMCBjaGFyIGluIGEgc2luZ2xlIGxpbmUKClRoaXMg
aXMgYSBwcmVwYXJhdG9yeSBwYXRjaCBmb3IgZXh0ZW5kaW5nIHVzYi1iYWNrZW5kIGZvciBlbXVs
YXRlZApkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVk
aGF0LmNvbT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgot
LS0KIHNyYy91c2ItYmFja2VuZC5jIHwgMTIgKysrKysrLS0tLS0tCiBzcmMvdXNiLWJhY2tlbmQu
aCB8ICA0ICsrKy0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMK
aW5kZXggYTZiNWYwNy4uMTQ0MjljZiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysr
IGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTU2NiwxMyArNTY2LDEzIEBAIHZvaWQgc3BpY2VfdXNi
X2JhY2tlbmRfZGV2aWNlX3VucmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogICAgIH0K
IH0KIAotaW50IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9jaGVja19maWx0ZXIoCi0gICAgU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlICpkZXYsCi0gICAgY29uc3Qgc3RydWN0IHVzYnJlZGlyZmlsdGVy
X3J1bGUgKnJ1bGVzLAotICAgIGludCBjb3VudCkKK0dfR05VQ19JTlRFUk5BTAoraW50IHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV9jaGVja19maWx0ZXIoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpk
ZXYsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1
Y3QgdXNicmVkaXJmaWx0ZXJfcnVsZSAqcnVsZXMsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnQgY291bnQpCiB7Ci0gICAgcmV0dXJuIHVzYnJlZGlyaG9zdF9j
aGVja19kZXZpY2VfZmlsdGVyKAotICAgICAgICBydWxlcywgY291bnQsIGRldi0+bGlidXNiX2Rl
dmljZSwgMCk7CisgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwoZGV2LT5saWJ1c2JfZGV2aWNlICE9
IE5VTEwsIC1FSU5WQUwpOworICAgIHJldHVybiB1c2JyZWRpcmhvc3RfY2hlY2tfZGV2aWNlX2Zp
bHRlcihydWxlcywgY291bnQsIGRldi0+bGlidXNiX2RldmljZSwgMCk7CiB9CiAKIHN0YXRpYyBp
bnQgdXNicmVkaXJfcmVhZF9jYWxsYmFjayh2b2lkICp1c2VyX2RhdGEsIHVpbnQ4X3QgKmRhdGEs
IGludCBjb3VudCkKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNr
ZW5kLmgKaW5kZXggNDZiNzQyZS4uNDY3MTNjMSAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5k
LmgKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgKQEAgLTcwLDcgKzcwLDkgQEAgdm9pZCBzcGljZV91
c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpOwogZ2Nv
bnN0cG9pbnRlciBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2xpYmRldihjb25zdCBTcGlj
ZVVzYkJhY2tlbmREZXZpY2UgKmRldik7CiBjb25zdCBVc2JEZXZpY2VJbmZvcm1hdGlvbiogc3Bp
Y2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9pbmZvKGNvbnN0IFNwaWNlVXNiQmFja2VuZERldmlj
ZSAqZGV2KTsKIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9pc29jaChTcGljZVVz
YkJhY2tlbmREZXZpY2UgKmRldik7Ci0vKiByZXR1cm5zIDAgaWYgdGhlIGRldmljZSBwYXNzZXMg
dGhlIGZpbHRlciAqLworCisvKiByZXR1cm5zIDAgaWYgdGhlIGRldmljZSBwYXNzZXMgdGhlIGZp
bHRlciBvdGhlcndpc2UgcmV0dXJucyB0aGUgZXJyb3IgdmFsdWUgZnJvbQorICogdXNicmVkaXJo
b3N0X2NoZWNrX2RldmljZV9maWx0ZXIoKSBzdWNoIGFzIC1FSU8gb3IgLUVOT01FTSAqLwogaW50
IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9jaGVja19maWx0ZXIoU3BpY2VVc2JCYWNrZW5kRGV2
aWNlICpkZXYsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgdXNicmVkaXJmaWx0ZXJfcnVsZSAqcnVsZXMsIGludCBjb3VudCk7CiAKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
