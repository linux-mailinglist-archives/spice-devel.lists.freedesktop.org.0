Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F80CE9770
	for <lists+spice-devel@lfdr.de>; Tue, 30 Dec 2025 11:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E0A10E1E4;
	Tue, 30 Dec 2025 10:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="hyDXXDuj";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f225.google.com (mail-qk1-f225.google.com
 [209.85.222.225])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE83210E731
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 21:59:36 +0000 (UTC)
Received: by mail-qk1-f225.google.com with SMTP id
 af79cd13be357-8b21fc25ae1so942176085a.1
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767045576; x=1767650376;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=huMey1yvlTcl9trBYSLi6aENqnLSe9ecqic2n3VA9bs=;
 b=CHws5gIpNTlJXq8csLtFr9ht+b5TG4Jx6Si89LIeOGNYOPvjPzR5vodTVWhvOsFs+8
 29OzFjqVBUtMJ1RlB6smJXBQqSyN68ABr/wg1jUnPM5KLQ5mbRitBSZws0wte06rN5wS
 vPW8sigY6dfemItEeVgWh2UllSZlSrHoBiuI9hsqYR9WnKTByZ0Psc4rGQ7JHnIR9J/0
 eg08vpfUAocHr0EMcxYqiKYqkmA2tLC7/520oc+Z7tiS3zUAvrrRrnyEikvPxd8cTiSs
 rCZhn2F/pry5aO0lGjukkE5PWjJ9pIkL/VfQaTqhqQ+trK9OpbABLlRT+zHSM4RL4M/b
 0k8A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPfqYqWl6Cdr9llhLYvqslfr5p9vPePAqqoyqpvQsdy9Z1mPYtmbuCnxFyFeeRskkAE1WeU+s7+6e9LA==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyELFoCCK/dM6luGRv5jRm6VdffbN4Akrwfdn9zmgs/JsAJC4o/
 ujAWCPix6Ws95bMHakgZYo1usbKDiVyi83gn6ifqaZ2pikkAHs8sKkV5DAkpJu15mwL8NcN8Ars
 e6UKFKNd+mcx5XyKqBPX8vBJ5T680KsfaMhVzoLXDxr04EHaLG4EXs3rGsWTYiAbzpu7YACnYTS
 qObCGjjmckwKea6uw+9WcHAezDub7y6BhhSUrJx5gMzaxaAOeHobq92R82rIejg+Po0zf3Z61Cz
 1dAPF/pj8rFwqEwDSbJYbQ=
X-Gm-Gg: AY/fxX77EeYfv9g9FYBAClgZGv/hGhTqaquLjQt22apMKyB9pXOishfYkUMYVrEeACC
 i1/Q78Lyqi5EeyxFGfEeURZX6xz3h0hfJol0UMZUBXb1TRLQ3WHX2BAaJNfKWEv9R/50urzg4jZ
 kO+n+2bAG3JpxIP636/kHISkbAs5RrmbzRRWzl0w6xuDPoN95op4c636281mseGiHvMdg4Xn8By
 F5dNUITXVQIfZJLC7c3mu4jRQDMN4TveVPasHjen5hTUWONrKneODImvzgVgADgLzNkZ+08DzVb
 2wuSdOektyqBtiwzVj+ZtZvZj9B8ZufIAgguFzIZbgbdyRvUzR1abT4E0VdLsgQZP7Si+CDZ2h9
 Px4rqiz3cg6sCZD250lAEUnQ5HDYHa1WyRH0vVuxVqM/ojgzPGvxsR4Q6qHgRMASh2JzxILaXx1
 FquylEC/i0Fz0DYYDdJ6XUjVIQbL4/zEAYQnaG658=
X-Google-Smtp-Source: AGHT+IEetr8CRcYWgh+QXWQUKVBJ0qdCayn6nFyCa/BeecZwM3veQkTlgMZs/KBicuelTLdx+d7nl3CNIZJQ
X-Received: by 2002:a05:620a:2a11:b0:8b2:edf1:7c5a with SMTP id
 af79cd13be357-8c08fa9989cmr4799314885a.47.1767045575765; 
 Mon, 29 Dec 2025 13:59:35 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
 by smtp-relay.gmail.com with ESMTPS id
 6a1803df08f44-88d98050c97sm40900466d6.25.2025.12.29.13.59.32
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Dec 2025 13:59:35 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4f4a92bf359so213340051cf.2
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1767045572; x=1767650372;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=huMey1yvlTcl9trBYSLi6aENqnLSe9ecqic2n3VA9bs=;
 b=hyDXXDujnU59CS5KL46A4nZVlEMOPptJpAXck5FPI8QTo8tEUdlKfzvrm5M28pC9ZB
 zFKcgxpDqmwfXebsj1j4dcIHLBKcXvdkHJRiG1QN7TkMBSDUJdRvUB/lJ0pncRoXh8Jo
 fVExEQwz14q9xdHuC9Pj4YGTIyL7AeckEOS/c=
X-Forwarded-Encrypted: i=1;
 AJvYcCVjf5rp5Qav98BYOZg1bz2e3nvfwRjfb1N0r9TRMaLEICmRXrEKlYX7K0yioY2IT/7ON8VJvq8uv9w7tg==@lists.freedesktop.org
X-Received: by 2002:a05:622a:120e:b0:4ed:1bba:f935 with SMTP id
 d75a77b69052e-4f4abdb2f22mr498101401cf.57.1767045572386; 
 Mon, 29 Dec 2025 13:59:32 -0800 (PST)
X-Received: by 2002:a05:622a:120e:b0:4ed:1bba:f935 with SMTP id
 d75a77b69052e-4f4abdb2f22mr498101101cf.57.1767045571961; 
 Mon, 29 Dec 2025 13:59:31 -0800 (PST)
Received: from localhost.localdomain
 (pool-173-49-113-140.phlapa.fios.verizon.net. [173.49.113.140])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88d9759f164sm231530026d6.24.2025.12.29.13.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Dec 2025 13:59:29 -0800 (PST)
From: Zack Rusin <zack.rusin@broadcom.com>
To: dri-devel@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/12] drm/qxl: Use devm aperture helpers for sysfb restore on
 probe failure
Date: Mon, 29 Dec 2025 16:58:13 -0500
Message-ID: <20251229215906.3688205-8-zack.rusin@broadcom.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251229215906.3688205-1-zack.rusin@broadcom.com>
References: <20251229215906.3688205-1-zack.rusin@broadcom.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Mailman-Approved-At: Tue, 30 Dec 2025 10:49:13 +0000
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

Use devm_aperture_remove_conflicting_pci_devices() instead of the
non-devm variant to automatically restore the system framebuffer
(efifb/simpledrm) if the driver's probe fails after removing the
firmware framebuffer.

Call devm_aperture_remove_conflicting_pci_devices_done() after
successful probe to cancel the automatic restore, as the driver
is now responsible for display output.

This ensures users don't lose display output if the qxl driver
fails to probe after removing the firmware framebuffer.

Signed-off-by: Zack Rusin <zack.rusin@broadcom.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: virtualization@lists.linux.dev
Cc: spice-devel@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/gpu/drm/qxl/qxl_drv.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
index 2bbb1168a3ff..ca4c817fd611 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.c
+++ b/drivers/gpu/drm/qxl/qxl_drv.c
@@ -93,7 +93,12 @@ qxl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		return ret;
 
-	ret = aperture_remove_conflicting_pci_devices(pdev, qxl_driver.name);
+	/*
+	 * Use devm variant to automatically restore sysfb if probe fails.
+	 * This ensures the user doesn't lose display if our probe fails
+	 * after removing the firmware framebuffer (efifb/simpledrm).
+	 */
+	ret = devm_aperture_remove_conflicting_pci_devices(pdev, qxl_driver.name);
 	if (ret)
 		goto disable_pci;
 
@@ -121,6 +126,13 @@ qxl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto modeset_cleanup;
 
 	drm_client_setup(&qdev->ddev, NULL);
+
+	/*
+	 * Probe succeeded - cancel the automatic sysfb restore action.
+	 * We're now responsible for display output.
+	 */
+	devm_aperture_remove_conflicting_pci_devices_done(pdev);
+
 	return 0;
 
 modeset_cleanup:
-- 
2.48.1

