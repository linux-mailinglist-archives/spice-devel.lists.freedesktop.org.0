Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718E851753E
	for <lists+spice-devel@lfdr.de>; Mon,  2 May 2022 19:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34D910E457;
	Mon,  2 May 2022 17:00:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B53F10F086
 for <spice-devel@lists.freedesktop.org>; Mon,  2 May 2022 16:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651510628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K0Gq4g+r6nSFFN2UMiOU7agj8frQhJOC3wt5ScKN4WI=;
 b=EuaI6+8mGao7a8l+K63gjGBTuhOaz9qc/BGKNFHMEg40mW5WtgLZIF9RjoeRcIZLAO04Rc
 5ZZmOh/tLkWmcpODSmYsqbE8j4iiDhq94ej36Wb0yZoAEft7kIIF9nW+S/54yO3gxlN4Hf
 uJl/Syqb7aElGuowD8ShM8d+LnU7+rU=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-xFnhhx5hO_-UU2a8KwKwjA-1; Mon, 02 May 2022 12:57:07 -0400
X-MC-Unique: xFnhhx5hO_-UU2a8KwKwjA-1
Received: by mail-wr1-f71.google.com with SMTP id
 w11-20020adf8bcb000000b0020c550ba8d7so1920849wra.1
 for <spice-devel@lists.freedesktop.org>; Mon, 02 May 2022 09:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=K0Gq4g+r6nSFFN2UMiOU7agj8frQhJOC3wt5ScKN4WI=;
 b=eSaJmOz0Pt4NzHTCgNlZRUu42gmNuQUDkhEBgj7pEPUcLUzAeq+VrVTjIYmqUT+bS5
 ip4/P09rUmukzEb5zQd1eS9JzyfBaVWBgc6j7uk3qVMjtqRmux0hPmF1Iod1nbf6jm6A
 CDUvd5/8NaMJfAaBIIn+EWX3wdBbrXIfLEawgEy8BsW1+MmRtLwpPaQV5sfoXqpL56xR
 a8T82r2nNq//naKuFcAVJLFLwO7xiwxf3g7QWWS1S6slPBXIl9OTpHvPHMRhO9mPnr5T
 Z8eZAssx/SaRnumCc+bFlnEtBfoM6JxlngQxkRf0MGLQnjwDkbmsP2GM+8e4egw3P2kY
 Cs9g==
X-Gm-Message-State: AOAM530LHjKbRzRuyzNdI9venLQDEWPJQOtzQpeOWBij8yDt80SCDtzb
 Tem8r2AZaCHG69+/re4Wz+sW7wVQwiisM3n0lQk3YH1VP80Q0aYP6WGc5VnSX0bp7hUJwKqudA2
 lpDpxoduocLyIAp0T40ks5PsnLUntWWo=
X-Received: by 2002:a05:600c:4f08:b0:391:fe3c:40e6 with SMTP id
 l8-20020a05600c4f0800b00391fe3c40e6mr78547wmq.34.1651510626178; 
 Mon, 02 May 2022 09:57:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBR5y6TmCRfu+8hzM0SQTGA4cZrpN3ZhuFriWyFUH2mb/ZbNn3olE2yOJI8bAuj+96a04yXQ==
X-Received: by 2002:a05:600c:4f08:b0:391:fe3c:40e6 with SMTP id
 l8-20020a05600c4f0800b00391fe3c40e6mr78523wmq.34.1651510625948; 
 Mon, 02 May 2022 09:57:05 -0700 (PDT)
Received: from [192.168.1.129] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id
 r20-20020adfa154000000b0020c5253d8c7sm7273243wrr.19.2022.05.02.09.57.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 May 2022 09:57:05 -0700 (PDT)
Message-ID: <ac202e93-cde2-99fa-5aca-abdc1cf6a3bf@redhat.com>
Date: Mon, 2 May 2022 18:57:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20220502153900.408522-1-javierm@redhat.com>
 <20220502153900.408522-3-javierm@redhat.com>
 <YnABz/4haOHe66Do@pendragon.ideasonboard.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <YnABz/4haOHe66Do@pendragon.ideasonboard.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 02 May 2022 17:00:06 +0000
Subject: Re: [Spice-devel] [PATCH v2 2/3] drm/fb-helper: Rename
 preferred_bpp drm_fbdev_generic_setup() parameter
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
Cc: linux-aspeed@lists.ozlabs.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, spice-devel@lists.freedesktop.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-sunxi@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 5/2/22 18:07, Laurent Pinchart wrote:
> Hi Javier,
> 
> Thank you for the patch.
> 
> On Mon, May 02, 2022 at 05:38:59PM +0200, Javier Martinez Canillas wrote:
>> By default the bits per pixel for the emulated framebuffer device is set
>> to dev->mode_config.preferred_depth, but some devices need another value.
>>
>> Since this second parameter is only used by a few drivers, and to allow
>> drivers to use it for passing other configurations when registering the
>> fbdev, rename @preferred_bpp to @options and make it a multi-field param.
>>
>> The DRM_FB_OPTION() and DRM_FB_GET_OPTION() macros are provided to drivers
>> for computing options bitfield values and getting the values respectively
>>
>> For now, only the DRM_FB_BPP option exists but other options can be added.
>>
>> Suggested-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> ---
>>
>> Changes in v2:
>> - Rename DRM_FB_SET_OPTION() to DRM_FB_SET() and make more clear in the
> 
> I assume you meant DRM_FB_OPTION() here, not DRM_FB_SET().
> 
>>   kernel-doc what this macro does (Laurent Pinchart).
>>

Right, that's a typo. The patch description and content are correct though.

I'll fix the patch history log in v3.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

