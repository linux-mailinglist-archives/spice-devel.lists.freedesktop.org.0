Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6CD2610BE
	for <lists+spice-devel@lfdr.de>; Tue,  8 Sep 2020 13:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C2A6E1D2;
	Tue,  8 Sep 2020 11:35:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0AA6E1B7
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Sep 2020 11:35:26 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a65so16917429wme.5
 for <spice-devel@lists.freedesktop.org>; Tue, 08 Sep 2020 04:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=WSL45Uni0wlxXIfxBtB/5y1z+V6rIa7ooXBAdktfl/A=;
 b=ZLxft09DWWUQ61e1fg70TdQn/PgGhrvi+SfoTYjEbKMGf2binVugy8MuM9Xj99eAEe
 VJLWkbCEhx0Q+0u1QI5c9QlkB5pVHml2SnWMDDRBQ9uR8HBRc6kNmOcsXnb8pl0Il5H7
 XC9oedgjy1s3YBZnSyLsf4JQOOOfT7ZCvDezk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=WSL45Uni0wlxXIfxBtB/5y1z+V6rIa7ooXBAdktfl/A=;
 b=qnjLpEn1XrJ2JIt4J14pGd8PuxwlSdhYfufxcTtbPTo/iNaO4ZKqHBlWgw65/s71LE
 Idf2lYeUy4I5VvcMIvVepaEOBCsHWXz6Ub46lSm3gdXdHthMxUjWyF7cG24U8BNSUtqr
 pjsrKcfzlJU6IjO2N9aw1AGXTiq5/fucpmS02UKzBLGSbcf86FCIzrJDO7msctR3SJSu
 CGc/yROMxkL9aBkzU8jGlKc0nxvRuRH7quoypCzq1eJ/yn3gVROIqI7zlNAQ+1urEjlu
 03n38fTFLaU4CKj7N0feXx28s47CdxsSXhmGuJSTWKJAf2FhGdZW8XaQTM3LjRbbek2s
 cAjw==
X-Gm-Message-State: AOAM5319CHUWJKAzkfLmpMzHX/vxZZQJl/6TZkfWJ9GuvLSgsPZWEeZc
 +XBy+u6KQZoaW4CAJHC1ItQ74uBNd5nRSQUJ
X-Google-Smtp-Source: ABdhPJwO92ecdG4LyeNex6dqtxEb2Oh6YdMfEcJIZ3ccJ7o2d+SykbHHt95D77rql1tnIOcP64ekjA==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr4226341wmc.154.1599564924815; 
 Tue, 08 Sep 2020 04:35:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c6sm33689920wrr.15.2020.09.08.04.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 04:35:24 -0700 (PDT)
Date: Tue, 8 Sep 2020 13:35:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20200908113522.GK2352366@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, 
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20200908093912.26792-1-kraxel@redhat.com>
 <20200908093912.26792-2-kraxel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908093912.26792-2-kraxel@redhat.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Spice-devel] [PATCH 1/3] drm/qxl: use drmm_mode_config_init
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

On Tue, Sep 08, 2020 at 11:39:10AM +0200, Gerd Hoffmann wrote:
> Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>

Btw going all in on devm_drm_dev_alloc and managed functions might be good
cleanup for virtio.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/qxl/qxl_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
> index fa79688013b7..4be04eaf7f37 100644
> --- a/drivers/gpu/drm/qxl/qxl_display.c
> +++ b/drivers/gpu/drm/qxl/qxl_display.c
> @@ -1190,7 +1190,9 @@ int qxl_modeset_init(struct qxl_device *qdev)
>  	int i;
>  	int ret;
>  
> -	drm_mode_config_init(&qdev->ddev);
> +	ret = drmm_mode_config_init(&qdev->ddev);
> +	if (ret)
> +		return ret;
>  
>  	ret = qxl_create_monitors_object(qdev);
>  	if (ret)
> @@ -1223,5 +1225,4 @@ int qxl_modeset_init(struct qxl_device *qdev)
>  void qxl_modeset_fini(struct qxl_device *qdev)
>  {
>  	qxl_destroy_monitors_object(qdev);
> -	drm_mode_config_cleanup(&qdev->ddev);
>  }
> -- 
> 2.27.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
