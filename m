Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247502961E
	for <lists+spice-devel@lfdr.de>; Fri, 24 May 2019 12:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B5A6E0E5;
	Fri, 24 May 2019 10:42:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E436A6E0E5;
 Fri, 24 May 2019 10:42:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4A380308424C;
 Fri, 24 May 2019 10:42:54 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-101.ams2.redhat.com
 [10.36.116.101])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DEA875B683;
 Fri, 24 May 2019 10:42:51 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 0FD2511AB5; Fri, 24 May 2019 12:42:51 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 May 2019 12:42:50 +0200
Message-Id: <20190524104251.22761-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 24 May 2019 10:42:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH] drm/qxl: drop WARN_ONCE()
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

VGhlcmUgaXMgbm8gZ29vZCByZWFzb24gdG8gZmxvb2QgdGhlIGtlcm5lbCBsb2cgd2l0aCBhIFdB
Uk4Kc3RhY2t0cmFjZSBqdXN0IGJlY2F1c2Ugc29tZW9uZSB0cmllZCB0byBtbWFwIGEgcHJpbWUg
YnVmZmVyLgoKU2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYyB8IDEgLQogMSBmaWxlIGNoYW5n
ZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9w
cmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYwppbmRleCAxMTQ2NTNiNDcx
YzYuLjdkMzgxNmZjYTVhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJp
bWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9wcmltZS5jCkBAIC03Nyw2ICs3Nyw1
IEBAIHZvaWQgcXhsX2dlbV9wcmltZV92dW5tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmos
IHZvaWQgKnZhZGRyKQogaW50IHF4bF9nZW1fcHJpbWVfbW1hcChzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiwKIAkJICAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqYXJlYSkKIHsKLQlXQVJO
X09OQ0UoMSwgIm5vdCBpbXBsZW1lbnRlZCIpOwogCXJldHVybiAtRU5PU1lTOwogfQotLSAKMi4x
OC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
