Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79040A39F42
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2025 15:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA67E10E735;
	Tue, 18 Feb 2025 14:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="190kenVq";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3WGJD+HJ";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="190kenVq";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3WGJD+HJ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B5D10E732
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2025 14:26:39 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 878272118A;
 Tue, 18 Feb 2025 14:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1739888761; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf5dFpikKn5c3GIrBSRRcQu3Wk8DqddBNdtAqBZYLZM=;
 b=190kenVqsCIkfwCNWhUv74teu7wn1MucOGEWDXJMOuGH3BVCNsV5RKh69Tiypc8p5n/Fly
 ftAq9sgrpubLfKrEItKWS4OF1GfndEwbdsbgf5ZHEjLNmdVXvyJje1OFP+jMrgLVB1hUtU
 Mc5xwtNsB/LGnXYBa3FjRW9Jgee7zT0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1739888761;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf5dFpikKn5c3GIrBSRRcQu3Wk8DqddBNdtAqBZYLZM=;
 b=3WGJD+HJNmhJaK2BWcoX3u7EG9d/GqYizKxZXEainLFl8UVdjZhK5Ys0J1djmSCeSegPKk
 bCqa4ZgY/KXltlCg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1739888761; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf5dFpikKn5c3GIrBSRRcQu3Wk8DqddBNdtAqBZYLZM=;
 b=190kenVqsCIkfwCNWhUv74teu7wn1MucOGEWDXJMOuGH3BVCNsV5RKh69Tiypc8p5n/Fly
 ftAq9sgrpubLfKrEItKWS4OF1GfndEwbdsbgf5ZHEjLNmdVXvyJje1OFP+jMrgLVB1hUtU
 Mc5xwtNsB/LGnXYBa3FjRW9Jgee7zT0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1739888761;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf5dFpikKn5c3GIrBSRRcQu3Wk8DqddBNdtAqBZYLZM=;
 b=3WGJD+HJNmhJaK2BWcoX3u7EG9d/GqYizKxZXEainLFl8UVdjZhK5Ys0J1djmSCeSegPKk
 bCqa4ZgY/KXltlCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id F368D13A82;
 Tue, 18 Feb 2025 14:26:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id AE0jOniYtGdXYQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 18 Feb 2025 14:26:00 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v3 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Date: Tue, 18 Feb 2025 15:23:48 +0100
Message-ID: <20250218142542.438557-26-tzimmermann@suse.de>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218142542.438557-1-tzimmermann@suse.de>
References: <20250218142542.438557-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -1.30
X-Spamd-Result: default: False [-1.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM_LONG(-1.00)[-1.000]; R_MISSING_CHARSET(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 ARC_NA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.de:mid,suse.de:email];
 RCPT_COUNT_TWELVE(0.00)[21]; MIME_TRACE(0.00)[0:+];
 TO_DN_SOME(0.00)[]; FROM_HAS_DN(0.00)[];
 FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,gmail.com,ffwll.ch];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_TLS_ALL(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 R_RATELIMIT(0.00)[to(RLbwen1niosrcqbxsafh1),to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]
X-Spam-Flag: NO
X-Spam-Level: 
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch and
buffer size. Align the pitch according to hardware requirements.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/xlnx/zynqmp_kms.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xlnx/zynqmp_kms.c b/drivers/gpu/drm/xlnx/zynqmp_kms.c
index b47463473472..7ea0cd4f71d3 100644
--- a/drivers/gpu/drm/xlnx/zynqmp_kms.c
+++ b/drivers/gpu/drm/xlnx/zynqmp_kms.c
@@ -19,6 +19,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_dumb_buffers.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_fbdev_dma.h>
 #include <drm/drm_fourcc.h>
@@ -363,10 +364,12 @@ static int zynqmp_dpsub_dumb_create(struct drm_file *file_priv,
 				    struct drm_mode_create_dumb *args)
 {
 	struct zynqmp_dpsub *dpsub = to_zynqmp_dpsub(drm);
-	unsigned int pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
+	int ret;
 
 	/* Enforce the alignment constraints of the DMA engine. */
-	args->pitch = ALIGN(pitch, dpsub->dma_align);
+	ret = drm_mode_size_dumb(drm, args, dpsub->dma_align, 0);
+	if (ret)
+		return ret;
 
 	return drm_gem_dma_dumb_create_internal(file_priv, drm, args);
 }
-- 
2.48.1

