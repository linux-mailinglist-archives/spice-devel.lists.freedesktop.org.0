Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FBD86B180
	for <lists+spice-devel@lfdr.de>; Wed, 28 Feb 2024 15:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE77510E673;
	Wed, 28 Feb 2024 14:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="P1j8Fgyz";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7225D10E9AA
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Feb 2024 03:52:22 +0000 (UTC)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-607f8894550so36541237b3.1
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Feb 2024 19:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1709092341; x=1709697141;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f3VZ+gKw3xKCEuJeJ0WfU+cy5aus56GaHtywGqRgWrw=;
 b=P1j8FgyzwvtRa6T2bq1zV4DfC/Irsf8ZIKMmBnOTNKDmkBzHETtq+geFDO5+Odq8f6
 w6+vwjDcRjaEo4Jr+CDzTL/HxvgRowFhRktfgIlvV4Aj8MSMD6uC9mWlby19Tg4cPrDn
 H7M3g0PMMxnt21iyXc9FIz/e5AmJ74mwZVe7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709092341; x=1709697141;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f3VZ+gKw3xKCEuJeJ0WfU+cy5aus56GaHtywGqRgWrw=;
 b=ouaoEIAQLBRGS+cLJW0/Lr+7v01gSz8xDp2TFaaf23eCeiZH7CB9121NJmkfi0I4tp
 zTSTI3NMFcmcwJlVf7M/AickiWv5bT0i/ua42YX7SfPBI6Ke0Mi+1TXFe0ImeyXYMRt9
 CQsRyQtbES4RvYnNyh5vlih0xsaxapu4cT8fQDHJ7LMZPQEHWTHb6gNPRcJComULaAsj
 34qG26RezLRDnf1463Uq8YsVo1lM612VqukReZ9UQK8p+vmcRHv0zOx/cEr3wyA7Ge3G
 n6gDnqQJ0X7AKGIgXziVOM8jM5kvtjBNl1rCqC8zGQDwyMKKeIWaiFnvlO15OBAj4STC
 GUIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8QuFD10vzTb7Xw2oZ5zjlwscmlVlrCnk9Wd2LoJdt5891o4ClgzF92asP0h0wOBvv3AvSXz4xnVPKpVnLN4vUtYnT9lU04p/JAWbGz7w80U4=
X-Gm-Message-State: AOJu0YwaAlUgnIyUkYq6uZgKIb21dzDwfTZTQ3F2AXOCzuUft8am5Hdh
 z2/L+79xedeH5U8UZ762aSbB8pcdCQEhu5tHVDxZzCFjbfOInpHq/Ft19Qogr9fezYEA22SSCV7
 zP3NjyNFxYeFXV9Xf4atlw6eO6IgoSWUI27Lq
X-Google-Smtp-Source: AGHT+IG+BwKuHHjdZ1dDLmHrdsYB7kIPGn/Q57nsYSjiYIsCMx/l1O7r26Xps7p1g8K7t8uA3VSHz6e1UAMKI+l86HM=
X-Received: by 2002:a81:4f48:0:b0:609:3f15:321d with SMTP id
 d69-20020a814f48000000b006093f15321dmr311678ywb.51.1709092341105; Tue, 27 Feb
 2024 19:52:21 -0800 (PST)
MIME-Version: 1.0
References: <20240227113853.8464-1-tzimmermann@suse.de>
 <20240227113853.8464-10-tzimmermann@suse.de>
In-Reply-To: <20240227113853.8464-10-tzimmermann@suse.de>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Tue, 27 Feb 2024 22:52:10 -0500
Message-ID: <CABQX2QNrX6994nKyKNBF5fxhUJv_MG=a8d31N=191auQAepMzw@mail.gmail.com>
Subject: Re: [PATCH 09/13] drm/gem: Acquire reservation lock in
 drm_gem_{pin/unpin}()
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, mripard@kernel.org, 
 maarten.lankhorst@linux.intel.com, christian.koenig@amd.com, 
 sumit.semwal@linaro.org, dmitry.osipenko@collabora.com, robdclark@gmail.com, 
 quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org, sean@poorly.run, 
 marijn.suijten@somainline.org, suijingfeng@loongson.cn, kherbst@redhat.com, 
 lyude@redhat.com, dakr@redhat.com, airlied@redhat.com, kraxel@redhat.com, 
 alexander.deucher@amd.com, Xinhui.Pan@amd.com, 
 bcm-kernel-feedback-list@broadcom.com, dri-devel@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, 
 spice-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 28 Feb 2024 14:19:14 +0000
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Feb 27, 2024 at 6:39=E2=80=AFAM Thomas Zimmermann <tzimmermann@suse=
.de> wrote:
>
> Acquire the buffer object's reservation lock in drm_gem_pin() and
> remove locking the drivers' GEM callbacks where necessary. Same for
> unpin().
>
> DRM drivers and memory managers modified by this patch will now have
> correct dma-buf locking semantics: the caller is responsible for
> holding the reservation lock when calling the pin or unpin callback.
>
> DRM drivers and memory managers that are not modified will now be
> protected against concurent invocation of their pin and unpin callbacks.
>
> PRIME does not implement struct dma_buf_ops.pin, which requires
> the caller to hold the reservation lock. It does implement struct
> dma_buf_ops.attach, which requires to callee to acquire the
> reservation lock. The PRIME code uses drm_gem_pin(), so locks
> are now taken as specified. Same for unpin and detach.
>
> The patch harmonizes GEM pin and unpin to have non-interruptible
> reservation locking across all drivers, as is already the case for
> vmap and vunmap. This affects gem-shmem, gem-vram, loongson, qxl and
> radeon.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_gem.c               | 22 ++++++++++++++++++++--
>  drivers/gpu/drm/drm_gem_vram_helper.c   | 15 +--------------
>  drivers/gpu/drm/drm_internal.h          |  2 ++
>  drivers/gpu/drm/loongson/lsdc_gem.c     | 13 ++-----------
>  drivers/gpu/drm/msm/msm_gem_prime.c     |  4 ----
>  drivers/gpu/drm/nouveau/nouveau_prime.c | 11 -----------
>  drivers/gpu/drm/qxl/qxl_prime.c         | 14 +-------------
>  drivers/gpu/drm/radeon/radeon_prime.c   | 11 -----------
>  drivers/gpu/drm/vmwgfx/vmwgfx_gem.c     | 25 ++++++-------------------
>  include/drm/drm_gem_shmem_helper.h      | 11 +----------
>  10 files changed, 33 insertions(+), 95 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 44a948b80ee14..e0f80c6a7096f 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1161,7 +1161,7 @@ void drm_gem_print_info(struct drm_printer *p, unsi=
gned int indent,
>                 obj->funcs->print_info(p, indent, obj);
>  }
>
> -int drm_gem_pin(struct drm_gem_object *obj)
> +int drm_gem_pin_locked(struct drm_gem_object *obj)
>  {
>         if (obj->funcs->pin)
>                 return obj->funcs->pin(obj);
> @@ -1169,12 +1169,30 @@ int drm_gem_pin(struct drm_gem_object *obj)
>         return 0;
>  }
>
> -void drm_gem_unpin(struct drm_gem_object *obj)
> +void drm_gem_unpin_locked(struct drm_gem_object *obj)
>  {
>         if (obj->funcs->unpin)
>                 obj->funcs->unpin(obj);
>  }
>
> +int drm_gem_pin(struct drm_gem_object *obj)
> +{
> +       int ret;
> +
> +       dma_resv_lock(obj->resv, NULL);
> +       ret =3D drm_gem_pin_locked(obj);
> +       dma_resv_unlock(obj->resv);
> +
> +       return ret;
> +}
> +
> +void drm_gem_unpin(struct drm_gem_object *obj)
> +{
> +       dma_resv_lock(obj->resv, NULL);
> +       drm_gem_unpin_locked(obj);
> +       dma_resv_unlock(obj->resv);
> +}
> +
>  int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map)
>  {
>         int ret;
> diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_=
gem_vram_helper.c
> index 15029d89badf8..5a16b3e0a4134 100644
> --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> @@ -774,11 +774,6 @@ EXPORT_SYMBOL(drm_gem_vram_simple_display_pipe_clean=
up_fb);
>  static int drm_gem_vram_object_pin(struct drm_gem_object *gem)
>  {
>         struct drm_gem_vram_object *gbo =3D drm_gem_vram_of_gem(gem);
> -       int ret;
> -
> -       ret =3D ttm_bo_reserve(&gbo->bo, true, false, NULL);
> -       if (ret)
> -               return ret;
>
>         /*
>          * Fbdev console emulation is the use case of these PRIME
> @@ -789,10 +784,7 @@ static int drm_gem_vram_object_pin(struct drm_gem_ob=
ject *gem)
>          * the buffer to be pinned to VRAM, implement a callback that
>          * sets the flags accordingly.
>          */
> -       ret =3D drm_gem_vram_pin_locked(gbo, 0);
> -       ttm_bo_unreserve(&gbo->bo);
> -
> -       return ret;
> +       return drm_gem_vram_pin_locked(gbo, 0);
>  }
>
>  /**
> @@ -803,13 +795,8 @@ static int drm_gem_vram_object_pin(struct drm_gem_ob=
ject *gem)
>  static void drm_gem_vram_object_unpin(struct drm_gem_object *gem)
>  {
>         struct drm_gem_vram_object *gbo =3D drm_gem_vram_of_gem(gem);
> -       int ret;
>
> -       ret =3D ttm_bo_reserve(&gbo->bo, true, false, NULL);
> -       if (ret)
> -               return;
>         drm_gem_vram_unpin_locked(gbo);
> -       ttm_bo_unreserve(&gbo->bo);
>  }
>
>  /**
> diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_interna=
l.h
> index 8e4faf0a28e6c..40b2d3a274d6c 100644
> --- a/drivers/gpu/drm/drm_internal.h
> +++ b/drivers/gpu/drm/drm_internal.h
> @@ -170,6 +170,8 @@ void drm_gem_release(struct drm_device *dev, struct d=
rm_file *file_private);
>  void drm_gem_print_info(struct drm_printer *p, unsigned int indent,
>                         const struct drm_gem_object *obj);
>
> +int drm_gem_pin_locked(struct drm_gem_object *obj);
> +void drm_gem_unpin_locked(struct drm_gem_object *obj);
>  int drm_gem_pin(struct drm_gem_object *obj);
>  void drm_gem_unpin(struct drm_gem_object *obj);
>  int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map);
> diff --git a/drivers/gpu/drm/loongson/lsdc_gem.c b/drivers/gpu/drm/loongs=
on/lsdc_gem.c
> index 04293df2f0de0..a720d8f532093 100644
> --- a/drivers/gpu/drm/loongson/lsdc_gem.c
> +++ b/drivers/gpu/drm/loongson/lsdc_gem.c
> @@ -19,33 +19,24 @@ static int lsdc_gem_prime_pin(struct drm_gem_object *=
obj)
>         struct lsdc_bo *lbo =3D gem_to_lsdc_bo(obj);
>         int ret;
>
> -       ret =3D lsdc_bo_reserve(lbo);
> -       if (unlikely(ret))
> -               return ret;
> +       dma_resv_assert_held(obj->resv);
>
>         ret =3D lsdc_bo_pin(lbo, LSDC_GEM_DOMAIN_GTT, NULL);
>         if (likely(ret =3D=3D 0))
>                 lbo->sharing_count++;
>
> -       lsdc_bo_unreserve(lbo);
> -
>         return ret;
>  }
>
>  static void lsdc_gem_prime_unpin(struct drm_gem_object *obj)
>  {
>         struct lsdc_bo *lbo =3D gem_to_lsdc_bo(obj);
> -       int ret;
>
> -       ret =3D lsdc_bo_reserve(lbo);
> -       if (unlikely(ret))
> -               return;
> +       dma_resv_assert_held(obj->resv);
>
>         lsdc_bo_unpin(lbo);
>         if (lbo->sharing_count)
>                 lbo->sharing_count--;
> -
> -       lsdc_bo_unreserve(lbo);
>  }
>
>  static struct sg_table *lsdc_gem_prime_get_sg_table(struct drm_gem_objec=
t *obj)
> diff --git a/drivers/gpu/drm/msm/msm_gem_prime.c b/drivers/gpu/drm/msm/ms=
m_gem_prime.c
> index 0d22df53ab98a..ee267490c9359 100644
> --- a/drivers/gpu/drm/msm/msm_gem_prime.c
> +++ b/drivers/gpu/drm/msm/msm_gem_prime.c
> @@ -53,11 +53,9 @@ int msm_gem_prime_pin(struct drm_gem_object *obj)
>         if (obj->import_attach)
>                 return 0;
>
> -       msm_gem_lock(obj);
>         pages =3D msm_gem_pin_pages_locked(obj);
>         if (IS_ERR(pages))
>                 ret =3D PTR_ERR(pages);
> -       msm_gem_unlock(obj);
>
>         return ret;
>  }
> @@ -67,7 +65,5 @@ void msm_gem_prime_unpin(struct drm_gem_object *obj)
>         if (obj->import_attach)
>                 return;
>
> -       msm_gem_lock(obj);
>         msm_gem_unpin_pages_locked(obj);
> -       msm_gem_unlock(obj);
>  }
> diff --git a/drivers/gpu/drm/nouveau/nouveau_prime.c b/drivers/gpu/drm/no=
uveau/nouveau_prime.c
> index 774f9bd031102..b58ab595faf82 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_prime.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_prime.c
> @@ -86,17 +86,12 @@ struct drm_gem_object *nouveau_gem_prime_import_sg_ta=
ble(struct drm_device *dev,
>  int nouveau_gem_prime_pin(struct drm_gem_object *obj)
>  {
>         struct nouveau_bo *nvbo =3D nouveau_gem_object(obj);
> -       struct ttm_buffer_object *bo =3D &nvbo->bo;
>         int ret;
>
> -       ret =3D ttm_bo_reserve(bo, false, false, NULL);
> -       if (ret)
> -               return -EINVAL;
>         /* pin buffer into GTT */
>         ret =3D nouveau_bo_pin_locked(nvbo, NOUVEAU_GEM_DOMAIN_GART, fals=
e);
>         if (ret)
>                 ret =3D -EINVAL;
> -       ttm_bo_unreserve(bo);
>
>         return ret;
>  }
> @@ -104,14 +99,8 @@ int nouveau_gem_prime_pin(struct drm_gem_object *obj)
>  void nouveau_gem_prime_unpin(struct drm_gem_object *obj)
>  {
>         struct nouveau_bo *nvbo =3D nouveau_gem_object(obj);
> -       struct ttm_buffer_object *bo =3D &nvbo->bo;
> -       int ret;
>
> -       ret =3D ttm_bo_reserve(bo, false, false, NULL);
> -       if (ret)
> -               return;
>         nouveau_bo_unpin_locked(nvbo);
> -       ttm_bo_unreserve(bo);
>  }
>
>  struct dma_buf *nouveau_gem_prime_export(struct drm_gem_object *gobj,
> diff --git a/drivers/gpu/drm/qxl/qxl_prime.c b/drivers/gpu/drm/qxl/qxl_pr=
ime.c
> index f2646603e12eb..19bf551a7b311 100644
> --- a/drivers/gpu/drm/qxl/qxl_prime.c
> +++ b/drivers/gpu/drm/qxl/qxl_prime.c
> @@ -31,27 +31,15 @@
>  int qxl_gem_prime_pin(struct drm_gem_object *obj)
>  {
>         struct qxl_bo *bo =3D gem_to_qxl_bo(obj);
> -       int r;
>
> -       r =3D qxl_bo_reserve(bo);
> -       if (r)
> -               return r;
> -       r =3D qxl_bo_pin_locked(bo);
> -       qxl_bo_unreserve(bo);
> -
> -       return r;
> +       return qxl_bo_pin_locked(bo);
>  }
>
>  void qxl_gem_prime_unpin(struct drm_gem_object *obj)
>  {
>         struct qxl_bo *bo =3D gem_to_qxl_bo(obj);
> -       int r;
>
> -       r =3D qxl_bo_reserve(bo);
> -       if (r)
> -               return;
>         qxl_bo_unpin_locked(bo);
> -       qxl_bo_unreserve(bo);
>  }
>
>  struct sg_table *qxl_gem_prime_get_sg_table(struct drm_gem_object *obj)
> diff --git a/drivers/gpu/drm/radeon/radeon_prime.c b/drivers/gpu/drm/rade=
on/radeon_prime.c
> index b3cfc99f4d7ed..a77881f035e7a 100644
> --- a/drivers/gpu/drm/radeon/radeon_prime.c
> +++ b/drivers/gpu/drm/radeon/radeon_prime.c
> @@ -73,32 +73,21 @@ int radeon_gem_prime_pin(struct drm_gem_object *obj)
>         struct radeon_bo *bo =3D gem_to_radeon_bo(obj);
>         int ret =3D 0;
>
> -       ret =3D radeon_bo_reserve(bo, false);
> -       if (unlikely(ret !=3D 0))
> -               return ret;
> -
>         /* pin buffer into GTT */
>         ret =3D radeon_bo_pin(bo, RADEON_GEM_DOMAIN_GTT, NULL);
>         if (likely(ret =3D=3D 0))
>                 bo->prime_shared_count++;
>
> -       radeon_bo_unreserve(bo);
>         return ret;
>  }
>
>  void radeon_gem_prime_unpin(struct drm_gem_object *obj)
>  {
>         struct radeon_bo *bo =3D gem_to_radeon_bo(obj);
> -       int ret =3D 0;
> -
> -       ret =3D radeon_bo_reserve(bo, false);
> -       if (unlikely(ret !=3D 0))
> -               return;
>
>         radeon_bo_unpin(bo);
>         if (bo->prime_shared_count)
>                 bo->prime_shared_count--;
> -       radeon_bo_unreserve(bo);
>  }
>
>
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c b/drivers/gpu/drm/vmwgfx=
/vmwgfx_gem.c
> index 12787bb9c111d..186150f41fbcc 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
> @@ -48,33 +48,20 @@ static void vmw_gem_object_close(struct drm_gem_objec=
t *obj,
>  {
>  }
>
> -static int vmw_gem_pin_private(struct drm_gem_object *obj, bool do_pin)
> +static int vmw_gem_object_pin(struct drm_gem_object *obj)
>  {
> -       struct ttm_buffer_object *bo =3D drm_gem_ttm_of_gem(obj);
>         struct vmw_bo *vbo =3D to_vmw_bo(obj);
> -       int ret;
> -
> -       ret =3D ttm_bo_reserve(bo, false, false, NULL);
> -       if (unlikely(ret !=3D 0))
> -               goto err;
> -
> -       vmw_bo_pin_reserved(vbo, do_pin);
> -
> -       ttm_bo_unreserve(bo);
> -
> -err:
> -       return ret;
> -}
>
> +       vmw_bo_pin_reserved(vbo, true);
>
> -static int vmw_gem_object_pin(struct drm_gem_object *obj)
> -{
> -       return vmw_gem_pin_private(obj, true);
> +       return 0;
>  }
>
>  static void vmw_gem_object_unpin(struct drm_gem_object *obj)
>  {
> -       vmw_gem_pin_private(obj, false);
> +       struct vmw_bo *vbo =3D to_vmw_bo(obj);
> +
> +       vmw_bo_pin_reserved(vbo, false);
>  }
>
>  static struct sg_table *vmw_gem_object_get_sg_table(struct drm_gem_objec=
t *obj)
> diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shm=
em_helper.h
> index eb12aa9a8c556..efbc9f27312b5 100644
> --- a/include/drm/drm_gem_shmem_helper.h
> +++ b/include/drm/drm_gem_shmem_helper.h
> @@ -175,15 +175,8 @@ static inline void drm_gem_shmem_object_print_info(s=
truct drm_printer *p, unsign
>  static inline int drm_gem_shmem_object_pin(struct drm_gem_object *obj)
>  {
>         struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
> -       int ret;
>
> -       ret =3D dma_resv_lock_interruptible(shmem->base.resv, NULL);
> -       if (ret)
> -               return ret;
> -       ret =3D drm_gem_shmem_pin_locked(shmem);
> -       dma_resv_unlock(shmem->base.resv);
> -
> -       return ret;
> +       return drm_gem_shmem_pin_locked(shmem);
>  }
>
>  /**
> @@ -197,9 +190,7 @@ static inline void drm_gem_shmem_object_unpin(struct =
drm_gem_object *obj)
>  {
>         struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
>
> -       dma_resv_lock(shmem->base.resv, NULL);
>         drm_gem_shmem_unpin_locked(shmem);
> -       dma_resv_unlock(shmem->base.resv);
>  }
>
>

Ah, I see. Looks great.

Reviewed-by: Zack Rusin <zack.rusin@broadcom.com>
