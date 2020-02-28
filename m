Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D641732E2
	for <lists+spice-devel@lfdr.de>; Fri, 28 Feb 2020 09:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04DD6EE73;
	Fri, 28 Feb 2020 08:26:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27846EE4A;
 Fri, 28 Feb 2020 08:18:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4B306B27A;
 Fri, 28 Feb 2020 08:18:31 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, kraxel@redhat.com, noralf@tronnes.org,
 sam@ravnborg.org, alexander.deucher@amd.com, emil.velikov@collabora.com
Date: Fri, 28 Feb 2020 09:18:24 +0100
Message-Id: <20200228081828.18463-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 08:26:53 +0000
Subject: [Spice-devel] [PATCH v4 0/4] drm: Provide a simple encoder
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
Cc: spice-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Many DRM drivers implement an encoder with an empty implementation. This
patchset adds drm_simple_encoder_init(), which drivers can use instead.
Except for the destroy callback, the simple encoder's implementation is
empty.

The patchset also converts 4 encoder instances to use the simple-encoder
helpers. But there are at least 11 other drivers which can use the helper
and I think I did not examine all drivers yet.

The patchset was smoke-tested on mgag200 by running the fbdev console
and Gnome on X11.

v4:
	* print error messages with drm_err() (Sam)
	* qxl: handle errors of drm_simple_encoder_init() (Sam)
v3:
	* remove drm_simple_encoder_create() for lack of users (Sam, Daniel)
	* provide more precise documentation (Sam)
v2:
	* move simple encoder to KMS helpers (Daniel)
	* remove name argument; simplifies implementation (Gerd)
	* don't allocate with devm_ interfaces; unsafe with DRM (Noralf)

Thomas Zimmermann (4):
  drm/simple-kms: Add drm_simple_encoder_{init,create}()
  drm/ast: Use simple encoder
  drm/mgag200: Use simple encoder
  drm/qxl: Use simple encoder

 drivers/gpu/drm/ast/ast_drv.h           |  6 +-
 drivers/gpu/drm/ast/ast_mode.c          | 25 +++----
 drivers/gpu/drm/drm_simple_kms_helper.c | 34 +++++++++-
 drivers/gpu/drm/mgag200/mgag200_drv.h   |  9 +--
 drivers/gpu/drm/mgag200/mgag200_mode.c  | 86 ++++---------------------
 drivers/gpu/drm/qxl/qxl_display.c       | 29 ++++-----
 include/drm/drm_simple_kms_helper.h     |  4 ++
 7 files changed, 71 insertions(+), 122 deletions(-)

--
2.25.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
