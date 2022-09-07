Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971B05B021C
	for <lists+spice-devel@lfdr.de>; Wed,  7 Sep 2022 12:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F021B10E558;
	Wed,  7 Sep 2022 10:51:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5B410E4E2
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Sep 2022 10:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662545833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=afHMjG2HkRYvCDuYzjTQhxoQdwvvL29SNFSccxhwbQY=;
 b=OXf2w8aOd9FNVRhg23RECFwnmLWX4mi8bnqMIjBQbGAu7DuvGiw9QVqu6Cn3GnF+gXQPpG
 A8qe/6XH3SQRa0l4GVHLUzLpfyzWIGCBcwzwNeeB4w5KtqMnfYQcS3a+9vxiHuXX2Hsigr
 lBBI/UlATevjeWeXlbzn95SxXEEQuKE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-575-AZwPBN3lN5GhXRakgF0ASA-1; Wed, 07 Sep 2022 06:17:10 -0400
X-MC-Unique: AZwPBN3lN5GhXRakgF0ASA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5F2580418F;
 Wed,  7 Sep 2022 10:17:09 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.195.70])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CA001121314;
 Wed,  7 Sep 2022 10:17:09 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 017DF180039B; Wed,  7 Sep 2022 12:17:07 +0200 (CEST)
Date: Wed, 7 Sep 2022 12:17:07 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Zongmin Zhou <min_halo@163.com>
Message-ID: <20220907101707.ghkrtsba4eeje43p@sirius.home.kraxel.org>
References: <20220907094423.93581-1-min_halo@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220907094423.93581-1-min_halo@163.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mailman-Approved-At: Wed, 07 Sep 2022 10:51:46 +0000
Subject: Re: [Spice-devel] [PATCH] drm/qxl: fix the suspend/resume issue on
 qxl device
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 zhouzongmin@kylinos.cn, Ming Xie <xieming@kylinos.cn>, daniel@ffwll.ch,
 spice-devel@lists.freedesktop.org, airlied@redhat.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Wed, Sep 07, 2022 at 05:44:23PM +0800, Zongmin Zhou wrote:
> 
> From: Zongmin Zhou <zhouzongmin@kylinos.cn>
> 
> Details:
> Currently, when trying to suspend and resume with qxl device，
> there are some error messages after resuming,
> eventually caused to black screen and can't be recovered.

[ analysis snipped ]

> Let's fix this by reset io and remove the qxl_ring_init_hdr calling.

Pushed to drm-misc-next

thanks,
  Gerd

