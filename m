Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D18516D44
	for <lists+spice-devel@lfdr.de>; Mon,  2 May 2022 11:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A779410FE23;
	Mon,  2 May 2022 09:21:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E6310EC66
 for <spice-devel@lists.freedesktop.org>; Mon,  2 May 2022 08:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651481351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zqT+Zv/sTFZb4ORqIiaxu9+mW23ZhJ+5Iqax9Traq1U=;
 b=Af+9UBHvjC4VNWzAtJisktdpncPEYwQePXNjEaJoeMWVaBX9zV+Okxaya70otDklMUQ4UJ
 Q4LNGawZdbEHdgI/lrbYq+vYdFSLHL2EyZB37PMfmPJSmFmmGY9IPD6I4EnZYmVZPvoYkK
 ust2ll/wI6UpMneXQLpXbBoNpTiRffc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-665--kyn0fsmOx6wpEtMc1OhEw-1; Mon, 02 May 2022 04:49:10 -0400
X-MC-Unique: -kyn0fsmOx6wpEtMc1OhEw-1
Received: by mail-wm1-f72.google.com with SMTP id
 i131-20020a1c3b89000000b00393fbb0718bso8536232wma.0
 for <spice-devel@lists.freedesktop.org>; Mon, 02 May 2022 01:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zqT+Zv/sTFZb4ORqIiaxu9+mW23ZhJ+5Iqax9Traq1U=;
 b=eBgsxbqFYKQFFqQswYxPnke2rkxsqCQjM0H1DCAtEVB17p7ZdPbqdfSaoUU0GJMlrL
 ie8Hq9v2x+za4qDAr1oLvWNFWUQDYCPrqT18Px85VIczURy4oW97lFfw50T2RC2AoL/P
 66B54XIVdiG3ODO6rmUO2PeXO3IPzn7e3qNTu5mtTCpqrbOqsLLHrmmF+y0QM2LB/sjK
 M7mg/RhpylJL50r8sdljXiHDIni/Ye9tND4ppKpRakglJKRW7rBZE38qSMBUQdL2G98Z
 +vBU97xqdsvrZeJSyrbppQYVANNQ7Lg62jk7TG5OO7jeQ9WL7mticWcNjPSVs8K6bMzk
 Bnvg==
X-Gm-Message-State: AOAM532y3cL+ryGcSpFdeeEB55AQzOSk+E4ICvRMEVI8EWZImmpKBzMU
 9RUFmYHosk8W2BkENczPpL/r5xUHa/7MQhrsdraqLdcyRPzBCMRXINGYEYzumn+HMthy6dyYuCy
 BGW/AlI6F+oFp4Z6RvdZZ4RDGWIY9iGI=
X-Received: by 2002:a5d:4989:0:b0:20a:c907:2110 with SMTP id
 r9-20020a5d4989000000b0020ac9072110mr8621510wrq.476.1651481348712; 
 Mon, 02 May 2022 01:49:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5KEpKOF5xwqEHsDpgLM4OfRzNuQQfMdJfkLawAy7fhmgXpJxlDccWOfuSvNh7jIPl0aT+4A==
X-Received: by 2002:a5d:4989:0:b0:20a:c907:2110 with SMTP id
 r9-20020a5d4989000000b0020ac9072110mr8621438wrq.476.1651481348343; 
 Mon, 02 May 2022 01:49:08 -0700 (PDT)
Received: from minerva.. ([90.167.94.74]) by smtp.gmail.com with ESMTPSA id
 i14-20020adfa50e000000b0020c5253d8c6sm8032307wrb.18.2022.05.02.01.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 01:49:08 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Mon,  2 May 2022 10:48:29 +0200
Message-Id: <20220502084830.285639-3-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502084830.285639-1-javierm@redhat.com>
References: <20220502084830.285639-1-javierm@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Mon, 02 May 2022 09:21:06 +0000
Subject: [Spice-devel] [PATCH 2/3] drm/fb-helper: Rename preferred_bpp
 drm_fbdev_generic_setup() parameter
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Emma Anholt <emma@anholt.net>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 David Airlie <airlied@linux.ie>, spice-devel@lists.freedesktop.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Stefan Agner <stefan@agner.ch>, Gurchetan Singh <gurchetansingh@chromium.org>,
 Paul Cercueil <paul@crapouillou.net>, Gerd Hoffmann <kraxel@redhat.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Marek Vasut <marex@denx.de>, Hao Fang <fanghao11@huawei.com>,
 Brian Starkey <brian.starkey@arm.com>, linux-aspeed@lists.ozlabs.org,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Xinliang Liu <xinliang.liu@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Joel Stanley <joel@jms.id.au>, Dave Airlie <airlied@redhat.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 virtualization@lists.linux-foundation.org, Chia-I Wu <olvaffe@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Chen Feng <puck.chen@hisilicon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mips@vger.kernel.org,
 Sam Ravnborg <sam@ravnborg.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-mediatek@lists.infradead.org, John Stultz <john.stultz@linaro.org>,
 dri-devel@lists.freedesktop.org, Alain Volmat <alain.volmat@foss.st.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-amlogic@lists.infradead.org,
 Mario Limonciello <mario.limonciello@amd.com>, Evan Quan <evan.quan@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-sunxi@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomba@kernel.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yannick Fertre <yannick.fertre@foss.st.com>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-renesas-soc@vger.kernel.org, Solomon Chiu <solomon.chiu@amd.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lucas Stach <l.stach@pengutronix.de>, Jyri Sarha <jyri.sarha@iki.fi>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

By default the bits per pixel for the emulated framebuffer device is set
to dev->mode_config.preferred_depth, but some devices need another value.

Since this second parameter is only used by a few drivers, and to allow
drivers to use it for passing other configurations when registering the
fbdev, rename @preferred_bpp to @options and make it a multi-field param.

The DRM_FB_SET_OPTION() and DRM_FB_GET_OPTION() macros are provided for
drivers to set and get an option respectively. For now, only DRM_FB_BPP
option exists but other options would be added later.

Suggested-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c         |  6 ++++--
 drivers/gpu/drm/arm/hdlcd_drv.c                 |  2 +-
 drivers/gpu/drm/arm/malidp_drv.c                |  2 +-
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c         |  2 +-
 drivers/gpu/drm/ast/ast_drv.c                   |  2 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c    |  2 +-
 drivers/gpu/drm/drm_drv.c                       |  2 +-
 drivers/gpu/drm/drm_fb_helper.c                 | 16 ++++++++++++----
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c       |  2 +-
 drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c |  2 +-
 drivers/gpu/drm/imx/dcss/dcss-kms.c             |  2 +-
 drivers/gpu/drm/imx/imx-drm-core.c              |  2 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c       |  2 +-
 drivers/gpu/drm/mcde/mcde_drv.c                 |  2 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c          |  2 +-
 drivers/gpu/drm/meson/meson_drv.c               |  2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c               |  2 +-
 drivers/gpu/drm/pl111/pl111_drv.c               |  2 +-
 drivers/gpu/drm/qxl/qxl_drv.c                   |  2 +-
 drivers/gpu/drm/rcar-du/rcar_du_drv.c           |  2 +-
 drivers/gpu/drm/sti/sti_drv.c                   |  2 +-
 drivers/gpu/drm/stm/drv.c                       |  2 +-
 drivers/gpu/drm/sun4i/sun4i_drv.c               |  2 +-
 drivers/gpu/drm/tidss/tidss_drv.c               |  2 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.c             |  2 +-
 drivers/gpu/drm/tiny/arcpgu.c                   |  2 +-
 drivers/gpu/drm/tiny/bochs.c                    |  2 +-
 drivers/gpu/drm/tve200/tve200_drv.c             |  2 +-
 drivers/gpu/drm/vboxvideo/vbox_drv.c            |  2 +-
 drivers/gpu/drm/vc4/vc4_drv.c                   |  2 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c            |  2 +-
 drivers/gpu/drm/xlnx/zynqmp_dpsub.c             |  2 +-
 include/drm/drm_fb_helper.h                     | 12 ++++++++++++
 33 files changed, 58 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index b03663f42cc9..f5fae3838cdc 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -2118,9 +2118,11 @@ static int amdgpu_pci_probe(struct pci_dev *pdev,
 	    !list_empty(&adev_to_drm(adev)->mode_config.connector_list)) {
 		/* select 8 bpp console on low vram cards */
 		if (adev->gmc.real_vram_size <= (32*1024*1024))
-			drm_fbdev_generic_setup(adev_to_drm(adev), 8);
+			drm_fbdev_generic_setup(adev_to_drm(adev),
+						DRM_FB_SET_OPTION(DRM_FB_BPP, 8));
 		else
-			drm_fbdev_generic_setup(adev_to_drm(adev), 32);
+			drm_fbdev_generic_setup(adev_to_drm(adev),
+						DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 	}
 
 	ret = amdgpu_debugfs_init(adev);
diff --git a/drivers/gpu/drm/arm/hdlcd_drv.c b/drivers/gpu/drm/arm/hdlcd_drv.c
index e89ae0ec60eb..636b0e989398 100644
--- a/drivers/gpu/drm/arm/hdlcd_drv.c
+++ b/drivers/gpu/drm/arm/hdlcd_drv.c
@@ -321,7 +321,7 @@ static int hdlcd_drm_bind(struct device *dev)
 	if (ret)
 		goto err_register;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index d5aef21426cf..8f7c4f3136d5 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -863,7 +863,7 @@ static int malidp_bind(struct device *dev)
 	if (ret)
 		goto register_fail;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
index 7780b72de9e8..c16837fd1f8d 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
@@ -343,7 +343,7 @@ static int aspeed_gfx_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unload;
 
-	drm_fbdev_generic_setup(&priv->drm, 32);
+	drm_fbdev_generic_setup(&priv->drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 	return 0;
 
 err_unload:
diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_drv.c
index 7465c4f0156a..813e9af00983 100644
--- a/drivers/gpu/drm/ast/ast_drv.c
+++ b/drivers/gpu/drm/ast/ast_drv.c
@@ -126,7 +126,7 @@ static int ast_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		return ret;
 
-	drm_fbdev_generic_setup(dev, 32);
+	drm_fbdev_generic_setup(dev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 651e3c109360..e18dcd16ff8a 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -760,7 +760,7 @@ static int atmel_hlcdc_dc_drm_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unload;
 
-	drm_fbdev_generic_setup(ddev, 24);
+	drm_fbdev_generic_setup(ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 24));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 8214a0b1ab7f..6695937945a5 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -324,7 +324,7 @@ void drm_minor_release(struct drm_minor *minor)
  *		if (ret)
  *			return ret;
  *
- *		drm_fbdev_generic_setup(drm, 32);
+ *		drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
  *
  *		return 0;
  *	}
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index d265a73313c9..f626947bb9b9 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -2501,8 +2501,16 @@ static const struct drm_client_funcs drm_fbdev_client_funcs = {
 /**
  * drm_fbdev_generic_setup() - Setup generic fbdev emulation
  * @dev: DRM device
- * @preferred_bpp: Preferred bits per pixel for the device.
- *                 @dev->mode_config.preferred_depth is used if this is zero.
+ * @options: options for the registered framebuffer.
+ *
+ * The @options parameter is a multi-field parameter that can contain
+ * different options for the emulated framebuffer device registered.
+ *
+ * The options must be set using DRM_FB_SET_OPTION() and obtained using
+ * DRM_FB_GET_OPTION(). The options field are the following:
+ *
+ * * DRM_FB_BPP: bits per pixel for the device. If the field is not set,
+ *               @dev->mode_config.preferred_depth is used instead.
  *
  * This function sets up generic fbdev emulation for drivers that supports
  * dumb buffers with a virtual address and that can be mmap'ed.
@@ -2525,10 +2533,10 @@ static const struct drm_client_funcs drm_fbdev_client_funcs = {
  *
  * The fbdev is destroyed by drm_dev_unregister().
  */
-void drm_fbdev_generic_setup(struct drm_device *dev,
-			     unsigned int preferred_bpp)
+void drm_fbdev_generic_setup(struct drm_device *dev, unsigned int options)
 {
 	struct drm_fb_helper *fb_helper;
+	unsigned int preferred_bpp = DRM_FB_GET_OPTION(DRM_FB_BPP, options);
 	int ret;
 
 	drm_WARN(dev, !dev->registered, "Device has not been registered.\n");
diff --git a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c
index 7a503bf08d0f..7bd8129388f2 100644
--- a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c
+++ b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c
@@ -334,7 +334,7 @@ static int fsl_dcu_drm_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto put;
 
-	drm_fbdev_generic_setup(drm, legacyfb_depth);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, legacyfb_depth));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c
index 2af51df6dca7..90aa59b77d31 100644
--- a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c
+++ b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c
@@ -237,7 +237,7 @@ static int kirin_drm_bind(struct device *dev)
 	if (ret)
 		goto err_kms_cleanup;
 
-	drm_fbdev_generic_setup(drm_dev, 32);
+	drm_fbdev_generic_setup(drm_dev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/imx/dcss/dcss-kms.c b/drivers/gpu/drm/imx/dcss/dcss-kms.c
index 9b84df34a6a1..a4736ae85881 100644
--- a/drivers/gpu/drm/imx/dcss/dcss-kms.c
+++ b/drivers/gpu/drm/imx/dcss/dcss-kms.c
@@ -148,7 +148,7 @@ struct dcss_kms_dev *dcss_kms_attach(struct dcss_dev *dcss)
 	if (ret)
 		goto cleanup_crtc;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return kms;
 
diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index a57812ec36b1..4151f9b1b645 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -251,7 +251,7 @@ static int imx_drm_bind(struct device *dev)
 	if (ret)
 		goto err_poll_fini;
 
-	drm_fbdev_generic_setup(drm, legacyfb_depth);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, legacyfb_depth));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
index 8eb0ad501a7b..9726c901677c 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
@@ -1388,7 +1388,7 @@ static int ingenic_drm_bind(struct device *dev, bool has_components)
 		goto err_clk_notifier_unregister;
 	}
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index e601baa87e55..1382a818c66b 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -238,7 +238,7 @@ static int mcde_drm_bind(struct device *dev)
 	if (ret < 0)
 		goto unbind;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 247c6ff277ef..146f3f064e3e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -393,7 +393,7 @@ static int mtk_drm_bind(struct device *dev)
 	if (ret < 0)
 		goto err_deinit;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 1b70938cfd2c..76463b940349 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -350,7 +350,7 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	if (ret)
 		goto uninstall_irq;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 9d71c55a31c0..5e4c8e15eca7 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -357,7 +357,7 @@ static int mxsfb_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unload;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index 520301b405f1..b9d1762051c8 100644
--- a/drivers/gpu/drm/pl111/pl111_drv.c
+++ b/drivers/gpu/drm/pl111/pl111_drv.c
@@ -308,7 +308,7 @@ static int pl111_amba_probe(struct amba_device *amba_dev,
 	if (ret < 0)
 		goto dev_put;
 
-	drm_fbdev_generic_setup(drm, priv->variant->fb_bpp);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, priv->variant->fb_bpp));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
index 1cb6f0c224bb..fb7936bbdea8 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.c
+++ b/drivers/gpu/drm/qxl/qxl_drv.c
@@ -122,7 +122,7 @@ qxl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto modeset_cleanup;
 
-	drm_fbdev_generic_setup(&qdev->ddev, 32);
+	drm_fbdev_generic_setup(&qdev->ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 	return 0;
 
 modeset_cleanup:
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_drv.c b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
index 957ea97541d5..c2c1523c5c47 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_drv.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
@@ -681,7 +681,7 @@ static int rcar_du_probe(struct platform_device *pdev)
 
 	DRM_INFO("Device %s probed\n", dev_name(&pdev->dev));
 
-	drm_fbdev_generic_setup(&rcdu->ddev, 32);
+	drm_fbdev_generic_setup(&rcdu->ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/sti/sti_drv.c b/drivers/gpu/drm/sti/sti_drv.c
index d858209cf8de..7fa653b28233 100644
--- a/drivers/gpu/drm/sti/sti_drv.c
+++ b/drivers/gpu/drm/sti/sti_drv.c
@@ -200,7 +200,7 @@ static int sti_bind(struct device *dev)
 
 	drm_mode_config_reset(ddev);
 
-	drm_fbdev_generic_setup(ddev, 32);
+	drm_fbdev_generic_setup(ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
index 0da7cce2a1a2..36301d93e566 100644
--- a/drivers/gpu/drm/stm/drv.c
+++ b/drivers/gpu/drm/stm/drv.c
@@ -203,7 +203,7 @@ static int stm_drm_platform_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_put;
 
-	drm_fbdev_generic_setup(ddev, 16);
+	drm_fbdev_generic_setup(ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 16));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
index 275f7e4a03ae..2ec41525fe86 100644
--- a/drivers/gpu/drm/sun4i/sun4i_drv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
@@ -112,7 +112,7 @@ static int sun4i_drv_bind(struct device *dev)
 	if (ret)
 		goto finish_poll;
 
-	drm_fbdev_generic_setup(drm, 32);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 04cfff89ee51..83bcfdc6d654 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -180,7 +180,7 @@ static int tidss_probe(struct platform_device *pdev)
 		goto err_irq_uninstall;
 	}
 
-	drm_fbdev_generic_setup(ddev, 32);
+	drm_fbdev_generic_setup(ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	dev_dbg(dev, "%s done\n", __func__);
 
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
index eee3c447fbac..e342ea5031c8 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
@@ -384,7 +384,7 @@ static int tilcdc_init(const struct drm_driver *ddrv, struct device *dev)
 		goto init_failed;
 	priv->is_registered = true;
 
-	drm_fbdev_generic_setup(ddev, bpp);
+	drm_fbdev_generic_setup(ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, bpp));
 	return 0;
 
 init_failed:
diff --git a/drivers/gpu/drm/tiny/arcpgu.c b/drivers/gpu/drm/tiny/arcpgu.c
index f0fa3b15c341..7f291db460e9 100644
--- a/drivers/gpu/drm/tiny/arcpgu.c
+++ b/drivers/gpu/drm/tiny/arcpgu.c
@@ -392,7 +392,7 @@ static int arcpgu_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unload;
 
-	drm_fbdev_generic_setup(&arcpgu->drm, 16);
+	drm_fbdev_generic_setup(&arcpgu->drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 16));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/tiny/bochs.c b/drivers/gpu/drm/tiny/bochs.c
index ed971c8bb446..fc52d9e7d50e 100644
--- a/drivers/gpu/drm/tiny/bochs.c
+++ b/drivers/gpu/drm/tiny/bochs.c
@@ -663,7 +663,7 @@ static int bochs_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent
 	if (ret)
 		goto err_free_dev;
 
-	drm_fbdev_generic_setup(dev, 32);
+	drm_fbdev_generic_setup(dev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 	return ret;
 
 err_free_dev:
diff --git a/drivers/gpu/drm/tve200/tve200_drv.c b/drivers/gpu/drm/tve200/tve200_drv.c
index 6d9d2921abf4..737cebb655a0 100644
--- a/drivers/gpu/drm/tve200/tve200_drv.c
+++ b/drivers/gpu/drm/tve200/tve200_drv.c
@@ -226,7 +226,7 @@ static int tve200_probe(struct platform_device *pdev)
 	 * Passing in 16 here will make the RGB565 mode the default
 	 * Passing in 32 will use XRGB8888 mode
 	 */
-	drm_fbdev_generic_setup(drm, 16);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 16));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index f4f2bd79a7cb..fbe1f7368d53 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
@@ -79,7 +79,7 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto err_irq_fini;
 
-	drm_fbdev_generic_setup(&vbox->ddev, 32);
+	drm_fbdev_generic_setup(&vbox->ddev, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 162bc18e7497..ecd2b41b87b3 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -291,7 +291,7 @@ static int vc4_drm_bind(struct device *dev)
 	if (ret < 0)
 		goto unbind_all;
 
-	drm_fbdev_generic_setup(drm, 16);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 16));
 
 	return 0;
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.c b/drivers/gpu/drm/virtio/virtgpu_drv.c
index 5f25a8d15464..ef1e1b6e8cac 100644
--- a/drivers/gpu/drm/virtio/virtgpu_drv.c
+++ b/drivers/gpu/drm/virtio/virtgpu_drv.c
@@ -128,7 +128,7 @@ static int virtio_gpu_probe(struct virtio_device *vdev)
 	if (ret)
 		goto err_deinit;
 
-	drm_fbdev_generic_setup(vdev->priv, 32);
+	drm_fbdev_generic_setup(vdev->priv, DRM_FB_SET_OPTION(DRM_FB_BPP, 32));
 	return 0;
 
 err_deinit:
diff --git a/drivers/gpu/drm/xlnx/zynqmp_dpsub.c b/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
index 824b510e337b..2937e72d9fac 100644
--- a/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
+++ b/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
@@ -135,7 +135,7 @@ static int zynqmp_dpsub_drm_init(struct zynqmp_dpsub *dpsub)
 		goto err_poll_fini;
 
 	/* Initialize fbdev generic emulation. */
-	drm_fbdev_generic_setup(drm, 24);
+	drm_fbdev_generic_setup(drm, DRM_FB_SET_OPTION(DRM_FB_BPP, 24));
 
 	return 0;
 
diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
index 3af4624368d8..1da3ef76f499 100644
--- a/include/drm/drm_fb_helper.h
+++ b/include/drm/drm_fb_helper.h
@@ -35,6 +35,7 @@ struct drm_fb_helper;
 #include <drm/drm_client.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <linux/bitfield.h>
 #include <linux/kgdb.h>
 
 enum mode_set_atomic {
@@ -42,6 +43,17 @@ enum mode_set_atomic {
 	ENTER_ATOMIC_MODE_SET,
 };
 
+#define DRM_FB_BPP_MASK GENMASK(7, 0)
+
+/* Using the GNU statement expression extension */
+#define DRM_FB_SET_OPTION(option, value)			\
+	({							\
+		WARN_ON(!FIELD_FIT(option##_MASK, value));	\
+		FIELD_PREP(option##_MASK, value);		\
+	})
+
+#define DRM_FB_GET_OPTION(option, word) FIELD_GET(option##_MASK, word)
+
 /**
  * struct drm_fb_helper_surface_size - describes fbdev size and scanout surface size
  * @fb_width: fbdev width
-- 
2.35.1

