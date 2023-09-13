Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7883379F129
	for <lists+spice-devel@lfdr.de>; Wed, 13 Sep 2023 20:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C8010E4DD;
	Wed, 13 Sep 2023 18:34:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D1F10E4DD
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Sep 2023 18:32:29 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-99bcc0adab4so18654666b.2
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Sep 2023 11:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694629948; x=1695234748;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z+kAAaz8DPw8hDMu58WJTq8XnZOBUPzC1oE9LVRkCzk=;
 b=UvlOkzMdH8ks6BjOGxzw3SMgOGLbMB1dUR599APGi50mQCBsFo9FPbwvIolpPPQeT9
 uxtUgerocW2mNb7bLj8FeBl7Vnf0R0p6iHLJ8auQMr2ej+cINw3TEttGiKbPmRsOe6LS
 +uw69FtpTAbwHTj6xuZ4C9y/1E+zDnKz+L2sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694629948; x=1695234748;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z+kAAaz8DPw8hDMu58WJTq8XnZOBUPzC1oE9LVRkCzk=;
 b=mdX7ghPQmWCNG8zywffzv0NfgthH3/WGFhIDljXwFxmkxQZkt9kxUPA5shLS/UyfdX
 foHwSLr/sR+tVeOPmyGmCH9e3YFOjbiiORuTgI7pgMWP/p+pAMXRMB7iNyEp6RwYaFwA
 rLTDcNzmQQk+oNUSoXi78q4X+qUHPFKXi7c7HqSho9biQLG5aU8g+t90OpH6TwHhUrYl
 LF5UPMm1o4lkk9wK6PU4+Tabvmrf6XEc7bCw9bvxeDe37qdYa6JthmhOutOxXH2Dgvvg
 r3xyFz/UBtA12xAQTJxbmu7GausDj6MHpV26K8rZ1ZrQ37uzXt7e90MDj5BdO8n4/IjF
 nrlg==
X-Gm-Message-State: AOJu0YzmOem7wBck5D73pWFoN5T4kSyitCjVal/Txoc1CI0zztKEI8lM
 Ot7VWxPzQrS5ZMTavejdXxgS05dl8y8gveNkjRE0NAJa
X-Google-Smtp-Source: AGHT+IGfVhAycbvt6LSg3XuT3/yyO+uz+me9zu+hTaG9mfe3ssMnWrvgV/OXmUpTjvnUKZ+Ga3kmYQ==
X-Received: by 2002:a17:907:7742:b0:9a5:d657:47ee with SMTP id
 kx2-20020a170907774200b009a5d65747eemr2839814ejc.58.1694629947729; 
 Wed, 13 Sep 2023 11:32:27 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43]) by smtp.gmail.com with ESMTPSA id
 x16-20020a170906135000b009a9f00bdf8dsm8800419ejb.191.2023.09.13.11.32.27
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Sep 2023 11:32:27 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-52fa364f276so2135a12.1
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Sep 2023 11:32:27 -0700 (PDT)
X-Received: by 2002:a05:600c:1c24:b0:401:a494:2bbb with SMTP id
 j36-20020a05600c1c2400b00401a4942bbbmr161937wms.5.1694629925852; Wed, 13 Sep
 2023 11:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230901234015.566018-1-dianders@chromium.org>
In-Reply-To: <20230901234015.566018-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 Sep 2023 11:31:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=US2G_s8_UtaRMBDLgOJqJzDzxMpg0C0wJ3TabUsuZsGg@mail.gmail.com>
Message-ID: <CAD=FV=US2G_s8_UtaRMBDLgOJqJzDzxMpg0C0wJ3TabUsuZsGg@mail.gmail.com>
To: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 13 Sep 2023 18:34:46 +0000
Subject: Re: [Spice-devel] [RFT PATCH 0/6] drm: drm-misc drivers call
 drm_atomic_helper_shutdown() at the right times
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
Cc: sumit.semwal@linaro.org, alexandre.belloni@bootlin.com, emma@anholt.net,
 xinliang.liu@linaro.org, tomi.valkeinen@ideasonboard.com,
 linus.walleij@linaro.org, liviu.dudau@arm.com, alexandre.torgue@foss.st.com,
 stefan@agner.ch, nicolas.ferre@microchip.com, wens@csie.org,
 jstultz@google.com, kraxel@redhat.com,
 linux-stm32@st-md-mailman.stormreply.com, robh@kernel.org,
 yongqin.liu@linaro.org, linux-aspeed@lists.ozlabs.org, samuel@sholland.org,
 sam@ravnborg.org, javierm@redhat.com, jernej.skrabec@gmail.com,
 steven.price@arm.com, drawat.floss@gmail.com, kong.kongxinwei@hisilicon.com,
 joel@jms.id.au, u.kleine-koenig@pengutronix.de, alain.volmat@foss.st.com,
 linux-sunxi@lists.linux.dev, suijingfeng@loongson.cn,
 mcoquelin.stm32@gmail.com, linux-hyperv@vger.kernel.org,
 raphael.gallais-pou@foss.st.com, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, spice-devel@lists.freedesktop.org,
 hdegoede@redhat.com, airlied@redhat.com,
 virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, jfalempe@redhat.com,
 bbrezillon@kernel.org, andrew@aj.id.au, tzimmermann@suse.de,
 yannick.fertre@foss.st.com, linux-kernel@vger.kernel.org,
 christian.koenig@amd.com, paul.kocialkowski@bootlin.com,
 philippe.cornu@foss.st.com, daniel@ffwll.ch, alexander.deucher@amd.com,
 tiantao6@hisilicon.com, jyri.sarha@iki.fi, claudiu.beznea@microchip.com,
 zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Fri, Sep 1, 2023 at 4:40=E2=80=AFPM Douglas Anderson <dianders@chromium.=
org> wrote:
>
>
> NOTE: in order to avoid email sending limits on the cover letter, I've
> split this patch series in two. Patches that target drm-misc and ones
> that don't. The cover letter of the two is identical other than this note=
.
>
> This patch series came about after a _long_ discussion between me and
> Maxime Ripard in response to a different patch I sent out [1]. As part
> of that discussion, we realized that it would be good if DRM drivers
> consistently called drm_atomic_helper_shutdown() properly at shutdown
> and driver remove time as it's documented that they should do. The
> eventual goal of this would be to enable removing some hacky code from
> panel drivers where they had to hook into shutdown themselves because
> the DRM driver wasn't calling them.
>
> It turns out that quite a lot of drivers seemed to be missing
> drm_atomic_helper_shutdown() in one or both places that it was
> supposed to be. This patch series attempts to fix all the drivers that
> I was able to identify.
>
> NOTE: fixing this wasn't exactly cookie cutter. Each driver has its
> own unique way of setting itself up and tearing itself down. Some
> drivers also use the component model, which adds extra fun. I've made
> my best guess at solving this and I've run a bunch of compile tests
> (specifically, allmodconfig for amd64, arm64, and powerpc). That being
> said, these code changes are not totally trivial and I've done zero
> real testing on them. Making these patches was also a little mind
> numbing and I'm certain my eyes glazed over at several points when
> writing them. What I'm trying to say is to please double-check that I
> didn't do anything too silly, like cast your driver's drvdata to the
> wrong type. Even better, test these patches!
>
> I've organized this series like this:
> 1. One patch for all simple cases of just needing a call at shutdown
>    time for drivers that go through drm-misc.
> 2. A separate patch for "drm/vc4", even though it goes through
>    drm-misc, since I wanted to leave an extra note for that one.
> 3. Patches for drivers that just needed a call at shutdown time for
>    drivers that _don't_ go through drm-misc.
> 4. Patches for the few drivers that had the call at shutdown time but
>    lacked it at remove time.
> 5. One patch for all simple cases of needing a call at shutdown and
>    remove (or unbind) time for drivers that go through drm-misc.
> 6. A separate patch for "drm/hisilicon/kirin", even though it goes
>    through drm-misc, since I wanted to leave an extra note for that
>    one.
> 7. Patches for drivers that needed a call at shutdown and remove (or
>    unbind) time for drivers that _don't_ go through drm-misc.
>
> I've labeled this patch series as RFT (request for testing) to help
> call attention to the fact that I didn't personally test any of these
> patches.
>
> If you're a maintainer of one of these drivers and you think that the
> patch for your driver looks fabulous, you've tested it, and you'd like
> to land it right away then please do. For non-drm-misc drivers there
> are no dependencies here. Some of the drm-misc drivers depend on the
> first patch, AKA ("drm/atomic-helper: drm_atomic_helper_shutdown(NULL)
> should be a noop"). I've tried to call this out but it also should be
> obvious once you know to look for it.
>
> I'd like to call out a few drivers that I _didn't_ fix in this series
> and why. If any of these drivers should be fixed then please yell.
> - DRM driers backed by usb_driver (like gud, gm12u320, udl): I didn't
> add the call to drm_atomic_helper_shutdown() at shutdown time
> because there's no ".shutdown" callback for them USB drivers. Given
> that USB is hotpluggable, I'm assuming that they are robust against
> this and the special shutdown callback isn't needed.
> - ofdrm and simpledrm: These didn't have drm_atomic_helper_shutdown()
> in either shutdown or remove, but I didn't add it. I think that's OK
> since they're sorta special and not really directly controlling
> hardware power sequencing.
> - virtio, vkms, vmwgfx, xen: I believe these are all virtual (thus
> they wouldn't directly drive a panel) and adding the shutdown
> didn't look straightforward, so I skipped them.
>
> I've let each patch in the series get CCed straight from
> get_maintainer. That means not everyone will have received every patch
> but everyone should be on the cover letter. I know some people dislike
> this but when touching this many drivers there's not much
> choice. dri-devel and lkml have been CCed and lore/lei exist, so
> hopefully that's enough for folks. I'm happy to add people to the
> whole series for future posts.
>
> [1] https://lore.kernel.org/lkml/20230804140605.RFC.4.I930069a32baab6faf4=
6d6b234f89613b5cec0f14@changeid
>
>
> Douglas Anderson (6):
>   drm/atomic-helper: drm_atomic_helper_shutdown(NULL) should be a noop
>   drm: Call drm_atomic_helper_shutdown() at shutdown time for misc
>     drivers
>   drm/vc4: Call drm_atomic_helper_shutdown() at shutdown time
>   drm/ssd130x: Call drm_atomic_helper_shutdown() at remove time
>   drm: Call drm_atomic_helper_shutdown() at shutdown/remove time for
>     misc drivers
>   drm/hisilicon/kirin: Call drm_atomic_helper_shutdown() at
>     shutdown/unbind time
>
>  .../gpu/drm/arm/display/komeda/komeda_drv.c   |  9 +++++
>  .../gpu/drm/arm/display/komeda/komeda_kms.c   |  7 ++++
>  .../gpu/drm/arm/display/komeda/komeda_kms.h   |  1 +
>  drivers/gpu/drm/arm/hdlcd_drv.c               |  6 ++++
>  drivers/gpu/drm/arm/malidp_drv.c              |  6 ++++
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c       |  7 ++++
>  drivers/gpu/drm/ast/ast_drv.c                 |  6 ++++
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c  |  6 ++++
>  drivers/gpu/drm/drm_atomic_helper.c           |  3 ++
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c     |  8 +++++
>  .../gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c   |  6 ++++
>  .../gpu/drm/hisilicon/kirin/kirin_drm_drv.c   |  9 +++++
>  drivers/gpu/drm/hyperv/hyperv_drm_drv.c       |  6 ++++
>  drivers/gpu/drm/logicvc/logicvc_drm.c         |  9 +++++
>  drivers/gpu/drm/loongson/lsdc_drv.c           |  6 ++++
>  drivers/gpu/drm/mcde/mcde_drv.c               |  9 +++++
>  drivers/gpu/drm/mgag200/mgag200_drv.c         |  8 +++++
>  drivers/gpu/drm/omapdrm/omap_drv.c            |  8 +++++
>  drivers/gpu/drm/pl111/pl111_drv.c             |  7 ++++
>  drivers/gpu/drm/qxl/qxl_drv.c                 |  7 ++++
>  drivers/gpu/drm/solomon/ssd130x.c             |  1 +
>  drivers/gpu/drm/sti/sti_drv.c                 |  7 ++++
>  drivers/gpu/drm/stm/drv.c                     |  7 ++++
>  drivers/gpu/drm/sun4i/sun4i_drv.c             |  6 ++++
>  drivers/gpu/drm/tilcdc/tilcdc_drv.c           | 11 +++++-
>  drivers/gpu/drm/tiny/bochs.c                  |  6 ++++
>  drivers/gpu/drm/tiny/cirrus.c                 |  6 ++++
>  drivers/gpu/drm/tve200/tve200_drv.c           |  7 ++++
>  drivers/gpu/drm/vboxvideo/vbox_drv.c          | 10 ++++++
>  drivers/gpu/drm/vc4/vc4_drv.c                 | 36 ++++++++++++-------
>  30 files changed, 217 insertions(+), 14 deletions(-)

Just a heads up to keep folks in the loop: I've landed the first patch
in the drm-misc series, AKA ("drm/atomic-helper:
drm_atomic_helper_shutdown(NULL) should be a noop"), but I haven't
landed any of the others yet. I'm going to give them another ~week
just to be sure there are no objections.

-Doug
