Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4D864B9E
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 19:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C2689E52;
	Wed, 10 Jul 2019 17:44:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21027894C3
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C36A364123
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:41 +0000 (UTC)
Received: from lub.com (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31E2F60BFC
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:41 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 20:44:35 +0300
Message-Id: <20190710174435.15833-4-uril@redhat.com>
In-Reply-To: <20190710174435.15833-1-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 10 Jul 2019 17:44:41 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH v2 3/3] dcc-send: fix
 use-after-free
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

J2wnIGlzIGJlaW5nIGZyZWVkIHdpdGhpbiB0aGUgbG9vcAoKRm91bmQtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmls
QHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL2RjYy1zZW5kLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZl
ci9kY2Mtc2VuZC5jIGIvc2VydmVyL2RjYy1zZW5kLmMKaW5kZXggZTBmM2I4MTgzLi40YTkyY2U4
Y2QgMTAwNjQ0Ci0tLSBhL3NlcnZlci9kY2Mtc2VuZC5jCisrKyBiL3NlcnZlci9kY2Mtc2VuZC5j
CkBAIC03MTEsNyArNzExLDcgQEAgc3RhdGljIHZvaWQgcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJl
ZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKICAgICBpbnQgcmVz
ZW50X3N1cmZhY2VfaWRzW01BWF9QSVBFX1NJWkVdOwogICAgIFNwaWNlUmVjdCByZXNlbnRfYXJl
YXNbTUFYX1BJUEVfU0laRV07IC8vIG5vdCBwb2ludGVycyBzaW5jZSBkcmF3YWJsZXMgbWF5IGJl
IHJlbGVhc2VkCiAgICAgaW50IG51bV9yZXNlbnQ7Ci0gICAgR0xpc3QgKmw7CisgICAgR0xpc3Qg
KmwsICpwcmV2OwogICAgIEdRdWV1ZSAqcGlwZTsKIAogICAgIHJlc2VudF9zdXJmYWNlX2lkc1sw
XSA9IGZpcnN0X3N1cmZhY2VfaWQ7CkBAIC03MjEsMTEgKzcyMSwxMiBAQCBzdGF0aWMgdm9pZCBy
ZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hh
bm5lbENsaWVudAogICAgIHBpcGUgPSByZWRfY2hhbm5lbF9jbGllbnRfZ2V0X3BpcGUoUkVEX0NI
QU5ORUxfQ0xJRU5UKGRjYykpOwogCiAgICAgLy8gZ29pbmcgZnJvbSB0aGUgb2xkZXN0IHRvIHRo
ZSBuZXdlc3QKLSAgICBmb3IgKGwgPSBwaXBlLT50YWlsOyBsICE9IE5VTEw7IGwgPSBsLT5wcmV2
KSB7CisgICAgZm9yIChsID0gcGlwZS0+dGFpbDsgbCAhPSBOVUxMOyBsID0gcHJldikgewogICAg
ICAgICBSZWRQaXBlSXRlbSAqcGlwZV9pdGVtID0gbC0+ZGF0YTsKICAgICAgICAgRHJhd2FibGUg
KmRyYXdhYmxlOwogICAgICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7CiAKKyAgICAgICAg
cHJldiA9IGwtPnByZXY7CiAgICAgICAgIGlmIChwaXBlX2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVf
SVRFTV9UWVBFX0RSQVcpCiAgICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgZHBpID0gU1BJ
Q0VfVVBDQVNUKFJlZERyYXdhYmxlUGlwZUl0ZW0sIHBpcGVfaXRlbSk7Ci0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
