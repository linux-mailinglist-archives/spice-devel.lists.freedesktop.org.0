Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 482563105FF
	for <lists+spice-devel@lfdr.de>; Fri,  5 Feb 2021 08:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67766F3F0;
	Fri,  5 Feb 2021 07:43:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6A86F3F0
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Feb 2021 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612511014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QkctUj4JntN0l9IjN3mm31aWsWyPBr920PgHhtiFxa4=;
 b=jIHjqct8vvtsEKz2jiOqCETdPVKVPT/rFYm6R5Vy4UQtX/v4Wf3uhl5DOUS+d1wXyG6Vsc
 nggpaD1ADHTHjWnDDAl2L+mwsKMlqYQnqV+yHYH4NrF5zh7r5cx1c5ytTSBtgmzmJKZ6uL
 FGbZQUlYNTtPWlAl4/MAxSzfvU1guy0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-Id3HAsG6MuSpw28xyN0ZAw-1; Fri, 05 Feb 2021 02:43:33 -0500
X-MC-Unique: Id3HAsG6MuSpw28xyN0ZAw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EECD5192CC41;
 Fri,  5 Feb 2021 07:43:31 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-113-108.ams2.redhat.com
 [10.36.113.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AF35C5C1B4;
 Fri,  5 Feb 2021 07:43:31 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 35D6918000B6; Fri,  5 Feb 2021 08:43:30 +0100 (CET)
Date: Fri, 5 Feb 2021 08:43:30 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Tong Zhang <ztong0001@gmail.com>
Message-ID: <20210205074330.zsb2lg5umgkxh2p3@sirius.home.kraxel.org>
References: <20210204163050.1232756-1-ztong0001@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210204163050.1232756-1-ztong0001@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: Re: [Spice-devel] [PATCH v2] drm/qxl: do not run release if qxl
 failed to init
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 11:30:50AM -0500, Tong Zhang wrote:
> if qxl_device_init() fail, drm device will not be registered,
> in this case, do not run qxl_drm_release()

How do you trigger this?

take care,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
