Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E837A40B
	for <lists+spice-devel@lfdr.de>; Tue, 11 May 2021 11:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27746EA1A;
	Tue, 11 May 2021 09:51:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58406E9CA;
 Tue, 11 May 2021 06:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ivXRfvp0B6bhHcZFQN6o9TvbDYiuEX8y75ZaSbBWqwk=; b=QSMJ3NJ5uT19qxcGuE+coUNmlb
 yT6P0yLS4aW5ugTz7nrlHAL9y157fuXhzFSUDGjN+UGajFuOpst3+7Q1r+IsllWGSvmcMP6zaCnvP
 NuzYBH7oq4UO6oSNuHzUKxsqC7iE7c8x5KwMQF4BOoCGpuvTZc481nEUeO9Pe7T9RXQ0hRiHIuaYA
 7NLXj7mhlAF0i+ESIHahLpUPYelFixQLV64KQdVSBZtyALcQP8r6U7y65kEs5g/sGjSMPZwG7Jpx9
 T+dCLrx/3PVjDzEvBNZ77fqkKCogfLUNvijXg4hBZkvqcZnPA4ZzPU2Z3PeHMAchedaCnpQ8iICd9
 sBsvvTNA==;
Received: from [2001:4bb8:198:fbc8:d27d:cdc6:80b6:b410] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lgLW9-009KPC-7Y; Tue, 11 May 2021 06:05:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>
Date: Tue, 11 May 2021 08:05:13 +0200
Message-Id: <20210511060514.3956745-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 11 May 2021 09:51:09 +0000
Subject: [Spice-devel] RFC: use dma_alloc_noncoherent in ttm_pool_alloc_page
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
Cc: amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 nouveau@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Dave Airlie <airlied@redhat.com>, spice-devel@lists.freedesktop.org,
 Zack Rusin <zackr@vmware.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all,

the memory allocation for the TTM pool is a big mess with two allocation
methods that both have issues, a layering violation and odd guessing of
pools in the callers.

This patch switches to the dma_alloc_noncoherent API instead fixing all
of the above issues.

Warning:  i don't have any of the relevant hardware, so this is a compile
tested request for comments only!

Diffstat:
 drivers/gpu/drm/amd/amdgpu/amdgpu.h     |    1 
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c |    4 
 drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c   |    1 
 drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c   |    1 
 drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c   |    1 
 drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c   |    1 
 drivers/gpu/drm/drm_cache.c             |   31 -----
 drivers/gpu/drm/drm_gem_vram_helper.c   |    3 
 drivers/gpu/drm/nouveau/nouveau_ttm.c   |    8 -
 drivers/gpu/drm/qxl/qxl_ttm.c           |    3 
 drivers/gpu/drm/radeon/radeon.h         |    1 
 drivers/gpu/drm/radeon/radeon_device.c  |    1 
 drivers/gpu/drm/radeon/radeon_ttm.c     |    4 
 drivers/gpu/drm/ttm/ttm_device.c        |    7 -
 drivers/gpu/drm/ttm/ttm_pool.c          |  178 ++++----------------------------
 drivers/gpu/drm/ttm/ttm_tt.c            |   25 ----
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c     |    4 
 include/drm/drm_cache.h                 |    1 
 include/drm/ttm/ttm_device.h            |    3 
 include/drm/ttm/ttm_pool.h              |    9 -
 20 files changed, 41 insertions(+), 246 deletions(-)
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
