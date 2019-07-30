Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4C37A772
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C93B6E4B7;
	Tue, 30 Jul 2019 12:03:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9332F6E4B7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3D9694627A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:47 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 444A05D6A7;
 Tue, 30 Jul 2019 12:03:46 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:56 +0100
Message-Id: <20190730120331.17967-8-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:03:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 07/44] fixup! usb-redir: define
 interfaces to support emulated devices
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

UmVtb3ZlIHVzZWxlc3MgZGV2aWNlX3R5cGUsIG5hbWUgaXMgbWlzbGVhZGluZyBhbmQgdXNlZCBv
bmx5CnRvIHVuZGVyc3RhbmQgaWYgaXMgZW11bGF0ZWQuClRoaXMgY2FuIGJlIGNoZWNrZWQgdmVy
aWZ5aW5nIGJ1cyBudW1iZXIuCmJ1cyBudW1iZXIgaXMgMTYgYml0cyBzbyB1c2UgR19NQVhVSU5U
MTYgaW5zdGVhZCBvZiAyNTUKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDEgLQogc3JjL3VzYi1i
YWNrZW5kLmggfCA1ICsrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFj
a2VuZC5jCmluZGV4IGViMjI4ZTg4Li4wYTgzMGRmYiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNr
ZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTkyMiw3ICs5MjIsNiBAQCBnYm9vbGVh
biBzcGljZV91c2JfYmFja2VuZF9jcmVhdGVfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAg
ICAgZGV2ID0gZ19uZXcwKFNwaWNlVXNiQmFja2VuZERldmljZSwgMSk7CiAgICAgZGV2LT5kZXZp
Y2VfaW5mby5idXMgPSBCVVNfTlVNQkVSX0ZPUl9FTVVMQVRFRF9VU0I7CiAgICAgZGV2LT5kZXZp
Y2VfaW5mby5hZGRyZXNzID0gYWRkcmVzczsKLSAgICBkZXYtPmRldmljZV9pbmZvLmRldmljZV90
eXBlID0gZGV2X3R5cGU7CiAgICAgZGV2LT5yZWZfY291bnQgPSAxOwogCiAgICAgaWYgKGJlLT5k
ZXZfaW5pdFtkZXZfdHlwZV0oYmUsIGRldiwgcGFyYW0sICZlZGV2KSkgewpkaWZmIC0tZ2l0IGEv
c3JjL3VzYi1iYWNrZW5kLmggYi9zcmMvdXNiLWJhY2tlbmQuaAppbmRleCA3NmM1NTJmNS4uZTg5
OGQ2OGEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2ItYmFja2Vu
ZC5oCkBAIC0zOCw2ICszOCw4IEBAIHR5cGVkZWYgZW51bQogICAgIFVTQl9ERVZfVFlQRV9NQVgK
IH0gVXNiRW11bGF0ZWREZXZpY2VUeXBlOwogCisjZGVmaW5lIEJVU19OVU1CRVJfRk9SX0VNVUxB
VEVEX1VTQiBHX01BWFVJTlQxNgorCiB0eXBlZGVmIHN0cnVjdCBVc2JEZXZpY2VJbmZvcm1hdGlv
bgogewogICAgIHVpbnQxNl90IGJ1czsKQEAgLTQ4LDcgKzUwLDYgQEAgdHlwZWRlZiBzdHJ1Y3Qg
VXNiRGV2aWNlSW5mb3JtYXRpb24KICAgICB1aW50OF90IGNsYXNzOwogICAgIHVpbnQ4X3Qgc3Vi
Y2xhc3M7CiAgICAgdWludDhfdCBwcm90b2NvbDsKLSAgICB1aW50OF90IGRldmljZV90eXBlOyAv
KiBVc2JFbXVsYXRlZERldmljZVR5cGUgKi8KIH0gVXNiRGV2aWNlSW5mb3JtYXRpb247CiAKIHR5
cGVkZWYgdm9pZCgqdXNiX2hvdF9wbHVnX2NhbGxiYWNrKSh2b2lkICp1c2VyX2RhdGEsIFNwaWNl
VXNiQmFja2VuZERldmljZSAqZGV2LCBnYm9vbGVhbiBhZGRlZCk7CkBAIC05Nyw4ICs5OCw2IEBA
IHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9nZXRfZ3Vlc3RfZmlsdGVyKFNwaWNlVXNi
QmFja2VuZENoYW5uZWwgKmNoLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50ICpjb3VudCk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX3JldHVybl93
cml0ZV9kYXRhKFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoLCB2b2lkICpkYXRhKTsKIAotI2Rl
ZmluZSBCVVNfTlVNQkVSX0ZPUl9FTVVMQVRFRF9VU0IgICAgICAgICAyNTUKLQogdHlwZWRlZiBz
dHJ1Y3QgVXNiQ3JlYXRlRGV2aWNlUGFyYW1ldGVycwogewogICAgIEdFcnJvciAqZXJyb3I7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
