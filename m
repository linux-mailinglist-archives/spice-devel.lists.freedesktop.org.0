Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D2515BC2E
	for <lists+spice-devel@lfdr.de>; Thu, 13 Feb 2020 10:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35B76F594;
	Thu, 13 Feb 2020 09:54:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 2294 seconds by postgrey-1.36 at gabe;
 Wed, 12 Feb 2020 20:09:42 UTC
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
 [50.116.127.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CEE289225
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Feb 2020 20:09:42 +0000 (UTC)
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id D3C01291284
 for <spice-devel@lists.freedesktop.org>;
 Wed, 12 Feb 2020 13:31:10 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1xj4jcugtSl8q1xj4jLg9o; Wed, 12 Feb 2020 13:31:10 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qVT3JEBGacGB2ITpJDbesv5hNV8nBdRWBrUKUxTwmPU=; b=SO0RE1grbeu4rE7C9/5vgBTS9v
 K+ivX9nq4nObO5gnVyWWT0j5krix2wwszSD9HtfY7xNU83Ao1JIqSDAcivueHllxK5q5NjlumO/9x
 lAkWMdQtrLxYO0DsEm2ozZ2D/WyOlP32QTmLnBGrNxsm51sc9eiIcBkCLbzAB9YxV2lslJvU/CBDK
 JBy1DJsGvdL4CdSrL13a6+iARyCiqeFtU6ZhV1jTHmbBX1u+VO8A+gG1QuEH5wC5WyfukIx26BZYM
 uOGnBXi930Jwk5WOrLliqaaVy4DpJ73ipH895mNAE+lTfv3eMlLKmUFgijJ0BD7C9/TeKFSumIaWP
 xKngX4VQ==;
Received: from [201.144.174.25] (port=10240 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1xj3-0017cN-2B; Wed, 12 Feb 2020 13:31:09 -0600
Date: Wed, 12 Feb 2020 13:33:44 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200212193344.GA27929@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.144.174.25
X-Source-L: No
X-Exim-ID: 1j1xj3-0017cN-2B
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.144.174.25]:10240
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 22
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Mailman-Approved-At: Thu, 13 Feb 2020 09:54:47 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: replace zero-length array with
 flexible-array member
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/gpu/drm/qxl/qxl_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/qxl/qxl_cmd.c b/drivers/gpu/drm/qxl/qxl_cmd.c
index ef09dc6bc635..d1086b2a6892 100644
--- a/drivers/gpu/drm/qxl/qxl_cmd.c
+++ b/drivers/gpu/drm/qxl/qxl_cmd.c
@@ -36,7 +36,7 @@ static int qxl_reap_surface_id(struct qxl_device *qdev, int max_to_reap);
 
 struct ring {
 	struct qxl_ring_header      header;
-	uint8_t                     elements[0];
+	uint8_t                     elements[];
 };
 
 struct qxl_ring {
-- 
2.25.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
