Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B23044644C
	for <lists+spice-devel@lfdr.de>; Fri,  5 Nov 2021 14:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420586E593;
	Fri,  5 Nov 2021 13:42:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED3C89D2E
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Nov 2021 12:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636113674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d6mnjEfsvPWlmw0Dlsyl+1vpuoyclHqeKNkGqPRjBhA=;
 b=blUsf+DphCkAa2HzUFHJk6+P+VzzwtzOxDAyn5bgR5WNRZGlPXWs1j2BdkXG88YOnqg8Ay
 TO/sHz4yO/A7M742m4XkmdR1n4lr3z2kNopkY2ejELFhcmmoazFDDpNlPudMu7hH2+8kb4
 SaT2zuHLgAHlqMsJYaQk3CKa5l7A+fk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-wu_p0-hfPTufxGLoa_-ZnA-1; Fri, 05 Nov 2021 08:00:53 -0400
X-MC-Unique: wu_p0-hfPTufxGLoa_-ZnA-1
Received: by mail-wm1-f70.google.com with SMTP id
 67-20020a1c0046000000b0032cd88916e5so3199363wma.6
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Nov 2021 05:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=d6mnjEfsvPWlmw0Dlsyl+1vpuoyclHqeKNkGqPRjBhA=;
 b=Xv1TmnxOrX6pDYeUxj0XftPiEA4xNMVPENwSpk5FvfH+jJ2QSmUKkNsneXH2OK/Ako
 B54OutnQDuXUu+PoGpF89xi0QCN6o3vRf7fj4jwZ0mX0kEs10BZNf3y8CtQZxw0xa6sJ
 bkwn8/6mju9hKz/ScC0l2crCXV7wwMInMPL5TJqJ/5kJcfbeHDAiExrE2JjYwTihhjve
 Ptdbp9rTpTKnRdJBPqugj/I7dafFdsN2i7iRJ2hKdvggndeS5EYqWjUhuWyY+I8PcKR/
 YfXYJJpsqUbI4uNnDaE/eDoZH8T9FaOnrN2rHq49+ImXaeFyE/Z1y7KGNEsWiRTY5jCX
 DYoA==
X-Gm-Message-State: AOAM533xOYAhE/tlYo4t2xksKMml9r8Qv87oFDfquDSDL86ANGM6TV9Y
 ZfY693RcXv+9T5FMEK63BntBZsFeVNd2esb2ZfinFrYL2WsTru7yPXf5FwqkmoYKwi54q8evYPm
 eFfSFtX2QzwRgMEx+Q/Q5l3OaZpUV7gE=
X-Received: by 2002:a05:6000:1868:: with SMTP id
 d8mr36559141wri.285.1636113651760; 
 Fri, 05 Nov 2021 05:00:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxlHaNU9FU6Qy+ImAOwcqW/sLneLxZOG0rukxfbYjqJBdrwuSz7fg+xp3pWIymRwt/FJOPRA==
X-Received: by 2002:a05:6000:1868:: with SMTP id
 d8mr36559073wri.285.1636113651479; 
 Fri, 05 Nov 2021 05:00:51 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id m21sm7590336wrb.2.2021.11.05.05.00.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Nov 2021 05:00:51 -0700 (PDT)
Message-ID: <335a9e0f-cce9-480b-10e0-bd312b81e587@redhat.com>
Date: Fri, 5 Nov 2021 13:00:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-2-javierm@redhat.com> <87ilx7ae3v.fsf@intel.com>
 <0c07f121-42d3-9f37-1e14-842fb685b501@redhat.com>
 <d4a64906-69e5-3250-2362-79f2afac0a23@suse.de>
 <38dbcc8f-2f95-6846-537f-9b85468bfa87@redhat.com> <877ddmapfj.fsf@intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <877ddmapfj.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 05 Nov 2021 13:42:15 +0000
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
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Hans de Goede <hdegoede@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>, Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, spice-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 virtualization@lists.linux-foundation.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Peter Robinson <pbrobinson@gmail.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 11/5/21 11:04, Jani Nikula wrote:
> On Fri, 05 Nov 2021, Javier Martinez Canillas <javierm@redhat.com> wrote:

[snip]

>>
>> Do you envision other condition that could be added later to disable a
>> DRM driver ? Or do you think that just from a code readability point of
>> view makes worth it ?
> 
> Taking a step back for perspective.
> 
> I think there's broad consensus in moving the parameter to drm, naming
> the check function to drm_something_something(), and breaking the ties
> to CONFIG_VGA_CONSOLE. I appreciate the work you're doing to that
> effect.
>

Thanks, I appreciate your feedback and comments.
 
> I think everything beyond that is still a bit vague and/or
> contentious. So how about making the first 2-3 patches just that?
> Something we can all agree on, makes good progress, improves the kernel,
> and gives us something to build on?
>

That works for me. Thomas, do you agree with that approach ?
 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

