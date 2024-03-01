Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6017A86DFB2
	for <lists+spice-devel@lfdr.de>; Fri,  1 Mar 2024 11:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC7F10EC9D;
	Fri,  1 Mar 2024 10:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="aVf45NcN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EB810EC97
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Mar 2024 10:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709290462;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tjGEhzuhFUDcE6IMM+mL5TlbxL3v8+X2s2hqXwmwqxI=;
 b=aVf45NcN4hbnnDA9XS+ZGhBmyiZT61BB0KLWIFfnh9QbZ0Z5QA/9YxlWUOJPNWTzL1/+Q9
 lSnqanHA918kTN2lC4Ej7RMNe6gl8ezYRVIP1zfe4Ttp3MhiclpFgVYOHrHf18TifA1f6d
 UxMWAvbZ2tZ6xvDfEPzt1vlzsvvxLxs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-b4NeP0x0OrKwLhGq2lOl_g-1; Fri, 01 Mar 2024 05:54:21 -0500
X-MC-Unique: b4NeP0x0OrKwLhGq2lOl_g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1CCB106CF91;
 Fri,  1 Mar 2024 10:54:20 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.121])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C7014492BE8;
 Fri,  1 Mar 2024 10:54:19 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6AB671800DFF; Fri,  1 Mar 2024 11:54:18 +0100 (CET)
Date: Fri, 1 Mar 2024 11:54:18 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Aleksandr Burakov <a.burakov@rosalinux.ru>
Cc: Dave Airlie <airlied@redhat.com>, 
 virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
Subject: Re: [PATCH] drm/qxl: fix NULL dereference in qxl_add_mode
Message-ID: <oprbqmdpjzhjwuqypqfdnirl44drvrhlaiounos44ywdbiustm@myk6llv5chlv>
References: <20240301085511.23298-1-a.burakov@rosalinux.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240301085511.23298-1-a.burakov@rosalinux.ru>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Mar 01, 2024 at 11:55:11AM +0300, Aleksandr Burakov wrote:
> Return value of a function 'drm_cvt_mode' is dereferenced without
> checking for NULL but drm_mode_create() in drm_cvt_mode() may
> return NULL value in case of memory allocation error.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 1b043677d4be ("drm/qxl: add qxl_add_mode helper function")
> Signed-off-by: Aleksandr Burakov <a.burakov@rosalinux.ru>
> ---
>  drivers/gpu/drm/qxl/qxl_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
> index a152a7c6db21..447532c29e02 100644
> --- a/drivers/gpu/drm/qxl/qxl_display.c
> +++ b/drivers/gpu/drm/qxl/qxl_display.c
> @@ -236,8 +236,10 @@ static int qxl_add_mode(struct drm_connector *connector,
>  		return 0;
>  
>  	mode = drm_cvt_mode(dev, width, height, 60, false, false, false);
> -	if (preferred)
> +	if (preferred && mode)
>  		mode->type |= DRM_MODE_TYPE_PREFERRED;
> +	else
> +		return 0;
>  	mode->hdisplay = width;

That doesn't fix the NULL pointer dereference in case "preferred" is
false.

I'd suggest "if (!mode) return 0" instead.

