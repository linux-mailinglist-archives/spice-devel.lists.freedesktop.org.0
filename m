Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B76613917
	for <lists+spice-devel@lfdr.de>; Mon, 31 Oct 2022 15:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55E310E2D9;
	Mon, 31 Oct 2022 14:35:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B5810E1BF
 for <spice-devel@lists.freedesktop.org>; Mon, 31 Oct 2022 12:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667218101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UzviKTRQBMSKwIl6kvNWZgMaFQwic4ec30sKv7m652k=;
 b=HVwgxIFnTQWShJIbAp+p3yMHeOQrB6J5obh03OwUqlJlXbm90w49w/nPJiu98HKGScM9Uj
 vcR2K1W6wwdh1fa05SHdk+3fuL31eun9CsHTnQBBPzXgM2GVsUWvjC59Qd/0aT4EbN9Vql
 WRS4q8gCbvbwjjBXqhS0GpswFgCgaLQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-318-peROmZ_vOga92Q3Q2D2Nxw-1; Mon, 31 Oct 2022 08:08:20 -0400
X-MC-Unique: peROmZ_vOga92Q3Q2D2Nxw-1
Received: by mail-wm1-f72.google.com with SMTP id
 t20-20020a7bc3d4000000b003c6bfea856aso2537213wmj.1
 for <spice-devel@lists.freedesktop.org>; Mon, 31 Oct 2022 05:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UzviKTRQBMSKwIl6kvNWZgMaFQwic4ec30sKv7m652k=;
 b=zjrnvNwMajY+UkplylSt7aDrzNrsEClgCHXKKrHkMReGp+XCCu3CF0C+ULqt2tzoMQ
 DciPglUAawMpqlcp4JRzKagc2ZRsKVlFXP8q0DcIaqZ2oY5J6KdutJFmZTzZc2g++F4m
 oXeCQyWR9wS8YgBUrWUNaJWqyFRZnILODyWZRYiN5qNE0VrkfNjhUI1EmEPqXaQrpDN+
 K28T1cDcfIgtyNRrWjJQ4/fcs4mSckaUT6lWYRkUJFzI0CfiIHeuR0hHJjLR9g8uJN5/
 2vb0nODSF2u5V5454XXXldRIoujsU7r8lokvBIbZMXbKpEaEz0JzD8XN4KjxgNS5JXfi
 Icmw==
X-Gm-Message-State: ACrzQf0gkP8KRf12KsypMBzww3/9lXKEQBCBijNMh9muMM8HCA94Gvc6
 8CGGOragp2f3qJw+pE1T87ZT6nCwehnN7qZfA3rBI3P3EvPafs5WXnkFw6r5XVEmPEXKQtMhEvT
 M1G6sRHxItJzqVhAJqsH8Vagj/THVCvg=
X-Received: by 2002:a05:6000:15cd:b0:236:9701:7939 with SMTP id
 y13-20020a05600015cd00b0023697017939mr7691197wry.248.1667218098874; 
 Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6Xfc/ao13H30KX93ABjLq4iUJ6oQF+1EOXF8gvz+3LvWSBMjjIijdjEWsEsBBK0GpYNHL8UA==
X-Received: by 2002:a05:6000:15cd:b0:236:9701:7939 with SMTP id
 y13-20020a05600015cd00b0023697017939mr7691171wry.248.1667218098682; 
 Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 bn26-20020a056000061a00b0022cd0c8c696sm6948033wrb.103.2022.10.31.05.08.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
Message-ID: <fd53a4f9-34a8-f5f3-1b1f-baf4a456bcc9@redhat.com>
Date: Mon, 31 Oct 2022 13:08:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-5-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-5-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 31 Oct 2022 14:35:30 +0000
Subject: Re: [Spice-devel] [PATCH v2 04/21] drm/amdgpu: Don't set struct
 drm_driver.output_poll_changed
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
> Don't set struct drm_driver.output_poll_changed. It's used to restore
> the fbdev console. But as amdgpu uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See the
> functions drm_kms_helper_hotplug_event() and
> drm_kms_helper_connector_hotplug_event() in drm_probe_helper.c.
> 
> v2:
> 	* fix commit description (Christian)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Do you think that the fbdev helpers kernel doc has to be updated to mention
that drm_fb_helper_lastclose() and drm_fb_helper_output_poll_changed() are
not needed when generic fbdev emulation is used? Because by reading that is
not clear that's the case:

https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/drm_fb_helper.c#L86

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

