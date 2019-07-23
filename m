Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A998713D9
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 10:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2596E243;
	Tue, 23 Jul 2019 08:22:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 252FB6E243
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B7F153092650
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:34 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F0BBB5D9C5;
 Tue, 23 Jul 2019 08:22:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 09:22:27 +0100
Message-Id: <20190723082230.10381-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 23 Jul 2019 08:22:34 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] replay: Remove some goto
 statement
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3Rlc3RzL3JlcGxheS5jIHwgMTggKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvdGVzdHMvcmVwbGF5LmMgYi9zZXJ2ZXIvdGVzdHMvcmVwbGF5LmMKaW5kZXggZTNlZjdiZjE1
Li45OTJmMjZkNjMgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy9yZXBsYXkuYworKysgYi9zZXJ2
ZXIvdGVzdHMvcmVwbGF5LmMKQEAgLTExNiw3ICsxMTYsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4gZmls
bF9xdWV1ZV9pZGxlKGdwb2ludGVyIHVzZXJfZGF0YSkKICAgICAgICAgaWYgKCFjbWQpIHsKICAg
ICAgICAgICAgIGdfYXN5bmNfcXVldWVfcHVzaChkaXNwbGF5X3F1ZXVlLCBHSU5UX1RPX1BPSU5U
RVIoLTEpKTsKICAgICAgICAgICAgIGdfYXN5bmNfcXVldWVfcHVzaChjdXJzb3JfcXVldWUsIEdJ
TlRfVE9fUE9JTlRFUigtMSkpOwotICAgICAgICAgICAgZ290byBlbmQ7CisgICAgICAgICAgICBi
cmVhazsKICAgICAgICAgfQogCiAgICAgICAgICsrbmNvbW1hbmRzOwpAQCAtMTMzLDcgKzEzMyw2
IEBAIHN0YXRpYyBnYm9vbGVhbiBmaWxsX3F1ZXVlX2lkbGUoZ3BvaW50ZXIgdXNlcl9kYXRhKQog
ICAgICAgICB9CiAgICAgfQogCi1lbmQ6CiAgICAgaWYgKCFrZWVwKSB7CiAgICAgICAgIHB0aHJl
YWRfbXV0ZXhfbG9jaygmbXV0ZXgpOwogICAgICAgICBpZiAoZmlsbF9zb3VyY2UpIHsKQEAgLTE1
MywxNyArMTUyLDEyIEBAIHN0YXRpYyB2b2lkIGZpbGxfcXVldWUodm9pZCkKIHsKICAgICBwdGhy
ZWFkX211dGV4X2xvY2soJm11dGV4KTsKIAotICAgIGlmICghc3RhcnRlZCkKLSAgICAgICAgZ290
byBlbmQ7Ci0KLSAgICBpZiAoZmlsbF9zb3VyY2UpCi0gICAgICAgIGdvdG8gZW5kOwotCi0gICAg
ZmlsbF9zb3VyY2UgPSBnX2lkbGVfc291cmNlX25ldygpOwotICAgIGdfc291cmNlX3NldF9jYWxs
YmFjayhmaWxsX3NvdXJjZSwgZmlsbF9xdWV1ZV9pZGxlLCBOVUxMLCBOVUxMKTsKLSAgICBnX3Nv
dXJjZV9hdHRhY2goZmlsbF9zb3VyY2UsIGJhc2ljX2V2ZW50X2xvb3BfZ2V0X2NvbnRleHQoKSk7
CisgICAgaWYgKHN0YXJ0ZWQgJiYgZmlsbF9zb3VyY2UgPT0gTlVMTCkgeworICAgICAgICBmaWxs
X3NvdXJjZSA9IGdfaWRsZV9zb3VyY2VfbmV3KCk7CisgICAgICAgIGdfc291cmNlX3NldF9jYWxs
YmFjayhmaWxsX3NvdXJjZSwgZmlsbF9xdWV1ZV9pZGxlLCBOVUxMLCBOVUxMKTsKKyAgICAgICAg
Z19zb3VyY2VfYXR0YWNoKGZpbGxfc291cmNlLCBiYXNpY19ldmVudF9sb29wX2dldF9jb250ZXh0
KCkpOworICAgIH0KIAotZW5kOgogICAgIHB0aHJlYWRfbXV0ZXhfdW5sb2NrKCZtdXRleCk7CiB9
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
