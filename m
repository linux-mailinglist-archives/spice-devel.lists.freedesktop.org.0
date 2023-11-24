Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7C7F7696
	for <lists+spice-devel@lfdr.de>; Fri, 24 Nov 2023 15:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4821210E7F9;
	Fri, 24 Nov 2023 14:41:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4DE10E7F9
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Nov 2023 14:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700836909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e3K50cOwL2e/Sm1/EHsvbvDxOsSWvo2nEBpLvx7bOk4=;
 b=PBy8hZ6EJ0euPNSqD89Imsp9PBGz8mANQ/QlvBRg083JyLxjyA9tVl0luwKdXEaakLxbYf
 Y86ANGZMhh/OVE3JtYxzvd4AlzRlqmjsuLF2T++r+g+pA730mIpW4Lg0RrzaaSP1YK8dcP
 Uw9CChysuio3dLNRQiigzif2G2BRlD0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-477-kJdKNHyHO1-HE83VGpzxeg-1; Fri, 24 Nov 2023 09:41:47 -0500
X-MC-Unique: kJdKNHyHO1-HE83VGpzxeg-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3316945c6e5so1644002f8f.0
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Nov 2023 06:41:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700836906; x=1701441706;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e3K50cOwL2e/Sm1/EHsvbvDxOsSWvo2nEBpLvx7bOk4=;
 b=N0X0rYy9SKQ6i43605yVk0YoYHkPi6lfV2UqjFCBC5sqso+03wrbUO6k0yTkH+jZbb
 y/RGAVBjyaymK3xdSB0zGyyeIJpUN1ximwRuhALEX4AZYByPfLqnl0UtV9WBO2anPcao
 Di3Zrzh5ubWfG5vMmIl5oz4I2GD8g6iBdxdIX3PdcFDPdufvsY6bjdDfW3FvQWrk9Gfi
 2fw1GjBcoszrspliUR+dEU0hDE+H3UMYUyCi6SnVebOUkgs/d8R13vcyYpvF+l3H0s4G
 2Y5V2Ql+dy/2o2NvSu3/ZfkddH7v/nmPC3XXF3z8CZgtrS/IWEjao+9FiG9uuOh99xhN
 II8Q==
X-Gm-Message-State: AOJu0Yxc+Jw6NhyrH+0y1T2jciJTj7EH1Xu8Or7Kn6rPn2xSviQSqOM3
 anjUqjzLQSqZ+C997Vap55R+E6YJRsKCefmYOGzg0EM0qpiNAxy9inHtXtf5BTjaUroxRZDWBUK
 1t1lG9vYSVL4cdNgGh5VL7S3b/YmDb0w=
X-Received: by 2002:adf:ff92:0:b0:332:eacf:c9d7 with SMTP id
 j18-20020adfff92000000b00332eacfc9d7mr2292964wrr.8.1700836906405; 
 Fri, 24 Nov 2023 06:41:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE53BbITSRE5erDBMKhplTxbIjo+7N2xRO0vWBt96X5OYz91Q7KP0WC4vmV1rL31vNgSjrYww==
X-Received: by 2002:adf:ff92:0:b0:332:eacf:c9d7 with SMTP id
 j18-20020adfff92000000b00332eacfc9d7mr2292920wrr.8.1700836906054; 
 Fri, 24 Nov 2023 06:41:46 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 s15-20020adf978f000000b00332d41f0798sm4514822wrb.29.2023.11.24.06.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Nov 2023 06:41:45 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Albert Esteve <aesteve@redhat.com>, qemu-devel@nongnu.org
In-Reply-To: <20231023074613.41327-1-aesteve@redhat.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
Date: Fri, 24 Nov 2023 15:41:44 +0100
Message-ID: <87h6lbcixj.fsf@minerva.mail-host-address-is-not-set>
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
 banackm@vmware.com, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, mombasawalam@vmware.com, iforbes@vmware.com,
 Jonathan Corbet <corbet@lwn.net>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 David Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 ppaalanen@gmail.com, dri-devel@lists.freedesktop.org,
 spice-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Matt Roper <matthew.d.roper@intel.com>, contact@emersion.fr,
 linux-kernel@vger.kernel.org, krastevm@vmware.com,
 Rob Clark <robdclark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Albert Esteve <aesteve@redhat.com> writes:

> v6: Shift DRIVER_CURSOR_HOTSPOT flag bit to BIT(9), since BIT(8)
> was already taken by DRIVER_GEM_GPUVA.
>
> v5: Add a change with documentation from Michael, based on his discussion
> with Pekka and bump the kernel version DRM_CLIENT_CAP_CURSOR_PLANE_HOTSPOT
> might be introduced with to 6.6.
>
> v4: Make drm_plane_create_hotspot_properties static, rename
> DRM_CLIENT_CAP_VIRTUALIZED_CURSOR_PLANE to DRM_CLIENT_CAP_CURSOR_PLANE_HOTSPOT
> and some minor stylistic fixes for things found by Javier and Pekka
> in v3.
>
> v3: Renames, fixes and cleanups suggested by Daniel, Simon and Pekka
> after v2. There's no major changes in functionality. Please let me know
> if I missed anything, it's been a while since v2.
>
> Virtualized drivers have had a lot of issues with cursor support on top
> of atomic modesetting. This set both fixes the long standing problems
> with atomic kms and virtualized drivers and adds code to let userspace
> use atomic kms on virtualized drivers while preserving functioning
> seamless cursors between the host and guest.
>
> The first change in the set is one that should be backported as far as
> possible, likely 5.4 stable, because earlier stable kernels do not have
> virtualbox driver. The change makes virtualized drivers stop exposing
> a cursor plane for atomic clients, this fixes mouse cursor on all well
> formed compositors which will automatically fallback to software cursor.
>
> The rest of the changes until the last one ports the legacy hotspot code
> to atomic plane properties.
>
> Finally the last change introduces userspace API to let userspace
> clients advertise the fact that they are aware of additional restrictions
> placed upon the cursor plane by virtualized drivers and lets them use
> atomic kms with virtualized drivers (the clients are expected to set
> hotspots correctly when advertising support for virtual cursor plane).
>
> Link to the IGT test covering this patch (already merged):
> https://lists.freedesktop.org/archives/igt-dev/2023-July/058427.html
>
> Mutter patch:
> https://lists.freedesktop.org/archives/igt-dev/2023-July/058427.html
>
> Michael Banack (1):
>   drm: Introduce documentation for hotspot properties
>
> Zack Rusin (8):
>   drm: Disable the cursor plane on atomic contexts with virtualized
>     drivers
>   drm/atomic: Add support for mouse hotspots
>   drm/vmwgfx: Use the hotspot properties from cursor planes
>   drm/qxl: Use the hotspot properties from cursor planes
>   drm/vboxvideo: Use the hotspot properties from cursor planes
>   drm/virtio: Use the hotspot properties from cursor planes
>   drm: Remove legacy cursor hotspot code
>   drm: Introduce DRM_CLIENT_CAP_CURSOR_PLANE_HOTSPOT
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

