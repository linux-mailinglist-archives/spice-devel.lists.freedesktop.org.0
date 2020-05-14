Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F841D2B5B
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 11:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FDA89ED6;
	Thu, 14 May 2020 09:26:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105A189ED6
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 09:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589448387;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=we/k3NgdiqtxPLp3W/J/YqAxFX+TxXUSFkAI5yJXEXU=;
 b=afKPoGnffsi0mm21Rrkq7l8SHuJJg/612NZB7w991NUr5i92V6KyaOO1JZSocXmpHSn4rj
 PHpIBdDtkDWL++pIojqCysBs3kxK1tBEc+pZwt2sq2gzpvGZqjS9oI4ln7CzqZMN6pRBKN
 eUfmyL4/sTnJepBNrkz5wTQyHRHNMGk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-g_NU6UWbNOiZbYNq3Jdx7A-1; Thu, 14 May 2020 05:26:21 -0400
X-MC-Unique: g_NU6UWbNOiZbYNq3Jdx7A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B6721902EA8;
 Thu, 14 May 2020 09:26:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 833156B8C1;
 Thu, 14 May 2020 09:26:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 791384CAA8;
 Thu, 14 May 2020 09:26:20 +0000 (UTC)
Date: Thu, 14 May 2020 05:26:19 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Melroy van den Berg <webmaster1989@gmail.com>
Message-ID: <553095995.26944814.1589448379881.JavaMail.zimbra@redhat.com>
In-Reply-To: <9FF76525-8C44-4C05-A238-2C0C3382A3D2@getmailspring.com>
References: <9FF76525-8C44-4C05-A238-2C0C3382A3D2@getmailspring.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.5, 10.4.195.3]
Thread-Topic: Bug in qxl kernel driver (bpp)
Thread-Index: CHIRVGZsHkGdFcoCsYR960UV3pVElg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Bug in qxl kernel driver (bpp)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> Hi folks,

> The Xorg log is getting spammed with the following messages (I noticed I'm
> not the only one on the Internet):

> > qxl_surface_create: Bad bpp: 1 (1)
> 
> > qxl_surface_create: Bad bpp: 1 (1)
> 
> > qxl_surface_create: Bad bpp: 1 (1)
> 
> I think this isn't nice for anyone. So I propose a fix in the driver around
> here :
> https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/qxl/qxl_cmd.c#L396
> A valid value of Bits per pixel (bpp aka Pixelmap) is often 24 (or 32 bit
> depth). Please try to play around with this, and see if you could make Xorg
> server happy again.

> Thanks!

> Regards,
> Melroy van den Berg

Hi,
  the "bpp" value does not arrive to the kernel so there's no point to update it.
It arrives from some other calls in the driver. I think the function to be changed
should qxl_create_pixmap in the Xorg driver (src/qxl_uxa.c).

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
