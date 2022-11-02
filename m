Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2A8616050
	for <lists+spice-devel@lfdr.de>; Wed,  2 Nov 2022 11:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7671B10E460;
	Wed,  2 Nov 2022 10:00:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3036210E462
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Nov 2022 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667381966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RgeOXsRJ+XKaYoOYvxoyhBylXQrWD/HUrGfmQUHOZZs=;
 b=Jio9JFQacF7FMi0mPUb743H5F84vjCUoxUEdOs4aCfEtqSNexXzNQhBZqnP+aEdEkKHJXh
 URmHGjTMdLlBZMQtpImG0Y4/SH1ck9czoq54M3olm1njxLJsVz+LHQL3sTJgt66SNaM5Ds
 +mvqMM0BCfe4PNY5ygcY3NKi7w2CfF8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-90-qvUNMshSP82MxblZB2F2Cw-1; Wed, 02 Nov 2022 05:39:25 -0400
X-MC-Unique: qvUNMshSP82MxblZB2F2Cw-1
Received: by mail-wm1-f72.google.com with SMTP id
 h204-20020a1c21d5000000b003cf4e055442so7727543wmh.1
 for <spice-devel@lists.freedesktop.org>; Wed, 02 Nov 2022 02:39:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RgeOXsRJ+XKaYoOYvxoyhBylXQrWD/HUrGfmQUHOZZs=;
 b=koQEj5nVw7Xh1n0NHsTeAhn4QrN7AHAhihfZm8otoRZLz1Te98bW2wCj0KNO+Y7vML
 bhWbeygdSzydCLCwIr0eut10PccYfu5nLcOJv+py6ljXz6HGCJ7MJfNKYirtGJEoPayY
 UGQsHXcopwzLw/4GiMi5uoxqs0aUKkG0gSMOmsXTihDw/dkogqw5US1xUduW8LgU5HFS
 OFbtqnVz79HlzQJNhZkz0KHLier4zr3ElMEHnNGAN+Y7xdbgHHAzIeZvLpDpTNl61xU/
 eO/frys+iiarK40kG6vtE2eAamFu+oCIYDtxjZw+LPex2njCtw9eFbVWTC2+W4r2McXE
 iAew==
X-Gm-Message-State: ACrzQf2OztT3TAibQDjTLN9RWeF76kErV0KYy4Ur20iod9UeT52W9ZKz
 qTrpQquDi83Ahx8tmDYgRAWoDXiDW3xVfJIu8q2HHDjRWMBC+daXuGCQZ6WggTc4wZ4hoLBNWRO
 K9dK8Otp+j7y3oK1iDMofbF5YnaJrcMY=
X-Received: by 2002:a5d:40d1:0:b0:236:786d:611e with SMTP id
 b17-20020a5d40d1000000b00236786d611emr14871548wrq.355.1667381964723; 
 Wed, 02 Nov 2022 02:39:24 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4/k2KHrjikPXyIbTE3cWGjPi0EsRobUeOg55XAJjnO250x+w4Sp4JFFeS1nRK3GUJGY3QPnQ==
X-Received: by 2002:a5d:40d1:0:b0:236:786d:611e with SMTP id
 b17-20020a5d40d1000000b00236786d611emr14871522wrq.355.1667381964509; 
 Wed, 02 Nov 2022 02:39:24 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 dn12-20020a05600c654c00b003cf537ec2efsm1653185wmb.36.2022.11.02.02.39.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Nov 2022 02:39:24 -0700 (PDT)
Message-ID: <23b6c3ca-828a-5376-ae80-0b04202e190b@redhat.com>
Date: Wed, 2 Nov 2022 10:39:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-19-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-19-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 02 Nov 2022 10:00:05 +0000
Subject: Re: [Spice-devel] [PATCH v2 18/21] drm/fb_helper: Minimize
 damage-helper overhead
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
> Pull the test for fb_dirty into the caller to avoid extra work
> if no callback has been set. In this case no damage handling is
> required and no damage area needs to be computed. Print a warning
> if the damage worker runs without getting an fb_dirty callback.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

But I've a trivial comment below:

>  drivers/gpu/drm/drm_fb_helper.c | 90 ++++++++++++++++++++++-----------
>  1 file changed, 60 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> index 836523aef6a27..fbc5c5445fdb0 100644
> --- a/drivers/gpu/drm/drm_fb_helper.c
> +++ b/drivers/gpu/drm/drm_fb_helper.c
> @@ -449,12 +449,13 @@ static int drm_fb_helper_damage_blit(struct drm_fb_helper *fb_helper,
>  static void drm_fb_helper_damage_work(struct work_struct *work)
>  {
>  	struct drm_fb_helper *helper = container_of(work, struct drm_fb_helper, damage_work);
> +	struct drm_device *dev = helper->dev;

You removed this in patch #15, maybe just leaving it in that patch if you
plan to use it again here?

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

