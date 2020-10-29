Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6129E8B5
	for <lists+spice-devel@lfdr.de>; Thu, 29 Oct 2020 11:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D7D6E8D4;
	Thu, 29 Oct 2020 10:14:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 988B46E8D4
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 10:14:37 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id g12so2076975wrp.10
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 03:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NH1wgxZzmNr+f4f/izYOW3Kn2sqLIMMHcPJO+vFYPj8=;
 b=Hkxe6zs+S5dTbcwUFC1+X5+n49A/SNSvIY83JbI54r1aawzTNDh5eYWpvB4WVQ91tB
 krPLqS63geCdVbXeMPHR+G6sOa+/n9rlBSdBs0haU3LWOIezU0gcsY0Jqby2ilee5eJt
 lLT7Oth/y1jCjqPGrmzJ0jBhsSuR5H3bwiXjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NH1wgxZzmNr+f4f/izYOW3Kn2sqLIMMHcPJO+vFYPj8=;
 b=HHJpsYVs/gwLzgspTpnZmJZETQYr5biFYwUV+wSW44pBPtpPvb5JOAgdlK85JfSUEy
 g9WmgDowSt7sfjbzXiB2JoLWS5J0Y9RLcPIcSsPlI+OBnycA1OjN3/J5yycwZIjF4s8/
 j6LZUh04I62Y9aI5x7yEn1JRbqR8ptbBJcCIOo09q2PHZJq3lh/jTEV3YZyxkITYRHU2
 mKC+5ISevGth26VREy5tWKLFy+NWMpwWQiHJtXug2lX/sDrVVVG00WyfREo7yiCZmS8o
 8UlAuPhX3b0qh0dq9LfZ/TkZQ5YthkazG8yjUwyk1nLR5+CR5mN1wM+UuEFPQhtc0nIj
 AX7Q==
X-Gm-Message-State: AOAM533etXS8ubNj6C+xdFn8snvGxLveN3yxfZgAvf+JV+tZACAXOS2X
 ETKuIejtso85rDAfgdilVdl14g==
X-Google-Smtp-Source: ABdhPJwKhZUv0/sxV9eMLtbW41ionD/GZOnsN7WT3fFy3s7vVW47Q/DgBSrBxSdS4kDGU3LeYplh0A==
X-Received: by 2002:adf:ecc8:: with SMTP id s8mr4370597wro.328.1603966476296; 
 Thu, 29 Oct 2020 03:14:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e5sm3897753wrw.93.2020.10.29.03.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 03:14:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 29 Oct 2020 11:14:28 +0100
Message-Id: <20201029101428.4058311-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH 3/3] drm/qxl: Remove fbcon acceleration
 leftovers
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

These are leftovers from 13aff184ed9f ("drm/qxl: remove dead qxl fbdev
emulation code").

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_drv.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
index 3602e8b34189..86eee66ecbad 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.h
+++ b/drivers/gpu/drm/qxl/qxl_drv.h
@@ -166,20 +166,6 @@ struct qxl_drm_image {
 	struct list_head chunk_list;
 };
 
-struct qxl_fb_image {
-	struct qxl_device *qdev;
-	uint32_t pseudo_palette[16];
-	struct fb_image fb_image;
-	uint32_t visual;
-};
-
-struct qxl_draw_fill {
-	struct qxl_device *qdev;
-	struct qxl_rect rect;
-	uint32_t color;
-	uint16_t rop;
-};
-
 /*
  * Debugfs
  */
-- 
2.28.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
