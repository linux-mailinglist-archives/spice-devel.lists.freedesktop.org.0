Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA9E30D72C
	for <lists+spice-devel@lfdr.de>; Wed,  3 Feb 2021 11:15:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607C26EA41;
	Wed,  3 Feb 2021 10:15:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E656EA41
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Feb 2021 10:15:45 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id q7so23468983wre.13
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Feb 2021 02:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=a321zpi9EYFPKrHa/w5wiDf7FzXZmd2yWZ5PnRvh2oY=;
 b=RCZYqjo8I8AawXH9nn6NQo2bQR2kzFkM3XePpRANJJFh+lczMkaDb319tOYYIL1zXa
 yxn6aF18WkJpG3iAp/H1LKgx52iDyHPIS7MGdZknlRvHXfaNZJXshs8+A0/iv6kNsVrB
 JXrIIwgJ+TTIv7ID15/NbNfrIDf5JA+9CfuIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=a321zpi9EYFPKrHa/w5wiDf7FzXZmd2yWZ5PnRvh2oY=;
 b=kElG5reaSpd4dJhVyaf7e1gzTMHtHIfVmBkJ4qr+OZFY3C8LdGqN9Tc3xAAArHaOc4
 udKnYZ9nDu1KAd55gDnpjMkUep+dRvAUObsR3X8cYtw5lLT6xfSAM4WgpFu35Hp+R8tT
 KyyXofVJx3ujt9ZmccYr3DLTpHxpcIGZiBTYYa1vyusdGi2OTGZLIj4PGQll7Nd8NoYF
 0hv+XcpXCTwEHLEaSacT40JgEsK5CwLMSOQQb0GOHTX8+NK0FggMqo5FTaf/RKNOHiwa
 5gE3JMKRsJhJ9dHIBCcE811XTGNjHYh8oY9kinPbasREuf2/3tGS4AYfi4AEmrwJQynR
 ruFg==
X-Gm-Message-State: AOAM531qrt5o3UfX1D8ZmUjmdUsjAsyhA+IhWFtEeAw7u56xPWxEEBJ9
 qCipjyg/VQpv+KAxJATHWLqCDw==
X-Google-Smtp-Source: ABdhPJzHB+ffvr9s3UM8FPaGZKcUXhORlDn7t4V0qu+UbQAlINgveENCa31EtHjKs1ycCeGI9sFg6g==
X-Received: by 2002:adf:f743:: with SMTP id z3mr2655431wrp.165.1612347344092; 
 Wed, 03 Feb 2021 02:15:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f4sm2825617wrs.34.2021.02.03.02.15.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 02:15:43 -0800 (PST)
Date: Wed, 3 Feb 2021 11:15:41 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <YBp3zQqomQziZbPT@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, 
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210126165812.1661512-1-kraxel@redhat.com>
 <20210126165812.1661512-6-kraxel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126165812.1661512-6-kraxel@redhat.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Spice-devel] [PATCH v4 5/5] drm/qxl: properly free qxl releases
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Jan 26, 2021 at 05:58:12PM +0100, Gerd Hoffmann wrote:
> Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/qxl/qxl_drv.h     |  1 +
>  drivers/gpu/drm/qxl/qxl_kms.c     | 22 ++++++++++++++++++++--
>  drivers/gpu/drm/qxl/qxl_release.c |  2 ++
>  3 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
> index 01354b43c413..1c57b587b6a7 100644
> --- a/drivers/gpu/drm/qxl/qxl_drv.h
> +++ b/drivers/gpu/drm/qxl/qxl_drv.h
> @@ -214,6 +214,7 @@ struct qxl_device {
>  	spinlock_t	release_lock;
>  	struct idr	release_idr;
>  	uint32_t	release_seqno;
> +	atomic_t	release_count;
>  	spinlock_t release_idr_lock;
>  	struct mutex	async_io_mutex;
>  	unsigned int last_sent_io_cmd;
> diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
> index 4a60a52ab62e..f177f72bfc12 100644
> --- a/drivers/gpu/drm/qxl/qxl_kms.c
> +++ b/drivers/gpu/drm/qxl/qxl_kms.c
> @@ -25,6 +25,7 @@
>  
>  #include <linux/io-mapping.h>
>  #include <linux/pci.h>
> +#include <linux/delay.h>
>  
>  #include <drm/drm_drv.h>
>  #include <drm/drm_managed.h>
> @@ -286,8 +287,25 @@ int qxl_device_init(struct qxl_device *qdev,
>  
>  void qxl_device_fini(struct qxl_device *qdev)
>  {
> -	qxl_bo_unref(&qdev->current_release_bo[0]);
> -	qxl_bo_unref(&qdev->current_release_bo[1]);
> +	int cur_idx, try;
> +
> +	for (cur_idx = 0; cur_idx < 3; cur_idx++) {
> +		if (!qdev->current_release_bo[cur_idx])
> +			continue;
> +		qxl_bo_unpin(qdev->current_release_bo[cur_idx]);
> +		qxl_bo_unref(&qdev->current_release_bo[cur_idx]);
> +		qdev->current_release_bo_offset[cur_idx] = 0;
> +		qdev->current_release_bo[cur_idx] = NULL;
> +	}
> +
> +	/*
> +	 * Ask host to release resources (+fill release ring),
> +	 * then wait for the release actually happening.
> +	 */
> +	qxl_io_notify_oom(qdev);
> +	for (try = 0; try < 20 && atomic_read(&qdev->release_count) > 0; try++)
> +		msleep(20);

A bit icky, why not use a wait queue or something like that instead of
hand-rolling this? Not for perf reasons, just so it's a bit clear who
waits for whom and why.
-Daniel

> +
>  	qxl_gem_fini(qdev);
>  	qxl_bo_fini(qdev);
>  	flush_work(&qdev->gc_work);
> diff --git a/drivers/gpu/drm/qxl/qxl_release.c b/drivers/gpu/drm/qxl/qxl_release.c
> index 28013fd1f8ea..43a5436853b7 100644
> --- a/drivers/gpu/drm/qxl/qxl_release.c
> +++ b/drivers/gpu/drm/qxl/qxl_release.c
> @@ -196,6 +196,7 @@ qxl_release_free(struct qxl_device *qdev,
>  		qxl_release_free_list(release);
>  		kfree(release);
>  	}
> +	atomic_dec(&qdev->release_count);
>  }
>  
>  static int qxl_release_bo_alloc(struct qxl_device *qdev,
> @@ -344,6 +345,7 @@ int qxl_alloc_release_reserved(struct qxl_device *qdev, unsigned long size,
>  			*rbo = NULL;
>  		return idr_ret;
>  	}
> +	atomic_inc(&qdev->release_count);
>  
>  	mutex_lock(&qdev->release_mutex);
>  	if (qdev->current_release_bo_offset[cur_idx] + 1 >= releases_per_bo[cur_idx]) {
> -- 
> 2.29.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
