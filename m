Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B7F175D5C
	for <lists+spice-devel@lfdr.de>; Mon,  2 Mar 2020 15:38:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB79B6E2B4;
	Mon,  2 Mar 2020 14:38:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB1E16E2B4
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 14:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583159905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uXnC/8WvwOkdTCJE0CHHtKZI/tsrVnQNs/UezO8wEPI=;
 b=WBTFWGfGvE/Oshi6/3EOu1LNVqi6lmS+vH9ExTlNgHsLxDIBaMveyIcFq7jypfIWFe5nmM
 NL78YfL7pQuuD2TEtcElfFRyUldSgSGGu3ACo5PJiOXxmFx9XIXyZi2tLCSzGmxmJPwbXH
 rsFMAFXsxmcGZcMqnwqpxhOlw4VzzCw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-UbPQGV0RMDmZ1gPrhY5q3A-1; Mon, 02 Mar 2020 09:38:23 -0500
X-MC-Unique: UbPQGV0RMDmZ1gPrhY5q3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA6219242D;
 Mon,  2 Mar 2020 14:38:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C8B560C41;
 Mon,  2 Mar 2020 14:38:14 +0000 (UTC)
Received: from zmail23.collab.prod.int.phx2.redhat.com
 (zmail23.collab.prod.int.phx2.redhat.com [10.5.83.28])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B924C84460;
 Mon,  2 Mar 2020 14:38:14 +0000 (UTC)
Date: Mon, 2 Mar 2020 09:38:14 -0500 (EST)
From: Marek Kedzierski <mkedzier@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <555479041.13627083.1583159894670.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200227100255.8066-3-yuri.benditovich@daynix.com>
References: <20200227100255.8066-1-yuri.benditovich@daynix.com>
 <20200227100255.8066-3-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.176, 10.4.195.25]
Thread-Topic: Remap the pointer in case of rotated screen
Thread-Index: o6zgYbn/ISUc4WPe7kUuMYsmbueJ9w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH qxl-wddm-dod 3/3] Remap the pointer in
 case of rotated screen
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

ack

----- Original Message -----
> From: "Yuri Benditovich" <yuri.benditovich@daynix.com>
> To: spice-devel@lists.freedesktop.org
> Cc: yan@daynix.com
> Sent: Thursday, February 27, 2020 11:02:55 AM
> Subject: [Spice-devel] [PATCH qxl-wddm-dod 3/3] Remap the pointer in case of rotated screen
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1791804
> The remapping will work only when the driver controls
> the placement of drawn pointer, i.e. when the input
> device in VM is usb-mouse and the Spice Agent is not
> active.
> 
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  qxldod/QxlDod.cpp | 26 +++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
> index 6e97360..7f03ee1 100755
> --- a/qxldod/QxlDod.cpp
> +++ b/qxldod/QxlDod.cpp
> @@ -557,7 +557,31 @@ NTSTATUS QxlDod::SetPointerPosition(_In_ CONST
> DXGKARG_SETPOINTERPOSITION* pSetP
>  
>      QXL_ASSERT(pSetPointerPosition != NULL);
>      QXL_ASSERT(pSetPointerPosition->VidPnSourceId < MAX_VIEWS);
> -
> +    DXGKARG_SETPOINTERPOSITION adjusted;
> +    if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation ==
> D3DKMDT_VPPR_ROTATE90)
> +    {
> +        adjusted = *pSetPointerPosition;
> +        adjusted.Y =
> m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeHeight -
> pSetPointerPosition->X;
> +        adjusted.X = pSetPointerPosition->Y;
> +        DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: src %d,%d -> %d,%d\n",
> __FUNCTION__,
> +            pSetPointerPosition->X, pSetPointerPosition->Y,
> +            adjusted.X, adjusted.Y));
> +        pSetPointerPosition = &adjusted;
> +    }
> +    else if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation ==
> D3DKMDT_VPPR_ROTATE180)
> +    {
> +        adjusted = *pSetPointerPosition;
> +        adjusted.Y =
> m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeHeight -
> pSetPointerPosition->Y;
> +        adjusted.X =
> m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeWidth -
> pSetPointerPosition->X;
> +        pSetPointerPosition = &adjusted;
> +    }
> +    else if (m_CurrentModes[pSetPointerPosition->VidPnSourceId].Rotation ==
> D3DKMDT_VPPR_ROTATE270)
> +    {
> +        adjusted = *pSetPointerPosition;
> +        adjusted.Y = pSetPointerPosition->X;
> +        adjusted.X =
> m_CurrentModes[pSetPointerPosition->VidPnSourceId].SrcModeWidth -
> pSetPointerPosition->Y;
> +        pSetPointerPosition = &adjusted;
> +    }
>      return m_pHWDevice->SetPointerPosition(pSetPointerPosition);
>  }
>  
> --
> 2.17.1
> 
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> 
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
