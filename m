Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5BB198C6E
	for <lists+spice-devel@lfdr.de>; Tue, 31 Mar 2020 08:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36996E542;
	Tue, 31 Mar 2020 06:40:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2D86E536
 for <spice-devel@lists.freedesktop.org>; Tue, 31 Mar 2020 06:10:06 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id w3so7724144plz.5
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Mar 2020 23:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=7gDKMMIuCNqmz3/gFIq4MvPM1PkZWROW621H1HN1ayU=;
 b=YdSZ586ZUgz6lb4fgc0t9r8Jxl0i7MDKTTdEubCA94y0Y/lSiz3Igp2J+b73rVmKAp
 WU5NfS0PX4wBSXBJk49GmGvWvyzeX1+2oXcj601lkxqxAwSLXZwc2ZxYvg9rLZEqFt68
 c6ZAA6t2W27i28NDM7MwgTJV8E87k8vbH7JbSxgcD0R0DmvdjAV/f+dkkreNKkKNCUDO
 agfbOP28/ysqeYtE1zEppqKFhKQwjriGlxxqHONzXUmYrMliTMvw37yy5GCh080ZWeIz
 WJbPZCgAmk0nHSI1jC8MXbU6ycoq8bTgV9T5+NOjOxokdpHmI7rfnPISmJXhrxB2XAsH
 AVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=7gDKMMIuCNqmz3/gFIq4MvPM1PkZWROW621H1HN1ayU=;
 b=RErMT2V4zfG3BYHEOm1hoS2y3GZ4fSBgaI4TvgbBD7rAMJFY7eYXtrOtOJ05zvVlfZ
 2dJlXvjiWkMCOFNx4cn9Q4vg4ckkRQgPW58tUu99OSaXm2jNPfc3TQxE5F2dY+tn2o2a
 eV6aFUizRZzKshm71twExBlesdJXw5epCjYSu6i7DlpIe7GUXyanDnozkBEDr2ZQccGn
 PSMGL6TZXsggNpYwOwxDiTRn14jQP+uQvfV31rn9L5wUXVPrctNP6P4kzhlThzyhTuBS
 fdewzAPnNDeMbBf5XR6rK7iTogTOgsRoDX97B/jvNdgUSIjXGT5KAoUr05IZUND7p0IY
 Ficg==
X-Gm-Message-State: AGi0PuaurKD16h8fETmdLOSxJk357wYmG76sbHeCyeR7TWnW7hk0+CGp
 IZssBJ4S8I7TigLHmqJu7hI=
X-Google-Smtp-Source: APiQypL6SM9R3Junk6mCmNdTFwzDZbZ4pRbnQMT67D/+476FqoDC4YGt7uTmufgFNPymKZG+5jOt3w==
X-Received: by 2002:a17:90a:3606:: with SMTP id
 s6mr2035567pjb.195.1585635006492; 
 Mon, 30 Mar 2020 23:10:06 -0700 (PDT)
Received: from software.domain.org ([104.207.149.93])
 by smtp.gmail.com with ESMTPSA id r29sm10890190pgm.17.2020.03.30.23.10.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 30 Mar 2020 23:10:05 -0700 (PDT)
From: Huacai Chen <chenhc@lemote.com>
To: Dave Airlie <airlied@redhat.com>,
	Gerd Hoffmann <kraxel@redhat.com>
Date: Tue, 31 Mar 2020 14:18:08 +0800
Message-Id: <1585635488-17507-1-git-send-email-chenhc@lemote.com>
X-Mailer: git-send-email 2.7.0
X-Mailman-Approved-At: Tue, 31 Mar 2020 06:40:45 +0000
Subject: [Spice-devel] [PATCH Resend] drm/qxl: Use correct notify port
 address when creating cursor ring
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
Cc: Huacai Chen <chenhuacai@gmail.com>, stable@vger.kernel.org,
 virtualization@lists.linux-foundation.org, Fuxin Zhang <zhangfx@lemote.com>,
 Huacai Chen <chenhc@lemote.com>, spice-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The command ring and cursor ring use different notify port addresses
definition: QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR. However, in
qxl_device_init() we use QXL_IO_NOTIFY_CMD to create both command ring
and cursor ring. This doesn't cause any problems now, because QEMU's
behaviors on QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR are the same.
However, QEMU's behavior may be change in future, so let's fix it.

P.S.: In the X.org QXL driver, the notify port address of cursor ring
      is correct.

Cc: <stable@vger.kernel.org>
Signed-off-by: Huacai Chen <chenhc@lemote.com>
---
 drivers/gpu/drm/qxl/qxl_kms.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
index bfc1631..9bdbe0d 100644
--- a/drivers/gpu/drm/qxl/qxl_kms.c
+++ b/drivers/gpu/drm/qxl/qxl_kms.c
@@ -218,7 +218,7 @@ int qxl_device_init(struct qxl_device *qdev,
 				&(qdev->ram_header->cursor_ring_hdr),
 				sizeof(struct qxl_command),
 				QXL_CURSOR_RING_SIZE,
-				qdev->io_base + QXL_IO_NOTIFY_CMD,
+				qdev->io_base + QXL_IO_NOTIFY_CURSOR,
 				false,
 				&qdev->cursor_event);
 
-- 
2.7.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
