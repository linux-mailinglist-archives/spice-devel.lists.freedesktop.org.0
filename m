Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F680198C6F
	for <lists+spice-devel@lfdr.de>; Tue, 31 Mar 2020 08:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1AE46E544;
	Tue, 31 Mar 2020 06:40:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D325F89C9B
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Mar 2020 02:04:12 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id c12so3285417plz.2
 for <spice-devel@lists.freedesktop.org>; Sun, 29 Mar 2020 19:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=7gDKMMIuCNqmz3/gFIq4MvPM1PkZWROW621H1HN1ayU=;
 b=YJJOQ42obRjUghoYW825UVnnfvOqdCKDZkxvr3ldjeYbs7HRcGtW6yF5gngzV0UmqG
 4aYmhqZAjcQ+IiSthEWrCfX9hV3RYpQM7Vu2pbx+urVDPIyvVGq+Exd+n6v+1S6ZQKpX
 ruFgLZPndrkkCwS3ubZCF3PY/BRMoVIGmrPG9qd2WYHiWwXOkD/54gaL4H2XioMs0KMR
 duSW6t1hVwdCwGN82mLZyv9JSEetla7hhTRpdoC43ztw9pTKIPsdv8PrvxUU3+G49Yig
 ZvedXcOfBlKJULgZoWlTq+B9SZzdGakmwQZaBrZHCNxzTjMp7sUx2kLLJNjDg5HE18Lj
 Z0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=7gDKMMIuCNqmz3/gFIq4MvPM1PkZWROW621H1HN1ayU=;
 b=nQJSYG9ucCRYMXaTpWxsgBK/jpDNHstqBvsGLXjfiW22R9oqQG2aZSjF62mkH/f8cp
 qlhtoJDLxt50cW622nSBUmokPktpxM2LXjncyRwflJmaFBvtn7RqxZJvBTd9h8aArfp1
 lVtvok89h0Cf1jERKneODzMli9BET4MOWQ+PIS0fQyk08O1Xhu6TvZwhGp8SGEcATN8H
 jGXWJOXleq2j/wKcbTqR2js6dWI6nSbvmCF0hJys/sizECgnJoTheyxPxiud6fGPoYbN
 4UOgRVNxdr795FooviiPqf/hZo+TlP/EJoQH1CplggdmtPsUdIqDwvUY8fF0IF9BuuDs
 ktBA==
X-Gm-Message-State: ANhLgQ3/YEuM05nJMEcokKTEzMJ2O0mlEfZTEmjlHRlifps9MMTCUoiv
 BrW42+lBUDuEDNXV2mjEmA4=
X-Google-Smtp-Source: ADFU+vtqsbUeEdwSHonlCDsKOUHraHM3bcnXAJPPFZPf2ZHwkP278wf9E4Y0HVJgNAcsVnErLpLvBQ==
X-Received: by 2002:a17:90a:7182:: with SMTP id
 i2mr13099104pjk.74.1585533852357; 
 Sun, 29 Mar 2020 19:04:12 -0700 (PDT)
Received: from software.domain.org ([104.207.149.93])
 by smtp.gmail.com with ESMTPSA id e126sm8946089pfa.122.2020.03.29.19.04.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 29 Mar 2020 19:04:11 -0700 (PDT)
From: Huacai Chen <chenhc@lemote.com>
To: Dave Airlie <airlied@redhat.com>,
	Gerd Hoffmann <kraxel@redhat.com>
Date: Mon, 30 Mar 2020 10:12:22 +0800
Message-Id: <1585534342-889-1-git-send-email-chenhc@lemote.com>
X-Mailer: git-send-email 2.7.0
X-Mailman-Approved-At: Tue, 31 Mar 2020 06:40:45 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: Use correct notify port address when
 creating cursor ring
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
