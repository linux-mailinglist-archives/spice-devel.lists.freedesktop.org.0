Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8667D36EB
	for <lists+spice-devel@lfdr.de>; Mon, 23 Oct 2023 14:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BFF10E0C3;
	Mon, 23 Oct 2023 12:37:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA5610E16C
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Oct 2023 07:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698047234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gvfTjw8dSSlSiXvUaiK74LLIpEaLiwoPByusUIPVsI4=;
 b=OOJn9DuAHIVrZ0ilh2xS/wNWEkBJ2Jgqrju3YCEjarrgBTRMU1/KkCIyJMoePid7XysCg7
 kXqBv+lZnxDmQ0T+KcSXNVHRWkQYJNSX8h/emIlna4K+c2/QvCxH4erbsNE1UAVW/y4lzz
 9DG/J8ANs3GuCG7EXa0DWiETl0cQmpk=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-513-aJX6Sv2BP7ujtj9sq4BYhg-1; Mon,
 23 Oct 2023 03:46:57 -0400
X-MC-Unique: aJX6Sv2BP7ujtj9sq4BYhg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55D6F1C06E1A;
 Mon, 23 Oct 2023 07:46:56 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.45.225.243])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6AA46503B;
 Mon, 23 Oct 2023 07:46:51 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
To: qemu-devel@nongnu.org
Date: Mon, 23 Oct 2023 09:46:11 +0200
Message-ID: <20231023074613.41327-8-aesteve@redhat.com>
In-Reply-To: <20231023074613.41327-1-aesteve@redhat.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Approved-At: Mon, 23 Oct 2023 12:37:39 +0000
Subject: [Spice-devel] [PATCH v6 7/9] drm: Remove legacy cursor hotspot code
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
Cc: linux-doc@vger.kernel.org, David Airlie <airlied@linux.ie>,
 banackm@vmware.com, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, mombasawalam@vmware.com, iforbes@vmware.com,
 Jonathan Corbet <corbet@lwn.net>, javierm@redhat.com,
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

From: Zack Rusin <zackr@vmware.com>

Atomic modesetting supports mouse cursor offsets via the hotspot
properties that are created on cursor planes. All drivers which
support hotspots are atomic and the legacy code has been implemented
in terms of the atomic properties as well.

Due to the above the lagacy cursor hotspot code is no longer used or
needed and can be removed.

Signed-off-by: Zack Rusin <zackr@vmware.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/gpu/drm/drm_plane.c   |  3 ---
 include/drm/drm_framebuffer.h | 12 ------------
 2 files changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index eaca367bdc7e7..1dc00ad4c33c3 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -1110,9 +1110,6 @@ static int drm_mode_cursor_universal(struct drm_crtc *crtc,
 				return PTR_ERR(fb);
 			}
 
-			fb->hot_x = req->hot_x;
-			fb->hot_y = req->hot_y;
-
 			if (plane->hotspot_x_property && plane->state)
 				plane->state->hotspot_x = req->hot_x;
 			if (plane->hotspot_y_property && plane->state)
diff --git a/include/drm/drm_framebuffer.h b/include/drm/drm_framebuffer.h
index 0dcc07b686548..1e108c1789b1e 100644
--- a/include/drm/drm_framebuffer.h
+++ b/include/drm/drm_framebuffer.h
@@ -188,18 +188,6 @@ struct drm_framebuffer {
 	 * DRM_MODE_FB_MODIFIERS.
 	 */
 	int flags;
-	/**
-	 * @hot_x: X coordinate of the cursor hotspot. Used by the legacy cursor
-	 * IOCTL when the driver supports cursor through a DRM_PLANE_TYPE_CURSOR
-	 * universal plane.
-	 */
-	int hot_x;
-	/**
-	 * @hot_y: Y coordinate of the cursor hotspot. Used by the legacy cursor
-	 * IOCTL when the driver supports cursor through a DRM_PLANE_TYPE_CURSOR
-	 * universal plane.
-	 */
-	int hot_y;
 	/**
 	 * @filp_head: Placed on &drm_file.fbs, protected by &drm_file.fbs_lock.
 	 */
-- 
2.41.0

