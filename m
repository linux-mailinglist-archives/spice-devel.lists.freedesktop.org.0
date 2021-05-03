Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8F53726F7
	for <lists+spice-devel@lfdr.de>; Tue,  4 May 2021 10:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA30A6EAA4;
	Tue,  4 May 2021 08:11:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226596E976;
 Mon,  3 May 2021 16:38:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C92DF613EC;
 Mon,  3 May 2021 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620059914;
 bh=FQ95+PVS9jyQVavZhWJcRl4uzYy8iOsxHCq9oDkNd8E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EcCjSIycO2uEQuwYqFWYT9cuN4PhBp9SXiS0kZLnqrtM1uMw03+nc5Y4kOxAwo0FA
 jrYnk4y2aOOw6A2gBo+aUcE6Q7cFYp/eWIzQkboDaoJwNi9SWkEHB+38lICr4If+mu
 b6r5SnewyJzYWEfXnqUvNvrZw4eppPKbzrN9lQ5IJCx8qfwfc9deUWYW7QZbfJbvJq
 jNtd1+mmzdsuKn5wJCofeUBu5HbAsfSYWHti6/OduSgakYK6Dezdp7c0K4kV5P79Ef
 WjJd9R8XnbfR3I5TpgRmIbRb39puTVC7oErq0h90/nzSWQPRMmqRkgDcMiGyLMVdT2
 9ZRIQCxcq6bQw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  3 May 2021 12:36:52 -0400
Message-Id: <20210503163829.2852775-3-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503163829.2852775-1-sashal@kernel.org>
References: <20210503163829.2852775-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Tue, 04 May 2021 08:11:34 +0000
Subject: [Spice-devel] [PATCH AUTOSEL 5.10 003/100] drm/qxl: release shadow
 on shutdown
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
Cc: Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Gerd Hoffmann <kraxel@redhat.com>

[ Upstream commit 4ca77c513537700d3fae69030879f781dde1904c ]

In case we have a shadow surface on shutdown release
it so it doesn't leak.

Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Link: http://patchwork.freedesktop.org/patch/msgid/20210204145712.1531203-6-kraxel@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/qxl/qxl_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 862ef59d4d03..1f0802f5d84e 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -1224,6 +1224,10 @@ int qxl_modeset_init(struct qxl_device *qdev)
 
 void qxl_modeset_fini(struct qxl_device *qdev)
 {
+	if (qdev->dumb_shadow_bo) {
+		drm_gem_object_put(&qdev->dumb_shadow_bo->tbo.base);
+		qdev->dumb_shadow_bo = NULL;
+	}
 	qxl_destroy_monitors_object(qdev);
 	drm_mode_config_cleanup(&qdev->ddev);
 }
-- 
2.30.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
