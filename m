Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A9692CD9C
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2024 10:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B3210E1D4;
	Wed, 10 Jul 2024 08:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="dxpLDXZN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B6610E46F
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2024 02:34:59 +0000 (UTC)
Received: by mail-yb1-f178.google.com with SMTP id
 3f1490d57ef6-e03c6892e31so4325624276.1
 for <spice-devel@lists.freedesktop.org>; Mon, 08 Jul 2024 19:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1720492498; x=1721097298;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z4dZUNj7Ai0tPAkLQa+ZYxZkBSNpPYsDwADRfs2ZjOA=;
 b=dxpLDXZNvM+RJTtf1UFIGaTqA9/58X5BVB68W5TPuUTmTPtnb+/xZAHwt26ueYmqH8
 xGn4vKCt85MsABfTVq8pW31p6AyjNht7YOmRU+kDYhgcnZW2P0niQHlEfO6kEINsuIVH
 +Sj+hG+6VwXsbounujQ4vbbE0YqhIqQ+vUVds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720492498; x=1721097298;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z4dZUNj7Ai0tPAkLQa+ZYxZkBSNpPYsDwADRfs2ZjOA=;
 b=KQfEKxf+XaRU7qXHypRog9Hf3lBFrO1oT01dcGkyIT2GNgZ9eehnbJK0lCSibWidz5
 7/rRBBdVtqlKRKsRLZPb5h7rZAxvdp8elwk9juV+5tqkQY5XY+5dGWBGrig/cxMofgmy
 O6NrBEj+Y/DrMhvn/7mrsgMi5A7QoOEACMdgTU594f9cSks+rlMWn5rE7CPjefClmWrX
 hLL2KrwR6XSPhgGT+Pi0o/nAQlOXXBCafNF3qhrS6tRM4flHRochGGVJE4j21/Y8Txlf
 fcFymJUaicNtr8u5Njj1H48Y04VQhUeMO4ixwJxUJbNz0H9m8ROhHKIu8UIpmtk5J48z
 rlVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSWmq46MlF6BiqOZHxxCNJNCI9pdc3JnFlGezy5h+eVZNmLmY9NHJCxxSPlmh6GvTkj/tPMc4z3racWdZJIvvedA6i4tsFwQqix7+ChWTs6Mc=
X-Gm-Message-State: AOJu0Yy/qQL5RoMuLGd+86ShJG3YbYC/+Eq++wb9w80AyF5AqF9AYqWD
 FVe4qxigBPK8KvZecR/0FS0Ea7AiGJ5WEonNnX7w4mI8WsQ7I0cDYEEHSqUpb8vVvcRlJq4h7N+
 MrrL6+gYQoQdceoN1l28Svpgv30On4FIGy0bU
X-Google-Smtp-Source: AGHT+IHRLz6lHitxssqZTRc+yeT+WQZsJj6DFqPob2savKD0eCzNZS1ZXY9mfVmu7NLuSY1tnVZZlwLlRPeft/1c8vk=
X-Received: by 2002:a25:bfc9:0:b0:e02:b7d6:c97 with SMTP id
 3f1490d57ef6-e041b03d1b1mr1800960276.8.1720492498382; Mon, 08 Jul 2024
 19:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240708142208.194361-1-tzimmermann@suse.de>
In-Reply-To: <20240708142208.194361-1-tzimmermann@suse.de>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Mon, 8 Jul 2024 22:34:47 -0400
Message-ID: <CABQX2QMU+Huk--rKGaRXwL_8DB8Z9aSjfGajhpJCpiVi5oi-dA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/qxl: Pin buffer objects for internal mappings
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: airlied@redhat.com, kraxel@redhat.com, dmitry.osipenko@collabora.com, 
 airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, david.kaplan@amd.com, christian.koenig@amd.com, 
 regressions@leemhuis.info, virtualization@lists.linux.dev, 
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 10 Jul 2024 08:57:37 +0000
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

On Mon, Jul 8, 2024 at 10:22=E2=80=AFAM Thomas Zimmermann <tzimmermann@suse=
.de> wrote:
>
> Add qxl_bo_pin_and_vmap() that pins and vmaps a buffer object in one
> step. Update callers of the regular qxl_bo_vmap(). Fixes a bug where
> qxl accesses an unpinned buffer object while it is being moved; such
> as with the monitor-description BO. An typical error is shown below.
>
> [    4.303586] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong=
: 65376256x16777216+0+0
> [    4.586883] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong=
: 65376256x16777216+0+0
> [    4.904036] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong=
: 65335296x16777216+0+0
> [    5.374347] [drm:qxl_release_from_id_locked] *ERROR* failed to find id=
 in release_idr
>
> Commit b33651a5c98d ("drm/qxl: Do not pin buffer objects for vmap")
> removed the implicit pin operation from qxl's vmap code. This is the
> correct behavior for GEM and PRIME interfaces, but the pin is still
> needed for qxl internal operation.
>
> Also add a corresponding function qxl_bo_vunmap_and_unpin() and remove
> the old qxl_bo_vmap() helpers.
>
> Future directions: BOs should not be pinned or vmapped unnecessarily.
> The pin-and-vmap operation should be removed from the driver and a
> temporary mapping should be established with a vmap_local-like helper.
> See the client helper drm_client_buffer_vmap_local() for semantics.
>
> v2:
> - unreserve BO on errors in qxl_bo_pin_and_vmap() (Dmitry)
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Fixes: b33651a5c98d ("drm/qxl: Do not pin buffer objects for vmap")
> Reported-by: David Kaplan <david.kaplan@amd.com>
> Closes: https://lore.kernel.org/dri-devel/ab0fb17d-0f96-4ee6-8b21-65d02bb=
02655@suse.de/
> Tested-by: David Kaplan <david.kaplan@amd.com>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Zack Rusin <zack.rusin@broadcom.com>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: virtualization@lists.linux.dev
> Cc: spice-devel@lists.freedesktop.org
> ---
>  drivers/gpu/drm/qxl/qxl_display.c | 14 +++++++-------
>  drivers/gpu/drm/qxl/qxl_object.c  | 13 +++++++++++--
>  drivers/gpu/drm/qxl/qxl_object.h  |  4 ++--
>  3 files changed, 20 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_=
display.c
> index 86a5dea710c0..bc24af08dfcd 100644
> --- a/drivers/gpu/drm/qxl/qxl_display.c
> +++ b/drivers/gpu/drm/qxl/qxl_display.c
> @@ -584,11 +584,11 @@ static struct qxl_bo *qxl_create_cursor(struct qxl_=
device *qdev,
>         if (ret)
>                 goto err;
>
> -       ret =3D qxl_bo_vmap(cursor_bo, &cursor_map);
> +       ret =3D qxl_bo_pin_and_vmap(cursor_bo, &cursor_map);
>         if (ret)
>                 goto err_unref;
>
> -       ret =3D qxl_bo_vmap(user_bo, &user_map);
> +       ret =3D qxl_bo_pin_and_vmap(user_bo, &user_map);
>         if (ret)
>                 goto err_unmap;
>
> @@ -614,12 +614,12 @@ static struct qxl_bo *qxl_create_cursor(struct qxl_=
device *qdev,
>                        user_map.vaddr, size);
>         }
>
> -       qxl_bo_vunmap(user_bo);
> -       qxl_bo_vunmap(cursor_bo);
> +       qxl_bo_vunmap_and_unpin(user_bo);
> +       qxl_bo_vunmap_and_unpin(cursor_bo);
>         return cursor_bo;
>
>  err_unmap:
> -       qxl_bo_vunmap(cursor_bo);
> +       qxl_bo_vunmap_and_unpin(cursor_bo);
>  err_unref:
>         qxl_bo_unpin(cursor_bo);
>         qxl_bo_unref(&cursor_bo);
> @@ -1205,7 +1205,7 @@ int qxl_create_monitors_object(struct qxl_device *q=
dev)
>         }
>         qdev->monitors_config_bo =3D gem_to_qxl_bo(gobj);
>
> -       ret =3D qxl_bo_vmap(qdev->monitors_config_bo, &map);
> +       ret =3D qxl_bo_pin_and_vmap(qdev->monitors_config_bo, &map);
>         if (ret)
>                 return ret;
>
> @@ -1236,7 +1236,7 @@ int qxl_destroy_monitors_object(struct qxl_device *=
qdev)
>         qdev->monitors_config =3D NULL;
>         qdev->ram_header->monitors_config =3D 0;
>
> -       ret =3D qxl_bo_vunmap(qdev->monitors_config_bo);
> +       ret =3D qxl_bo_vunmap_and_unpin(qdev->monitors_config_bo);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_o=
bject.c
> index 5893e27a7ae5..66635c55cf85 100644
> --- a/drivers/gpu/drm/qxl/qxl_object.c
> +++ b/drivers/gpu/drm/qxl/qxl_object.c
> @@ -182,7 +182,7 @@ int qxl_bo_vmap_locked(struct qxl_bo *bo, struct iosy=
s_map *map)
>         return 0;
>  }
>
> -int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map *map)
> +int qxl_bo_pin_and_vmap(struct qxl_bo *bo, struct iosys_map *map)
>  {
>         int r;
>
> @@ -190,7 +190,15 @@ int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map =
*map)
>         if (r)
>                 return r;
>
> +       r =3D qxl_bo_pin_locked(bo);
> +       if (r) {
> +               qxl_bo_unreserve(bo);
> +               return r;
> +       }
> +
>         r =3D qxl_bo_vmap_locked(bo, map);
> +       if (r)
> +               qxl_bo_unpin_locked(bo);
>         qxl_bo_unreserve(bo);
>         return r;
>  }
> @@ -241,7 +249,7 @@ void qxl_bo_vunmap_locked(struct qxl_bo *bo)
>         ttm_bo_vunmap(&bo->tbo, &bo->map);
>  }
>
> -int qxl_bo_vunmap(struct qxl_bo *bo)
> +int qxl_bo_vunmap_and_unpin(struct qxl_bo *bo)
>  {
>         int r;
>
> @@ -250,6 +258,7 @@ int qxl_bo_vunmap(struct qxl_bo *bo)
>                 return r;
>
>         qxl_bo_vunmap_locked(bo);
> +       qxl_bo_unpin_locked(bo);
>         qxl_bo_unreserve(bo);
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/qxl/qxl_object.h b/drivers/gpu/drm/qxl/qxl_o=
bject.h
> index 1cf5bc759101..875f63221074 100644
> --- a/drivers/gpu/drm/qxl/qxl_object.h
> +++ b/drivers/gpu/drm/qxl/qxl_object.h
> @@ -59,9 +59,9 @@ extern int qxl_bo_create(struct qxl_device *qdev,
>                          u32 priority,
>                          struct qxl_surface *surf,
>                          struct qxl_bo **bo_ptr);
> -int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map *map);
> +int qxl_bo_pin_and_vmap(struct qxl_bo *bo, struct iosys_map *map);
>  int qxl_bo_vmap_locked(struct qxl_bo *bo, struct iosys_map *map);
> -int qxl_bo_vunmap(struct qxl_bo *bo);
> +int qxl_bo_vunmap_and_unpin(struct qxl_bo *bo);
>  void qxl_bo_vunmap_locked(struct qxl_bo *bo);
>  void *qxl_bo_kmap_atomic_page(struct qxl_device *qdev, struct qxl_bo *bo=
, int page_offset);
>  void qxl_bo_kunmap_atomic_page(struct qxl_device *qdev, struct qxl_bo *b=
o, void *map);
> --
> 2.45.2
>

That looks good to me.

Reviewed-by: Zack Rusin <zack.rusin@broadcom.com>

z
