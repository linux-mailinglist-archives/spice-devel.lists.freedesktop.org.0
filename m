Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C894444FC8
	for <lists+spice-devel@lfdr.de>; Thu,  4 Nov 2021 08:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CAF26EB0D;
	Thu,  4 Nov 2021 07:45:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80B116EA30
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Nov 2021 13:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635944777;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QbLN+rLSmR4Lu23oOqZ5Rw/0XzuuN+zYLV6sy53LaJM=;
 b=G9MxD7SAt+M9kk9UcqPOAyJVHTtVFE1lZoaMwju4+b/2mQU8/nlvsxNtCFz6wGjFKX7DkN
 Qs9SCZBTL/37f2tJgW2orsdnyeDKvhmTSO/kjThfdxbYSI2erM2rMQaglSRNgsxzFyBSyD
 POvRc0PkVWhsEYAEi2OTNcX6HvZnAmw=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-AyWpcQJHPxO5sV5tzVX_xg-1; Wed, 03 Nov 2021 09:06:16 -0400
X-MC-Unique: AyWpcQJHPxO5sV5tzVX_xg-1
Received: by mail-wr1-f71.google.com with SMTP id
 d7-20020a5d6447000000b00186a113463dso407477wrw.10
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Nov 2021 06:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QbLN+rLSmR4Lu23oOqZ5Rw/0XzuuN+zYLV6sy53LaJM=;
 b=RSwVMk2XhyWQZU8DAtteOl2DwAL3d2wCPDodm40w5Ale2rOQNRROYXlphpgjjmKPm8
 iN0qClUYPI/+Je0Er3szqNy/PNn3Wd0LVEu0ZFCTuaAPrtc81dmPmVSwexNW0sZ72IBr
 8tryl6ic96zZ4toD37Xv3/G1RM+7ThdDBl1AOM/LtbC9fWfn2F2vPVKV88uO30dGhpUT
 hkAAUsp6Jlu8ahxOKleZD+dd4cRzeDrLSQ2Soh8uGHVmgGU+ags+6HKyD9iCBydltkKC
 HHV7mBkotVYwEkK9ZFjNJNfYXAjRAfz8XCiy2Ae8UecJUjwz/9T/mF44iMpeLEiVrwZ/
 zM7g==
X-Gm-Message-State: AOAM531os+W9tvM3/de+OUmCQmqlVy8jjGH6V45F8nWYfvudQfPRAPsz
 137LiFMrVs1UY3U4/Yo+Azdftb6JGxfsSv1bsp+jiYW2Tw99SEcMyDhZqmJNnmQ77ZobhmVhCvY
 sIva8SHQZkpsIcprv2SkMKSZQc02oQf8=
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr15125822wmk.32.1635944775075; 
 Wed, 03 Nov 2021 06:06:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxM0hXFNtYadm5yFc+JONq4iTPFyfiO2VjSzzIrHnbt608JviNYEXO0rXhutOI0PtrTAGlysw==
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr15125743wmk.32.1635944774765; 
 Wed, 03 Nov 2021 06:06:14 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id g2sm1846869wrq.62.2021.11.03.06.06.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 06:06:14 -0700 (PDT)
Message-ID: <fc835469-b908-608b-7a1c-d3b7340d7c20@redhat.com>
Date: Wed, 3 Nov 2021 14:06:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
References: <20211103122809.1040754-1-javierm@redhat.com>
 <20211103122809.1040754-3-javierm@redhat.com>
 <a95acef3-8647-9fb0-efa7-9c3a35524052@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <a95acef3-8647-9fb0-efa7-9c3a35524052@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 04 Nov 2021 07:45:07 +0000
Subject: Re: [Spice-devel] [RESEND PATCH 2/5] drm: Move nomodeset kernel
 parameter handler to the DRM subsystem
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
Cc: linux-fbdev@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Peter Robinson <pbrobinson@gmail.com>, Neal Gompa <ngompa13@gmail.com>,
 Dave Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, spice-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello Thomas,

On 11/3/21 13:41, Thomas Zimmermann wrote:
> Hi
> 
> Am 03.11.21 um 13:28 schrieb Javier Martinez Canillas:
>> The "nomodeset" kernel cmdline parameter is handled by the vgacon driver
>> but the exported vgacon_text_force() symbol is only used by DRM drivers.
>>
>> It makes much more sense for the parameter logic to be in the subsystem
>> of the drivers that are making use of it. Let's move that to DRM.
>>
>> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> ---
>>
>>   drivers/gpu/drm/Makefile                |  2 ++
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c |  3 +--
>>   drivers/gpu/drm/ast/ast_drv.c           |  1 -
>>   drivers/gpu/drm/drm_nomodeset.c         | 26 +++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_module.c      |  2 --
>>   drivers/gpu/drm/mgag200/mgag200_drv.c   |  1 -
>>   drivers/gpu/drm/nouveau/nouveau_drm.c   |  1 -
>>   drivers/gpu/drm/qxl/qxl_drv.c           |  1 -
>>   drivers/gpu/drm/radeon/radeon_drv.c     |  1 -
>>   drivers/gpu/drm/tiny/bochs.c            |  1 -
>>   drivers/gpu/drm/tiny/cirrus.c           |  1 -
>>   drivers/gpu/drm/vboxvideo/vbox_drv.c    |  1 -
>>   drivers/gpu/drm/virtio/virtgpu_drv.c    |  1 -
>>   drivers/gpu/drm/vmwgfx/vmwgfx_drv.c     |  1 -
>>   drivers/video/console/vgacon.c          | 21 --------------------
>>   include/drm/drm_mode_config.h           |  6 ++++++
>>   include/linux/console.h                 |  6 ------
>>   17 files changed, 35 insertions(+), 41 deletions(-)
>>   create mode 100644 drivers/gpu/drm/drm_nomodeset.c
>>
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index 1c41156deb5f..0e2d60ea93ca 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -33,6 +33,8 @@ drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o drm_privacy_screen_x86.
>>   
>>   obj-$(CONFIG_DRM_DP_AUX_BUS) += drm_dp_aux_bus.o
>>   
>> +obj-y += drm_nomodeset.o
> 
> Repeating my other comment, should this rather be protected by a 
> separate config symbol that is selected by CONFIG_DRM?
>

I actually thought about that and my opinion is that obj-y reflects
what we really want here or do you envision this getting disabled
in some cases ?

Probably the problem is Kbuild descending into the drivers/gpu dir
even when CONFIG_DRM is not set. Maybe what we want is something
like the following instead?

diff --git a/drivers/gpu/Makefile b/drivers/gpu/Makefile
index 835c88318cec..ef12ee05ba6e 100644
--- a/drivers/gpu/Makefile
+++ b/drivers/gpu/Makefile
@@ -3,6 +3,7 @@
 # taken to initialize them in the correct order. Link order is the only way
 # to ensure this currently.
 obj-$(CONFIG_TEGRA_HOST1X)     += host1x/
-obj-y                  += drm/ vga/
+obj-$(CONFIG_DRM)              += drm/
+obj-y                          += vga/
 obj-$(CONFIG_IMX_IPUV3_CORE)   += ipu-v3/
 obj-$(CONFIG_TRACE_GPU_MEM)            += trace/

Best regards, -- 
Javier Martinez Canillas
Linux Engineering
Red Hat

