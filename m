Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22D5795F1
	for <lists+spice-devel@lfdr.de>; Tue, 19 Jul 2022 11:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0525514AC1B;
	Tue, 19 Jul 2022 09:17:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com
 [IPv6:2607:f8b0:4864:20::92d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C094F14AB6A
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Jul 2022 09:14:03 +0000 (UTC)
Received: by mail-ua1-x92d.google.com with SMTP id s3so6529598uaq.2
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Jul 2022 02:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=USiHEWO3jenD+4D67wgYkGKlAcIRmi0lfoN5PdFyKzQ=;
 b=dFYdzZzeGTwRc0FPEgBG5fRwMWNVjXZzxLxwtIHOW4IyAUtC1iJhL8ze0h/ntk8Iq4
 lKlrAFaVxT4/pV4802tsmPOfXqrd/5krNwAeme2Ty0hfRzSXMQ2O+C/Kf1izAeM/mOcz
 8LysLHAdaCtPPppxeQNBi2EL1ZGV/VNGij1I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=USiHEWO3jenD+4D67wgYkGKlAcIRmi0lfoN5PdFyKzQ=;
 b=oEyWrimbXhjfFRsAqy41REX3oUl4TG2Aqv3PM0vLq1APi4Mic4Goxvd4SatFqp45gR
 06VO4D8KqQUIZaoCzi+WFMXylw2F4TJSrgt2MFTic24IYG0+4HHe/SZ5VuB1ryx+Mk4h
 O6bYuqNaCGoUpLLvMay7Lg2a5hB+QvX+gMFBF4dakI+uJt2nti5H7dKBwKh64tDS7CQd
 EHmt+EE1RoTBcnphfP/N6ly1ZydP8Yy5pLsm70LZPel7JYAH2h43kupdfEQmVNeXu44R
 ueqGe3/sZRbvY8ko3ShWq1mshqWxuFQpS0RemoqIiZo0Hd+CWthwfp/j5yN0fT1IYE7F
 TTHg==
X-Gm-Message-State: AJIora8A0rx7LNSuSo/jHvPD9AVM1Nyj4lcN/asUFOvCyTWhEhhNQbeQ
 pydxNAXUjv89+/9EEa5zHJu6SCdNz6P4FA==
X-Google-Smtp-Source: AGRyM1u9yCg0YzU1Sm2d3yNpDfVWX9wGZIARwdJbWL52Hp4qMtfD8c6jeNzquJPDMzSKLlLvk3P3Cg==
X-Received: by 2002:ab0:7085:0:b0:382:9454:962 with SMTP id
 m5-20020ab07085000000b0038294540962mr11227334ual.113.1658222042528; 
 Tue, 19 Jul 2022 02:14:02 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46]) by smtp.gmail.com with ESMTPSA id
 r17-20020a056122009100b003689df4f372sm2305537vka.27.2022.07.19.02.14.01
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jul 2022 02:14:02 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id s7so6522453uao.4
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Jul 2022 02:14:01 -0700 (PDT)
X-Received: by 2002:a81:6ccd:0:b0:31d:c77:73e5 with SMTP id
 h196-20020a816ccd000000b0031d0c7773e5mr33706265ywc.314.1658222030025; Tue, 19
 Jul 2022 02:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 19 Jul 2022 18:13:39 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C0dx5X=VEqXDyj22fbxs1jhOQLLid3vSNfAc9vataPhg@mail.gmail.com>
Message-ID: <CAAFQd5C0dx5X=VEqXDyj22fbxs1jhOQLLid3vSNfAc9vataPhg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 19 Jul 2022 09:17:08 +0000
Subject: Re: [Spice-devel] [PATCH v1 0/6] Move all drivers to a common
 dma-buf locking convention
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
Cc: David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-rdma@vger.kernel.org,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas_os@shipmail.org>,
 Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 spice-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Jul 15, 2022 at 9:53 AM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> Hello,
>
> This series moves all drivers to a dynamic dma-buf locking specification.
> From now on all dma-buf importers are made responsible for holding
> dma-buf's reservation lock around all operations performed over dma-bufs.
> This common locking convention allows us to utilize reservation lock more
> broadly around kernel without fearing of potential dead locks.
>
> This patchset passes all i915 selftests. It was also tested using VirtIO,
> Panfrost, Lima and Tegra drivers. I tested cases of display+GPU,
> display+V4L and GPU+V4L dma-buf sharing, which covers majority of kernel
> drivers since rest of the drivers share same or similar code paths.
>
> This is a continuation of [1] where Christian K=C3=B6nig asked to factor =
out
> the dma-buf locking changes into separate series.
>
> [1] https://lore.kernel.org/dri-devel/20220526235040.678984-1-dmitry.osip=
enko@collabora.com/
>
> Dmitry Osipenko (6):
>   dma-buf: Add _unlocked postfix to function names
>   drm/gem: Take reservation lock for vmap/vunmap operations
>   dma-buf: Move all dma-bufs to dynamic locking specification
>   dma-buf: Acquire wait-wound context on attachment
>   media: videobuf2: Stop using internal dma-buf lock
>   dma-buf: Remove internal lock
>
>  drivers/dma-buf/dma-buf.c                     | 198 +++++++++++-------
>  drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c   |   4 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       |   4 +-
>  drivers/gpu/drm/armada/armada_gem.c           |  14 +-
>  drivers/gpu/drm/drm_client.c                  |   4 +-
>  drivers/gpu/drm/drm_gem.c                     |  28 +++
>  drivers/gpu/drm/drm_gem_cma_helper.c          |   6 +-
>  drivers/gpu/drm/drm_gem_framebuffer_helper.c  |   6 +-
>  drivers/gpu/drm/drm_gem_shmem_helper.c        |   6 +-
>  drivers/gpu/drm/drm_prime.c                   |  12 +-
>  drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c   |   6 +-
>  drivers/gpu/drm/exynos/exynos_drm_gem.c       |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  20 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +-
>  .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |  20 +-
>  drivers/gpu/drm/i915/i915_gem_evict.c         |   2 +-
>  drivers/gpu/drm/i915/i915_gem_ww.c            |  26 ++-
>  drivers/gpu/drm/i915/i915_gem_ww.h            |  15 +-
>  drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c     |   8 +-
>  drivers/gpu/drm/qxl/qxl_object.c              |  17 +-
>  drivers/gpu/drm/qxl/qxl_prime.c               |   4 +-
>  drivers/gpu/drm/tegra/gem.c                   |  27 +--
>  drivers/infiniband/core/umem_dmabuf.c         |  11 +-
>  .../common/videobuf2/videobuf2-dma-contig.c   |  26 +--
>  .../media/common/videobuf2/videobuf2-dma-sg.c |  23 +-
>  .../common/videobuf2/videobuf2-vmalloc.c      |  17 +-

For the videobuf2 changes:

Acked-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
