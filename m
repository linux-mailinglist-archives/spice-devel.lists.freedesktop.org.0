Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CA927C2D7
	for <lists+spice-devel@lfdr.de>; Tue, 29 Sep 2020 12:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67FED89DED;
	Tue, 29 Sep 2020 10:53:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D9289DED
 for <spice-devel@lists.freedesktop.org>; Tue, 29 Sep 2020 10:53:04 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id g4so4852333wrs.5
 for <spice-devel@lists.freedesktop.org>; Tue, 29 Sep 2020 03:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=m/8RcwvNRZX4QrC1qgXuNqwd8pHZ5jEfkIMP8FcXGzs=;
 b=jsz6B1+YEp5B8KlbE/d0+3hD+n5mvwweCSSsHXznFq2L+MbyNhnwBbEVTadiV9A8e8
 Hj/4Q37N4gMr3WISbfGAUlxUR7jJYV5BX7k2uQWCUyOolHRZurqdtTKtWu98cbslD4kd
 j3VLPxLK5+IeiS53iuP6Pb2M5x1wuj8Ww0P4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=m/8RcwvNRZX4QrC1qgXuNqwd8pHZ5jEfkIMP8FcXGzs=;
 b=Cg10L7lMyXnQR5e1aXPDfoppVot0bvV1qFDaP5EMsm0nOt4XyOplyG3IllHOxJoVNz
 2Dvd/K7qmx/KDjaM9lbaLLIlVVZDW3k//I6/+lVAWA45JZm6OFZAc4ZiOliFrV7+odYr
 OsHMKN2hFYnw3VazpoXD9bPQPjcuhSUr1Bb0mDUYkM8Wko4+2NaQCibnLBWaAixIT07b
 eycPKqx3h3q0bTWYACanEdHqc9F9i6gxGL7A4zW4+TT7NChUxkeQgGt+KhKldqpaCmry
 XjsrcnUDogxzdQC+dwBUDkcnYHsCMB7o2AwRyvs90eqIvjlRiqhdzTrjWwUd94RQjFcL
 Zkxg==
X-Gm-Message-State: AOAM531JxO/Y/G9xV9p9lMe96pjbhjXYzj/wTconqY5EhFauYqngFgtW
 i5mrBQ7sOl4mh55PiCdtclhAgA==
X-Google-Smtp-Source: ABdhPJzmw2CD/MpLrTQRlDKQtbpWYZdfZO7lS5wPv+xREi43g7gWZnZuZtDrMycOZuDAjAbXvAqStA==
X-Received: by 2002:a5d:6552:: with SMTP id z18mr3513370wrv.32.1601376783538; 
 Tue, 29 Sep 2020 03:53:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l5sm5116546wmf.10.2020.09.29.03.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 03:53:02 -0700 (PDT)
Date: Tue, 29 Sep 2020 12:53:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20200929105300.GM438822@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@linux.ie>, Huang Rui <ray.huang@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, 
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20200929095115.24430-1-kraxel@redhat.com>
 <20200929095115.24430-5-kraxel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929095115.24430-5-kraxel@redhat.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Mailman-Approved-At: Tue, 29 Sep 2020 10:53:48 +0000
Subject: Re: [Spice-devel] [PATCH v2 4/4] drm/qxl: use qxl pin function
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
 <virtualization@lists.linux-foundation.org>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 11:51:15AM +0200, Gerd Hoffmann wrote:
> Otherwise ttm throws a WARN because we try to pin without a reservation.
> 
> Fixes: 9d36d4320462 ("drm/qxl: switch over to the new pin interface")
> Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/qxl/qxl_object.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
> index d3635e3e3267..eb45267d51db 100644
> --- a/drivers/gpu/drm/qxl/qxl_object.c
> +++ b/drivers/gpu/drm/qxl/qxl_object.c
> @@ -145,7 +145,7 @@ int qxl_bo_create(struct qxl_device *qdev,
>  		return r;
>  	}
>  	if (pinned)
> -		ttm_bo_pin(&bo->tbo);
> +		qxl_bo_pin(bo);

I think this is now after ttm_bo_init, and at that point the object is
visible to lru users and everything. So I do think you need to grab locks
here instead of just incrementing the pin count alone.

It's also I think a bit racy, since ttm_bo_init drops the lock, so someone
might have snuck in and evicted the object already.

I think what you need is to call ttm_bo_init_reserved, then ttm_bo_pin,
then ttm_bo_unreserve, all explicitly.
-Daniel

>  	*bo_ptr = bo;
>  	return 0;
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
