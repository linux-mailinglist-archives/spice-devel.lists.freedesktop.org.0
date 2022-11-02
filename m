Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4993615FE8
	for <lists+spice-devel@lfdr.de>; Wed,  2 Nov 2022 10:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E4C10E0AA;
	Wed,  2 Nov 2022 09:35:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D6D10E452
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Nov 2022 09:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667379844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XBlp2DOijU5hXQ9AriUwp9vEVLgfxcCQxHX+sSZSvOs=;
 b=foE1tqMnN1euVXsjwdlyPW1Y4BTMlfQxIBqnZz2eDUgMOJ3r8Zu+tBZQX0GkNtDL2D+9Aj
 flWcioqcZUsIaIG4L65T3zBd/pzbd1EQRgPn+MZdj0iMkyKMJis4wJ5Qwuj07kEsp7CYEk
 jHcVQV9OGuPi3hRfiynfov54IpOv5aE=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-103-nHFh12x5NQOzBwsfWGuWnQ-1; Wed, 02 Nov 2022 05:04:01 -0400
X-MC-Unique: nHFh12x5NQOzBwsfWGuWnQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 v188-20020a1cacc5000000b003cf76c4ae66so793545wme.7
 for <spice-devel@lists.freedesktop.org>; Wed, 02 Nov 2022 02:04:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XBlp2DOijU5hXQ9AriUwp9vEVLgfxcCQxHX+sSZSvOs=;
 b=Bp1jxCnoiu40/WHLWxCu399O40GNl3yejKjh21KSJBBvr3/Q2Rx6qpqvC01+aHV3i0
 hvt47oGaTZUSecKyOAjihIrHDwQcTV2LpwJbBE2LPUzPcnAs4+Ca3UZCbiWVQoWZNw10
 8+vgdfUJVOAcc0i3sIAdNH2N0ZMOotL4L9ABH+62JrZnVKK4zb8wELVSidc62LMNmrFd
 FKY+CCWCdZQRJxYflv+6f37cG+oIpDxUc5RuEgWzCVaw5e95WSGXY6edM98PJsIYxDMe
 n/SP3f/z9nIUmgXqLr0vPwL6yqxiQJAewy9GRRGkGkN/onlpfvKpIxbi8KO4A0WEpQKx
 wtPg==
X-Gm-Message-State: ACrzQf16pmnq528cRMlOkfeCXZpGwANrEQZE7XOZuGkyUsMuOTkFYBGW
 nYTL0gv6O7ogWnZu7mdc63ONmqPU2Xah+ZajOtQGEwD3Ql3BcD5zQl+VifMxv0TkrdF7CwABLGK
 PGyP4kNJvzgWegOllsBANF6zp++UEejI=
X-Received: by 2002:a7b:c409:0:b0:3cf:4c81:8936 with SMTP id
 k9-20020a7bc409000000b003cf4c818936mr24380826wmi.38.1667379840280; 
 Wed, 02 Nov 2022 02:04:00 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM72ckpdUoZR+NwXtu1sv2+7NmgS+YMIWWHB7QdeKnWTKduGDRl7tg4bkpenTZv0mX1kFf34kw==
X-Received: by 2002:a7b:c409:0:b0:3cf:4c81:8936 with SMTP id
 k9-20020a7bc409000000b003cf4c818936mr24380784wmi.38.1667379840046; 
 Wed, 02 Nov 2022 02:04:00 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 b13-20020a5d550d000000b002366b17ca8bsm14083933wrv.108.2022.11.02.02.03.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Nov 2022 02:03:59 -0700 (PDT)
Message-ID: <87284e5e-859e-3b1c-7142-28d4fa7a7939@redhat.com>
Date: Wed, 2 Nov 2022 10:03:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-16-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-16-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 02 Nov 2022 09:35:15 +0000
Subject: Re: [Spice-devel] [PATCH v2 15/21] drm/fb-helper: Disconnect damage
 worker from update logic
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
Cc: linux-hyperv@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 freedreno@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 10/24/22 13:19, Thomas Zimmermann wrote:
> The fbdev helpers implement a damage worker that forwards fbdev
> updates to the DRM driver. The worker's update logic depends on
> the generic fbdev emulation. Separate the two via function pointer.
> 
> The generic fbdev emulation sets struct drm_fb_helper_funcs.fb_dirty,
> a new callback that hides the update logic from the damage worker.
> It's not possible to use the generic logic with other fbdev emulation,
> because it contains additional code for the shadow buffering that
> the generic emulation employs.
> 
> DRM drivers with internal fbdev emulation can set fb_dirty to their
> own implementation if they require damage handling; although no such
> drivers currently exist.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

[...]

>  static void drm_fb_helper_damage_work(struct work_struct *work)
>  {
> -	struct drm_fb_helper *helper = container_of(work, struct drm_fb_helper,
> -						    damage_work);
> -	struct drm_device *dev = helper->dev;
> +	struct drm_fb_helper *helper = container_of(work, struct drm_fb_helper, damage_work);

This line is an unrelated code style change. But I guess it's OK.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

