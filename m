Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABA8DAE46
	for <lists+spice-devel@lfdr.de>; Thu, 17 Oct 2019 15:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94FF6EA98;
	Thu, 17 Oct 2019 13:26:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A1D6EA85;
 Thu, 17 Oct 2019 13:26:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 619EB3082E72;
 Thu, 17 Oct 2019 13:26:43 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-43.ams2.redhat.com
 [10.36.116.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D03160852;
 Thu, 17 Oct 2019 13:26:43 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id DAED5934C; Thu, 17 Oct 2019 15:26:38 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 17 Oct 2019 15:26:38 +0200
Message-Id: <20191017132638.9693-6-kraxel@redhat.com>
In-Reply-To: <20191017132638.9693-1-kraxel@redhat.com>
References: <20191017132638.9693-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 17 Oct 2019 13:26:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH 5/5] drm/qxl: allocate small objects top-down
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cXhsIHVzZXMgc21hbGwgYnVmZmVyIG9iamVjdHMgZm9yIHF4bCBjb21tYW5kcy4KQWxsb2NhdGUg
dGhlbSB0b3AtZG93biB0byByZWR1Y2UgZnJhZ21lbnRhdGlvbi4KClNpZ25lZC1vZmYtYnk6IEdl
cmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9xeGwv
cXhsX29iamVjdC5jIHwgNyArKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2Jq
ZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuYwppbmRleCA5MjdhYjkxN2I4
MzQuLmFkMzM2Yzk4YTBjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2Jq
ZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMKQEAgLTU0LDkgKzU0
LDE0IEBAIGJvb2wgcXhsX3R0bV9ib19pc19xeGxfYm8oc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICpibykKIHZvaWQgcXhsX3R0bV9wbGFjZW1lbnRfZnJvbV9kb21haW4oc3RydWN0IHF4bF9ibyAq
cWJvLCB1MzIgZG9tYWluLCBib29sIHBpbm5lZCkKIHsKIAl1MzIgYyA9IDA7Ci0JdTMyIHBmbGFn
ID0gcGlubmVkID8gVFRNX1BMX0ZMQUdfTk9fRVZJQ1QgOiAwOworCXUzMiBwZmxhZyA9IDA7CiAJ
dW5zaWduZWQgaW50IGk7CiAKKwlpZiAocGlubmVkKQorCQlwZmxhZyB8PSBUVE1fUExfRkxBR19O
T19FVklDVDsKKwlpZiAocWJvLT50Ym8uYmFzZS5zaXplIDw9IFBBR0VfU0laRSkKKwkJcGZsYWcg
fD0gVFRNX1BMX0ZMQUdfVE9QRE9XTjsKKwogCXFiby0+cGxhY2VtZW50LnBsYWNlbWVudCA9IHFi
by0+cGxhY2VtZW50czsKIAlxYm8tPnBsYWNlbWVudC5idXN5X3BsYWNlbWVudCA9IHFiby0+cGxh
Y2VtZW50czsKIAlpZiAoZG9tYWluID09IFFYTF9HRU1fRE9NQUlOX1ZSQU0pCi0tIAoyLjE4LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
