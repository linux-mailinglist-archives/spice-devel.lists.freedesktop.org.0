Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 423AF49EA57
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jan 2022 19:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7967610E2D7;
	Thu, 27 Jan 2022 18:26:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21A410E2D7
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jan 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643307984;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oB3qV7cyBeU8wekptigSEtjRhzEDSa0sTyS/yK3CFWk=;
 b=ImSkUGxMMhHg4nrf4pJZOmCX5bQKgdLB5i/lOKt0AoU2gzGfnfDQSUN9YvdLP10MEyP5ED
 7jzQMDJhrfOCepZoPCYfA8IWj+gsZNWmA/p3k8I9k4YnDdRv+8eeuTCv4/1tej82+Ycq/I
 x6cjBPKaefMcZrMQpYPWmzNsPuarqNk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-KF6hRKiRO6qPm_VAzLPc8Q-1; Thu, 27 Jan 2022 13:26:21 -0500
X-MC-Unique: KF6hRKiRO6qPm_VAzLPc8Q-1
Received: by mail-wm1-f72.google.com with SMTP id
 v190-20020a1cacc7000000b0034657bb6a66so896534wme.6
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jan 2022 10:26:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=oB3qV7cyBeU8wekptigSEtjRhzEDSa0sTyS/yK3CFWk=;
 b=07BHMbjHSkIh+O1FN75BbKclDJ7pcY1pB/gxiZaP4YsiBqTcsJNEUD4CZzFYprBoSr
 1GnHG3+JuEUUdSMWHkyyBILC9SDWQyZSLvwIV5yutdGcfnEo0PVohWm8t2CRKU3H5zs/
 U+bOVPHqFRNmadbL6dAVJHrIX7NGN8Frqy5kh7cWLs9IpgeniWieq7GogJXLFMneBygZ
 uq/lw46S+XV9yGpUYcufanVb6HV634m+/tO8QoXmU8DcwDeRJczRDzITXUZMdGNAt0Nq
 /Nxnep0R+OZLapl5IH7/3eJTufR49uY4BTiZLkmzRhCuG5dLwYcoOoWUtD8WNOfEOBUB
 quZQ==
X-Gm-Message-State: AOAM533NUzDhWwHVu2FmrAZAUNpBMf1EqtG49n//gbvmkBwJEUPA4x30
 pxgDaiaHCpDzUvVa3IoOoDpj1tqqn+woeL4Mrn21Hrc3O/h5ViX1Mznk/ilTNk3b75Gtq2trPI3
 Hb9TSGlXpyNrxYdWMwsbO0gMa9In7Ma8=
X-Received: by 2002:a05:6000:168f:: with SMTP id
 y15mr4217308wrd.365.1643307980566; 
 Thu, 27 Jan 2022 10:26:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxfvcpjLkoX7TINgPyJ2uFIoRqH3mgpbBKpMlxDnKAJXYaaHnQ9yCgS6jlcCKe0rjGu+yR+5g==
X-Received: by 2002:a05:6000:168f:: with SMTP id
 y15mr4217293wrd.365.1643307980273; 
 Thu, 27 Jan 2022 10:26:20 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id a3sm3385808wri.89.2022.01.27.10.26.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 10:26:19 -0800 (PST)
Message-ID: <fdae8787-a355-8c20-dad1-01ab84dbe52a@redhat.com>
Date: Thu, 27 Jan 2022 19:26:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@linux.ie, mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20211217144615.32733-1-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20211217144615.32733-1-tzimmermann@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Spice-devel] [RFC][PATCH 00/10] drm: Add DRM module helpers
 for existing PCI drivers
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
Cc: spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 12/17/21 15:46, Thomas Zimmermann wrote:
> This is an RFC patchset to complement the helper macros provided
> in [1]. The module helpers create module init and exit helpers that
> respect the kernel parameters that enable/disable DRM drivers.
> 
> There's one more patch that prepares qxl by moving some code around.
> It's required to make use of the helpers from within qxl.
> 
> Javier, please see if you find anything useful here and cherry-pick
> into your patchset. The driver changes should complement the ones
> in your patchset. The module macros are similar to yours and should
> be easily mergable.
> 
> I tested the macros with ast.
> 
> [1] https://patchwork.freedesktop.org/series/98162/
> 
> Thomas Zimmermann (10):
>   drm: Provide PCI module-init macros
>   drm/ast: Replace module-init boiler-plate code with DRM helpers
>   drm/bochs: Replace module-init boiler-plate code with DRM helpers
>   drm/cirrus: Replace module-init boiler-plate code with DRM helpers
>   drm/hisilicon/hibmc: Replace module initialization with DRM helpers
>   drm/mgag200: Replace module-init boiler-plate code with DRM helpers
>   drm/qxl: Move ioctl array next to its only user
>   drm/qxl: Replace module-init boiler-plate code with DRM helpers
>   drm/vboxvideo: Replace module-init boiler-plate code with DRM helpers
>   drm/vmwgfx: Replace module-init boiler-plate code with DRM helpers
> 

Pushed the remaining of these patches to drm-misc-next. Thanks!

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

