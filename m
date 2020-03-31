Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB0A1998FF
	for <lists+spice-devel@lfdr.de>; Tue, 31 Mar 2020 16:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347B46E83E;
	Tue, 31 Mar 2020 14:53:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F336E83E
 for <spice-devel@lists.freedesktop.org>; Tue, 31 Mar 2020 14:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585666431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nDs6T+KryTBsmRrAElzm+mnqqyDifHGjX0HWIx3qyik=;
 b=bzxOf7n83QLSFK3FjxEMbHQ9bi529+E02sHkhQ2+WLLKJ1MeAS+PaY33jr6OoAjsZRjUaF
 L8ih9fnJ+5gCTitBHaqUPVVByOsh0R1y906Hm6VDcs5GG/8ERQjGv671UNPUntTI8PJ59E
 XLRz83+A5063FnBjWV8GvxeqMQx2Stg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-hpUKDwKsMFGSk8FPm3Jkhg-1; Tue, 31 Mar 2020 10:53:30 -0400
X-MC-Unique: hpUKDwKsMFGSk8FPm3Jkhg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB7251005509;
 Tue, 31 Mar 2020 14:53:28 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-49.ams2.redhat.com
 [10.36.112.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E4BC41001B2B;
 Tue, 31 Mar 2020 14:53:26 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id F1E3D31F24; Tue, 31 Mar 2020 16:53:25 +0200 (CEST)
Date: Tue, 31 Mar 2020 16:53:25 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Huacai Chen <chenhc@lemote.com>
Message-ID: <20200331145325.f6j2jjczlz33xuyi@sirius.home.kraxel.org>
References: <1585635488-17507-1-git-send-email-chenhc@lemote.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585635488-17507-1-git-send-email-chenhc@lemote.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Spice-devel] [PATCH Resend] drm/qxl: Use correct notify port
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
 virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org,
 Fuxin Zhang <zhangfx@lemote.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 02:18:08PM +0800, Huacai Chen wrote:
> The command ring and cursor ring use different notify port addresses
> definition: QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR. However, in
> qxl_device_init() we use QXL_IO_NOTIFY_CMD to create both command ring
> and cursor ring. This doesn't cause any problems now, because QEMU's
> behaviors on QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR are the same.
> However, QEMU's behavior may be change in future, so let's fix it.
> 
> P.S.: In the X.org QXL driver, the notify port address of cursor ring
>       is correct.
> 
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Huacai Chen <chenhc@lemote.com>

Pushed to drm-misc-next.

thanks,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
