Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BFF358217
	for <lists+spice-devel@lfdr.de>; Thu,  8 Apr 2021 13:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA01C6EAB8;
	Thu,  8 Apr 2021 11:39:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9AE6EAB0
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Apr 2021 11:39:22 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id 12so1777812wrz.7
 for <spice-devel@lists.freedesktop.org>; Thu, 08 Apr 2021 04:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3KNkyx85LPCD228SCseTYxmoSL60uBwuVlcm/wUgEOA=;
 b=fHGvn4RtOh030q1DAmBBWDlKqWYLlxDGmURjTv7oVbTa5wMtYSFRpbek/G42R0PKpV
 aE0TKiuldac6kmvfVsttDQeduCm7/kh7ppKbQ0OqqEOcC7bQsGh95+j0VPHH6dfpbXtI
 7Frxo16mo7e2jtV4VAoUmPi9ONL3w7YDQ9Thg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3KNkyx85LPCD228SCseTYxmoSL60uBwuVlcm/wUgEOA=;
 b=jeeKUxnELbbslUbcvPfbyXBXZW2Y4fe5W3pDQau/vsbD7dLPDNsoE5vM1T5QkmHZqw
 ysayyndhR/80jpN8oQktY7mDyHaZpFcIfiNfaE5oZ3CkGVnt0GikzpcMAofZ0jyxrIQd
 TIrc5KDGZt8JYeQnNcnd2ACyVseDpK5Cgw/BO5kmSdPcATVw3mbnB8zXK2GPqoDz4UCW
 Go8pnBXyRvY4B6500eqzfoLMgKS7RrlpTi7W8n9W9ygJYwzJcSFVyyplS8KP2Vv0No07
 lwuBUk1KdZLS6zz2pxgXDSzjcKA4VARsSeFKJzARCyz4papMRS2jbVDnX/N1+RPlVj4l
 Mwvw==
X-Gm-Message-State: AOAM533RIeuHrb7CKJcOtgbUZNAltHEf2XQyniKreUoeBRc46YeG4IZf
 wiovhn8Bxqo1sfBqVUj59zlQig==
X-Google-Smtp-Source: ABdhPJzUf3HqHqqyVAN4SVwOvO1MafejNTLSa8pbE71k+GrvSgkhvWynSqpxLaLkX8Qygt5PkZkkjA==
X-Received: by 2002:a5d:6443:: with SMTP id d3mr10783874wrw.292.1617881961181; 
 Thu, 08 Apr 2021 04:39:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k131sm11817858wmf.39.2021.04.08.04.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 04:39:20 -0700 (PDT)
Date: Thu, 8 Apr 2021 13:39:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YG7rZiF0IgbTDVPM@phenom.ffwll.local>
References: <20210406082942.24049-1-tzimmermann@suse.de>
 <YG7mHvmhPZIPA37B@phenom.ffwll.local>
 <52dd3e3f-a893-3d90-e642-df01a033490a@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52dd3e3f-a893-3d90-e642-df01a033490a@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Spice-devel] [PATCH 0/4] drm: Generic dumb_map_offset for
 TTM-based drivers
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
Cc: airlied@linux.ie, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 kraxel@redhat.com, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, bskeggs@redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Apr 08, 2021 at 01:34:03PM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 08.04.21 um 13:16 schrieb Daniel Vetter:
> > On Tue, Apr 06, 2021 at 10:29:38AM +0200, Thomas Zimmermann wrote:
> > > The implementation of drm_driver.dumb_map_offset is the same for seve=
ral
> > > TTM-based drivers. Provide a common function in GEM-TTM helpers.
> > =

> > Out of curiosity, why does this not fit for radeon/amdgpu?
> =

> These drivers perform additional permission checks in their implementatio=
ns.
> =

> But those checks are also part of the actual mmap code. I want to propose=
 a
> patch to use the generic drm_gem_ttm_map_offset in amdgpu/radeon, and then
> rely on mmap to fail if necessary. It might result in a longer discussion,
> so that's for another patchset.

Ah cool, makes sense.
-Daniel

> =

> Best regards
> Thomas
> =

> > -Daniel
> > =

> > > =

> > > Thomas Zimmermann (4):
> > >    drm/gem-ttm-helper: Provide helper for struct
> > >      drm_driver.dumb_map_offset
> > >    drm/vram-helper: Use drm_gem_ttm_dumb_map_offset()
> > >    drm/nouveau: Use drm_gem_ttm_dumb_map_offset()
> > >    drm/qxl: Use drm_gem_ttm_dumb_map_offset()
> > > =

> > >   drivers/gpu/drm/drm_gem_ttm_helper.c      | 33 ++++++++++++++++
> > >   drivers/gpu/drm/drm_gem_vram_helper.c     | 48 --------------------=
---
> > >   drivers/gpu/drm/nouveau/nouveau_display.c | 18 ---------
> > >   drivers/gpu/drm/nouveau/nouveau_display.h |  2 -
> > >   drivers/gpu/drm/nouveau/nouveau_drm.c     |  3 +-
> > >   drivers/gpu/drm/qxl/qxl_drv.c             |  3 +-
> > >   drivers/gpu/drm/qxl/qxl_drv.h             |  3 --
> > >   drivers/gpu/drm/qxl/qxl_dumb.c            | 17 --------
> > >   drivers/gpu/drm/qxl/qxl_ioctl.c           |  4 +-
> > >   drivers/gpu/drm/qxl/qxl_object.h          |  5 ---
> > >   include/drm/drm_gem_ttm_helper.h          |  5 ++-
> > >   include/drm/drm_gem_vram_helper.h         |  7 +---
> > >   12 files changed, 45 insertions(+), 103 deletions(-)
> > > =

> > > --
> > > 2.30.2
> > > =

> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
