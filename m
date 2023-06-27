Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D2173F90E
	for <lists+spice-devel@lfdr.de>; Tue, 27 Jun 2023 11:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29FC10E2D2;
	Tue, 27 Jun 2023 09:50:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0680C10E2D0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Jun 2023 09:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687859449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cDPwvZDdH3i2MVtoSPugMZUGcySUdbuORcEjCSKm+iU=;
 b=XDvsNPNNNdqgLsCLi8FlYUqKUnYLK2wd5dsd0V6OSwv5b3cssl95Hb3bqU8P9Kd9mehSRB
 CYNRhA9Jr17zezyfjunJUXAHsgo7bRqtdJOh7E9mVyjBveFVix4vNFsOBesD62v6u6Xr0R
 8RRipbBWcGba3qLy/ASXihhXT/i+xcI=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-CIRk9cf_PEOxmthw9sCHGA-1; Tue, 27 Jun 2023 05:50:45 -0400
X-MC-Unique: CIRk9cf_PEOxmthw9sCHGA-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-313ead680efso1125792f8f.1
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Jun 2023 02:50:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687859444; x=1690451444;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cDPwvZDdH3i2MVtoSPugMZUGcySUdbuORcEjCSKm+iU=;
 b=GcHHvwngZKgjqUF+mIquMxYNqxnJ0cJqTsDB/+50TJA3L3iJ2X1752NkoeLIapHYIS
 QNAwc9YLtssr0DbbFo46pd+j8CH+WjKC6neeERxlvOrus+oq7V5w7tNJNXKLqHyCPwJd
 oS2FeOIbNMamhBBka+1Lf9yqobthiZ/4oDt5h3yv2b5Hh8pegfWjiXD2Pq0cdozEU7KR
 8DC74f4RsgipRrvIiXpmDGTSBjs5ga4mc2lSmtWDs361Bq5ClDrM/gOcU5D3sZyrS/Bc
 LUDjEGpZNthv8NC0Jy4vEEx34nRfswYSrOvbai8yhe/rEafNLVawS5Vjq1EyvlUIFIpS
 urRA==
X-Gm-Message-State: AC+VfDzDevip3pYKjmwASNOICBR+4ARSZhg1p1DifkoUYpLIl/qt/SCf
 ByN3MR9qLGaymGLPLY6N8qnJkguTWBGCGQ0hAIfE4emcN9vxgg12agIal0e02gpp92fYpZN/1sF
 RD9a9ZGBHoFicNeb5aAXlPo2772/UQ92mB8fZ3u8=
X-Received: by 2002:a5d:5582:0:b0:30f:ba3a:85c5 with SMTP id
 i2-20020a5d5582000000b0030fba3a85c5mr28683787wrv.25.1687859444231; 
 Tue, 27 Jun 2023 02:50:44 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4qPgfCDAwY8BVy9eoWSG9IjPU90gvCtNydCD7vhTOMs1UCIg1PZ+oalxJcMjXUi/PBqfwuLQ==
X-Received: by 2002:a5d:5582:0:b0:30f:ba3a:85c5 with SMTP id
 i2-20020a5d5582000000b0030fba3a85c5mr28683777wrv.25.1687859443980; 
 Tue, 27 Jun 2023 02:50:43 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 a16-20020adfdd10000000b00313ef2150dcsm6214246wrm.45.2023.06.27.02.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 02:50:43 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Zack Rusin <zackr@vmware.com>, dri-devel@lists.freedesktop.org
In-Reply-To: <20230627035839.496399-5-zack@kde.org>
References: <20230627035839.496399-1-zack@kde.org>
 <20230627035839.496399-5-zack@kde.org>
Date: Tue, 27 Jun 2023 11:50:42 +0200
Message-ID: <87ttut2pzh.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Spice-devel] [PATCH v3 4/8] drm/qxl: Use the hotspot
 properties from cursor planes
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
Cc: banackm@vmware.com, virtualization@lists.linux-foundation.org,
 krastevm@vmware.com, ppaalanen@gmail.com, Gerd Hoffmann <kraxel@redhat.com>,
 spice-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 iforbes@vmware.com, mombasawalam@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Zack Rusin <zack@kde.org> writes:

> From: Zack Rusin <zackr@vmware.com>
>
> Atomic modesetting got support for mouse hotspots via the hotspot
> properties. Port the legacy kms hotspot handling to the new properties
> on cursor planes.
>
> Signed-off-by: Zack Rusin <zackr@vmware.com>
> Reviewed-by: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: virtualization@lists.linux-foundation.org
> Cc: spice-devel@lists.freedesktop.org
> ---
>  drivers/gpu/drm/qxl/qxl_display.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

