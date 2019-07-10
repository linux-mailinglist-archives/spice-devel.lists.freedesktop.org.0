Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5759C64B9C
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 19:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD60894C3;
	Wed, 10 Jul 2019 17:44:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE7A89309
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CDC2BC070E3A
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:40 +0000 (UTC)
Received: from lub.com (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3C12B60BFC
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:40 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 20:44:34 +0300
Message-Id: <20190710174435.15833-3-uril@redhat.com>
In-Reply-To: <20190710174435.15833-1-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 10 Jul 2019 17:44:40 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH v2 2/3] dcc-send: remove unused
 variable 'image'
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvZGNjLXNl
bmQuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9kY2Mtc2VuZC5jIGIvc2VydmVyL2RjYy1zZW5k
LmMKaW5kZXggNTY1YTc5ZjMzLi5lMGYzYjgxODMgMTAwNjQ0Ci0tLSBhL3NlcnZlci9kY2Mtc2Vu
ZC5jCisrKyBiL3NlcnZlci9kY2Mtc2VuZC5jCkBAIC03MjUsNyArNzI1LDYgQEAgc3RhdGljIHZv
aWQgcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9pbWFnZXMoRGlzcGxh
eUNoYW5uZWxDbGllbnQKICAgICAgICAgUmVkUGlwZUl0ZW0gKnBpcGVfaXRlbSA9IGwtPmRhdGE7
CiAgICAgICAgIERyYXdhYmxlICpkcmF3YWJsZTsKICAgICAgICAgUmVkRHJhd2FibGVQaXBlSXRl
bSAqZHBpOwotICAgICAgICBSZWRJbWFnZUl0ZW0gKmltYWdlOwogCiAgICAgICAgIGlmIChwaXBl
X2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBFX0RSQVcpCiAgICAgICAgICAgICBjb250
aW51ZTsKQEAgLTc0NSwxMyArNzQ0LDEyIEBAIHN0YXRpYyB2b2lkIHJlZF9waXBlX3JlcGxhY2Vf
cmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKERpc3BsYXlDaGFubmVsQ2xpZW50CiAgICAg
ICAgICAgICBjb250aW51ZTsKICAgICAgICAgfQogCi0gICAgICAgIGltYWdlID0gZGNjX2FkZF9z
dXJmYWNlX2FyZWFfaW1hZ2UoZGNjLCBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lk
LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkcmF3YWJsZS0+
cmVkX2RyYXdhYmxlLT5iYm94LCBsLCBUUlVFKTsKKyAgICAgICAgZGNjX2FkZF9zdXJmYWNlX2Fy
ZWFfaW1hZ2UoZGNjLCBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5zdXJmYWNlX2lkLAorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJv
eCwgbCwgVFJVRSk7CiAgICAgICAgIHJlc2VudF9zdXJmYWNlX2lkc1tudW1fcmVzZW50XSA9IGRy
YXdhYmxlLT5yZWRfZHJhd2FibGUtPnN1cmZhY2VfaWQ7CiAgICAgICAgIHJlc2VudF9hcmVhc1tu
dW1fcmVzZW50XSA9IGRyYXdhYmxlLT5yZWRfZHJhd2FibGUtPmJib3g7CiAgICAgICAgIG51bV9y
ZXNlbnQrKzsKIAotICAgICAgICBzcGljZV9hc3NlcnQoaW1hZ2UpOwogICAgICAgICByZWRfY2hh
bm5lbF9jbGllbnRfcGlwZV9yZW1vdmVfYW5kX3JlbGVhc2VfcG9zKFJFRF9DSEFOTkVMX0NMSUVO
VChkY2MpLCBsKTsKICAgICB9CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
