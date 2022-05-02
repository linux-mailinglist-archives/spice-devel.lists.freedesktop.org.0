Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E860A516D45
	for <lists+spice-devel@lfdr.de>; Mon,  2 May 2022 11:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8D210FE2A;
	Mon,  2 May 2022 09:21:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71AE910EC5E
 for <spice-devel@lists.freedesktop.org>; Mon,  2 May 2022 08:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651481342;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=g1EGMUSX4uhdpumN1AqArSCJZUMcx2qk+SIJN7jkMXI=;
 b=P0h/w4e8bqfdcfuw0MzVuqo30xCR92VaVbU/cZWVK81Y/aYl1Hulb/zDJv3U8VC527kV4m
 U3pcdK/902HbQJMV5WWF5w9oFoD/ZwFVMpxmPmcoChf4Hyn5g1NkQU2mmlN8tjAgL6rYg4
 MfeBdRSBapuQll01D5v+FmDRUTMF3OU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-1YpfgNH0NYmpqCYQd0m-ZQ-1; Mon, 02 May 2022 04:49:01 -0400
X-MC-Unique: 1YpfgNH0NYmpqCYQd0m-ZQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 m186-20020a1c26c3000000b003943e12185dso748416wmm.7
 for <spice-devel@lists.freedesktop.org>; Mon, 02 May 2022 01:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g1EGMUSX4uhdpumN1AqArSCJZUMcx2qk+SIJN7jkMXI=;
 b=rTyXjRko5h892/SfIYA+P5OgViQ3Od+uL/cKQbKg/vGh7mfZS1fAjFVaV4f3fHejmY
 1yJTQgSeyK8NiBQRKS3j0kjeVb5nnsBER0qXOC4cUXhK0l3Gx893PRaQvZHG0YxhH90D
 l5PuSTo2Hyzcv/EjnCS0U7PB+K/u+sOrTnBc0rlPSWwihDSp2yGzVE+vQWD129VxGrBq
 0kZjsrpNQhQKsi5DuCgKgXHUW3glhTrn/4mD4ge+BGznu4mgbW3zB5gM6p+3z2hGxyhe
 QgOKQXGiJNvufghq6gVYFiUQDq50DAJYnOpKcVYMsOG+xt3a2aj/+Cz9X/636KS+NtmS
 Py0w==
X-Gm-Message-State: AOAM530afJJzyHDJDS5cizCJBYes2FtuDsAc3to/JX4tSNUoJ/x11yNn
 uRFI97b1B82eLVOLV95H0FKUy5/3WjjMTiuLqog4BXhv2u8pnf2sKWrFeq41s+NImDCYHJPfxKQ
 nwbkNWGH2p9EV/GpYRMiJ4nJ+AhRwzEQ=
X-Received: by 2002:a1c:7512:0:b0:394:16ee:ab9b with SMTP id
 o18-20020a1c7512000000b0039416eeab9bmr9917223wmc.176.1651481339932; 
 Mon, 02 May 2022 01:48:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1HDOH0L0J59jWzQqe8OCc8OrGCpxEDekTc2b0ViBR9lVxUT3tRNZw5Yfr7Gkyc9Gu0hnOLg==
X-Received: by 2002:a1c:7512:0:b0:394:16ee:ab9b with SMTP id
 o18-20020a1c7512000000b0039416eeab9bmr9917168wmc.176.1651481339590; 
 Mon, 02 May 2022 01:48:59 -0700 (PDT)
Received: from minerva.. ([90.167.94.74]) by smtp.gmail.com with ESMTPSA id
 i14-20020adfa50e000000b0020c5253d8c6sm8032307wrb.18.2022.05.02.01.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 01:48:59 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Mon,  2 May 2022 10:48:27 +0200
Message-Id: <20220502084830.285639-1-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Mon, 02 May 2022 09:21:06 +0000
Subject: [Spice-devel] [PATCH 0/3] drm: Allow simpledrm to setup its
 emulated FB as firmware provided
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
Cc: Xinliang Liu <xinliang.liu@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jerome Brunet <jbrunet@baylibre.com>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, NXP Linux Team <linux-imx@nxp.com>,
 spice-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Alain Volmat <alain.volmat@foss.st.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed@lists.ozlabs.org, David Airlie <airlied@linux.ie>,
 virtualization@lists.linux-foundation.org,
 Mario Limonciello <mario.limonciello@amd.com>, Sam Ravnborg <sam@ravnborg.org>,
 Alexey Brodkin <abrodkin@synopsys.com>, Dave Airlie <airlied@redhat.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Maxime Ripard <mripard@kernel.org>, John Stultz <john.stultz@linaro.org>,
 linux-amlogic@lists.infradead.org, Evan Quan <evan.quan@amd.com>,
 Yong Wu <yong.wu@mediatek.com>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-renesas-soc@vger.kernel.org, Solomon Chiu <solomon.chiu@amd.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Hao Fang <fanghao11@huawei.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Joel Stanley <joel@jms.id.au>, Chia-I Wu <olvaffe@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alison Wang <alison.wang@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Tomi Valkeinen <tomba@kernel.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Tian Tao <tiantao6@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Emma Anholt <emma@anholt.net>, Liviu Dudau <liviu.dudau@arm.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Paul Cercueil <paul@crapouillou.net>, Nirmoy Das <nirmoy.das@amd.com>,
 Marek Vasut <marex@denx.de>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, linux-mediatek@lists.infradead.org,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Yannick Fertre <yannick.fertre@foss.st.com>, linux-mips@vger.kernel.org,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jyri Sarha <jyri.sarha@iki.fi>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello,

This series contain patches suggested by Thomas Zimmermannas a feedback for
"[RFC PATCH v4 00/11] Fix some race between sysfb device registration and
drivers probe" [0].

Since other changes in [0] were more controversial, I decided to just split
this part in a new patch-set and revisit the rest of the patches later.

Patch #1 is just a cleanup since when working on this noticed that some DRM
drivers were passing as preferred bits per pixel to drm_fbdev_generic_setup()
the value that is the default anyways.

Patch #2 renames the 'preferred_bpp' drm_fbdev_generic_setup() parameter to
'options', and make this a multi field parameter so that it can be extended
later to pass other options as well.

Patch #3 finally adds the new DRM_FB_FW option and makes simpledrm to use it
so that the registered framebuffer device is also marked as firmware provided.

[0]: https://lore.kernel.org/lkml/20220429084253.1085911-1-javierm@redhat.com/


Javier Martinez Canillas (3):
  drm: Remove superfluous arg when calling to drm_fbdev_generic_setup()
  drm/fb-helper: Rename preferred_bpp drm_fbdev_generic_setup()
    parameter
  drm: Allow simpledrm to setup its emulated FB as firmware provided

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c       |  6 +++--
 drivers/gpu/drm/arm/hdlcd_drv.c               |  2 +-
 drivers/gpu/drm/arm/malidp_drv.c              |  2 +-
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c       |  2 +-
 drivers/gpu/drm/ast/ast_drv.c                 |  2 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c  |  2 +-
 drivers/gpu/drm/drm_drv.c                     |  2 +-
 drivers/gpu/drm/drm_fb_helper.c               | 25 ++++++++++++++++---
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c     |  2 +-
 .../gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c   |  2 +-
 .../gpu/drm/hisilicon/kirin/kirin_drm_drv.c   |  2 +-
 drivers/gpu/drm/imx/dcss/dcss-kms.c           |  2 +-
 drivers/gpu/drm/imx/imx-drm-core.c            |  2 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c     |  2 +-
 drivers/gpu/drm/mcde/mcde_drv.c               |  2 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  2 +-
 drivers/gpu/drm/meson/meson_drv.c             |  2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c             |  2 +-
 drivers/gpu/drm/pl111/pl111_drv.c             |  2 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |  2 +-
 drivers/gpu/drm/rcar-du/rcar_du_drv.c         |  2 +-
 drivers/gpu/drm/sti/sti_drv.c                 |  2 +-
 drivers/gpu/drm/stm/drv.c                     |  2 +-
 drivers/gpu/drm/sun4i/sun4i_drv.c             |  2 +-
 drivers/gpu/drm/tidss/tidss_drv.c             |  2 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.c           |  2 +-
 drivers/gpu/drm/tiny/arcpgu.c                 |  2 +-
 drivers/gpu/drm/tiny/bochs.c                  |  2 +-
 drivers/gpu/drm/tiny/cirrus.c                 |  2 +-
 drivers/gpu/drm/tiny/simpledrm.c              |  2 +-
 drivers/gpu/drm/tve200/tve200_drv.c           |  2 +-
 drivers/gpu/drm/vboxvideo/vbox_drv.c          |  2 +-
 drivers/gpu/drm/vc4/vc4_drv.c                 |  2 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c          |  2 +-
 drivers/gpu/drm/xlnx/zynqmp_dpsub.c           |  2 +-
 include/drm/drm_fb_helper.h                   | 22 ++++++++++++++++
 36 files changed, 80 insertions(+), 39 deletions(-)

-- 
2.35.1

