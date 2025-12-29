Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6DECE976D
	for <lists+spice-devel@lfdr.de>; Tue, 30 Dec 2025 11:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88FA10E203;
	Tue, 30 Dec 2025 10:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="G3QP517V";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f227.google.com (mail-qk1-f227.google.com
 [209.85.222.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BD010E731
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 21:59:15 +0000 (UTC)
Received: by mail-qk1-f227.google.com with SMTP id
 af79cd13be357-8b2a4b6876fso1386685985a.3
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767045554; x=1767650354;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UwzcNp2HYOV4Z1mSXVXCsNd5TObEfxUddJJZvW7JJZk=;
 b=rar2+31lhxgI+gRq2SSJ864sfvZeNeCYQj2JiMfyYqNAZsQNZ/DJuZREMWSVf2Lz3W
 Ip/rM0cBpIEXat/Ndh8oXUodfyvJkUJZ1Z1AOEYlhvVtyKGxxmM/FEQO4mA0eMG5sHAp
 QyMhyier+7zhnLE12iX3bmgkHEiaSZrjwHpn+iowl3h6Vt+GgAljLZG9ND6/bx0/Zw7U
 Y62KXbMMGWPBpzMzYH3wDMnEDeVGHHmrVbPx7EPG0cvIQrWyMzHjORbfKTDjYpTKq+wT
 ivY/vn7UpJDFDJo9MKPjA32j152EjCqxbdcLb/dGpO18hwSZWylwl8MfTQKuYzxDArNu
 Agbg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVddbA+BNnGa6NPsYhtb5q4dCoNiVhFz1FPAfacvBAhfZq7YitE4uGF18Z0j+xSOTI2OnMSrLtm65Myrw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyNsdTHYWlBhm1LSgjQT9hpzZdajfmkT10ol2dQeReYKumM7Xuh
 lQkYaZt9YQPKAVzXXDWbK5Zz5dhwJY+jNkabaxJp1eoD+63OGGyFyXiWKPuGsEVJzHiyq6vkc95
 s/sBikI1/Ag5FxULzyQsM5Mn98QRSJ2YOCxW7bSvvcvG3nEZGPBEF3SbcUkjD8gZSQpDm1v3aVj
 9VNPCJvRaDvPcgr5jHoQA6g6ax0UvZVqqLPGH2cPkZ4NHAFFx7GdR34jna4d0rrlMWDy4VkIjTu
 YzFgLFx2JcEzpEex/m1xOo=
X-Gm-Gg: AY/fxX5Yg4fEICp6Nm/a7Y2GQInS4DabVa1Nd23W6b7lrRAM5xmRKmbshsPBPIVeeat
 yNVBQ6DVLhsee3MWiGjAuTjXOS4MUQhtjuOkVzD+uMiUl0GzrRmlXEk9Wodo/rCyb1PaUT43BQd
 Ab+uVt920mhkrEdslU930F3678Ils3uFI7TJW2qYrW6jrj3d5ZaDbE81CsPo3vFyzAkQZ3LYqzB
 WCaR8Qe76Ndc9Nw6W0/Hjq5DeZa2DWdKi33Db9eSPSTX0B40OLhQc8cGuwWHDFpCtkATwH9Flw6
 Www8azHZ2AuGJjZj5ZYIZrPYWmQpZSLerHv5OsqEBIkrM3kwMCJZyfBizwJG9NSWWcnMzb5vkgg
 z6/I66q7YszUAZmETKa+f8+avPmkTAiV/sTxdHFJK4Jl7VRKaC6NS0Oh4FijOiTNAex/urjb594
 cUCQSRYG00PshcvAjKNg9Q6S3PDmo05CdWcLjhqvoY98HH
X-Google-Smtp-Source: AGHT+IGtZp1AAK4UBjgg0pvekA5HBtj7a8CMJ20RScYw7q/cvsay8kDNqe1tgrwgn6VgEK/Z+8niNfgqHRhn
X-Received: by 2002:a05:620a:700d:b0:8b2:87a2:9c60 with SMTP id
 af79cd13be357-8c08fbcac1cmr4743581885a.83.1767045553979; 
 Mon, 29 Dec 2025 13:59:13 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
 by smtp-relay.gmail.com with ESMTPS id
 6a1803df08f44-88d954a7bf3sm42754726d6.11.2025.12.29.13.59.12
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Dec 2025 13:59:13 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-88233d526baso291609316d6.1
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1767045551; x=1767650351;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UwzcNp2HYOV4Z1mSXVXCsNd5TObEfxUddJJZvW7JJZk=;
 b=G3QP517V2+79xugo9WiUN9/4nvomNMyOtCEF8nRmSbwO/TgAeAN/0yFNc2Wht2xRWo
 kXpX9BKl06iDn7dXKCxN0Hc7ZNnj40+3PBCzYTITKNeGF3pqFo+p56oZNfUy4FM87LiR
 sWCM+NUM0TZWQHca0BdTOjlvWhrzJrHM9KYHI=
X-Forwarded-Encrypted: i=1;
 AJvYcCVryuDiCCEA4wO6Xa4jx8OKcnXSKoLVbNSEXX1tCTt4vm7HX+dGNI3yw5Dn34MeVHYTjYq4rc+Y68vyjQ==@lists.freedesktop.org
X-Received: by 2002:a05:6214:428e:b0:88a:3681:1d96 with SMTP id
 6a1803df08f44-88d881b984fmr478636216d6.63.1767045551441; 
 Mon, 29 Dec 2025 13:59:11 -0800 (PST)
X-Received: by 2002:a05:6214:428e:b0:88a:3681:1d96 with SMTP id
 6a1803df08f44-88d881b984fmr478635666d6.63.1767045550918; 
 Mon, 29 Dec 2025 13:59:10 -0800 (PST)
Received: from localhost.localdomain
 (pool-173-49-113-140.phlapa.fios.verizon.net. [173.49.113.140])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88d9759f164sm231530026d6.24.2025.12.29.13.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Dec 2025 13:59:10 -0800 (PST)
From: Zack Rusin <zack.rusin@broadcom.com>
To: dri-devel@lists.freedesktop.org
Cc: Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Ard Biesheuvel <ardb@kernel.org>, Ce Sun <cesun102@amd.com>,
 Chia-I Wu <olvaffe@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Deepak Rawat <drawat.floss@gmail.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Hans de Goede <hansg@kernel.org>, Hawking Zhang <Hawking.Zhang@amd.com>,
 Helge Deller <deller@gmx.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Jocelyn Falempe <jfalempe@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lijo Lazar <lijo.lazar@amd.com>, linux-efi@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Maxime Ripard <mripard@kernel.org>, nouveau@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Timur=20Krist=C3=B3f?= <timur.kristof@gmail.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, virtualization@lists.linux.dev,
 Vitaly Prosyak <vitaly.prosyak@amd.com>
Subject: [PATCH 00/12] Recover sysfb after DRM probe failure
Date: Mon, 29 Dec 2025 16:58:06 -0500
Message-ID: <20251229215906.3688205-1-zack.rusin@broadcom.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Almost a rite of passage for every DRM developer and most Linux users
is upgrading your DRM driver/updating boot flags/changing some config
and having DRM driver fail at probe resulting in a blank screen.

Currently there's no way to recover from DRM driver probe failure. PCI
DRM driver explicitly throw out the existing sysfb to get exclusive
access to PCI resources so if the probe fails the system is left without
a functioning display driver.

Add code to sysfb to recever system framebuffer when DRM driver's probe
fails. This means that a DRM driver that fails to load reloads the system
framebuffer driver.

This works best with simpledrm. Without it Xorg won't recover because
it still tries to load the vendor specific driver which ends up usually
not working at all. With simpledrm the system recovers really nicely
ending up with a working console and not a blank screen.

There's a caveat in that some hardware might require some special magic
register write to recover EFI display. I'd appreciate it a lot if
maintainers could introduce a temporary failure in their drivers
probe to validate that the sysfb recovers and they get a working console.
The easiest way to double check it is by adding:
 /* XXX: Temporary failure to test sysfb restore - REMOVE BEFORE COMMIT */
 dev_info(&pdev->dev, "Testing sysfb restore: forcing probe failure\n");
 ret = -EINVAL;
 goto out_error;
or such right after the devm_aperture_remove_conflicting_pci_devices .

Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: amd-gfx@lists.freedesktop.org
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Ce Sun <cesun102@amd.com>
Cc: Chia-I Wu <olvaffe@gmail.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: Danilo Krummrich <dakr@kernel.org>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Deepak Rawat <drawat.floss@gmail.com>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: dri-devel@lists.freedesktop.org
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Gurchetan Singh <gurchetansingh@chromium.org>
Cc: Hans de Goede <hansg@kernel.org>
Cc: Hawking Zhang <Hawking.Zhang@amd.com>
Cc: Helge Deller <deller@gmx.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lijo Lazar <lijo.lazar@amd.com>
Cc: linux-efi@vger.kernel.org
Cc: linux-fbdev@vger.kernel.org
Cc: linux-hyperv@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: "Mario Limonciello (AMD)" <superm1@kernel.org>
Cc: Mario Limonciello <mario.limonciello@amd.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: nouveau@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: spice-devel@lists.freedesktop.org
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: "Timur Kristóf" <timur.kristof@gmail.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: virtualization@lists.linux.dev
Cc: Vitaly Prosyak <vitaly.prosyak@amd.com>

Zack Rusin (12):
  video/aperture: Add sysfb restore on DRM probe failure
  drm/vmwgfx: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/xe: Use devm aperture helpers for sysfb restore on probe failure
  drm/amdgpu: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/virtio: Add sysfb restore on probe failure
  drm/nouveau: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/qxl: Use devm aperture helpers for sysfb restore on probe failure
  drm/vboxvideo: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/hyperv: Add sysfb restore on probe failure
  drm/ast: Use devm aperture helpers for sysfb restore on probe failure
  drm/radeon: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/i915: Use devm aperture helpers for sysfb restore on probe failure

 drivers/firmware/efi/sysfb_efi.c           |   2 +-
 drivers/firmware/sysfb.c                   | 191 +++++++++++++--------
 drivers/firmware/sysfb_simplefb.c          |  10 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c |   9 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    |   7 +
 drivers/gpu/drm/ast/ast_drv.c              |  13 +-
 drivers/gpu/drm/hyperv/hyperv_drm_drv.c    |  23 +++
 drivers/gpu/drm/i915/i915_driver.c         |  13 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c      |  16 +-
 drivers/gpu/drm/qxl/qxl_drv.c              |  14 +-
 drivers/gpu/drm/radeon/radeon_drv.c        |  15 +-
 drivers/gpu/drm/vboxvideo/vbox_drv.c       |  13 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c       |  29 ++++
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c        |  13 +-
 drivers/gpu/drm/xe/xe_device.c             |   7 +-
 drivers/gpu/drm/xe/xe_pci.c                |   7 +
 drivers/video/aperture.c                   |  54 ++++++
 include/linux/aperture.h                   |  14 ++
 include/linux/sysfb.h                      |   6 +
 19 files changed, 368 insertions(+), 88 deletions(-)

-- 
2.48.1

