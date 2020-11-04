Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E792A5EE4
	for <lists+spice-devel@lfdr.de>; Wed,  4 Nov 2020 08:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABE96E956;
	Wed,  4 Nov 2020 07:45:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6476E956
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Nov 2020 07:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604475926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gMHBEBfWminhbV2rdwxPH2HyLAMTZ2K2zM8Tyznk5eI=;
 b=Aydy0ECsTNBPmQg8S95VBUwQPkeBGkffgT0qJv4Q19imyGU2erCHbPejM8W4ixJ5vPSmlS
 l0LD6hHBU364letQLV5cGIK9xGrESRc6DVEmd9MPS/PcwOSfm+BXa8GNn29LyjQK9qif4Z
 61DWw/U33lmfi2wW5gzYs9sLgNxAleo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-bcj5nZzQOBCJRe2QAeORTA-1; Wed, 04 Nov 2020 02:45:21 -0500
X-MC-Unique: bcj5nZzQOBCJRe2QAeORTA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17A9C80365E;
 Wed,  4 Nov 2020 07:45:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F5246EF55;
 Wed,  4 Nov 2020 07:45:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07BDD85CD;
 Wed,  4 Nov 2020 07:45:20 +0000 (UTC)
Date: Wed, 4 Nov 2020 02:45:19 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <1537970932.464609.1604475919652.JavaMail.zimbra@redhat.com>
In-Reply-To: <rnse6m$11ke$1@ciao.gmane.io>
References: <rnse6m$11ke$1@ciao.gmane.io>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.5, 10.4.195.6]
Thread-Topic: desktop_layout: ignore unconnected video devices
Thread-Index: p2qLg6taMmo88uswSZeRvSCftUVIaQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH] desktop_layout: ignore unconnected video
 devices
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

> 
> Currently, the Windows agent does not function properly if it detects a
> non-QXL video adapter connected to the guest.  See:
> 
>    https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/15
>    https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/13
> 
> This is true even when the non-QXL adapter does not have any displays
> attached, such as when a physical GPU is passed through to the guest for
> AI/ML workloads.
> 
> With this patch, the agent ignores the presence of unconnected video
> outputs and the mouse works as expected.  If a display is connected to
> a non-QXL adapter, the behavior is unchanged.  (Tested on Windows 10 Pro
> x64.)
> 

Did you test with multiple monitors, specially with the first(s) QXL disabled?

> ---
>   vdagent/desktop_layout.cpp | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/vdagent/desktop_layout.cpp b/vdagent/desktop_layout.cpp
> index 07074da..8b538a1 100644
> --- a/vdagent/desktop_layout.cpp
> +++ b/vdagent/desktop_layout.cpp
> @@ -48,6 +48,16 @@ DesktopLayout::~DesktopLayout()
>       delete _display_config;
>   }
> 
> +static BOOL
> +dev_has_monitor(DISPLAY_DEVICE &dev_info)
> +{
> +    DISPLAY_DEVICE mon_info;
> +
> +    ZeroMemory(&mon_info, sizeof(mon_info));
> +    mon_info.cb = sizeof(mon_info);
> +    return EnumDisplayDevices(dev_info.DeviceName, 0, &mon_info, 0);
> +}
> +
>   static bool
>   get_next_display(DWORD &dev_id, DISPLAY_DEVICE &dev_info)
>   {
> @@ -64,6 +74,9 @@ get_next_display(DWORD &dev_id, DISPLAY_DEVICE &dev_info)
>           if (wcsstr(dev_info.DeviceString, L"Citrix Indirect Display")) {
>               continue;
>           }
> +        if (!dev_has_monitor(dev_info)) {
> +            continue;
> +        }
>           return true;
>       }
>       return false;
> --
> 2.26.2
> 

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
