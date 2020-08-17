Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0BA248401
	for <lists+spice-devel@lfdr.de>; Tue, 18 Aug 2020 13:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679D389BB2;
	Tue, 18 Aug 2020 11:40:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EBA89E14
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Aug 2020 20:45:51 +0000 (UTC)
Received: by mail-il1-x144.google.com with SMTP id q14so12290550ilm.2
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Aug 2020 13:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aubl/YTAJ301fsjcEvbHVCoJLOaH9okD1ZB+NzuxKfc=;
 b=UPnF6F989f39X5QO1QEMnlbupsRNTnGhluKWRNhVS9kLoJf5Jl4D+m6Hxyw5DXVWJk
 qOHis0jcQ7Mig00qClMEULU+ZEMouk6XKeYYeXReexT1749o/CVCr2BA1aaNNOHuVAzO
 A8z6silHlfK9cuXAhNSXsycDv9vhuNpHQwZyeznuvhIporFcG83HPm0C4O5bXFggmXxa
 BklBVeerGbEEwW/6E3xyxExjzN0XTTRfb2Lmt/cJYWU0crZxa08MDZ8LiE4GCf1Kwbuy
 ElwFNv1i7eGFy3+mWjvQ74v0h+X65qeV+qS7X4LQE7jqN3U62pzsvPY1swgu9Cvq2U2M
 1rGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aubl/YTAJ301fsjcEvbHVCoJLOaH9okD1ZB+NzuxKfc=;
 b=C0WJkW4NNqOlly2W/+LTyxP+owJ7vzcn2EJhjJuk18hzNEC3Q7ESHvCIw+zxwXp9XS
 yGDzS8Zee/gDaq9GdoD8etl0/+9N714AQ887S0oCPYWOqupbDzsT3gt03Hp1ycIf6dHG
 TScVnCnZlvXmtHWb6LFinVY1+CWPTm+Hc2NgcZ8odbr8E8MHm2POAYF9MeE8A2qkKhX/
 gr910kv1pnuzG/GR5X26/eiUOIRVNsccVPEGFx5VQD2E6wIHKNiPgvIiXzGakFsEtpi4
 7AVlAftZxpkp9sRltThtWtcB4tSA9NyY4WsX2rKVGWk6HaG1EF5aI54wTePg9ajGB4Wz
 LJWA==
X-Gm-Message-State: AOAM533VGu2vI79/lR7fz+KYBuusH4Hu+SvfGbFfu9TfDb1u05+v9fmW
 z6GtYePWzdehovSxNPULhO7wMswV6khRiC5XHDp3ew==
X-Google-Smtp-Source: ABdhPJw0n7aagCbCACyHnfXi52mmA71tok6ndm1PaGHxmNzM/bV2r5BE9PNOhs8OdqbE0HDwnZRHAfZQ5yuxtymtaNM=
X-Received: by 2002:a05:6e02:1107:: with SMTP id
 u7mr15482392ilk.165.1597697151345; 
 Mon, 17 Aug 2020 13:45:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200817195846.14076-1-sean@poorly.run>
 <20200817200521.GA1551172@ravnborg.org>
 <CAMavQKL2=Gx+XCbMYc5p08jRNtH5ju=oadhxBxzgNf+gzo3fnA@mail.gmail.com>
In-Reply-To: <CAMavQKL2=Gx+XCbMYc5p08jRNtH5ju=oadhxBxzgNf+gzo3fnA@mail.gmail.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 17 Aug 2020 16:45:14 -0400
Message-ID: <CAMavQK+zsBHoMc_C=-=v-43u=tZ_pJ6XSGBhD6MLQN01pjbyEA@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Approved-At: Tue, 18 Aug 2020 11:40:14 +0000
Subject: Re: [Spice-devel] [PATCH] drm/qxl: Fix build errors
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
Cc: David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Sean Paul <seanpaul@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dave Airlie <airlied@redhat.com>,
 spice-devel@lists.freedesktop.org, Sidong Yang <realwakka@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Aug 17, 2020 at 4:09 PM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, Aug 17, 2020 at 4:05 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Sean.
> >
> > On Mon, Aug 17, 2020 at 03:58:38PM -0400, Sean Paul wrote:
> > > From: Sean Paul <seanpaul@chromium.org>
> > >
> > > Introduced in the patch below, the END macro was missing 'dev' and BEGIN
> > > macro needs drm_drv_uses_atomic_modeset() from drm_drv.h
> > >
> > > Fixes: bbaac1354cc9 ("drm/qxl: Replace deprecated function in qxl_display")
> > We should not use Fixes for local fixes like this, as we do not want the
> > robots to pick this commit.
> > With the Fixes: dropped (maybe just reference the commit in the
> > changelog):
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> >
>
> Ok, I'll fix up the Fixes: tag and apply to -misc-next.
>

I guess things are never quite so easy :-). It looks like Daniel's
patch is in drm-misc-fixes and Sidong's patch is in drm-misc-next. On
their own they're fine, but once they are merged in drm-tip the build
error shows up.

So I think this needs to be resolved in drm-tip. I see
https://drm.pages.freedesktop.org/maintainer-tools/drm-tip.html#fixing-silent-conflicts,
but that seems like a maintainer thing, so I'll wait for -misc
maintainers to chime in.

Sean

> Thanks for the quick response!
>
> Sean
>
> >
> > > Cc: Sidong Yang <realwakka@gmail.com>
> > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > Cc: Dave Airlie <airlied@redhat.com>
> > > Cc: virtualization@lists.linux-foundation.org
> > > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > > ---
> > >  drivers/gpu/drm/qxl/qxl_display.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
> > > index fa79688013b7..5b4fd6952b53 100644
> > > --- a/drivers/gpu/drm/qxl/qxl_display.c
> > > +++ b/drivers/gpu/drm/qxl/qxl_display.c
> > > @@ -28,6 +28,7 @@
> > >
> > >  #include <drm/drm_atomic.h>
> > >  #include <drm/drm_atomic_helper.h>
> > > +#include <drm/drm_drv.h>
> > >  #include <drm/drm_gem_framebuffer_helper.h>
> > >  #include <drm/drm_plane_helper.h>
> > >  #include <drm/drm_probe_helper.h>
> > > @@ -186,7 +187,7 @@ void qxl_display_read_client_monitors_config(struct qxl_device *qdev)
> > >
> > >       DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE, ret);
> > >       qxl_update_offset_props(qdev);
> > > -     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> > > +     DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> > >       if (!drm_helper_hpd_irq_event(dev)) {
> > >               /* notify that the monitor configuration changed, to
> > >                  adjust at the arbitrary resolution */
> > > @@ -431,7 +432,7 @@ static int qxl_framebuffer_surface_dirty(struct drm_framebuffer *fb,
> > >                         clips, num_clips, inc, 0);
> > >
> > >  out_lock_end:
> > > -     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> > > +     DRM_MODESET_LOCK_ALL_END(fb->dev, ctx, ret);
> > >
> > >       return 0;
> > >  }
> > > --
> > > Sean Paul, Software Engineer, Google / Chromium OS
> > >
> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
