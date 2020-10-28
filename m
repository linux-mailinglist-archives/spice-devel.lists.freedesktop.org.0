Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B754D29D259
	for <lists+spice-devel@lfdr.de>; Wed, 28 Oct 2020 22:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B156E514;
	Wed, 28 Oct 2020 21:12:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B6C6E3C1;
 Wed, 28 Oct 2020 19:35:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 981D5B91E;
 Wed, 28 Oct 2020 19:35:30 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Date: Wed, 28 Oct 2020 20:35:20 +0100
Message-Id: <20201028193521.2489-10-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201028193521.2489-1-tzimmermann@suse.de>
References: <20201028193521.2489-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 28 Oct 2020 21:12:33 +0000
Subject: [Spice-devel] [PATCH v6 09/10] dma-buf-map: Add memcpy and
 pointer-increment interfaces
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

To do framebuffer updates, one needs memcpy from system memory and a
pointer-increment function. Add both interfaces with documentation.

v5:
	* include <linux/string.h> to build on sparc64 (Sam)

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Sam Ravnborg <sam@ravnborg.org>
---
 include/linux/dma-buf-map.h | 73 ++++++++++++++++++++++++++++++++-----
 1 file changed, 63 insertions(+), 10 deletions(-)

diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
index 2e8bbecb5091..583a3a1f9447 100644
--- a/include/linux/dma-buf-map.h
+++ b/include/linux/dma-buf-map.h
@@ -7,6 +7,7 @@
 #define __DMA_BUF_MAP_H__
 
 #include <linux/io.h>
+#include <linux/string.h>
 
 /**
  * DOC: overview
@@ -32,6 +33,14 @@
  * accessing the buffer. Use the returned instance and the helper functions
  * to access the buffer's memory in the correct way.
  *
+ * The type :c:type:`struct dma_buf_map <dma_buf_map>` and its helpers are
+ * actually independent from the dma-buf infrastructure. When sharing buffers
+ * among devices, drivers have to know the location of the memory to access
+ * the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
+ * solves this problem for dma-buf and its users. If other drivers or
+ * sub-systems require similar functionality, the type could be generalized
+ * and moved to a more prominent header file.
+ *
  * Open-coding access to :c:type:`struct dma_buf_map <dma_buf_map>` is
  * considered bad style. Rather then accessing its fields directly, use one
  * of the provided helper functions, or implement your own. For example,
@@ -51,6 +60,14 @@
  *
  *	dma_buf_map_set_vaddr_iomem(&map. 0xdeadbeaf);
  *
+ * Instances of struct dma_buf_map do not have to be cleaned up, but
+ * can be cleared to NULL with dma_buf_map_clear(). Cleared mappings
+ * always refer to system memory.
+ *
+ * .. code-block:: c
+ *
+ *	dma_buf_map_clear(&map);
+ *
  * Test if a mapping is valid with either dma_buf_map_is_set() or
  * dma_buf_map_is_null().
  *
@@ -73,17 +90,19 @@
  *	if (dma_buf_map_is_equal(&sys_map, &io_map))
  *		// always false
  *
- * Instances of struct dma_buf_map do not have to be cleaned up, but
- * can be cleared to NULL with dma_buf_map_clear(). Cleared mappings
- * always refer to system memory.
+ * A set up instance of struct dma_buf_map can be used to access or manipulate
+ * the buffer memory. Depending on the location of the memory, the provided
+ * helpers will pick the correct operations. Data can be copied into the memory
+ * with dma_buf_map_memcpy_to(). The address can be manipulated with
+ * dma_buf_map_incr().
  *
- * The type :c:type:`struct dma_buf_map <dma_buf_map>` and its helpers are
- * actually independent from the dma-buf infrastructure. When sharing buffers
- * among devices, drivers have to know the location of the memory to access
- * the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
- * solves this problem for dma-buf and its users. If other drivers or
- * sub-systems require similar functionality, the type could be generalized
- * and moved to a more prominent header file.
+ * .. code-block:: c
+ *
+ *	const void *src = ...; // source buffer
+ *	size_t len = ...; // length of src
+ *
+ *	dma_buf_map_memcpy_to(&map, src, len);
+ *	dma_buf_map_incr(&map, len); // go to first byte after the memcpy
  */
 
 /**
@@ -210,4 +229,38 @@ static inline void dma_buf_map_clear(struct dma_buf_map *map)
 	}
 }
 
+/**
+ * dma_buf_map_memcpy_to - Memcpy into dma-buf mapping
+ * @dst:	The dma-buf mapping structure
+ * @src:	The source buffer
+ * @len:	The number of byte in src
+ *
+ * Copies data into a dma-buf mapping. The source buffer is in system
+ * memory. Depending on the buffer's location, the helper picks the correct
+ * method of accessing the memory.
+ */
+static inline void dma_buf_map_memcpy_to(struct dma_buf_map *dst, const void *src, size_t len)
+{
+	if (dst->is_iomem)
+		memcpy_toio(dst->vaddr_iomem, src, len);
+	else
+		memcpy(dst->vaddr, src, len);
+}
+
+/**
+ * dma_buf_map_incr - Increments the address stored in a dma-buf mapping
+ * @map:	The dma-buf mapping structure
+ * @incr:	The number of bytes to increment
+ *
+ * Increments the address stored in a dma-buf mapping. Depending on the
+ * buffer's location, the correct value will be updated.
+ */
+static inline void dma_buf_map_incr(struct dma_buf_map *map, size_t incr)
+{
+	if (map->is_iomem)
+		map->vaddr_iomem += incr;
+	else
+		map->vaddr += incr;
+}
+
 #endif /* __DMA_BUF_MAP_H__ */
-- 
2.29.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
