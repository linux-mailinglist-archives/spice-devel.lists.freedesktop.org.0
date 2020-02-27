Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6209B171FCF
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 15:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882696ECC6;
	Thu, 27 Feb 2020 14:39:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138F66ECC1
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 14:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582814391;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bd2KZkWX2FDWDddxEMc3d0vyx+MEBWnC4YGoxXFBy1U=;
 b=h/FrTqRKXJRL/0nKuwnLanX207agOF/SD5ZxXkvpS+vwoLaVF/rWLKcyh58MRQdCERCFbs
 la8QPWaznleFP6m0Yd96+C8F5w7VxbYB6MGUfKN1zYKWA5SIovvyfuV30QW538W764B9yH
 NViHPU4wCoLRhmoxnYt6t3R5+u41+Z8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-oAl0FERfM7ieibKN13t2mg-1; Thu, 27 Feb 2020 09:39:43 -0500
X-MC-Unique: oAl0FERfM7ieibKN13t2mg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16119800D54;
 Thu, 27 Feb 2020 14:39:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DAAE19E9C;
 Thu, 27 Feb 2020 14:39:42 +0000 (UTC)
Received: from zmail23.collab.prod.int.phx2.redhat.com
 (zmail23.collab.prod.int.phx2.redhat.com [10.5.83.28])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE88118095FF;
 Thu, 27 Feb 2020 14:39:41 +0000 (UTC)
Date: Thu, 27 Feb 2020 09:39:41 -0500 (EST)
From: Marek Kedzierski <mkedzier@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <389941842.13148739.1582814381783.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200227100255.8066-1-yuri.benditovich@daynix.com>
References: <20200227100255.8066-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.206.46, 10.4.195.1]
Thread-Topic: qxl-wddm-dod: Allow additional low resolution
Thread-Index: 314fGNaqxze4MUbW0ruzr9MXfBWJaA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH qxl-wddm-dod 1/3] qxl-wddm-dod: Allow
 additional low resolution
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
> Sent: Thursday, February 27, 2020 11:02:53 AM
> Subject: [Spice-devel] [PATCH qxl-wddm-dod 1/3] qxl-wddm-dod: Allow additional low resolution
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1758524
> Examples are displays 320*200 and 800*480
> 
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  qxldod/QxlDod.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/qxldod/QxlDod.h b/qxldod/QxlDod.h
> index d889b9d..016b1aa 100755
> --- a/qxldod/QxlDod.h
> +++ b/qxldod/QxlDod.h
> @@ -19,8 +19,8 @@
>  #define BITS_PER_BYTE              8
>  
>  #define POINTER_SIZE               64
> -#define MIN_WIDTH_SIZE             800
> -#define MIN_HEIGHT_SIZE            600
> +#define MIN_WIDTH_SIZE             320
> +#define MIN_HEIGHT_SIZE            200
>  #define INITIAL_WIDTH              1024
>  #define INITIAL_HEIGHT             768
>  #define QXL_BPP                    32
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
