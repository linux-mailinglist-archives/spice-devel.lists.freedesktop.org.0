Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A879A31FD7C
	for <lists+spice-devel@lfdr.de>; Fri, 19 Feb 2021 17:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4F86EB7B;
	Fri, 19 Feb 2021 16:58:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0C66EB19;
 Fri, 19 Feb 2021 12:01:03 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 436A1580356;
 Fri, 19 Feb 2021 07:01:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 19 Feb 2021 07:01:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=gsYBe4GYTIg/I
 oKWuKpxjtAJ0Nft5Q3IY2ytw24sj/c=; b=SBnrVLLBm6p3+mfciAn4wEGLe+bcl
 NXDFlGhyRVXffEVqAS/hPhsbzT+f7bsWgBlZL9T5hFes8YqpoPPouYk0uTaATSMM
 tTW//sVPkSDmRmpNU01qQJ/IS0i1V4R3py3wKqYEQJnIzJ81KSAYpaxphBMmPeYa
 KNnc+N75xF+Hld6Sat99142WdYH4nMcU6FEnzYi8x23nfR5SDUw1kq5JqXpPpXMe
 RC8ecGhCuNd4Lqn+JOkxYgTot08yH17gLceVNNaAzoswOzYhjstHfOOUrup1pzZV
 zQNfYhQcaJgastDHS1fawnlwiK6YHl2bPc8oq9MeRwPNvQ/y6ZKazG+VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=gsYBe4GYTIg/IoKWuKpxjtAJ0Nft5Q3IY2ytw24sj/c=; b=bksYTBtV
 Lf11cRu7e6Z3gkZYcutu08d3iso3QsLb8dfrRnEI2s8UDwQBSoWZU18R8TGnmybM
 YVNrwcJX0gkW55WCeKJSqKHGhcpu59VN7RVIEgeToPfA8OWYiiTTc3wToxJl3P7G
 ej6a2E1bJvJMGOxldcuNuCLVdTwnyAdnfYZmGT0uy2iYcDrzeLM0lYFiPYpoFK2A
 WZKtLViRTCTielRbTFHUJw1cFgnkJ0Efp1C3CnPakcJ5RvkkQkEcT3XBDMEaAGn+
 jahPuAkWngoQLqglBj8EWXBEHPfmcHBZm+BkpuMoks80QykMsP++72dQZRIDSGPI
 LqTGwS4qMH9Ryg==
X-ME-Sender: <xms:fqgvYMmXd11p83XNIvyZrAjD7iB-N1EqH5IiqfjwmpWumfyxCDz4pw>
 <xme:fqgvYL1SjMGUqlgAUepZGUcM627O-dzL6gPm2ZilMouYAbVQA-GUOcQPqPCOpOYGq
 c-8xp6BbmNubnEAXaE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fqgvYKpgsZ72wK9ki5Gj91zkfWdrdr0V92AWwJDB5bWQy5oZ8ItQpg>
 <xmx:fqgvYIlQ-rvzdem_DP0tOpXjnu9yIOdckk3ynYLiGgZXmgdfl_JDrg>
 <xmx:fqgvYK0kfzZKNd2pCQF0buEu9qiGI70v065QZDKxonG8kWACNPGzHA>
 <xmx:f6gvYGO2QXjTh8pQHCw-cAgNkS66MBLmItEFj99g-7k3M1pdF-thPw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 122821080057;
 Fri, 19 Feb 2021 07:01:02 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <maxime@cerno.tech>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Date: Fri, 19 Feb 2021 13:00:29 +0100
Message-Id: <20210219120032.260676-9-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210219120032.260676-1-maxime@cerno.tech>
References: <20210219120032.260676-1-maxime@cerno.tech>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 19 Feb 2021 16:58:55 +0000
Subject: [Spice-devel] [PATCH v3 09/11] drm/atomic: Pass the full state to
 planes atomic disable and update
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Xinliang Liu <xinliang.liu@linaro.org>, dri-devel@lists.freedesktop.org,
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jerome Brunet <jbrunet@baylibre.com>,
 linux-samsung-soc@vger.kernel.org, Vincent Abriou <vincent.abriou@st.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Roland Scheidegger <sroland@vmware.com>,
 Inki Dae <inki.dae@samsung.com>, Sean Paul <sean@poorly.run>,
 Hyun Kwon <hyun.kwon@xilinx.com>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 freedreno@lists.freedesktop.org, Zack Rusin <zackr@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Edmund Dea <edmund.j.dea@intel.com>, virtualization@lists.linux-foundation.org,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Dave Airlie <airlied@redhat.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 John Stultz <john.stultz@linaro.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, Brian Starkey <brian.starkey@arm.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 Melissa Wen <melissa.srw@gmail.com>, linux-tegra@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alison Wang <alison.wang@nxp.com>, spice-devel@lists.freedesktop.org,
 Tomi Valkeinen <tomba@kernel.org>, Philippe Cornu <philippe.cornu@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Tian Tao <tiantao6@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marex@denx.de>,
 linux-renesas-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Russell King <linux@armlinux.org.uk>, Daniel Vetter <daniel@ffwll.ch>,
 Hans de Goede <hdegoede@redhat.com>, linux-mediatek@lists.infradead.org,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-mips@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jyri Sarha <jyri.sarha@iki.fi>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The current atomic helpers have either their object state being passed as
an argument or the full atomic state.

The former is the pattern that was done at first, before switching to the
latter for new hooks or when it was needed.

Let's convert the remaining helpers to provide a consistent interface,
this time with the planes atomic_update and atomic_disable.

The conversion was done using the coccinelle script below, built tested on
all the drivers.

@@
identifier plane, plane_state;
symbol state;
@@

 struct drm_plane_helper_funcs {
 	...
	void (*atomic_update)(struct drm_plane *plane,
-			      struct drm_plane_state *plane_state);
+			      struct drm_atomic_state *state);
 	...
 }

@@
identifier plane, plane_state;
symbol state;
@@

 struct drm_plane_helper_funcs {
	...
	void (*atomic_disable)(struct drm_plane *plane,
-			       struct drm_plane_state *plane_state);
+			       struct drm_atomic_state *state);
	...
 }

@ plane_atomic_func @
identifier helpers;
identifier func;
@@

(
 static const struct drm_plane_helper_funcs helpers = {
 	...,
 	.atomic_update = func,
	...,
 };
|
 static const struct drm_plane_helper_funcs helpers = {
 	...,
 	.atomic_disable = func,
	...,
 };
)

@@
struct drm_plane_helper_funcs *FUNCS;
identifier f;
identifier crtc_state;
identifier plane, plane_state, state;
expression e;
@@

 f(struct drm_crtc_state *crtc_state)
 {
 	...
 	struct drm_atomic_state *state = e;
 	<+...
(
-	FUNCS->atomic_disable(plane, plane_state)
+	FUNCS->atomic_disable(plane, state)
|
-	FUNCS->atomic_update(plane, plane_state)
+	FUNCS->atomic_update(plane, state)
)
 	...+>
 }

@@
identifier plane_atomic_func.func;
identifier plane;
symbol state;
@@

 func(struct drm_plane *plane,
-    struct drm_plane_state *state)
+    struct drm_plane_state *old_plane_state)
 {
	<...
-	state
+	old_plane_state
	...>
 }

@ ignores_old_state @
identifier plane_atomic_func.func;
identifier plane, old_state;
@@

 func(struct drm_plane *plane, struct drm_plane_state *old_state)
 {
	... when != old_state
 }

@ adds_old_state depends on plane_atomic_func && !ignores_old_state @
identifier plane_atomic_func.func;
identifier plane, plane_state;
@@

 func(struct drm_plane *plane, struct drm_plane_state *plane_state)
 {
+	struct drm_plane_state *plane_state = drm_atomic_get_old_plane_state(state, plane);
 	...
 }

@ depends on plane_atomic_func @
identifier plane_atomic_func.func;
identifier plane, plane_state;
@@

 func(struct drm_plane *plane,
-     struct drm_plane_state *plane_state
+     struct drm_atomic_state *state
     )
 { ... }

@ include depends on adds_old_state @
@@

 #include <drm/drm_atomic.h>

@ no_include depends on !include && adds_old_state @
@@

+ #include <drm/drm_atomic.h>
  #include <drm/...>

@@
identifier plane_atomic_func.func;
identifier plane, state;
identifier plane_state;
@@

 func(struct drm_plane *plane, struct drm_atomic_state *state) {
 	...
 	struct drm_plane_state *plane_state = drm_atomic_get_old_plane_state(state, plane);
 	<+...
-	plane_state->state
+	state
 	...+>
 }

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Reintroduce the old_plane_state check in zynqmp_disp_crtc_atomic_disable
---
 drivers/gpu/drm/arc/arcpgu_crtc.c                 |  2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_plane.c |  2 +-
 drivers/gpu/drm/arm/hdlcd_crtc.c                  |  2 +-
 drivers/gpu/drm/arm/malidp_planes.c               |  6 ++++--
 drivers/gpu/drm/armada/armada_overlay.c           |  8 ++++++--
 drivers/gpu/drm/armada/armada_plane.c             |  8 ++++++--
 drivers/gpu/drm/ast/ast_mode.c                    | 12 ++++++++----
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c   |  6 +++---
 drivers/gpu/drm/drm_atomic_helper.c               |  8 ++++----
 drivers/gpu/drm/drm_simple_kms_helper.c           |  4 +++-
 drivers/gpu/drm/exynos/exynos_drm_plane.c         |  6 ++++--
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c       |  4 ++--
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c    |  2 +-
 drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c   |  4 ++--
 drivers/gpu/drm/imx/dcss/dcss-plane.c             |  6 ++++--
 drivers/gpu/drm/imx/ipuv3-plane.c                 |  6 ++++--
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c         |  4 ++--
 drivers/gpu/drm/ingenic/ingenic-ipu.c             |  4 ++--
 drivers/gpu/drm/kmb/kmb_plane.c                   |  8 +++++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c           |  4 ++--
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h           |  2 +-
 drivers/gpu/drm/mediatek/mtk_drm_plane.c          |  8 ++++----
 drivers/gpu/drm/meson/meson_overlay.c             |  4 ++--
 drivers/gpu/drm/meson/meson_plane.c               |  4 ++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c          |  2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c         |  7 +++----
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h         |  2 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c        |  2 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c        |  2 +-
 drivers/gpu/drm/mxsfb/mxsfb_kms.c                 |  6 ++++--
 drivers/gpu/drm/omapdrm/omap_plane.c              |  4 ++--
 drivers/gpu/drm/qxl/qxl_display.c                 | 12 ++++++++----
 drivers/gpu/drm/rcar-du/rcar_du_plane.c           |  4 +++-
 drivers/gpu/drm/rcar-du/rcar_du_vsp.c             |  4 +++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c       | 12 ++++++++----
 drivers/gpu/drm/sti/sti_cursor.c                  |  6 ++++--
 drivers/gpu/drm/sti/sti_gdp.c                     |  8 ++++++--
 drivers/gpu/drm/sti/sti_hqvdp.c                   |  8 ++++++--
 drivers/gpu/drm/stm/ltdc.c                        |  6 ++++--
 drivers/gpu/drm/sun4i/sun4i_layer.c               |  7 +++++--
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c            |  8 ++++++--
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c            |  8 ++++++--
 drivers/gpu/drm/tegra/dc.c                        | 14 +++++++++-----
 drivers/gpu/drm/tegra/hub.c                       |  8 +++++---
 drivers/gpu/drm/tidss/tidss_plane.c               |  4 ++--
 drivers/gpu/drm/tilcdc/tilcdc_plane.c             |  2 +-
 drivers/gpu/drm/vboxvideo/vbox_mode.c             | 14 ++++++++++----
 drivers/gpu/drm/vc4/vc4_plane.c                   |  2 +-
 drivers/gpu/drm/virtio/virtgpu_plane.c            |  8 ++++++--
 drivers/gpu/drm/vkms/vkms_plane.c                 |  2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c               |  7 +++++--
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.h               |  2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c               |  4 +++-
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c              |  4 +++-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c              |  4 +++-
 drivers/gpu/drm/xlnx/zynqmp_disp.c                | 15 ++++++++-------
 drivers/gpu/drm/zte/zx_plane.c                    |  8 +++++---
 include/drm/drm_modeset_helper_vtables.h          |  4 ++--
 58 files changed, 211 insertions(+), 123 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
index 2cea17a96d5c..b185452d5542 100644
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
@@ -145,7 +145,7 @@ static const struct drm_crtc_helper_funcs arc_pgu_crtc_helper_funcs = {
 };
 
 static void arc_pgu_plane_atomic_update(struct drm_plane *plane,
-					struct drm_plane_state *state)
+					struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_plane_state = plane->state;
 	struct arcpgu_drm_private *arcpgu;
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_plane.c b/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
index 13582c174bbb..d63d83800a8a 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
@@ -116,7 +116,7 @@ komeda_plane_atomic_check(struct drm_plane *plane,
  */
 static void
 komeda_plane_atomic_update(struct drm_plane *plane,
-			   struct drm_plane_state *old_state)
+			   struct drm_atomic_state *state)
 {
 }
 
diff --git a/drivers/gpu/drm/arm/hdlcd_crtc.c b/drivers/gpu/drm/arm/hdlcd_crtc.c
index 3f050a52e07a..2500bf189420 100644
--- a/drivers/gpu/drm/arm/hdlcd_crtc.c
+++ b/drivers/gpu/drm/arm/hdlcd_crtc.c
@@ -260,7 +260,7 @@ static int hdlcd_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void hdlcd_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_plane_state = plane->state;
 	struct drm_framebuffer *fb = new_plane_state->fb;
diff --git a/drivers/gpu/drm/arm/malidp_planes.c b/drivers/gpu/drm/arm/malidp_planes.c
index 646b27a42452..1cb207bb8dcd 100644
--- a/drivers/gpu/drm/arm/malidp_planes.c
+++ b/drivers/gpu/drm/arm/malidp_planes.c
@@ -791,8 +791,10 @@ static void malidp_de_set_plane_afbc(struct drm_plane *plane)
 }
 
 static void malidp_de_plane_update(struct drm_plane *plane,
-				   struct drm_plane_state *old_state)
+				   struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct malidp_plane *mp;
 	struct malidp_plane_state *ms = to_malidp_plane_state(plane->state);
 	struct drm_plane_state *new_state = plane->state;
@@ -909,7 +911,7 @@ static void malidp_de_plane_update(struct drm_plane *plane,
 }
 
 static void malidp_de_plane_disable(struct drm_plane *plane,
-				    struct drm_plane_state *state)
+				    struct drm_atomic_state *state)
 {
 	struct malidp_plane *mp = to_malidp_plane(plane);
 
diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index f5e75c96b476..393e4ea841f9 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -66,8 +66,10 @@ static inline u32 armada_csc(struct drm_plane_state *state)
 
 /* === Plane support === */
 static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
-	struct drm_plane_state *old_state)
+	struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct armada_crtc *dcrtc;
 	struct armada_regs *regs;
@@ -214,8 +216,10 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void armada_drm_overlay_plane_atomic_disable(struct drm_plane *plane,
-	struct drm_plane_state *old_state)
+	struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct armada_crtc *dcrtc;
 	struct armada_regs *regs;
 	unsigned int idx = 0;
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 3be7b3cfd251..31d312d7ceef 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -161,8 +161,10 @@ int armada_drm_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void armada_drm_primary_plane_atomic_update(struct drm_plane *plane,
-	struct drm_plane_state *old_state)
+	struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct armada_crtc *dcrtc;
 	struct armada_regs *regs;
@@ -248,8 +250,10 @@ static void armada_drm_primary_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void armada_drm_primary_plane_atomic_disable(struct drm_plane *plane,
-	struct drm_plane_state *old_state)
+	struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct armada_crtc *dcrtc;
 	struct armada_regs *regs;
 	unsigned int idx = 0;
diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index 94950e0e338a..61815eeb5157 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -569,8 +569,10 @@ static int ast_primary_plane_helper_atomic_check(struct drm_plane *plane,
 
 static void
 ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_device *dev = plane->dev;
 	struct ast_private *ast = to_ast_private(dev);
 	struct drm_plane_state *new_state = plane->state;
@@ -601,7 +603,7 @@ ast_primary_plane_helper_atomic_update(struct drm_plane *plane,
 
 static void
 ast_primary_plane_helper_atomic_disable(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
 	struct ast_private *ast = to_ast_private(plane->dev);
 
@@ -790,9 +792,11 @@ static int ast_cursor_plane_helper_atomic_check(struct drm_plane *plane,
 
 static void
 ast_cursor_plane_helper_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct ast_cursor_plane *ast_cursor_plane = to_ast_cursor_plane(plane);
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(new_state);
 	struct drm_framebuffer *fb = new_state->fb;
@@ -860,7 +864,7 @@ ast_cursor_plane_helper_atomic_update(struct drm_plane *plane,
 
 static void
 ast_cursor_plane_helper_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct ast_private *ast = to_ast_private(plane->dev);
 
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index cff52098e087..2c6d71faa268 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -712,7 +712,7 @@ static int atmel_hlcdc_plane_atomic_check(struct drm_plane *p,
 }
 
 static void atmel_hlcdc_plane_atomic_disable(struct drm_plane *p,
-					     struct drm_plane_state *old_state)
+					     struct drm_atomic_state *state)
 {
 	struct atmel_hlcdc_plane *plane = drm_plane_to_atmel_hlcdc_plane(p);
 
@@ -731,7 +731,7 @@ static void atmel_hlcdc_plane_atomic_disable(struct drm_plane *p,
 }
 
 static void atmel_hlcdc_plane_atomic_update(struct drm_plane *p,
-					    struct drm_plane_state *old_s)
+					    struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_s = p->state;
 	struct atmel_hlcdc_plane *plane = drm_plane_to_atmel_hlcdc_plane(p);
@@ -743,7 +743,7 @@ static void atmel_hlcdc_plane_atomic_update(struct drm_plane *p,
 		return;
 
 	if (!hstate->base.visible) {
-		atmel_hlcdc_plane_atomic_disable(p, old_s);
+		atmel_hlcdc_plane_atomic_disable(p, state);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index c06bd5f43e61..1a0ddcf104ac 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -2528,9 +2528,9 @@ void drm_atomic_helper_commit_planes(struct drm_device *dev,
 			    no_disable)
 				continue;
 
-			funcs->atomic_disable(plane, old_plane_state);
+			funcs->atomic_disable(plane, old_state);
 		} else if (new_plane_state->crtc || disabling) {
-			funcs->atomic_update(plane, old_plane_state);
+			funcs->atomic_update(plane, old_state);
 		}
 	}
 
@@ -2602,10 +2602,10 @@ drm_atomic_helper_commit_planes_on_crtc(struct drm_crtc_state *old_crtc_state)
 
 		if (drm_atomic_plane_disabling(old_plane_state, new_plane_state) &&
 		    plane_funcs->atomic_disable)
-			plane_funcs->atomic_disable(plane, old_plane_state);
+			plane_funcs->atomic_disable(plane, old_state);
 		else if (new_plane_state->crtc ||
 			 drm_atomic_plane_disabling(old_plane_state, new_plane_state))
-			plane_funcs->atomic_update(plane, old_plane_state);
+			plane_funcs->atomic_update(plane, old_state);
 	}
 
 	if (crtc_funcs && crtc_funcs->atomic_flush)
diff --git a/drivers/gpu/drm/drm_simple_kms_helper.c b/drivers/gpu/drm/drm_simple_kms_helper.c
index 7f3d90e776a3..0b095a313c44 100644
--- a/drivers/gpu/drm/drm_simple_kms_helper.c
+++ b/drivers/gpu/drm/drm_simple_kms_helper.c
@@ -206,8 +206,10 @@ static int drm_simple_kms_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void drm_simple_kms_plane_atomic_update(struct drm_plane *plane,
-					struct drm_plane_state *old_pstate)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_pstate = drm_atomic_get_old_plane_state(state,
+									    plane);
 	struct drm_simple_display_pipe *pipe;
 
 	pipe = container_of(plane, struct drm_simple_display_pipe, plane);
diff --git a/drivers/gpu/drm/exynos/exynos_drm_plane.c b/drivers/gpu/drm/exynos/exynos_drm_plane.c
index 673f8a1d9010..c0f733e6ed9e 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_plane.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_plane.c
@@ -252,7 +252,7 @@ static int exynos_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void exynos_plane_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(new_state->crtc);
@@ -266,8 +266,10 @@ static void exynos_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void exynos_plane_atomic_disable(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct exynos_drm_plane *exynos_plane = to_exynos_plane(plane);
 	struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(old_state->crtc);
 
diff --git a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c
index 4272e121a185..d9efa6d1b2d4 100644
--- a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c
+++ b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c
@@ -60,7 +60,7 @@ static int fsl_dcu_drm_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void fsl_dcu_drm_plane_atomic_disable(struct drm_plane *plane,
-					     struct drm_plane_state *old_state)
+					     struct drm_atomic_state *state)
 {
 	struct fsl_dcu_drm_device *fsl_dev = plane->dev->dev_private;
 	unsigned int value;
@@ -76,7 +76,7 @@ static void fsl_dcu_drm_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static void fsl_dcu_drm_plane_atomic_update(struct drm_plane *plane,
-					    struct drm_plane_state *old_state)
+					    struct drm_atomic_state *state)
 
 {
 	struct fsl_dcu_drm_device *fsl_dev = plane->dev->dev_private;
diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
index a4b54e841c76..4f643fbc68fb 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
@@ -99,7 +99,7 @@ static int hibmc_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void hibmc_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	u32 reg;
diff --git a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
index 19416d9be46b..834fd101c3ba 100644
--- a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
+++ b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
@@ -804,7 +804,7 @@ static int ade_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void ade_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct kirin_plane *kplane = to_kirin_plane(plane);
@@ -817,7 +817,7 @@ static void ade_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void ade_plane_atomic_disable(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct kirin_plane *kplane = to_kirin_plane(plane);
 
diff --git a/drivers/gpu/drm/imx/dcss/dcss-plane.c b/drivers/gpu/drm/imx/dcss/dcss-plane.c
index 06ecfff8d3c3..d6bc9fb71756 100644
--- a/drivers/gpu/drm/imx/dcss/dcss-plane.c
+++ b/drivers/gpu/drm/imx/dcss/dcss-plane.c
@@ -264,8 +264,10 @@ static bool dcss_plane_needs_setup(struct drm_plane_state *state,
 }
 
 static void dcss_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct dcss_plane *dcss_plane = to_dcss_plane(plane);
 	struct dcss_dev *dcss = plane->dev->dev_private;
@@ -346,7 +348,7 @@ static void dcss_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void dcss_plane_atomic_disable(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct dcss_plane *dcss_plane = to_dcss_plane(plane);
 	struct dcss_dev *dcss = plane->dev->dev_private;
diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
index 0dd10aec8194..7b0714061849 100644
--- a/drivers/gpu/drm/imx/ipuv3-plane.c
+++ b/drivers/gpu/drm/imx/ipuv3-plane.c
@@ -494,7 +494,7 @@ static int ipu_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void ipu_plane_atomic_disable(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct ipu_plane *ipu_plane = to_ipu_plane(plane);
 
@@ -539,8 +539,10 @@ static void ipu_calculate_bursts(u32 width, u32 cpp, u32 stride,
 }
 
 static void ipu_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct ipu_plane *ipu_plane = to_ipu_plane(plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct ipu_plane_state *ipu_state = to_ipu_plane_state(new_state);
diff --git a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
index 1a336e922dc7..85c371d105e5 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
@@ -443,7 +443,7 @@ void ingenic_drm_plane_disable(struct device *dev, struct drm_plane *plane)
 }
 
 static void ingenic_drm_plane_atomic_disable(struct drm_plane *plane,
-					     struct drm_plane_state *old_state)
+					     struct drm_atomic_state *state)
 {
 	struct ingenic_drm *priv = drm_device_get_priv(plane->dev);
 
@@ -541,7 +541,7 @@ static void ingenic_drm_update_palette(struct ingenic_drm *priv,
 }
 
 static void ingenic_drm_plane_atomic_update(struct drm_plane *plane,
-					    struct drm_plane_state *oldstate)
+					    struct drm_atomic_state *state)
 {
 	struct ingenic_drm *priv = drm_device_get_priv(plane->dev);
 	struct drm_plane_state *newstate = plane->state;
diff --git a/drivers/gpu/drm/ingenic/ingenic-ipu.c b/drivers/gpu/drm/ingenic/ingenic-ipu.c
index bc8d6931cc3a..7716bb211d7e 100644
--- a/drivers/gpu/drm/ingenic/ingenic-ipu.c
+++ b/drivers/gpu/drm/ingenic/ingenic-ipu.c
@@ -282,7 +282,7 @@ static inline bool osd_changed(struct drm_plane_state *state,
 }
 
 static void ingenic_ipu_plane_atomic_update(struct drm_plane *plane,
-					    struct drm_plane_state *oldstate)
+					    struct drm_atomic_state *state)
 {
 	struct ingenic_ipu *ipu = plane_to_ingenic_ipu(plane);
 	struct drm_plane_state *newstate = plane->state;
@@ -595,7 +595,7 @@ static int ingenic_ipu_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void ingenic_ipu_plane_atomic_disable(struct drm_plane *plane,
-					     struct drm_plane_state *old_state)
+					     struct drm_atomic_state *state)
 {
 	struct ingenic_ipu *ipu = plane_to_ingenic_ipu(plane);
 
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 05e1a7a2c075..f837962474b1 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -110,7 +110,7 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void kmb_plane_atomic_disable(struct drm_plane *plane,
-				     struct drm_plane_state *state)
+				     struct drm_atomic_state *state)
 {
 	struct kmb_plane *kmb_plane = to_kmb_plane(plane);
 	int plane_id = kmb_plane->id;
@@ -278,8 +278,10 @@ static void config_csc(struct kmb_drm_private *kmb, int plane_id)
 }
 
 static void kmb_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *state)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state,
+										 plane);
 	struct drm_plane_state *new_plane_state = plane->state;
 	struct drm_framebuffer *fb;
 	struct kmb_drm_private *kmb;
@@ -294,7 +296,7 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	int num_planes;
 	static dma_addr_t addr[MAX_SUB_PLANES];
 
-	if (!plane || !new_plane_state || !state)
+	if (!plane || !new_plane_state || !old_plane_state)
 		return;
 
 	fb = new_plane_state->fb;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 584dc26affc1..70ded25fb92c 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -506,7 +506,7 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 }
 
 void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
-			       struct drm_plane_state *new_state)
+			       struct drm_atomic_state *state)
 {
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	const struct drm_plane_helper_funcs *plane_helper_funcs =
@@ -515,7 +515,7 @@ void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
 	if (!mtk_crtc->enabled)
 		return;
 
-	plane_helper_funcs->atomic_update(plane, new_state);
+	plane_helper_funcs->atomic_update(plane, state);
 	mtk_drm_crtc_hw_config(mtk_crtc);
 }
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index a2b4677a451c..de0479cd1e72 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -22,6 +22,6 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			     struct mtk_plane_state *state);
 void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
-			       struct drm_plane_state *plane_state);
+			       struct drm_atomic_state *plane_state);
 
 #endif /* MTK_DRM_CRTC_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 6ae24058ec35..7f876b6c9615 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -128,7 +128,7 @@ static void mtk_plane_atomic_async_update(struct drm_plane *plane,
 	swap(plane->state->fb, new_state->fb);
 	new_plane_state->pending.async_dirty = true;
 
-	mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
+	mtk_drm_crtc_async_update(new_state->crtc, plane, state);
 }
 
 static const struct drm_plane_funcs mtk_plane_funcs = {
@@ -173,7 +173,7 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void mtk_plane_atomic_disable(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct mtk_plane_state *mtk_plane_state = to_mtk_plane_state(new_state);
@@ -183,7 +183,7 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static void mtk_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct mtk_plane_state *mtk_plane_state = to_mtk_plane_state(new_state);
@@ -198,7 +198,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 		return;
 
 	if (!new_state->visible) {
-		mtk_plane_atomic_disable(plane, old_state);
+		mtk_plane_atomic_disable(plane, state);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 902b5711a2b8..4b12a53e27c8 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -468,7 +468,7 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 }
 
 static void meson_overlay_atomic_update(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
 	struct meson_overlay *meson_overlay = to_meson_overlay(plane);
 	struct drm_plane_state *new_state = plane->state;
@@ -721,7 +721,7 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 }
 
 static void meson_overlay_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct meson_overlay *meson_overlay = to_meson_overlay(plane);
 	struct meson_drm *priv = meson_overlay->priv;
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index c2df7eca6808..78bd3e9be3bf 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -130,7 +130,7 @@ static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
 }
 
 static void meson_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct meson_plane *meson_plane = to_meson_plane(plane);
 	struct drm_plane_state *new_state = plane->state;
@@ -395,7 +395,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void meson_plane_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct meson_plane *meson_plane = to_meson_plane(plane);
 	struct meson_drm *priv = meson_plane->priv;
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index ea9d73983d13..9607a7644d4b 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -574,7 +574,7 @@ static void dpu_crtc_atomic_flush(struct drm_crtc *crtc,
 	 * of those planes explicitly here prior to plane flush.
 	 */
 	drm_atomic_crtc_for_each_plane(plane, crtc)
-		dpu_plane_restore(plane);
+		dpu_plane_restore(plane, state);
 
 	/* update performance setting before crtc kickoff */
 	dpu_core_perf_crtc_update(crtc, 1, false);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
index 82a69d2cf20d..31071f9e21d7 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
@@ -1241,7 +1241,7 @@ static void _dpu_plane_atomic_disable(struct drm_plane *plane)
 }
 
 static void dpu_plane_atomic_update(struct drm_plane *plane,
-				struct drm_plane_state *old_state)
+				struct drm_atomic_state *state)
 {
 	struct dpu_plane *pdpu = to_dpu_plane(plane);
 	struct drm_plane_state *new_state = plane->state;
@@ -1257,7 +1257,7 @@ static void dpu_plane_atomic_update(struct drm_plane *plane,
 	}
 }
 
-void dpu_plane_restore(struct drm_plane *plane)
+void dpu_plane_restore(struct drm_plane *plane, struct drm_atomic_state *state)
 {
 	struct dpu_plane *pdpu;
 
@@ -1270,8 +1270,7 @@ void dpu_plane_restore(struct drm_plane *plane)
 
 	DPU_DEBUG_PLANE(pdpu, "\n");
 
-	/* last plane state is same as current state */
-	dpu_plane_atomic_update(plane, plane->state);
+	dpu_plane_atomic_update(plane, state);
 }
 
 static void dpu_plane_destroy(struct drm_plane *plane)
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h
index 13a983fa8213..03b6365a750c 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h
@@ -88,7 +88,7 @@ void dpu_plane_get_ctl_flush(struct drm_plane *plane, struct dpu_hw_ctl *ctl,
  * dpu_plane_restore - restore hw state if previously power collapsed
  * @plane: Pointer to drm plane structure
  */
-void dpu_plane_restore(struct drm_plane *plane);
+void dpu_plane_restore(struct drm_plane *plane, struct drm_atomic_state *state);
 
 /**
  * dpu_plane_flush - final plane operations before commit flush
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
index b4c74c1047ba..5d78bce980a7 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
@@ -112,7 +112,7 @@ static int mdp4_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void mdp4_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	int ret;
diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
index da1cc66f9f49..4dc82a0c12e9 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
@@ -426,7 +426,7 @@ static int mdp5_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void mdp5_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_kms.c b/drivers/gpu/drm/mxsfb/mxsfb_kms.c
index 6b19a84340e3..980b567043ba 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_kms.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_kms.c
@@ -419,7 +419,7 @@ static int mxsfb_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void mxsfb_plane_primary_atomic_update(struct drm_plane *plane,
-					      struct drm_plane_state *old_pstate)
+					      struct drm_atomic_state *state)
 {
 	struct mxsfb_drm_private *mxsfb = to_mxsfb_drm_private(plane->dev);
 	dma_addr_t paddr;
@@ -430,8 +430,10 @@ static void mxsfb_plane_primary_atomic_update(struct drm_plane *plane,
 }
 
 static void mxsfb_plane_overlay_atomic_update(struct drm_plane *plane,
-					      struct drm_plane_state *old_pstate)
+					      struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_pstate = drm_atomic_get_old_plane_state(state,
+									    plane);
 	struct mxsfb_drm_private *mxsfb = to_mxsfb_drm_private(plane->dev);
 	struct drm_plane_state *new_pstate = plane->state;
 	dma_addr_t paddr;
diff --git a/drivers/gpu/drm/omapdrm/omap_plane.c b/drivers/gpu/drm/omapdrm/omap_plane.c
index d52124adedf7..d7c735dba3e1 100644
--- a/drivers/gpu/drm/omapdrm/omap_plane.c
+++ b/drivers/gpu/drm/omapdrm/omap_plane.c
@@ -40,7 +40,7 @@ static void omap_plane_cleanup_fb(struct drm_plane *plane,
 }
 
 static void omap_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct omap_drm_private *priv = plane->dev->dev_private;
 	struct omap_plane *omap_plane = to_omap_plane(plane);
@@ -87,7 +87,7 @@ static void omap_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void omap_plane_atomic_disable(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct omap_drm_private *priv = plane->dev->dev_private;
diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 45b49bc99981..acde4b39bc9d 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -526,7 +526,7 @@ static int qxl_primary_apply_cursor(struct drm_plane *plane)
 }
 
 static void qxl_primary_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct qxl_device *qdev = to_qxl(plane->dev);
@@ -558,8 +558,10 @@ static void qxl_primary_atomic_update(struct drm_plane *plane,
 }
 
 static void qxl_primary_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct qxl_device *qdev = to_qxl(plane->dev);
 
 	if (old_state->fb) {
@@ -575,8 +577,10 @@ static void qxl_primary_atomic_disable(struct drm_plane *plane,
 }
 
 static void qxl_cursor_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct drm_device *dev = plane->dev;
 	struct qxl_device *qdev = to_qxl(dev);
@@ -693,7 +697,7 @@ static void qxl_cursor_atomic_update(struct drm_plane *plane,
 }
 
 static void qxl_cursor_atomic_disable(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct qxl_device *qdev = to_qxl(plane->dev);
 	struct qxl_release *release;
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_plane.c b/drivers/gpu/drm/rcar-du/rcar_du_plane.c
index 639db6e3fbfb..50f7247b51fa 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_plane.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_plane.c
@@ -618,8 +618,10 @@ static int rcar_du_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void rcar_du_plane_atomic_update(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct rcar_du_plane *rplane = to_rcar_plane(plane);
 	struct rcar_du_plane_state *old_rstate;
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_vsp.c b/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
index 659f6e3072ab..19fd424d1208 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
@@ -277,8 +277,10 @@ static int rcar_du_vsp_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void rcar_du_vsp_plane_atomic_update(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct rcar_du_vsp_plane *rplane = to_rcar_vsp_plane(plane);
 	struct rcar_du_crtc *crtc = to_rcar_crtc(old_state->crtc);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 3a389cd756ff..e0e2510bdaac 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -858,8 +858,10 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void vop_plane_atomic_disable(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct vop_win *vop_win = to_vop_win(plane);
 	struct vop *vop = to_vop(old_state->crtc);
 
@@ -874,8 +876,10 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static void vop_plane_atomic_update(struct drm_plane *plane,
-		struct drm_plane_state *old_state)
+		struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct drm_crtc *crtc = new_state->crtc;
 	struct vop_win *vop_win = to_vop_win(plane);
@@ -909,7 +913,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 		return;
 
 	if (!new_state->visible) {
-		vop_plane_atomic_disable(plane, old_state);
+		vop_plane_atomic_disable(plane, state);
 		return;
 	}
 
@@ -1077,7 +1081,7 @@ static void vop_plane_atomic_async_update(struct drm_plane *plane,
 	swap(plane->state->fb, new_state->fb);
 
 	if (vop->is_enabled) {
-		vop_plane_atomic_update(plane, plane->state);
+		vop_plane_atomic_update(plane, state);
 		spin_lock(&vop->reg_lock);
 		vop_cfg_done(vop);
 		spin_unlock(&vop->reg_lock);
diff --git a/drivers/gpu/drm/sti/sti_cursor.c b/drivers/gpu/drm/sti/sti_cursor.c
index 4cf3bf1b3007..217f456067c2 100644
--- a/drivers/gpu/drm/sti/sti_cursor.c
+++ b/drivers/gpu/drm/sti/sti_cursor.c
@@ -256,7 +256,7 @@ static int sti_cursor_atomic_check(struct drm_plane *drm_plane,
 }
 
 static void sti_cursor_atomic_update(struct drm_plane *drm_plane,
-				     struct drm_plane_state *oldstate)
+				     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *newstate = drm_plane->state;
 	struct sti_plane *plane = to_sti_plane(drm_plane);
@@ -310,8 +310,10 @@ static void sti_cursor_atomic_update(struct drm_plane *drm_plane,
 }
 
 static void sti_cursor_atomic_disable(struct drm_plane *drm_plane,
-				      struct drm_plane_state *oldstate)
+				      struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  drm_plane);
 	struct sti_plane *plane = to_sti_plane(drm_plane);
 
 	if (!oldstate->crtc) {
diff --git a/drivers/gpu/drm/sti/sti_gdp.c b/drivers/gpu/drm/sti/sti_gdp.c
index 0407b7dbd228..eee17c6914a6 100644
--- a/drivers/gpu/drm/sti/sti_gdp.c
+++ b/drivers/gpu/drm/sti/sti_gdp.c
@@ -699,8 +699,10 @@ static int sti_gdp_atomic_check(struct drm_plane *drm_plane,
 }
 
 static void sti_gdp_atomic_update(struct drm_plane *drm_plane,
-				  struct drm_plane_state *oldstate)
+				  struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  drm_plane);
 	struct drm_plane_state *newstate = drm_plane->state;
 	struct sti_plane *plane = to_sti_plane(drm_plane);
 	struct sti_gdp *gdp = to_sti_gdp(plane);
@@ -864,8 +866,10 @@ static void sti_gdp_atomic_update(struct drm_plane *drm_plane,
 }
 
 static void sti_gdp_atomic_disable(struct drm_plane *drm_plane,
-				   struct drm_plane_state *oldstate)
+				   struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  drm_plane);
 	struct sti_plane *plane = to_sti_plane(drm_plane);
 
 	if (!oldstate->crtc) {
diff --git a/drivers/gpu/drm/sti/sti_hqvdp.c b/drivers/gpu/drm/sti/sti_hqvdp.c
index 264a80d606f9..f317c9aad9c5 100644
--- a/drivers/gpu/drm/sti/sti_hqvdp.c
+++ b/drivers/gpu/drm/sti/sti_hqvdp.c
@@ -1109,8 +1109,10 @@ static int sti_hqvdp_atomic_check(struct drm_plane *drm_plane,
 }
 
 static void sti_hqvdp_atomic_update(struct drm_plane *drm_plane,
-				    struct drm_plane_state *oldstate)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  drm_plane);
 	struct drm_plane_state *newstate = drm_plane->state;
 	struct sti_plane *plane = to_sti_plane(drm_plane);
 	struct sti_hqvdp *hqvdp = to_sti_hqvdp(plane);
@@ -1240,8 +1242,10 @@ static void sti_hqvdp_atomic_update(struct drm_plane *drm_plane,
 }
 
 static void sti_hqvdp_atomic_disable(struct drm_plane *drm_plane,
-				     struct drm_plane_state *oldstate)
+				     struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  drm_plane);
 	struct sti_plane *plane = to_sti_plane(drm_plane);
 
 	if (!oldstate->crtc) {
diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index 43de585b99d9..62b6e4f9788c 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -775,7 +775,7 @@ static int ltdc_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void ltdc_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *oldstate)
+				     struct drm_atomic_state *state)
 {
 	struct ltdc_device *ldev = plane_to_ltdc(plane);
 	struct drm_plane_state *newstate = plane->state;
@@ -889,8 +889,10 @@ static void ltdc_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void ltdc_plane_atomic_disable(struct drm_plane *plane,
-				      struct drm_plane_state *oldstate)
+				      struct drm_atomic_state *state)
 {
+	struct drm_plane_state *oldstate = drm_atomic_get_old_plane_state(state,
+									  plane);
 	struct ltdc_device *ldev = plane_to_ltdc(plane);
 	u32 lofs = plane->index * LAY_OFS;
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_layer.c b/drivers/gpu/drm/sun4i/sun4i_layer.c
index fd7eda2c105d..3e985abdfef8 100644
--- a/drivers/gpu/drm/sun4i/sun4i_layer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_layer.c
@@ -6,6 +6,7 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
@@ -63,8 +64,10 @@ static void sun4i_backend_layer_destroy_state(struct drm_plane *plane,
 }
 
 static void sun4i_backend_layer_atomic_disable(struct drm_plane *plane,
-					       struct drm_plane_state *old_state)
+					       struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct sun4i_layer_state *layer_state = state_to_sun4i_layer_state(old_state);
 	struct sun4i_layer *layer = plane_to_sun4i_layer(plane);
 	struct sun4i_backend *backend = layer->backend;
@@ -81,7 +84,7 @@ static void sun4i_backend_layer_atomic_disable(struct drm_plane *plane,
 }
 
 static void sun4i_backend_layer_atomic_update(struct drm_plane *plane,
-					      struct drm_plane_state *old_state)
+					      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct sun4i_layer_state *layer_state = state_to_sun4i_layer_state(new_state);
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 22107c98aeba..07ef63531266 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -289,8 +289,10 @@ static int sun8i_ui_layer_atomic_check(struct drm_plane *plane,
 }
 
 static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
-					  struct drm_plane_state *old_state)
+					  struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
 	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
@@ -300,8 +302,10 @@ static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
 }
 
 static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
-					 struct drm_plane_state *old_state)
+					 struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
 	unsigned int zpos = new_state->normalized_zpos;
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index fc7dc3d1d8b7..4326bb9019cc 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -393,8 +393,10 @@ static int sun8i_vi_layer_atomic_check(struct drm_plane *plane,
 }
 
 static void sun8i_vi_layer_atomic_disable(struct drm_plane *plane,
-					  struct drm_plane_state *old_state)
+					  struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
 	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
@@ -404,8 +406,10 @@ static void sun8i_vi_layer_atomic_disable(struct drm_plane *plane,
 }
 
 static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
-					 struct drm_plane_state *old_state)
+					 struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
 	unsigned int zpos = new_state->normalized_zpos;
diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
index 4eafd45baa60..c393db21c21a 100644
--- a/drivers/gpu/drm/tegra/dc.c
+++ b/drivers/gpu/drm/tegra/dc.c
@@ -691,8 +691,10 @@ static int tegra_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void tegra_plane_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct tegra_plane *p = to_tegra_plane(plane);
 	u32 value;
 
@@ -706,7 +708,7 @@ static void tegra_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static void tegra_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct tegra_plane_state *tegra_plane_state = to_tegra_plane_state(new_state);
@@ -720,7 +722,7 @@ static void tegra_plane_atomic_update(struct drm_plane *plane,
 		return;
 
 	if (!new_state->visible)
-		return tegra_plane_atomic_disable(plane, old_state);
+		return tegra_plane_atomic_disable(plane, state);
 
 	memset(&window, 0, sizeof(window));
 	window.src.x = new_state->src.x1 >> 16;
@@ -866,7 +868,7 @@ static int tegra_cursor_atomic_check(struct drm_plane *plane,
 }
 
 static void tegra_cursor_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct tegra_plane_state *tegra_plane_state = to_tegra_plane_state(new_state);
@@ -929,8 +931,10 @@ static void tegra_cursor_atomic_update(struct drm_plane *plane,
 }
 
 static void tegra_cursor_atomic_disable(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct tegra_dc *dc;
 	u32 value;
 
diff --git a/drivers/gpu/drm/tegra/hub.c b/drivers/gpu/drm/tegra/hub.c
index 1d31086e1cc9..b264c9729d94 100644
--- a/drivers/gpu/drm/tegra/hub.c
+++ b/drivers/gpu/drm/tegra/hub.c
@@ -388,8 +388,10 @@ static int tegra_shared_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void tegra_shared_plane_atomic_disable(struct drm_plane *plane,
-					      struct drm_plane_state *old_state)
+					      struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct tegra_plane *p = to_tegra_plane(plane);
 	struct tegra_dc *dc;
 	u32 value;
@@ -425,7 +427,7 @@ static void tegra_shared_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static void tegra_shared_plane_atomic_update(struct drm_plane *plane,
-					     struct drm_plane_state *old_state)
+					     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct tegra_plane_state *tegra_plane_state = to_tegra_plane_state(new_state);
@@ -442,7 +444,7 @@ static void tegra_shared_plane_atomic_update(struct drm_plane *plane,
 		return;
 
 	if (!new_state->visible) {
-		tegra_shared_plane_atomic_disable(plane, old_state);
+		tegra_shared_plane_atomic_disable(plane, state);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/tidss/tidss_plane.c b/drivers/gpu/drm/tidss/tidss_plane.c
index 90554d0be2d0..b0a4aff56095 100644
--- a/drivers/gpu/drm/tidss/tidss_plane.c
+++ b/drivers/gpu/drm/tidss/tidss_plane.c
@@ -105,7 +105,7 @@ static int tidss_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void tidss_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_device *ddev = plane->dev;
 	struct tidss_device *tidss = to_tidss(ddev);
@@ -137,7 +137,7 @@ static void tidss_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void tidss_plane_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct drm_device *ddev = plane->dev;
 	struct tidss_device *tidss = to_tidss(ddev);
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_plane.c b/drivers/gpu/drm/tilcdc/tilcdc_plane.c
index 1d134a6d9fc6..c7c27f577432 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_plane.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_plane.c
@@ -76,7 +76,7 @@ static int tilcdc_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void tilcdc_plane_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 
diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vboxvideo/vbox_mode.c
index a6f273e9a966..07fd7826b6a2 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
@@ -273,7 +273,7 @@ static int vbox_primary_atomic_check(struct drm_plane *plane,
 }
 
 static void vbox_primary_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct drm_crtc *crtc = new_state->crtc;
@@ -318,8 +318,10 @@ static void vbox_primary_atomic_update(struct drm_plane *plane,
 }
 
 static void vbox_primary_atomic_disable(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_crtc *crtc = old_state->crtc;
 
 	/* vbox_do_modeset checks plane->state->fb and will disable if NULL */
@@ -381,8 +383,10 @@ static void copy_cursor_image(u8 *src, u8 *dst, u32 width, u32 height,
 }
 
 static void vbox_cursor_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct vbox_private *vbox =
 		container_of(plane->dev, struct vbox_private, ddev);
@@ -429,8 +433,10 @@ static void vbox_cursor_atomic_update(struct drm_plane *plane,
 }
 
 static void vbox_cursor_atomic_disable(struct drm_plane *plane,
-				       struct drm_plane_state *old_state)
+				       struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct vbox_private *vbox =
 		container_of(plane->dev, struct vbox_private, ddev);
 	struct vbox_crtc *vbox_crtc = to_vbox_crtc(old_state->crtc);
diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index b46d79efa4b0..ec085df1f6fa 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1060,7 +1060,7 @@ static int vc4_plane_atomic_check(struct drm_plane *plane,
 }
 
 static void vc4_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
 	/* No contents here.  Since we don't know where in the CRTC's
 	 * dlist we should be stored, our dlist is uploaded to the
diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index 9419aa611af9..4e1b17548007 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -130,8 +130,10 @@ static void virtio_gpu_update_dumb_bo(struct virtio_gpu_device *vgdev,
 }
 
 static void virtio_gpu_primary_plane_update(struct drm_plane *plane,
-					    struct drm_plane_state *old_state)
+					    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_device *dev = plane->dev;
 	struct virtio_gpu_device *vgdev = dev->dev_private;
 	struct virtio_gpu_output *output = NULL;
@@ -242,8 +244,10 @@ static void virtio_gpu_cursor_cleanup_fb(struct drm_plane *plane,
 }
 
 static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
-					   struct drm_plane_state *old_state)
+					   struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_device *dev = plane->dev;
 	struct virtio_gpu_device *vgdev = dev->dev_private;
 	struct virtio_gpu_output *output = NULL;
diff --git a/drivers/gpu/drm/vkms/vkms_plane.c b/drivers/gpu/drm/vkms/vkms_plane.c
index a8a675b6a3f7..d0056fab01eb 100644
--- a/drivers/gpu/drm/vkms/vkms_plane.c
+++ b/drivers/gpu/drm/vkms/vkms_plane.c
@@ -92,7 +92,7 @@ static const struct drm_plane_funcs vkms_plane_funcs = {
 };
 
 static void vkms_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct vkms_plane_state *vkms_plane_state;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
index ab32d7a5159b..abbca8b0b3c5 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
@@ -370,9 +370,12 @@ vmw_du_cursor_plane_prepare_fb(struct drm_plane *plane,
 
 void
 vmw_du_cursor_plane_atomic_update(struct drm_plane *plane,
-				  struct drm_plane_state *old_state)
+				  struct drm_atomic_state *state)
 {
-	struct drm_plane_state *new_state = plane->state;
+	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
+									   plane);
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_crtc *crtc = new_state->crtc ?: old_state->crtc;
 	struct vmw_private *dev_priv = vmw_priv(crtc->dev);
 	struct vmw_display_unit *du = vmw_crtc_to_du(crtc);
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.h b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.h
index c5183e7eea04..bbc809f7bd8a 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.h
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.h
@@ -460,7 +460,7 @@ int vmw_du_primary_plane_atomic_check(struct drm_plane *plane,
 int vmw_du_cursor_plane_atomic_check(struct drm_plane *plane,
 				     struct drm_atomic_state *state);
 void vmw_du_cursor_plane_atomic_update(struct drm_plane *plane,
-				       struct drm_plane_state *old_state);
+				       struct drm_atomic_state *state);
 int vmw_du_cursor_plane_prepare_fb(struct drm_plane *plane,
 				   struct drm_plane_state *new_state);
 void vmw_du_plane_cleanup_fb(struct drm_plane *plane,
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c
index 14de7936983e..dd8696fe7943 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c
@@ -284,8 +284,10 @@ drm_connector_helper_funcs vmw_ldu_connector_helper_funcs = {
 
 static void
 vmw_ldu_primary_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct vmw_private *dev_priv;
 	struct vmw_legacy_display_unit *ldu;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c b/drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c
index 68f6a03729ee..05f3111164d8 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c
@@ -730,8 +730,10 @@ static int vmw_sou_plane_update_surface(struct vmw_private *dev_priv,
 
 static void
 vmw_sou_primary_plane_atomic_update(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct drm_crtc *crtc = new_state->crtc;
 	struct drm_pending_vblank_event *event = NULL;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c b/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
index 936d12169dbe..7d4f62834ec4 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
@@ -1580,8 +1580,10 @@ static int vmw_stdu_plane_update_surface(struct vmw_private *dev_priv,
  */
 static void
 vmw_stdu_primary_plane_atomic_update(struct drm_plane *plane,
-				     struct drm_plane_state *old_state)
+				     struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct vmw_plane_state *vps = vmw_plane_state_to_vps(new_state);
 	struct drm_crtc *crtc = new_state->crtc;
diff --git a/drivers/gpu/drm/xlnx/zynqmp_disp.c b/drivers/gpu/drm/xlnx/zynqmp_disp.c
index 8b87a17e9d56..56b1b855cfe9 100644
--- a/drivers/gpu/drm/xlnx/zynqmp_disp.c
+++ b/drivers/gpu/drm/xlnx/zynqmp_disp.c
@@ -1165,8 +1165,10 @@ zynqmp_disp_plane_atomic_check(struct drm_plane *plane,
 
 static void
 zynqmp_disp_plane_atomic_disable(struct drm_plane *plane,
-				 struct drm_plane_state *old_state)
+				 struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct zynqmp_disp_layer *layer = plane_to_layer(plane);
 
 	if (!old_state->fb)
@@ -1177,8 +1179,10 @@ zynqmp_disp_plane_atomic_disable(struct drm_plane *plane,
 
 static void
 zynqmp_disp_plane_atomic_update(struct drm_plane *plane,
-				struct drm_plane_state *old_state)
+				struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+								           plane);
 	struct drm_plane_state *new_state = plane->state;
 	struct zynqmp_disp_layer *layer = plane_to_layer(plane);
 	bool format_changed = false;
@@ -1484,8 +1488,6 @@ static void
 zynqmp_disp_crtc_atomic_disable(struct drm_crtc *crtc,
 				struct drm_atomic_state *state)
 {
-	struct drm_crtc_state *old_crtc_state = drm_atomic_get_old_crtc_state(state,
-									      crtc);
 	struct zynqmp_disp *disp = crtc_to_disp(crtc);
 	struct drm_plane_state *old_plane_state;
 
@@ -1494,10 +1496,9 @@ zynqmp_disp_crtc_atomic_disable(struct drm_crtc *crtc,
 	 * .shutdown() path if the plane is already disabled, skip
 	 * zynqmp_disp_plane_atomic_disable() in that case.
 	 */
-	old_plane_state = drm_atomic_get_old_plane_state(old_crtc_state->state,
-							 crtc->primary);
+	old_plane_state = drm_atomic_get_old_plane_state(state, crtc->primary);
 	if (old_plane_state)
-		zynqmp_disp_plane_atomic_disable(crtc->primary, old_plane_state);
+		zynqmp_disp_plane_atomic_disable(crtc->primary, state);
 
 	zynqmp_disp_disable(disp);
 
diff --git a/drivers/gpu/drm/zte/zx_plane.c b/drivers/gpu/drm/zte/zx_plane.c
index 2833734bd5fb..fc2ac2672f1c 100644
--- a/drivers/gpu/drm/zte/zx_plane.c
+++ b/drivers/gpu/drm/zte/zx_plane.c
@@ -181,7 +181,7 @@ static void zx_vl_rsz_setup(struct zx_plane *zplane, uint32_t format,
 }
 
 static void zx_vl_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct zx_plane *zplane = to_zx_plane(plane);
 	struct drm_plane_state *new_state = plane->state;
@@ -259,8 +259,10 @@ static void zx_vl_plane_atomic_update(struct drm_plane *plane,
 }
 
 static void zx_plane_atomic_disable(struct drm_plane *plane,
-				    struct drm_plane_state *old_state)
+				    struct drm_atomic_state *state)
 {
+	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
+									   plane);
 	struct zx_plane *zplane = to_zx_plane(plane);
 	void __iomem *hbsc = zplane->hbsc;
 
@@ -351,7 +353,7 @@ static void zx_gl_rsz_setup(struct zx_plane *zplane, u32 src_w, u32 src_h,
 }
 
 static void zx_gl_plane_atomic_update(struct drm_plane *plane,
-				      struct drm_plane_state *old_state)
+				      struct drm_atomic_state *state)
 {
 	struct drm_plane_state *new_state = plane->state;
 	struct zx_plane *zplane = to_zx_plane(plane);
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index 484f91d772ea..982d608d625d 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1262,7 +1262,7 @@ struct drm_plane_helper_funcs {
 	 * transitional plane helpers, but it is optional.
 	 */
 	void (*atomic_update)(struct drm_plane *plane,
-			      struct drm_plane_state *old_state);
+			      struct drm_atomic_state *state);
 	/**
 	 * @atomic_disable:
 	 *
@@ -1286,7 +1286,7 @@ struct drm_plane_helper_funcs {
 	 * transitional plane helpers, but it is optional.
 	 */
 	void (*atomic_disable)(struct drm_plane *plane,
-			       struct drm_plane_state *old_state);
+			       struct drm_atomic_state *state);
 
 	/**
 	 * @atomic_async_check:
-- 
2.29.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
