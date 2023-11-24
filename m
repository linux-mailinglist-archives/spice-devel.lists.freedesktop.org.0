Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E38D87F7227
	for <lists+spice-devel@lfdr.de>; Fri, 24 Nov 2023 11:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B62210E1BC;
	Fri, 24 Nov 2023 10:56:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BA910E1C1
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Nov 2023 10:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700823410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4lIC23ZyZLJj/oYUj3wwJ9PbugdSurQXfcrH9U9VfYw=;
 b=KzBRBjPn75EPFXQmrdZAcao9Prerc8uwlwuXbMKBPGCjHqAFwrB1JkZrJAeZg1yph9BnaJ
 08h9tZxDQmauS9+CeW2UyVdmgWa7XjIN985aA29Idh9PXT6ylSUfRwMAJk+a8i7goanMbW
 6TGGjd8PE0WfJsK2AY05KYadrLIntOQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-ZkwmgsYcMbWbY4u8xh6ohQ-1; Fri, 24 Nov 2023 05:56:49 -0500
X-MC-Unique: ZkwmgsYcMbWbY4u8xh6ohQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-407f9d07b41so11005955e9.0
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Nov 2023 02:56:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700823408; x=1701428208;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4lIC23ZyZLJj/oYUj3wwJ9PbugdSurQXfcrH9U9VfYw=;
 b=ZWFaNioOn+YE10jdz/3U7j6z9HSVDG5JaNg/ozqb87Up5fh6S1x3VEihsZdGSlWwOB
 gLJfHZdhl2/tuEr+irEYSDRIgbLSncvL3dEKXyKpYWwM9K5xMgUVBTKWtuDPHyvs61vw
 m+o/2O1M0b5T7f9J2dWjheUkm2ChAJa2UW4nWSKObtq3NroUqbCQRNr1lUVHx73uwb80
 xIAhGcZdfjnJ/zoPacAf2skWcw9jRWzA8wt11JGxt4M58FMdzi/8N8E89sQFapPvN2lr
 hZ1SeGmKyVhgjWd9n3+A3z/4nl1yFhe0xH8zk5p/8JSrTjHN54vdnwvC4WEsfeWHyvdu
 ZQwg==
X-Gm-Message-State: AOJu0YyVmgvB2x3Fs471n6G/+a5iiwT4Q51ZPkyOpmzYTsya5ctzfwJ3
 u0YrqnqNTIx37YMt0oXPYySZGsYQTQzXJT8OmjChA8p+aZGuNt6AhnZK3Y2m8GTbcUM+iiGb9sN
 lfAj8DgoAtpWFVhVJSLOGD7e9LlYBxoE=
X-Received: by 2002:adf:b1d5:0:b0:32d:aa11:221d with SMTP id
 r21-20020adfb1d5000000b0032daa11221dmr1609055wra.27.1700823408224; 
 Fri, 24 Nov 2023 02:56:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8B1Z5Xh4NJM4v+jFXHb5dS3jyH1zOINaNv+9ttW9vntLWVjkhOG5VMvKimijwhgUpy+ZIgA==
X-Received: by 2002:adf:b1d5:0:b0:32d:aa11:221d with SMTP id
 r21-20020adfb1d5000000b0032daa11221dmr1609038wra.27.1700823407919; 
 Fri, 24 Nov 2023 02:56:47 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 i2-20020adffc02000000b00327de0173f6sm4052394wrr.115.2023.11.24.02.56.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Nov 2023 02:56:47 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Simon Ser <contact@emersion.fr>
In-Reply-To: <xUgaKXv4lqgCEWWlB4KRGx-yLXefTg-uXEdXaTqAhOTxC4G7bCILTK9SH6ymdmMMBLooAl3_Kdvl5JXeUA8Hofg9PcCMBhPWhVhnCoxvgqA=@emersion.fr>
References: <20231023074613.41327-1-aesteve@redhat.com>
 <-ngmaSLF2S5emYjTBWcLRNzvJRoe_eZ-Nv9HQhE6ZLuK8nIE2ZbfVh2G2O2Z41GoIFIRpts0ukEtFXUx8pNAptmrZBhlXxaQGykx_qCZ_9k=@emersion.fr>
 <CADSE00KW4+hpbAbZAusBngq5FYSa067wYJCGeetqngWRJaD9Kg@mail.gmail.com>
 <87y1eqc5qk.fsf@minerva.mail-host-address-is-not-set>
 <xUgaKXv4lqgCEWWlB4KRGx-yLXefTg-uXEdXaTqAhOTxC4G7bCILTK9SH6ymdmMMBLooAl3_Kdvl5JXeUA8Hofg9PcCMBhPWhVhnCoxvgqA=@emersion.fr>
Date: Fri, 24 Nov 2023 11:56:46 +0100
Message-ID: <87leanctch.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Spice-devel] [PATCH v6 0/9] Fix cursor planes with virtualized
 drivers
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
Cc: Albert Esteve <aesteve@redhat.com>, linux-doc@vger.kernel.org,
 qemu-devel@nongnu.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 mombasawalam@vmware.com, iforbes@vmware.com, Jonathan Corbet <corbet@lwn.net>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 David Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 ppaalanen@gmail.com, banackm@vmware.com, spice-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Matt Roper <matthew.d.roper@intel.com>, linux-kernel@vger.kernel.org,
 krastevm@vmware.com, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Simon Ser <contact@emersion.fr> writes:

Hello Simon,

> On Wednesday, November 22nd, 2023 at 13:49, Javier Martinez Canillas <javierm@redhat.com> wrote:
>
>> Any objections to merge the series ?
>
> No objections from me :)
>

Perfect, I'll merge this series then to unblock the mutter MR. Thanks again!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

