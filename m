Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF296B7BC9
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF526F899;
	Thu, 19 Sep 2019 14:11:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F0C6F883
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 209CB3084037
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:39 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E96B5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:38 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:19 +0200
Message-Id: <20190919141133.10691-7-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 19 Sep 2019 14:11:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 06/20] usb-backend: add safe check on
 attach()
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBdCB0aGlzIG1vbWVu
dCwgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9hdHRhY2goKSBpcyBvbmx5IHJlbGF0ZWQgdG8K
cmVhbCBkZXZpY2VzIGFuZCB0aGlzIGNhbGwgbWlnaHQgaGFwcGVuIG9uIGNoYW5uZWwtdXAgZXZl
bnQgdGhhdCBjYW4KcG9zc2libHkgY29tZSBiZWZvcmUgdXNicmVkaXJob3N0IGhhcyBiZWVuIGNy
ZWF0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29t
PgotLS0KIHNyYy91c2ItYmFja2VuZC5jIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNr
ZW5kLmMKaW5kZXggMTQ0MjljZi4uYzRkOGUyMCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5k
LmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTcyMSw2ICs3MjEsMTEgQEAgZ2Jvb2xlYW4g
c3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9hdHRhY2goU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAq
Y2gsCiAKICAgICBnX3JldHVybl92YWxfaWZfZmFpbChkZXYgIT0gTlVMTCwgRkFMU0UpOwogCisg
ICAgLy8gbm8gcGh5c2ljYWwgZGV2aWNlIGVuYWJsZWQKKyAgICBpZiAoY2gtPnVzYnJlZGlyaG9z
dCA9PSBOVUxMKSB7CisgICAgICAgIHJldHVybiBGQUxTRTsKKyAgICB9CisKICAgICBsaWJ1c2Jf
ZGV2aWNlX2hhbmRsZSAqaGFuZGxlID0gTlVMTDsKIAogICAgIC8qCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
