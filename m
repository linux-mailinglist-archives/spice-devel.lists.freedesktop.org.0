Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1688A32D7CF
	for <lists+spice-devel@lfdr.de>; Thu,  4 Mar 2021 17:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD6D6E09C;
	Thu,  4 Mar 2021 16:33:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5776EA25;
 Thu,  4 Mar 2021 15:20:12 +0000 (UTC)
Message-Id: <20210303132711.873509407@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1614870850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=u3h/+voGfuQZ8vvFWg0Eh8wQJhEpYLRgbzaO7lOW+aI=;
 b=FSHWAHNsmSIFfiruOKZ8wU93ak4ffq2CPua5ms62JfEDDwQwbdLKDz487hngpO+W3ALSJl
 gw0M1AXAD9z5g4KvDX/2e4Qdq9jnzWlwlj9X1vy1uJesdrTs1WwFS/vdH8H3v/3R0znXoM
 oq13YugQEN0jIJfBx9Sesx/SXVJDRRwQw6KW4bn7nVVyUWEBxGL+rT2SrPW8AdlGZ9jxwg
 /s5zvLwTTNrlyUi2y2imwKPsz2Ll2XZvsF3URJCgFogvFAyAW/QRjoNF0uJTwgkxZWoXV8
 rPY2lTzr1OpSqGg4wALRcll/sMqZHuaZf87+mMAhe14HCu1/zLU+C/hHOKAr0Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1614870850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=u3h/+voGfuQZ8vvFWg0Eh8wQJhEpYLRgbzaO7lOW+aI=;
 b=BMC8gIgnDEiQOzywif6l/p5mkFIc5cDcrw9v673ZPmN4Z6uYF3ws0c2luovKIVfbNBBvbs
 HbJiCn5oFqa3koBA==
Date: Wed, 03 Mar 2021 14:20:28 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20210303132023.077167457@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 04 Mar 2021 16:33:13 +0000
Subject: [Spice-devel] [patch 5/7] drm/nouveau/device: Replace
 io_mapping_map_atomic_wc()
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Roland Scheidegger <sroland@vmware.com>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Huang Rui <ray.huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, spice-devel@lists.freedesktop.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Christian Koenig <christian.koenig@amd.com>, Zack Rusin <zackr@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Thomas Gleixner <tglx@linutronix.de>

Neither fbmem_peek() nor fbmem_poke() require to disable pagefaults and
preemption as a side effect of io_mapping_map_atomic_wc().

Use io_mapping_map_local_wc() instead.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Ben Skeggs <bskeggs@redhat.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Cc: nouveau@lists.freedesktop.org
---
 drivers/gpu/drm/nouveau/nvkm/subdev/devinit/fbmem.h |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

--- a/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/fbmem.h
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/fbmem.h
@@ -60,19 +60,19 @@ fbmem_fini(struct io_mapping *fb)
 static inline u32
 fbmem_peek(struct io_mapping *fb, u32 off)
 {
-	u8 __iomem *p = io_mapping_map_atomic_wc(fb, off & PAGE_MASK);
+	u8 __iomem *p = io_mapping_map_local_wc(fb, off & PAGE_MASK);
 	u32 val = ioread32(p + (off & ~PAGE_MASK));
-	io_mapping_unmap_atomic(p);
+	io_mapping_unmap_local(p);
 	return val;
 }
 
 static inline void
 fbmem_poke(struct io_mapping *fb, u32 off, u32 val)
 {
-	u8 __iomem *p = io_mapping_map_atomic_wc(fb, off & PAGE_MASK);
+	u8 __iomem *p = io_mapping_map_local_wc(fb, off & PAGE_MASK);
 	iowrite32(val, p + (off & ~PAGE_MASK));
 	wmb();
-	io_mapping_unmap_atomic(p);
+	io_mapping_unmap_local(p);
 }
 
 static inline bool


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
