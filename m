Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A37446049
	for <lists+spice-devel@lfdr.de>; Fri,  5 Nov 2021 08:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B6C6E1D5;
	Fri,  5 Nov 2021 07:51:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515C973305
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Nov 2021 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636044253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GBeSNSo+VR936LBuXFto2HVzfx/uW1FgtYIk1y3q3ig=;
 b=CBVY3wAoy78upQNbKAT1HVlHDBpW4oEl0NbOHqlw8hz+XAM45IIsqMx9wT6FBTHERDHg6I
 h207V7GgFIdF5o0vj424y1hfbUtdxmpIm3EE1+0uJwpm1eT+0mXEEd/T7hq/7E1t++v9zk
 HkSLJ2SgiK0VMUli6JbyzWmnaRWXtWQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-Y7P6EzfZO6eJQM-UdFjLWQ-1; Thu, 04 Nov 2021 12:44:11 -0400
X-MC-Unique: Y7P6EzfZO6eJQM-UdFjLWQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 k6-20020a7bc306000000b0030d92a6bdc7so2780450wmj.3
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Nov 2021 09:44:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GBeSNSo+VR936LBuXFto2HVzfx/uW1FgtYIk1y3q3ig=;
 b=jAl4VKh0MxI66p4I+JwlEv6WxIYu5ZpL/pRiml9AnEnYX5j2c62m2Wwcf15IUeFaoI
 q6XYWnKWYYl+tkKGVGG5JqNtaYguv5i/yJvv6ItDWEQWrH4UkVjXUn2zKmj0i4lxERs2
 o4ElG+NkyFMJ5lGmgRIfVRDKwhMJ7+mV6q/cz3YNpLJqpZRQ+6tA00JttPPsBuwKiDrF
 48xxYKzSgK7Gvmu1Oa9wxcOJGxFSSkFzeQaAv3xTm/HkkbEWRVIP70lt/jDriYzK/Y3R
 UddYV7a7LzaBP8t49sZ/vBvYCGGFGOdDwJHLp5kCtudgVKufzaRYiLMuGfF1awM5f01A
 f6PA==
X-Gm-Message-State: AOAM533TmoRtFsBzwGjXI3Gdp7JiL3JDrYKAR+RE4ygYaB8FFG0LyNb1
 beeNRz/6fQN6JOTA5C9syj58NXPZN1ptGgk3CKfYQDgZjMq7DeGxEuy2BiDF/GQuVwQKhthSk+n
 j5FZY62lr+3Mu4fC/yJrzFk2tRtJ0HkY=
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr39525105wrt.224.1636044250773; 
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnATpWRYfiqKo492+/czqTIzFCv7HIX437cz1EV9eI7R7UChO4l+utit2RLduHTmaqMKEFNQ==
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr39525075wrt.224.1636044250590; 
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id o4sm6636216wry.80.2021.11.04.09.44.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Nov 2021 09:44:10 -0700 (PDT)
Message-ID: <3ff9fe95-9bc7-a043-78c6-d52d0ff02e23@redhat.com>
Date: Thu, 4 Nov 2021 17:44:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jani Nikula <jani.nikula@linux.intel.com>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-2-javierm@redhat.com> <87zgqjanz2.fsf@intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <87zgqjanz2.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 05 Nov 2021 07:51:41 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/2] drm: Add a drm_drv_enabled() to
 check if drivers should be enabled
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Peter Robinson <pbrobinson@gmail.com>, nouveau@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, spice-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 11/4/21 17:24, Jani Nikula wrote:

[snip]

>> index ab2295dd4500..45cb3e540eff 100644
>> --- a/drivers/gpu/drm/i915/i915_module.c
>> +++ b/drivers/gpu/drm/i915/i915_module.c
>> @@ -18,9 +18,12 @@
>>  #include "i915_selftest.h"
>>  #include "i915_vma.h"
>>  
>> +static const struct drm_driver driver;
>> +
> 
> No, this makes absolutely no sense, and will also oops on nomodeset.
>

Ups, sorry about that. For some reason I thought that it was defined in
the same compilation unit, but I noticed now that it is in i915_drv.c.
 
> BR,
> Jani.
> 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

