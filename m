Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EEEA6653
	for <lists+spice-devel@lfdr.de>; Tue,  3 Sep 2019 12:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C3F89831;
	Tue,  3 Sep 2019 10:12:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6E589817;
 Tue,  3 Sep 2019 10:12:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7742FA36EFE;
 Tue,  3 Sep 2019 10:12:56 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-117-72.ams2.redhat.com
 [10.36.117.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8ABF96012C;
 Tue,  3 Sep 2019 10:12:53 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id E8B6F31F47; Tue,  3 Sep 2019 12:12:49 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  3 Sep 2019 12:12:48 +0200
Message-Id: <20190903101248.12879-7-kraxel@redhat.com>
In-Reply-To: <20190903101248.12879-1-kraxel@redhat.com>
References: <20190903101248.12879-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 03 Sep 2019 10:12:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH v2 6/6] drm/qxl: use drm_gem_ttm_print_info
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

U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkFja2VkLWJ5
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vcXhsL3F4bF9kcnYuaCAgICB8IDEgKwogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2Jq
ZWN0LmMgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4
bF9kcnYuaAppbmRleCA5ZTAzNGM1ZmE4N2QuLmQ0MDUxNDA5Y2U2NCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxf
ZHJ2LmgKQEAgLTM4LDYgKzM4LDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2NydGMuaD4KICNpbmNs
dWRlIDxkcm0vZHJtX2VuY29kZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2ZiX2hlbHBlci5oPgor
I2luY2x1ZGUgPGRybS9kcm1fZ2VtX3R0bV9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2lv
Y3RsLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9nZW0uaD4KICNpbmNsdWRlIDxkcm0vcXhsX2RybS5o
PgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuYwppbmRleCAyOWFhYjdiMTQ1MTMuLmMwMTNjNTE2ZjU2
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMKQEAgLTg2LDYgKzg2LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdF9mdW5jcyBxeGxfb2JqZWN0X2Z1bmNzID0gewogCS5n
ZXRfc2dfdGFibGUgPSBxeGxfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkudm1hcCA9IHF4bF9n
ZW1fcHJpbWVfdm1hcCwKIAkudnVubWFwID0gcXhsX2dlbV9wcmltZV92dW5tYXAsCisJLnByaW50
X2luZm8gPSBkcm1fZ2VtX3R0bV9wcmludF9pbmZvLAogfTsKIAogaW50IHF4bF9ib19jcmVhdGUo
c3RydWN0IHF4bF9kZXZpY2UgKnFkZXYsCi0tIAoyLjE4LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
