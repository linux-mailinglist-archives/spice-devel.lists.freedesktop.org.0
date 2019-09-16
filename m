Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A23B37F4
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899F46E21A;
	Mon, 16 Sep 2019 10:21:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7F66E21A
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 37E89308FB82
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:09 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B332E5D6A3
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:08 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:20:48 +0200
Message-Id: <20190916102104.20943-6-victortoso@redhat.com>
In-Reply-To: <20190916102104.20943-1-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 16 Sep 2019 10:21:09 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 05/20] usb-backend: add guard and doc to
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
b24gbGlidXNiX2RldmljZQoqIEFkZHMgR19HTlVDRV9JTlRFUk5BTCBhcyB0aGlzIGlzIG9ubHkg
Y2FsbGVkIGludGVybmFsbHkgaW4KICB1c2ItZGV2aWNlLW1hbmFnZXIuYwoqIENoYW5nZWQgdGhl
IHN0eWxlIGEgYml0LCBzdGlsbCB1bmRlciAxMDAgY2hhciBpbiBhIHNpbmdsZSBsaW5lCgpUaGlz
IGlzIGEgcHJlcGFyYXRvcnkgcGF0Y2ggZm9yIGV4dGVuZGluZyB1c2ItYmFja2VuZCBmb3IgZW11
bGF0ZWQKZGV2aWNlcy4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJl
ZGhhdC5jb20+Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAxMyArKysrKystLS0tLS0tCiBzcmMv
dXNiLWJhY2tlbmQuaCB8ICA0ICsrKy0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3Vz
Yi1iYWNrZW5kLmMKaW5kZXggMzI1ODI0MC4uNmVkOTU3YyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1i
YWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTM2OCw3ICszNjgsNiBAQCBnYm9v
bGVhbiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNl
ICpkZXYpCiAgICAgICAgIHJldHVybiBkZXYtPmNhY2hlZF9pc29jaHJvbm91czsKICAgICB9CiAK
LQogICAgIHJjID0gbGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rlc2NyaXB0b3IobGliZGV2LCAm
Y29uZl9kZXNjKTsKICAgICBpZiAocmMpIHsKICAgICAgICAgY29uc3QgY2hhciAqZGVzYyA9IGxp
YnVzYl9zdHJlcnJvcihyYyk7CkBAIC01NjYsMTMgKzU2NSwxMyBAQCB2b2lkIHNwaWNlX3VzYl9i
YWNrZW5kX2RldmljZV91bnJlZihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKICAgICB9CiB9
CiAKLWludCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKAotICAgIFNwaWNl
VXNiQmFja2VuZERldmljZSAqZGV2LAotICAgIGNvbnN0IHN0cnVjdCB1c2JyZWRpcmZpbHRlcl9y
dWxlICpydWxlcywKLSAgICBpbnQgY291bnQpCitHX0dOVUNfSU5URVJOQUwKK2ludCBzcGljZV91
c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2
LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0
IHVzYnJlZGlyZmlsdGVyX3J1bGUgKnJ1bGVzLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW50IGNvdW50KQogewotICAgIHJldHVybiB1c2JyZWRpcmhvc3RfY2hl
Y2tfZGV2aWNlX2ZpbHRlcigKLSAgICAgICAgcnVsZXMsIGNvdW50LCBkZXYtPmxpYnVzYl9kZXZp
Y2UsIDApOworICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGRldi0+bGlidXNiX2RldmljZSAhPSBO
VUxMLCAtRUlOVkFMKTsKKyAgICByZXR1cm4gdXNicmVkaXJob3N0X2NoZWNrX2RldmljZV9maWx0
ZXIocnVsZXMsIGNvdW50LCBkZXYtPmxpYnVzYl9kZXZpY2UsIDApOwogfQogCiBzdGF0aWMgaW50
IHVzYnJlZGlyX3JlYWRfY2FsbGJhY2sodm9pZCAqdXNlcl9kYXRhLCB1aW50OF90ICpkYXRhLCBp
bnQgY291bnQpCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2Vu
ZC5oCmluZGV4IDQ2Yjc0MmUuLjQ2NzEzYzEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5o
CisrKyBiL3NyYy91c2ItYmFja2VuZC5oCkBAIC03MCw3ICs3MCw5IEBAIHZvaWQgc3BpY2VfdXNi
X2JhY2tlbmRfZGV2aWNlX3VucmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KTsKIGdjb25z
dHBvaW50ZXIgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9saWJkZXYoY29uc3QgU3BpY2VV
c2JCYWNrZW5kRGV2aWNlICpkZXYpOwogY29uc3QgVXNiRGV2aWNlSW5mb3JtYXRpb24qIHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV9nZXRfaW5mbyhjb25zdCBTcGljZVVzYkJhY2tlbmREZXZpY2Ug
KmRldik7CiBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICpkZXYpOwotLyogcmV0dXJucyAwIGlmIHRoZSBkZXZpY2UgcGFzc2VzIHRo
ZSBmaWx0ZXIgKi8KKworLyogcmV0dXJucyAwIGlmIHRoZSBkZXZpY2UgcGFzc2VzIHRoZSBmaWx0
ZXIgb3RoZXJ3aXNlIHJldHVybnMgdGhlIGVycm9yIHZhbHVlIGZyb20KKyAqIHVzYnJlZGlyaG9z
dF9jaGVja19kZXZpY2VfZmlsdGVyKCkgc3VjaCBhcyAtRUlPIG9yIC1FTk9NRU0gKi8KIGludCBz
cGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKFNwaWNlVXNiQmFja2VuZERldmlj
ZSAqZGV2LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qg
c3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUgKnJ1bGVzLCBpbnQgY291bnQpOwogCi0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
