Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B07175D5B
	for <lists+spice-devel@lfdr.de>; Mon,  2 Mar 2020 15:38:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C900488E8E;
	Mon,  2 Mar 2020 14:38:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A915F88E8E
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 14:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583159886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JnPhu5f/kX6Kke8gaNbaJSvKDtRp9bfMLUlA/8snNTk=;
 b=JtWlZYVLyzNGx0tYa6Ypk5mw/FieELNpdRnA3+83hwjJIJvHsZas7IwqIoHVsI5I0ulvA7
 qSN1wQG4oRBmwk/IZRLYuzajlsFrokwCR9qz1OThyyST9DwG02/TPofD66r/sYf2FVlETK
 EBcSvBCDcMW55U+G8FXcs+xBfEBNAk4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-SfhuYJ4qMX-SX8edF5q66Q-1; Mon, 02 Mar 2020 09:37:59 -0500
X-MC-Unique: SfhuYJ4qMX-SX8edF5q66Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A680A18C43DA;
 Mon,  2 Mar 2020 14:37:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 777976684C;
 Mon,  2 Mar 2020 14:37:57 +0000 (UTC)
Received: from zmail23.collab.prod.int.phx2.redhat.com
 (zmail23.collab.prod.int.phx2.redhat.com [10.5.83.28])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3DB8182B00E;
 Mon,  2 Mar 2020 14:37:57 +0000 (UTC)
Date: Mon, 2 Mar 2020 09:37:57 -0500 (EST)
From: Marek Kedzierski <mkedzier@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <226831781.13626870.1583159877368.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200227100255.8066-2-yuri.benditovich@daynix.com>
References: <20200227100255.8066-1-yuri.benditovich@daynix.com>
 <20200227100255.8066-2-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.176, 10.4.195.25]
Thread-Topic: Enable screen rotation of 180 and 270 degrees
Thread-Index: bvzP+oZtiF5j/poPeoceOI3RvwDx8A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH qxl-wddm-dod 2/3] Enable screen rotation
 of 180 and 270 degrees
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
> Sent: Thursday, February 27, 2020 11:02:54 AM
> Subject: [Spice-devel] [PATCH qxl-wddm-dod 2/3] Enable screen rotation of 180 and 270 degrees
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1791804
> Currently the screen can be shown as Landscape and
> Portrait (90 deg. rotation). Allowing also Flipped
> Portrait (270 deg. rotation) and Flipped Landscape
> (180 deg).
> 
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  qxldod/QxlDod.cpp | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
> index 95c0e97..6e97360 100755
> --- a/qxldod/QxlDod.cpp
> +++ b/qxldod/QxlDod.cpp
> @@ -1299,8 +1299,8 @@ NTSTATUS QxlDod::EnumVidPnCofuncModality(_In_ CONST
> DXGKARG_ENUMVIDPNCOFUNCMODAL
>                  LocalVidPnPresentPath.ContentTransformation.RotationSupport.Identity
>                  = 1;
>                  // Sample supports only Rotate90
>                  LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate90
>                  = 1;
> -
> LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate180
> = 0;
> -
> LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate270
> = 0;
> +
> LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate180
> = 1;
> +
> LocalVidPnPresentPath.ContentTransformation.RotationSupport.Rotate270
> = 1;
>                  SupportFieldsModified = TRUE;
>              }
>          } // End: ROTATION
> @@ -1639,6 +1639,8 @@ NTSTATUS QxlDod::SetSourceModeAndPath(CONST
> D3DKMDT_VIDPN_SOURCE_MODE* pSourceMo
>               if (pCurrentBddMode->DispInfo.Width ==
>               pModeInfo->VisScreenWidth &&
>                   pCurrentBddMode->DispInfo.Height ==
>                   pModeInfo->VisScreenHeight )
>               {
> +                 DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: %dx%d, rotation
> %d\n", __FUNCTION__,
> +                     pCurrentBddMode->SrcModeHeight,
> pCurrentBddMode->SrcModeWidth, pCurrentBddMode->Rotation));
>                   Status =
>                   m_pHWDevice->SetCurrentMode(m_pHWDevice->GetModeNumber(ModeIndex));
>                   if (NT_SUCCESS(Status))
>                   {
> @@ -1684,6 +1686,8 @@ NTSTATUS QxlDod::IsVidPnPathFieldsValid(CONST
> D3DKMDT_VIDPN_PRESENT_PATH* pPath)
>      }
>      else if ((pPath->ContentTransformation.Rotation !=
>      D3DKMDT_VPPR_IDENTITY) &&
>               (pPath->ContentTransformation.Rotation !=
>               D3DKMDT_VPPR_ROTATE90) &&
> +             (pPath->ContentTransformation.Rotation !=
> D3DKMDT_VPPR_ROTATE180) &&
> +             (pPath->ContentTransformation.Rotation !=
> D3DKMDT_VPPR_ROTATE270) &&
>               (pPath->ContentTransformation.Rotation !=
>               D3DKMDT_VPPR_NOTSPECIFIED) &&
>               (pPath->ContentTransformation.Rotation !=
>               D3DKMDT_VPPR_UNINITIALIZED))
>      {
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
