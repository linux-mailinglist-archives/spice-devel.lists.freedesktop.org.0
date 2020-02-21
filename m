Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7496C16872C
	for <lists+spice-devel@lfdr.de>; Fri, 21 Feb 2020 20:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C916F4F1;
	Fri, 21 Feb 2020 19:03:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9591B6F4F1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Feb 2020 19:03:11 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t3so3199438wru.7
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Feb 2020 11:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MJU4yIJ1OecX1mHUKDbEObOQjruIXSQ2ZxBhWrTtUGg=;
 b=Y5e6uRfE6sLzhHzmCheSW3DLIJ4hXkZ9XEIfb0xh9bXuteIGhYNEU0mHcCQLbsRBbq
 gx6pOJEzdbXGegCYo9FUpGTMA6UJUGZtiqKHWkukU4xEn119Y7DYpO9AIq2kYLsaU/MJ
 LiRE+LdAtDE7mSXCefIPi88xXWEvYwCveFd3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MJU4yIJ1OecX1mHUKDbEObOQjruIXSQ2ZxBhWrTtUGg=;
 b=ENhvFoRBkLWbxhKklIxHVg04nkHbpVjErOQT8DkaPwaM7FjLsenPpLfHys8zf1sI96
 agllkWJ3moGmhZkUcltTW1cMN6XUzQX2PDDlWYQUQQdqvd2gErWYo7CD7AmQe3f+wWRF
 wa00VBACeDMn2A5fe4RBhZBhoFesr3A+WFa7r07r0sONCZ2Q8WwXtPSGq5XHOPLzT0+u
 hjr7D51FxlTUflQlwSwQ6O6upBcwMnyXxuZCsRDJF1dWRo+9prZiLOj3ug910cmByzdo
 Vjm07RQCx34Hhg6Nqu9aLRy4V9ht0nMG38HOwme3TftzAh7gJ1c5aUkYkevsXwbex+Vy
 N5iA==
X-Gm-Message-State: APjAAAXf/myUiesUm+aGsaXMrSIN+kyILwfAkwMyvlvWDym0pgqWWhit
 Raos+rn6Nys3Oo9Tgu+FAXykyA==
X-Google-Smtp-Source: APXvYqyIsxVr3qhWNgflnJwy5Wr/iFuVcPl1oz3Oo8BPA8Ltenpsf+FYTeR4zPjyGhXyag79xnUhOQ==
X-Received: by 2002:adf:e9d2:: with SMTP id l18mr1330674wrn.344.1582311790198; 
 Fri, 21 Feb 2020 11:03:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t12sm4985772wrq.97.2020.02.21.11.03.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 11:03:09 -0800 (PST)
Date: Fri, 21 Feb 2020 20:03:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200221190307.GG2363188@phenom.ffwll.local>
References: <20200218084815.2137-1-tzimmermann@suse.de>
 <20200218084815.2137-4-tzimmermann@suse.de>
 <20200220185642.GA20011@ravnborg.org>
 <3044661c-7552-e685-37b3-88865f97a991@suse.de>
 <20200221190057.GA27701@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221190057.GA27701@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Spice-devel] [PATCH v2 3/4] drm/mgag200: Use simple encoder
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kraxel@redhat.com,
 Thomas Zimmermann <tzimmermann@suse.de>, alexander.deucher@amd.com,
 spice-devel@lists.freedesktop.org, emil.velikov@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Feb 21, 2020 at 08:00:57PM +0100, Sam Ravnborg wrote:
> Hi Thomas.
> 
> On Fri, Feb 21, 2020 at 08:48:48AM +0100, Thomas Zimmermann wrote:
> > Hi Sam
> > 
> > thanks for reviewing the patch set.
> > 
> > Am 20.02.20 um 19:56 schrieb Sam Ravnborg:
> > > Hi Thomas.
> > > 
> > > On Tue, Feb 18, 2020 at 09:48:14AM +0100, Thomas Zimmermann wrote:
> > >> The mgag200 driver uses an empty implementation for its encoder. Replace
> > >> the code with the generic simple encoder.
> > >>
> > >> v2:
> > >> 	* rebase onto new simple-encoder interface
> > >>
> > >> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> > >> ---
> > >>  drivers/gpu/drm/mgag200/mgag200_drv.h  |  7 ---
> > >>  drivers/gpu/drm/mgag200/mgag200_mode.c | 61 ++------------------------
> > >>  2 files changed, 3 insertions(+), 65 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/mgag200/mgag200_drv.h b/drivers/gpu/drm/mgag200/mgag200_drv.h
> > >> index aa32aad222c2..9bb9e8e14539 100644
> > >> --- a/drivers/gpu/drm/mgag200/mgag200_drv.h
> > >> +++ b/drivers/gpu/drm/mgag200/mgag200_drv.h
> > >> @@ -95,7 +95,6 @@
> > >>  #define MATROX_DPMS_CLEARED (-1)
> > >>  
> > >>  #define to_mga_crtc(x) container_of(x, struct mga_crtc, base)
> > >> -#define to_mga_encoder(x) container_of(x, struct mga_encoder, base)
> > >>  #define to_mga_connector(x) container_of(x, struct mga_connector, base)
> > >>  
> > >>  struct mga_crtc {
> > >> @@ -110,12 +109,6 @@ struct mga_mode_info {
> > >>  	struct mga_crtc *crtc;
> > >>  };
> > >>  
> > >> -struct mga_encoder {
> > >> -	struct drm_encoder base;
> > >> -	int last_dpms;
> > >> -};
> > >> -
> > >> -
> > >>  struct mga_i2c_chan {
> > >>  	struct i2c_adapter adapter;
> > >>  	struct drm_device *dev;
> > > 
> > > Any particular reason why the drm_encoder is not embedded in struct
> > > mga_device?
> > > 
> > > I found it more elegant - like you did it for ast in the previous patch.
> > 
> > I think I wanted something that uses drm_simple_encoder_create(). But I
> > can change that. The embedded variant is indeed better.
> 
> You should consider to drop drm_simple_encoder_create() until there
> is a driver that really needs it.

Yeah +1 on only the _init version. The create version really should use
drmm_kzalloc I think, but we're not quite there yet :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
