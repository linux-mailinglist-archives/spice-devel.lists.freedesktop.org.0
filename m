Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542AD868EF5
	for <lists+spice-devel@lfdr.de>; Tue, 27 Feb 2024 12:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C0C10E8B7;
	Tue, 27 Feb 2024 11:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="ztlRFcA+";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="nMbH9hEG";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="ztlRFcA+";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="nMbH9hEG";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E72110E874;
 Tue, 27 Feb 2024 11:38:59 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id C4A491FB54;
 Tue, 27 Feb 2024 11:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1709033937; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2m7H4rXvEaqXUC5CqnIRslmUOn0zF+FP77SMvwpyarg=;
 b=ztlRFcA+tDfx0TTuWfStuRpsSgKJ1qImipUiYBS6jnHRtoFexs5lW/wvcwhf5UXexFKRMO
 RaUEIKQlGUN5yhB1S4jeRA2qnLyBYoHauvH12ycMubP40J4qtiNKS4So6OLfBYgAmdKwzy
 VESBunkifFF02lZUNYBJVTbgS2k7dII=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1709033937;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2m7H4rXvEaqXUC5CqnIRslmUOn0zF+FP77SMvwpyarg=;
 b=nMbH9hEGdqwNVFPIpW0DXbyj/10AdD4fz/o9Wge/Jv1QyMTvzSjMxmhcj+0KOXPOKmqBz0
 1v7RuD0NNbI0OhAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1709033937; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2m7H4rXvEaqXUC5CqnIRslmUOn0zF+FP77SMvwpyarg=;
 b=ztlRFcA+tDfx0TTuWfStuRpsSgKJ1qImipUiYBS6jnHRtoFexs5lW/wvcwhf5UXexFKRMO
 RaUEIKQlGUN5yhB1S4jeRA2qnLyBYoHauvH12ycMubP40J4qtiNKS4So6OLfBYgAmdKwzy
 VESBunkifFF02lZUNYBJVTbgS2k7dII=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1709033937;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2m7H4rXvEaqXUC5CqnIRslmUOn0zF+FP77SMvwpyarg=;
 b=nMbH9hEGdqwNVFPIpW0DXbyj/10AdD4fz/o9Wge/Jv1QyMTvzSjMxmhcj+0KOXPOKmqBz0
 1v7RuD0NNbI0OhAw==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 0774413ABF;
 Tue, 27 Feb 2024 11:38:57 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id uLJ2ANHJ3WVMUQAAn2gu4w
 (envelope-from <tzimmermann@suse.de>); Tue, 27 Feb 2024 11:38:57 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, christian.koenig@amd.com,
 sumit.semwal@linaro.org, dmitry.osipenko@collabora.com,
 robdclark@gmail.com, quic_abhinavk@quicinc.com,
 dmitry.baryshkov@linaro.org, sean@poorly.run,
 marijn.suijten@somainline.org, suijingfeng@loongson.cn, kherbst@redhat.com,
 lyude@redhat.com, dakr@redhat.com, airlied@redhat.com, kraxel@redhat.com,
 alexander.deucher@amd.com, Xinhui.Pan@amd.com, zack.rusin@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 02/13] drm/gem-vram: Acquire reservation lock in GEM pin/unpin
 callbacks
Date: Tue, 27 Feb 2024 11:14:49 +0100
Message-ID: <20240227113853.8464-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227113853.8464-1-tzimmermann@suse.de>
References: <20240227113853.8464-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Level: *
X-Spamd-Bar: +
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=ztlRFcA+;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=nMbH9hEG
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [1.48 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 BROKEN_CONTENT_TYPE(1.50)[];
 R_RATELIMIT(0.00)[to_ip_from(RLo3wgn6xaqcdyw4c639zmwwtu)];
 RCVD_COUNT_THREE(0.00)[3]; DKIM_TRACE(0.00)[suse.de:+];
 MX_GOOD(-0.01)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,kernel.org,linux.intel.com,amd.com,linaro.org,collabora.com,quicinc.com,poorly.run,somainline.org,loongson.cn,redhat.com,broadcom.com];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 BAYES_HAM(-0.01)[47.43%]; ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; DWL_DNSWL_MED(-2.00)[suse.de:dkim];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[30]; MID_CONTAINS_FROM(1.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; RCVD_TLS_ALL(0.00)[]
X-Spam-Score: 1.48
X-Rspamd-Queue-Id: C4A491FB54
X-Spam-Flag: NO
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

Acquire the reservation lock directly in GEM pin callback. Same for
unpin. Prepares for further changes.

Dma-buf locking semantics require callers to hold the buffer's
reservation lock when invoking the pin and unpin callbacks. Prepare
gem-vram accordingly by pushing locking out of the implementation.
A follow-up patch will fix locking for all GEM code at once.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_gem_vram_helper.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index 75f2eaf0d5b61..15029d89badf8 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -283,6 +283,8 @@ static int drm_gem_vram_pin_locked(struct drm_gem_vram_object *gbo,
 	struct ttm_operation_ctx ctx = { false, false };
 	int ret;
 
+	dma_resv_assert_held(gbo->bo.base.resv);
+
 	if (gbo->bo.pin_count)
 		goto out;
 
@@ -338,6 +340,8 @@ EXPORT_SYMBOL(drm_gem_vram_pin);
 
 static void drm_gem_vram_unpin_locked(struct drm_gem_vram_object *gbo)
 {
+	dma_resv_assert_held(gbo->bo.base.resv);
+
 	ttm_bo_unpin(&gbo->bo);
 }
 
@@ -770,8 +774,14 @@ EXPORT_SYMBOL(drm_gem_vram_simple_display_pipe_cleanup_fb);
 static int drm_gem_vram_object_pin(struct drm_gem_object *gem)
 {
 	struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(gem);
+	int ret;
 
-	/* Fbdev console emulation is the use case of these PRIME
+	ret = ttm_bo_reserve(&gbo->bo, true, false, NULL);
+	if (ret)
+		return ret;
+
+	/*
+	 * Fbdev console emulation is the use case of these PRIME
 	 * helpers. This may involve updating a hardware buffer from
 	 * a shadow FB. We pin the buffer to it's current location
 	 * (either video RAM or system memory) to prevent it from
@@ -779,7 +789,10 @@ static int drm_gem_vram_object_pin(struct drm_gem_object *gem)
 	 * the buffer to be pinned to VRAM, implement a callback that
 	 * sets the flags accordingly.
 	 */
-	return drm_gem_vram_pin(gbo, 0);
+	ret = drm_gem_vram_pin_locked(gbo, 0);
+	ttm_bo_unreserve(&gbo->bo);
+
+	return ret;
 }
 
 /**
@@ -790,8 +803,13 @@ static int drm_gem_vram_object_pin(struct drm_gem_object *gem)
 static void drm_gem_vram_object_unpin(struct drm_gem_object *gem)
 {
 	struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(gem);
+	int ret;
 
-	drm_gem_vram_unpin(gbo);
+	ret = ttm_bo_reserve(&gbo->bo, true, false, NULL);
+	if (ret)
+		return;
+	drm_gem_vram_unpin_locked(gbo);
+	ttm_bo_unreserve(&gbo->bo);
 }
 
 /**
-- 
2.43.2

