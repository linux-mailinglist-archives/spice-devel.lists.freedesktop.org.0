Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B1A444FCE
	for <lists+spice-devel@lfdr.de>; Thu,  4 Nov 2021 08:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC8C6EB4F;
	Thu,  4 Nov 2021 07:45:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F5F73613
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Nov 2021 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635951653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uwI0Y59Q5jmF4PHv+uLDkwhNmEWKp2IZoCsuOpcoatA=;
 b=KATuRnR22jBMze/gNGTPfdw4moo/E9yLZkUkw3t9LGhZe3d6R+mW2cDlWPUYfETR0FQpOL
 y3mav7e3cC9Qr0L2nX845zXbiMUwS47OOpnluh7YmWqav9ZwiQxYX588X0s/n1w73TEki4
 WIxEtEGbyQK6IA253HT8DBzumNg7w4E=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-yAtSRxusOy2mfyHzYbVFWw-1; Wed, 03 Nov 2021 11:00:51 -0400
X-MC-Unique: yAtSRxusOy2mfyHzYbVFWw-1
Received: by mail-wm1-f72.google.com with SMTP id
 a18-20020a1cf012000000b0032ca3eb2ac3so1236025wmb.0
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Nov 2021 08:00:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uwI0Y59Q5jmF4PHv+uLDkwhNmEWKp2IZoCsuOpcoatA=;
 b=7PEyaZn0I+s7LZw1Fs2Oc83FVzOib0Zo9/mkmm1rPzxrk/S7CCRWqsAwjKcyPzWHAg
 H998uninxtRCvjCDqczhYJ+idqVYk7TJEzH1686HowGTTvq6FnAFV32+GnHWxQHaZNQl
 +n+4ibITri7kbma9P6veXZtXfkjgL4OtI59SCKwVinzGX8c1+mfOIVgs9J2q8902vhIH
 ix/NUwsf5gijNv4a/0qutFCV+4tV5p/h4L/H8p9vbXlVSGZy61EiRnxv/A0EPUqx/kiG
 nJJStJWR6UdZt2R/BiiVHZnL089vEwDUpG2dyfzxXaebCuQ+o1nFNRuC/10Q4F2Wkzyn
 +PJA==
X-Gm-Message-State: AOAM533TFKSQuYDggdoY8wuWX73qrmk1cU2TnFjEM65C4QobWaWMc69K
 iqSUeotOYTALHd2JWzypyPHXM5Ui8Hn3seJ2fJxWBZpfReF34t+aprrrLISWHnnVHMyVuvjlSrC
 7O0S/GRJ3C3M/Bwmv5Va372+TyOFlSUM=
X-Received: by 2002:a1c:740e:: with SMTP id p14mr15702638wmc.109.1635951650045; 
 Wed, 03 Nov 2021 08:00:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlHYGSvfJmLDivVAOaT4xxbH7zmwqgCefExXH/bfigpAgkjWjbQ8meeoW65MqFlJvktgySGg==
X-Received: by 2002:a1c:740e:: with SMTP id p14mr15702572wmc.109.1635951649817; 
 Wed, 03 Nov 2021 08:00:49 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id q1sm2089857wmj.20.2021.11.03.08.00.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 08:00:49 -0700 (PDT)
Message-ID: <dbdbaf95-8625-aec9-4446-d39db77b23f2@redhat.com>
Date: Wed, 3 Nov 2021 16:00:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
References: <20211103122809.1040754-1-javierm@redhat.com>
 <e02d23be-1a1c-570d-e76f-dbea76b6dd55@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <e02d23be-1a1c-570d-e76f-dbea76b6dd55@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 04 Nov 2021 07:45:07 +0000
Subject: Re: [Spice-devel] [RESEND PATCH 0/5] Cleanups for the nomodeset
 kernel command line parameter logic
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

On 11/3/21 14:01, Thomas Zimmermann wrote:

[snip]

>>
>>
>> Javier Martinez Canillas (5):
>>    drm/i915: Fix comment about modeset parameters
>>    drm: Move nomodeset kernel parameter handler to the DRM subsystem
>>    drm: Rename vgacon_text_force() function to drm_modeset_disabled()
>>    drm: Add a drm_drv_enabled() helper function
>>    drm: Use drm_drv_enabled() instead of drm_modeset_disabled()
> 
> There's too much churn here IMHO. Please merge patches 2+3 and 4+5. And 
> I'd put patch (4+5) first, so you have the drivers out of the way. After 
> that patch (2+3) should only modify drm_drv_enabled().
>

Sure, I'm happy with less patches.

Thanks for your feedback.
 
> Best regards
> Thomas
> 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

