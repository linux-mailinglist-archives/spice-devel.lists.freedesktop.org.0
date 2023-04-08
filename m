Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E276DC179
	for <lists+spice-devel@lfdr.de>; Sun,  9 Apr 2023 23:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817FD10E037;
	Sun,  9 Apr 2023 21:12:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AF810E12C
 for <spice-devel@lists.freedesktop.org>; Sat,  8 Apr 2023 16:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680972628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=qy6SYd3f0i8ho8eow+vyxJgxXrM08wU7g/SGD1LI0yQ=;
 b=f+ZWh3uy8XJvEEKDea5clsdVyFF0fCswDbkLaElfeZIyXo3Y6K0ImMK2L30yEeKgUXiPJN
 bHN8o7VPMx325cAsEaEEceUrPeQSymwS2/VlLXDon2G96LxoldfCGigLyCXpAVsqsqo2my
 qfjGdRV0ozTF6tl6x6a2IfAYHCFRzso=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-gvyCw-ykOIOguvKb9V1i4Q-1; Sat, 08 Apr 2023 12:50:26 -0400
X-MC-Unique: gvyCw-ykOIOguvKb9V1i4Q-1
Received: by mail-qv1-f71.google.com with SMTP id
 w10-20020a0cc24a000000b00583d8e55181so777502qvh.23
 for <spice-devel@lists.freedesktop.org>; Sat, 08 Apr 2023 09:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680972626;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qy6SYd3f0i8ho8eow+vyxJgxXrM08wU7g/SGD1LI0yQ=;
 b=1sMeLwQkQVqHld5Og9CCX6ITcTrscwsLhas5HcB8tSEuDLfbYAYTCUv+baRlWR3O10
 PfkIdLXP+WB01WVe/AsMjqrOCIoel2z17cpDIv9TiirWW5hJYHxuhBKYdy+CKyqPgFWG
 beverCaVxfk+Kg3FBw9ixsgWCWWO6vVt52Qm1k6Y1zgpm/zryWWCN9Os4yLzcyVORsNP
 LXwKN3oLCD/GXf9nev9GED/FYGNEN9xoWideuPX5y8sPJWqqjeuc7HyQMPfZwD3DnTKK
 OmHuHz4Axx950f1RrBUbPwE9NzKooztq70Eku0OGjzh/u/yM6JtiXUcr33uyfVwXXt7T
 Z3BA==
X-Gm-Message-State: AAQBX9ccbIcrpsiudpIb+mNQa/uA2mNSQRDDgOXXU8kpcSvlPFPjDxjA
 rR26/U8ib7SyBgiNAfBUjuv7oQPnklZ5l2ghX3LQbK8aupB1D3T0iKm4TWFE4XHrEuBkhYtQO/n
 6ou5kg+eVzHfVHDs4JVZDji3+MHfDc0s=
X-Received: by 2002:a05:622a:15c3:b0:3e1:b06d:e9e1 with SMTP id
 d3-20020a05622a15c300b003e1b06de9e1mr3842260qty.57.1680972626209; 
 Sat, 08 Apr 2023 09:50:26 -0700 (PDT)
X-Google-Smtp-Source: AKy350a46s9y+/itqppzPjf57cV1ZevRRKIKzqVvsO1UIrG/xBtSg7j5IKxAIQvMkkT/GV64uTG74Q==
X-Received: by 2002:a05:622a:15c3:b0:3e1:b06d:e9e1 with SMTP id
 d3-20020a05622a15c300b003e1b06de9e1mr3842236qty.57.1680972625999; 
 Sat, 08 Apr 2023 09:50:25 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 s128-20020a372c86000000b0074688c36facsm2113865qkh.56.2023.04.08.09.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Apr 2023 09:50:25 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: airlied@redhat.com, kraxel@redhat.com, airlied@gmail.com, daniel@ffwll.ch,
 nathan@kernel.org, ndesaulniers@google.com
Date: Sat,  8 Apr 2023 12:50:23 -0400
Message-Id: <20230408165023.2706235-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Sun, 09 Apr 2023 21:12:41 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: remove variable count
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
Cc: Tom Rix <trix@redhat.com>, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

clang with W=1 reports
drivers/gpu/drm/qxl/qxl_cmd.c:424:6: error: variable
  'count' set but not used [-Werror,-Wunused-but-set-variable]
        int count = 0;
            ^
This variable is not used so remove it.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/qxl/qxl_cmd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_cmd.c b/drivers/gpu/drm/qxl/qxl_cmd.c
index 281edab518cd..d6ea01f3797b 100644
--- a/drivers/gpu/drm/qxl/qxl_cmd.c
+++ b/drivers/gpu/drm/qxl/qxl_cmd.c
@@ -421,7 +421,6 @@ int qxl_surface_id_alloc(struct qxl_device *qdev,
 {
 	uint32_t handle;
 	int idr_ret;
-	int count = 0;
 again:
 	idr_preload(GFP_ATOMIC);
 	spin_lock(&qdev->surf_id_idr_lock);
@@ -433,7 +432,6 @@ int qxl_surface_id_alloc(struct qxl_device *qdev,
 	handle = idr_ret;
 
 	if (handle >= qdev->rom->n_surfaces) {
-		count++;
 		spin_lock(&qdev->surf_id_idr_lock);
 		idr_remove(&qdev->surf_id_idr, handle);
 		spin_unlock(&qdev->surf_id_idr_lock);
-- 
2.27.0

