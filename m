Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAF585FF3
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 12:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB306E831;
	Thu,  8 Aug 2019 10:41:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B716E834
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 10:41:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 93E6630A7B89;
 Thu,  8 Aug 2019 10:41:10 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-246.brq.redhat.com [10.40.204.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0ABCB620A0;
 Thu,  8 Aug 2019 10:41:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  8 Aug 2019 11:40:53 +0100
Message-Id: <20190808104053.11449-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 08 Aug 2019 10:41:10 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] fixup! usb-redir: define interfaces
 to support emulated devices
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

Q2hhbmdlIHJlZmVyZW5jZSBjb3VudGluZyBzZW1hbnRpYyBmb3IgZW11bGF0ZWQgZGV2aWNlcy4K
TWFrZSB0aGUgc2FtZSBhcyBub3QgZW11bGF0ZWQuClRoaXMgZml4IGEgbGVhayBpZiBzcGljZV91
c2JfYmFja2VuZF9kZXZpY2VfZWplY3QgaXMgbm90IGNhbGxlZC4KQ29uc2lzdGVudGx5IHRoZSBy
ZWZlcmVuY2UgY291bnRlciBmb3IgU3BpY2VVc2JCYWNrZW5kRGV2aWNlIGlzCm5vdyB0aGUgbnVt
YmVyIG9mIG93bmluZyBwb2ludGVycy4KLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyAgIHwgMTkgKysr
KysrKysrKy0tLS0tLS0tLQogc3JjL3VzYi1lbXVsYXRpb24uaCB8ICAyICstCiAyIGZpbGVzIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggZDgwZGExNzcuLmRlMmI1
NWVjIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQu
YwpAQCAtODUyLDE3ICs4NTIsMTcgQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVw
b3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQgKmJlLAogCiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV9lamVjdChTcGljZVVzYkJhY2tlbmQgKmJlLCBTcGljZVVzYkJhY2tlbmREZXZpY2Ug
KmRldikKIHsKLSAgICBnX3JldHVybl9pZl9mYWlsKGRldiAmJiBkZXYtPmVkZXYpOworICAgIGdf
cmV0dXJuX2lmX2ZhaWwoZGV2KTsKIAorICAgIGlmIChkZXYtPmVkZXYpIHsKKyAgICAgICAgYmUt
Pm93bl9kZXZpY2VzX21hc2sgJj0gfigxIDw8IGRldi0+ZGV2aWNlX2luZm8uYWRkcmVzcyk7Cisg
ICAgfQogICAgIGlmIChiZS0+aG90cGx1Z19jYWxsYmFjaykgewogICAgICAgICBiZS0+aG90cGx1
Z19jYWxsYmFjayhiZS0+aG90cGx1Z191c2VyX2RhdGEsIGRldiwgRkFMU0UpOwogICAgIH0KLSAg
ICBiZS0+b3duX2RldmljZXNfbWFzayAmPSB+KDEgPDwgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNz
KTsKLQotICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXYpOwogfQogCi1TcGlj
ZVVzYkJhY2tlbmREZXZpY2UqCitnYm9vbGVhbgogc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2Vt
dWxhdGVkX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlIGNyZWF0ZV9w
cm9jLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpjcmVh
dGVfcGFyYW1zLApAQCAtODc3LDcgKzg3Nyw3IEBAIHNwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9l
bXVsYXRlZF9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICBpZiAoYmUtPm93bl9kZXZp
Y2VzX21hc2sgPT0gMHhmZmZmZmZmZikgewogICAgICAgICBnX3NldF9lcnJvcihlcnIsIFNQSUNF
X0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKICAgICAgICAgICAgICAg
ICAgICAgXygiY2FuJ3QgY3JlYXRlIGRldmljZSAtIGxpbWl0IHJlYWNoZWQiKSk7Ci0gICAgICAg
IHJldHVybiBOVUxMOworICAgICAgICByZXR1cm4gRkFMU0U7CiAgICAgfQogICAgIGZvciAoYWRk
cmVzcyA9IDA7IGFkZHJlc3MgPCAzMjsgKythZGRyZXNzKSB7CiAgICAgICAgIGlmICh+YmUtPm93
bl9kZXZpY2VzX21hc2sgJiAoMSA8PCBhZGRyZXNzKSkgewpAQCAtODkzLDcgKzg5Myw3IEBAIHNw
aWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVsYXRlZF9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpi
ZSwKICAgICBkZXYtPmVkZXYgPSBlZGV2ID0gY3JlYXRlX3Byb2MoYmUsIGRldiwgY3JlYXRlX3Bh
cmFtcywgZXJyKTsKICAgICBpZiAoZWRldiA9PSBOVUxMKSB7CiAgICAgICAgIHNwaWNlX3VzYl9i
YWNrZW5kX2RldmljZV91bnJlZihkZXYpOwotICAgICAgICByZXR1cm4gTlVMTDsKKyAgICAgICAg
cmV0dXJuIEZBTFNFOwogICAgIH0KIAogICAgIGlmICghZGV2aWNlX29wcyhlZGV2KS0+Z2V0X2Rl
c2NyaXB0b3IoZWRldiwgTElCVVNCX0RUX0RFVklDRSwgMCwKQEAgLTkwMyw3ICs5MDMsNyBAQCBz
cGljZV91c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAq
YmUsCiAgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXYpOwogICAgICAg
ICBnX3NldF9lcnJvcihlcnIsIFNQSUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9S
X0ZBSUxFRCwKICAgICAgICAgICAgICAgICAgICAgXygiY2FuJ3QgY3JlYXRlIGRldmljZSAtIGlu
dGVybmFsIGVycm9yIikpOwotICAgICAgICByZXR1cm4gTlVMTDsKKyAgICAgICAgcmV0dXJuIEZB
TFNFOwogICAgIH0KIAogICAgIGJlLT5vd25fZGV2aWNlc19tYXNrIHw9IDEgPDwgYWRkcmVzczsK
QEAgLTkxOCw4ICs5MTgsOSBAQCBzcGljZV91c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2
aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgaWYgKGJlLT5ob3RwbHVnX2NhbGxiYWNrKSB7
CiAgICAgICAgIGJlLT5ob3RwbHVnX2NhbGxiYWNrKGJlLT5ob3RwbHVnX3VzZXJfZGF0YSwgZGV2
LCBUUlVFKTsKICAgICB9CisgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKGRldik7
CiAKLSAgICByZXR1cm4gZGV2OworICAgIHJldHVybiBUUlVFOwogfQogCiAjZW5kaWYgLyogVVNC
X1JFRElSICovCmRpZmYgLS1naXQgYS9zcmMvdXNiLWVtdWxhdGlvbi5oIGIvc3JjL3VzYi1lbXVs
YXRpb24uaAppbmRleCA5ZTYyNmEyNC4uNDZkNTRkNDcgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZW11
bGF0aW9uLmgKKysrIGIvc3JjL3VzYi1lbXVsYXRpb24uaApAQCAtODAsNyArODAsNyBAQCBzdGF0
aWMgaW5saW5lIGNvbnN0IFVzYkRldmljZU9wcyAqZGV2aWNlX29wcyhTcGljZVVzYkVtdWxhdGVk
RGV2aWNlICpkZXYpCiAgICAgcmV0dXJuIChjb25zdCBVc2JEZXZpY2VPcHMgKilkZXY7CiB9CiAK
LVNwaWNlVXNiQmFja2VuZERldmljZSoKK2dib29sZWFuCiBzcGljZV91c2JfYmFja2VuZF9jcmVh
dGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2VDcmVhdGUgY3Jl
YXRlX3Byb2MsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQg
KmNyZWF0ZV9wYXJhbXMsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
