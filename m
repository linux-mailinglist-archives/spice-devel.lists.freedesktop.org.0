Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D00157E31
	for <lists+spice-devel@lfdr.de>; Mon, 10 Feb 2020 16:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224646EC74;
	Mon, 10 Feb 2020 15:06:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5516EC74
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Feb 2020 15:06:37 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a9so731278wmj.3
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Feb 2020 07:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=SZWw5BNnqsxO+B1PSnFYos2X0WTIUEc5MmcB9KkYh80=;
 b=W0V0l0jrXQHgBSOItUTUJwRpOtkv/Q/smtmpPUJS47OOLZBD9qbyJ8CY7KClmjxKxE
 OFc5xuUJTNI4H//VPHEy4UoWZp7QD8sRKpumXKABiIZpcpZIkyHN4QhqxByZ2lH+sKZu
 XV3LNb2Q4Jr9z+7WNawVmGuKpSgkkjfr0VcRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=SZWw5BNnqsxO+B1PSnFYos2X0WTIUEc5MmcB9KkYh80=;
 b=Z56EtUE7ilPwZdX6NWv+p3V8Cu7bgWyGnFnM7U3B7sg/vPmXiv7KfIYwGldROm7S5i
 SC/e/TZTky/FxH4wJpNLHBbFIaXa+c7LXHTyGc5r3Gw9/dlaTYxeKfON+iz9jhsYJyjH
 rDiSSczF9Gfhg/EbsM/npYEVI1fqlfs/MgVyLAaCeiPtKSBO4hUg5obDxMuMICEqDNma
 31CX6OmyVq154bYGFUWqiij6LEgtCFbJXjTPtIbNzkMPga9Jmm/NzOElrth8ZtsRLM3c
 G9e57GncA+t03hk3GBwa9Tz7t1Y8wWcEBX42WOFsxrp1wDjrE/2Xj50cypYyX1JRaOSl
 +Ziw==
X-Gm-Message-State: APjAAAXlsumvoBX7nusmZN1pZxr1d2RxzbfGyEKmb8TsDZ8zL5iMXWP/
 fsJUFCZlsolIJmcBo7Qrx5RcaA==
X-Google-Smtp-Source: APXvYqzYMP69IToA5/mmhtOboZyOY6hCkleSPGfnRYobetT8q7zeS4pAYMffcDEcpwKzvUZc8Wsx2Q==
X-Received: by 2002:a1c:44d:: with SMTP id 74mr16475365wme.53.1581347195749;
 Mon, 10 Feb 2020 07:06:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t13sm935403wrw.19.2020.02.10.07.06.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 07:06:35 -0800 (PST)
Date: Mon, 10 Feb 2020 16:06:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20200210150633.GS43062@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, 
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20200210113753.5614-1-kraxel@redhat.com>
 <20200210113753.5614-3-kraxel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210113753.5614-3-kraxel@redhat.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Spice-devel] [PATCH v2 2/2] drm/qxl: add drm_driver.release
 callback.
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

On Mon, Feb 10, 2020 at 12:37:52PM +0100, Gerd Hoffmann wrote:
> Move final cleanups to qxl_drm_release() callback.
> Add drm_atomic_helper_shutdown() call to qxl_pci_remove().
> 
> Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/qxl/qxl_drv.c | 26 +++++++++++++++++++-------
>  1 file changed, 19 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
> index 1d601f57a6ba..4fda3f9b29f4 100644
> --- a/drivers/gpu/drm/qxl/qxl_drv.c
> +++ b/drivers/gpu/drm/qxl/qxl_drv.c
> @@ -34,6 +34,7 @@
>  #include <linux/pci.h>
>  
>  #include <drm/drm.h>
> +#include <drm/drm_atomic_helper.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_modeset_helper.h>
> @@ -132,21 +133,30 @@ qxl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	return ret;
>  }
>  
> +static void qxl_drm_release(struct drm_device *dev)
> +{
> +	struct qxl_device *qdev = dev->dev_private;
> +
> +	/*
> +	 * TODO: qxl_device_fini() call should be in qxl_pci_remove(),
> +	 * reodering qxl_modeset_fini() + qxl_device_fini() calls is
> +	 * non-trivial though.
> +	 */
> +	qxl_modeset_fini(qdev);

So the drm_mode_config_cleanup call in here belongs in ->release, but the
qxl_destroy_monitors_object feels like should be perfectly fine in the
remove hook. You might need to sprinkle a few drm_dev_enter/exit around to
protect code paths thought.

Aside from this lgtm, for the series

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

And up to you whether you want to fix this or not really.

Btw for testing all these patches that add a ->release hook I think it'd
be good if the drm core checks that drm_device->dev is set to NULL, and
that we do this in the remove hook. Since that's guaranteed to be gone at
that point, so anything in ->release that still needs the device is
broken. Ofc maybe do that check only for drivers which have a ->release
hook, and we might need a few fixups.

Cheers, Daniel

> +	qxl_device_fini(qdev);
> +	dev->dev_private = NULL;
> +	kfree(qdev);
> +}
> +
>  static void
>  qxl_pci_remove(struct pci_dev *pdev)
>  {
>  	struct drm_device *dev = pci_get_drvdata(pdev);
> -	struct qxl_device *qdev = dev->dev_private;
>  
>  	drm_dev_unregister(dev);
> -
> -	qxl_modeset_fini(qdev);
> -	qxl_device_fini(qdev);
> +	drm_atomic_helper_shutdown(dev);
>  	if (is_vga(pdev))
>  		vga_put(pdev, VGA_RSRC_LEGACY_IO);
> -
> -	dev->dev_private = NULL;
> -	kfree(qdev);
>  	drm_dev_put(dev);
>  }
>  
> @@ -279,6 +289,8 @@ static struct drm_driver qxl_driver = {
>  	.major = 0,
>  	.minor = 1,
>  	.patchlevel = 0,
> +
> +	.release = qxl_drm_release,
>  };
>  
>  static int __init qxl_init(void)
> -- 
> 2.18.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
