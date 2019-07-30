Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D657A771
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E75976E4BE;
	Tue, 30 Jul 2019 12:03:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22BD6E4B7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6B742305B1C1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:44 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9291D5D6A7;
 Tue, 30 Jul 2019 12:03:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:54 +0100
Message-Id: <20190730120331.17967-6-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Jul 2019 12:03:44 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 05/44] fixup! usb-redir: define
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

SW5pdGlhbGlzZSBTcGljZVVzYkJhY2tlbmREZXZpY2UgZmllbGRzIGVhcmxpZXIKCkFsbG93cyB0
byB1c2Ugc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmIGFuZCByZWFkIHNvbWUKaW5mb3Jt
YXRpb24gZGlyZWN0bHkgZnJvbSB0aGUgZGV2aWNlLgotLS0KIHNyYy91c2ItYmFja2VuZC5jIHwg
MTUgKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNr
ZW5kLmMKaW5kZXggMGIzNzI3NGUuLmE0NDdiYmZlIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tl
bmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAtOTIwLDE5ICs5MjAsMjMgQEAgZ2Jvb2xl
YW4gc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAog
ICAgIH0KIAogICAgIGRldiA9IGdfbmV3MChTcGljZVVzYkJhY2tlbmREZXZpY2UsIDEpOworICAg
IGRldi0+ZGV2aWNlX2luZm8uYnVzID0gQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNCOworICAg
IGRldi0+ZGV2aWNlX2luZm8uYWRkcmVzcyA9IGFkZHJlc3M7CisgICAgZGV2LT5kZXZpY2VfaW5m
by5kZXZpY2VfdHlwZSA9IGRldl90eXBlOworICAgIGRldi0+cmVmX2NvdW50ID0gMTsKIAogICAg
IHBhcmFtLT5hZGRyZXNzID0gYWRkcmVzczsKICAgICBpZiAoYmUtPmRldl9pbml0W2Rldl90eXBl
XShiZSwgZGV2LCBwYXJhbSwgJmVkZXYpKSB7Ci0gICAgICAgIGdfZnJlZShkZXYpOworICAgICAg
ICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKICAgICAgICAgcmV0dXJuIEZB
TFNFOwogICAgIH0KKyAgICBkZXYtPmVkZXYgPSBlZGV2OwogCiAgICAgaWYgKCFkZXZpY2Vfb3Bz
KGVkZXYpLT5nZXRfZGVzY3JpcHRvcihlZGV2LCBMSUJVU0JfRFRfREVWSUNFLCAwLAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHZvaWQgKiopJmRlc2MsICZkZXZp
Y2VfZGVzY19zaXplKQogICAgICAgICB8fCBkZXZpY2VfZGVzY19zaXplICE9IHNpemVvZigqZGVz
YykpIHsKIAotICAgICAgICBkZXZpY2Vfb3BzKGVkZXYpLT5kZWxldGUoZWRldik7Ci0gICAgICAg
IGdfZnJlZShkZXYpOworICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2
KTsKICAgICAgICAgcGFyYW0tPmVycm9yID0gZ19lcnJvcl9uZXcoU1BJQ0VfQ0xJRU5UX0VSUk9S
LCBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVELAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBfKCJjYW4ndCBjcmVhdGUgZGV2aWNlIC0gaW50ZXJuYWwgZXJyb3IiKSk7CiAgICAg
ICAgIHJldHVybiBGQUxTRTsKQEAgLTk0MCwxNyArOTQ0LDEyIEBAIGdib29sZWFuIHNwaWNlX3Vz
Yl9iYWNrZW5kX2NyZWF0ZV9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKIAogICAgIGJlLT5v
d25fZGV2aWNlc19tYXNrIHw9IDEgPDwgYWRkcmVzczsKIAotICAgIGRldi0+ZGV2aWNlX2luZm8u
YnVzID0gQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNCOwotICAgIGRldi0+ZGV2aWNlX2luZm8u
YWRkcmVzcyA9IGFkZHJlc3M7CiAgICAgZGV2LT5kZXZpY2VfaW5mby52aWQgPSBkZXNjLT5pZFZl
bmRvcjsKICAgICBkZXYtPmRldmljZV9pbmZvLnBpZCA9IGRlc2MtPmlkUHJvZHVjdDsKICAgICBk
ZXYtPmRldmljZV9pbmZvLmJjZFVTQiA9IGRlc2MtPmJjZFVTQjsKICAgICBkZXYtPmRldmljZV9p
bmZvLmNsYXNzID0gZGVzYy0+YkRldmljZUNsYXNzOwogICAgIGRldi0+ZGV2aWNlX2luZm8uc3Vi
Y2xhc3MgPSBkZXNjLT5iRGV2aWNlU3ViQ2xhc3M7CiAgICAgZGV2LT5kZXZpY2VfaW5mby5wcm90
b2NvbCA9IGRlc2MtPmJEZXZpY2VQcm90b2NvbDsKLSAgICBkZXYtPmRldmljZV9pbmZvLmRldmlj
ZV90eXBlID0gZGV2X3R5cGU7Ci0gICAgZGV2LT5yZWZfY291bnQgPSAxOwotICAgIGRldi0+ZWRl
diA9IGVkZXY7CiAKICAgICBpZiAoYmUtPmhvdHBsdWdfY2FsbGJhY2spIHsKICAgICAgICAgYmUt
PmhvdHBsdWdfY2FsbGJhY2soYmUtPmhvdHBsdWdfdXNlcl9kYXRhLCBkZXYsIFRSVUUpOwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
