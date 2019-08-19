Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0402494FC1
	for <lists+spice-devel@lfdr.de>; Mon, 19 Aug 2019 23:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386E46E2D8;
	Mon, 19 Aug 2019 21:18:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8CD6E260;
 Mon, 19 Aug 2019 18:08:29 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id e65so1153997ywh.0;
 Mon, 19 Aug 2019 11:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O68GQIaSihY3YZYxTJAdOGhdzGVw7YfAHehKqg8Jqgw=;
 b=TPZmH1luMzp3pgcopV0+7Th7MuT6zD6s3EI+Sxuya5QMhJuVwuSrrjp1irJTZXAUYy
 4UZqxeoSQUOA1otkxifOet+tzTFgULI54RU5mIG1bmEhhH4K7cGxDSQAoosXhkkffXFD
 cqcPM0uCegVRWIDKesrbn/QJESre17yoay9rizhsh06UhOx8gcFsbtOx6QCIVkvjFXFR
 Z02wBnhrK0LlJYCDOaXkK0mCw0+Vmi9iN13zJ7NlAhwcQFbhQGYEWreAPAHFApgUVrrx
 E1W5kuzf4TwwuDWVz+mI7kuKW/dXd3pKnCbJCMFK2MTicXoMnFftMuwzSEmS987YXOgx
 9caw==
X-Gm-Message-State: APjAAAXxnEpFPOg7PUQ4T0rFef9+U76tCOG/NQwiNyFN3uVjFEAUm3hl
 JJzFJQLy4A6AujxXK6CmjAE=
X-Google-Smtp-Source: APXvYqybj/DJDeHeLsQLJ5Fb5uIIjCBh0hJXGKTuenKwUv5ag3p9fU5A9ZNRwQuDwT94bFwZdoLf0Q==
X-Received: by 2002:a81:ad10:: with SMTP id l16mr15762054ywh.217.1566238108803; 
 Mon, 19 Aug 2019 11:08:28 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id l15sm864334ywk.72.2019.08.19.11.08.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 11:08:27 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Date: Mon, 19 Aug 2019 13:08:18 -0500
Message-Id: <1566238098-3962-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 19 Aug 2019 21:18:14 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: fix a memory leak bug
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
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
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

SW4gcXhsX2JvX2NyZWF0ZSgpLCB0aGUgdGVtcG9yYXJ5ICdibycgaXMgYWxsb2NhdGVkIHRocm91
Z2gga3phbGxvYygpLgpIb3dldmVyLCBpdCBpcyBub3QgZGVhbGxvY2F0ZWQgaW4gdGhlIGZvbGxv
d2luZyBleGVjdXRpb24gaWYgdHRtX2JvX2luaXQoKQpmYWlscywgbGVhZGluZyB0byBhIG1lbW9y
eSBsZWFrIGJ1Zy4gVG8gZml4IHRoaXMgaXNzdWUsIGZyZWUgJ2JvJyBiZWZvcmUKcmV0dXJuaW5n
IHRoZSBlcnJvci4KClNpZ25lZC1vZmYtYnk6IFdlbndlbiBXYW5nIDx3ZW53ZW5AY3MudWdhLmVk
dT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9x
eGxfb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuYwppbmRleCA0OTI4
ZmE2Li4zYjIxN2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3Qu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9vYmplY3QuYwpAQCAtMTE4LDYgKzExOCw3
IEBAIGludCBxeGxfYm9fY3JlYXRlKHN0cnVjdCBxeGxfZGV2aWNlICpxZGV2LAogCQkJZGV2X2Vy
cihxZGV2LT5kZGV2LmRldiwKIAkJCQkib2JqZWN0X2luaXQgZmFpbGVkIGZvciAoJWx1LCAweCUw
OFgpXG4iLAogCQkJCXNpemUsIGRvbWFpbik7CisJCWtmcmVlKGJvKTsKIAkJcmV0dXJuIHI7CiAJ
fQogCSpib19wdHIgPSBibzsKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
