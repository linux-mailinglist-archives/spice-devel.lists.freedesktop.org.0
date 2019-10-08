Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 673F7CF54D
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 10:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D066E0C5;
	Tue,  8 Oct 2019 08:50:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 969 seconds by postgrey-1.36 at gabe;
 Tue, 08 Oct 2019 02:58:15 UTC
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDD96E047
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 02:58:15 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 991DDDCAB4BC3935C2E2;
 Tue,  8 Oct 2019 10:42:01 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 10:41:53 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <airlied@redhat.com>, <kraxel@redhat.com>, <airlied@linux.ie>,
 <daniel@ffwll.ch>
Date: Tue, 8 Oct 2019 10:40:54 +0800
Message-ID: <20191008024054.32368-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 08 Oct 2019 08:50:11 +0000
Subject: [Spice-devel] [PATCH -next] drm/qxl: Fix randbuild error
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
Cc: spice-devel@lists.freedesktop.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWYgREVNX1FYTCBpcyB5IGFuZCBEUk1fVFRNX0hFTFBFUiBpcyBtLCBidWlsZGluZyBmYWlsczoK
CmRyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX29iamVjdC5vOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRv
IGBkcm1fZ2VtX3R0bV9wcmludF9pbmZvJwoKU2VsZWN0IERSTV9UVE1fSEVMUEVSIHRvIGZpeCB0
aGlzLgoKRml4ZXM6IDc4ZDU0ZjFmNmEzMyAoImRybS9xeGw6IHVzZSBkcm1fZ2VtX3R0bV9wcmlu
dF9pbmZvIikKU2lnbmVkLW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9xeGwvS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9LY29uZmln
IGIvZHJpdmVycy9ncHUvZHJtL3F4bC9LY29uZmlnCmluZGV4IGQwZDY5MWIuLmNhM2Y1MWMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvS2NvbmZpZworKysgYi9kcml2ZXJzL2dwdS9k
cm0vcXhsL0tjb25maWcKQEAgLTQsNiArNCw3IEBAIGNvbmZpZyBEUk1fUVhMCiAJZGVwZW5kcyBv
biBEUk0gJiYgUENJICYmIE1NVQogCXNlbGVjdCBEUk1fS01TX0hFTFBFUgogCXNlbGVjdCBEUk1f
VFRNCisJc2VsZWN0IERSTV9UVE1fSEVMUEVSCiAJc2VsZWN0IENSQzMyCiAJaGVscAogCSAgUVhM
IHZpcnR1YWwgR1BVIGZvciBTcGljZSB2aXJ0dWFsaXphdGlvbiBkZXNrdG9wIGludGVncmF0aW9u
LgotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
