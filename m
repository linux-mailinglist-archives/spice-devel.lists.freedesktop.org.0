Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7691BBABB
	for <lists+spice-devel@lfdr.de>; Tue, 28 Apr 2020 12:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EC46E258;
	Tue, 28 Apr 2020 10:07:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70216E258
 for <spice-devel@lists.freedesktop.org>; Tue, 28 Apr 2020 10:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588068455;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=40JrX1Ib8jbgt9ptFrcb5Orgz8x/1EK86WP+/TMsxAE=;
 b=DLqhNr302olIm2jqVoGEyFBPJNfVq4+586bGRljbiOMirTCbOP7+5mSZVnOPnhn18C2s7j
 8I11Yc34RnOfCij0vjKJBcEiUkxSzhwPLonp+wd+1oU3RLhQgxuZtjAJyzHLiMdLtPihMt
 Azb9tOvlP7pm+5tGZhzaWaJQzyWpEcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-zT7iwfZPMvq3C3hLYan8Bw-1; Tue, 28 Apr 2020 06:07:32 -0400
X-MC-Unique: zT7iwfZPMvq3C3hLYan8Bw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C04C8800D24;
 Tue, 28 Apr 2020 10:07:30 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-113-193.ams2.redhat.com
 [10.36.113.193])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E0D9C277A5;
 Tue, 28 Apr 2020 10:07:29 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id E2D639D98; Tue, 28 Apr 2020 12:07:28 +0200 (CEST)
Date: Tue, 28 Apr 2020 12:07:28 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <20200428100728.z5j3trkwgksxm2w5@sirius.home.kraxel.org>
References: <2e5a13ae-9ab2-5401-aa4d-03d5f5593423@virtuozzo.com>
MIME-Version: 1.0
In-Reply-To: <2e5a13ae-9ab2-5401-aa4d-03d5f5593423@virtuozzo.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] [PATCH 2/2] drm/qxl: qxl_release leak in
 qxl_hw_surface_alloc()
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 OpenVZ devel <devel@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 08:32:51AM +0300, Vasily Averin wrote:
> Cc: stable@vger.kernel.org
> Fixes: 8002db6336dd ("qxl: convert qxl driver to proper use for reservations")
> Signed-off-by: Vasily Averin <vvs@virtuozzo.com>

Both patches pushed to drm-misc-fixes.

thanks,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
