Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6350A2E0
	for <lists+spice-devel@lfdr.de>; Thu, 21 Apr 2022 16:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B1410E354;
	Thu, 21 Apr 2022 14:42:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C3AA10E61B
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Apr 2022 14:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650550866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=H5k1rgXE1P7IbK6cMqND8jHr8Tf+eEFak/sZ9mPOKJY=;
 b=QkphaMkd/2f0icmD59VFPW+PAIiOPxqs5D4mrHhBJrZ2pocazbaCcSPkhxFtLC5yBwKdSW
 mVyy05Fs6g4SVxChADB1IFebzVLxI0XPFjwkdt0w8IEJYaKOaIjWn9qbz5T0hPo6zihW0f
 G85n146JrQbLPh8YJ+35LGu6hzXyW8g=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-629-jiLX75e9NM-CYywGadZCAQ-1; Thu, 21 Apr 2022 10:21:05 -0400
X-MC-Unique: jiLX75e9NM-CYywGadZCAQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 a24-20020ac81098000000b002e1e06a72aeso3052429qtj.6
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Apr 2022 07:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H5k1rgXE1P7IbK6cMqND8jHr8Tf+eEFak/sZ9mPOKJY=;
 b=OPkPItdNt6CuoPi2CY2pBRuS7KafT+sCSPzh0GpF4/3Vvp4aR0NYWLPNTWkbAMuRvx
 xMF5ehMJqnHDJjYhzvQl6hqPFLuWSkYeGuEfE6dXpZsA6dtKEO7dqIQiQ1AASPova/PH
 vb2H/w3EMDiUfMzA1OQIaf6sMDQkmG+DF3owfyDqNnEsAeXsbsP+jbYPD7dBjsCx8GK2
 /dvR43rZAnhDyXJ2VEfQN7bTzFsW8j0Y6FlFPCcbKu97kDjpyZtukKqwhgIeoSXuml7F
 juNl7Kc6lupZflSS2yPjgY/eA2XJnA+ykRD2cXoprOjILil0B8xhTU150fYSxlLnFkjN
 R17g==
X-Gm-Message-State: AOAM530908QUFQL6nKmrEDvhPohW+My4LAdKFVh5rkxx5owF5Z/gt/yD
 bMCbT6A8XdMJ4LAv4yKCHBBlNAPJFT8Gn8w3WAzFTbqRQG5T1myfGsAkHXqcqhYJepaWoJierhs
 O1C72SR94VoDi0TVsqNVW8ABoUi4FOHU=
X-Received: by 2002:ac8:7088:0:b0:2f1:e898:2971 with SMTP id
 y8-20020ac87088000000b002f1e8982971mr17388777qto.152.1650550865000; 
 Thu, 21 Apr 2022 07:21:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxT8nLASqLzLkqUhCnNzC+DSX/0wzDIp2IM7/27GwXj/kq8GhqiNKzl6Dba3zy6dUouhyaww==
X-Received: by 2002:ac8:7088:0:b0:2f1:e898:2971 with SMTP id
 y8-20020ac87088000000b002f1e8982971mr17388760qto.152.1650550864784; 
 Thu, 21 Apr 2022 07:21:04 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 j131-20020a37a089000000b0069e7ebc625bsm2881419qke.78.2022.04.21.07.21.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 07:21:04 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: airlied@redhat.com, kraxel@redhat.com, airlied@linux.ie, daniel@ffwll.ch
Date: Thu, 21 Apr 2022 10:20:54 -0400
Message-Id: <20220421142054.3751507-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Thu, 21 Apr 2022 14:42:34 +0000
Subject: [Spice-devel] [PATCH] drm/qxl: remove qxl_log_level global
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
Cc: spice-devel@lists.freedesktop.org, Tom Rix <trix@redhat.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Smatch reports this issue
qxl_kms.c:36:5: warning: symbol 'qxl_log_level' was not declared. Should it be static?

qxl_log_level is defined qxl_kms.c but unused, so remove.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/qxl/qxl_kms.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
index a054e4a00fe8..9bf6d4cc98d4 100644
--- a/drivers/gpu/drm/qxl/qxl_kms.c
+++ b/drivers/gpu/drm/qxl/qxl_kms.c
@@ -33,8 +33,6 @@
 #include "qxl_drv.h"
 #include "qxl_object.h"
 
-int qxl_log_level;
-
 static bool qxl_check_device(struct qxl_device *qdev)
 {
 	struct qxl_rom *rom = qdev->rom;
-- 
2.27.0

