Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C530049C
	for <lists+spice-devel@lfdr.de>; Fri, 22 Jan 2021 14:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A4089C97;
	Fri, 22 Jan 2021 13:55:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B7389C97
 for <spice-devel@lists.freedesktop.org>; Fri, 22 Jan 2021 13:55:02 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id 9so6043022oiq.3
 for <spice-devel@lists.freedesktop.org>; Fri, 22 Jan 2021 05:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VXLHixBiJpq4dDQEs6Gtzm6NcpCMBkU8X2Af5+47SP8=;
 b=fRMpTwPjIHUaiFQn3JWCshKMbvL/9jw9UTg2r5aLKcTL6wI8i5Aeh+fcc5fL/Qw2dr
 5mbSk7k9MXRDR/3PFkmwZsS9bakHodMpF6ufpYOGwwr3Kkxpe7KZY5pWhLhMuKeqOhYu
 Jj0Eb+R39koAF7xKwpPGpp19H95FqvvjmmP2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VXLHixBiJpq4dDQEs6Gtzm6NcpCMBkU8X2Af5+47SP8=;
 b=DcqrU6ZRAXsiCioT7VDHNIpLXR8x72udI/55CqGUP5Z2PpzKKVsrbPFmwNkwyqS+o+
 IkhreRWEd1tZLcayb3QcbHjI+Kr2qcOrMV6+eMYTUw37G0uKNgqsOJI+8KLmdgZFIVJY
 XB7nm+wS/d9fBVzs+WA1eGpMIRn7QHmSy9f2EmVFilnObt77Phi4DH9kllbq1KvqnOGe
 5LMaCf/uwfoqf52QoKN4bFkIV8pb3dXL6o1gFL5wHBA3hcteFxBkUsPAsSmJ1TAtkTar
 Zu9mu2Y3f4kvxfxLIAeGmbrM8jNcrEhTlzFVO1VPCY+wznjRJBoZnaTARLE3If2k2Wug
 KMQA==
X-Gm-Message-State: AOAM5316EFW3q3QJm6RLaxFE/PscD+x5bUnzbQd+LJdASd6jR8teX/5V
 D8j0rK/7yE156DSAaEFsPSa0CAhZtI2NO/2Ih8yL6A==
X-Google-Smtp-Source: ABdhPJwW4KEp6S+mGGfS/0Lx+8OAYX5f6OO9aCFkx+hayuV7D2MQb1meuWL+LmKrJUAXW2513f7/HixYeilJ9rFPIxk=
X-Received: by 2002:aca:1906:: with SMTP id l6mr3220663oii.101.1611323702207; 
 Fri, 22 Jan 2021 05:55:02 -0800 (PST)
MIME-Version: 1.0
References: <20210120111240.2509679-1-kraxel@redhat.com>
 <20210120111240.2509679-3-kraxel@redhat.com>
 <a4187459-1dbd-e799-fba4-bf7021de831b@suse.de>
 <20210122133545.acloe4ytgp6r4iql@sirius.home.kraxel.org>
In-Reply-To: <20210122133545.acloe4ytgp6r4iql@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 22 Jan 2021 14:54:51 +0100
Message-ID: <CAKMK7uHeQt6VPkm0ufuVVxdGQkmq3+1vrDERzZS54rtcVhJRAw@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [Spice-devel] [PATCH v3 2/4] drm/qxl: unpin release objects
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Jan 22, 2021 at 2:35 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
> On Fri, Jan 22, 2021 at 09:13:42AM +0100, Thomas Zimmermann wrote:
> > Hi
> >
> > Am 20.01.21 um 12:12 schrieb Gerd Hoffmann:
> > > Balances the qxl_create_bo(..., pinned=true, ...);
> > > call in qxl_release_bo_alloc().
> > >
> > > Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> > > ---
> > >   drivers/gpu/drm/qxl/qxl_release.c | 1 +
> > >   1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/qxl/qxl_release.c b/drivers/gpu/drm/qxl/qxl_release.c
> > > index 0fcfc952d5e9..add979cba11b 100644
> > > --- a/drivers/gpu/drm/qxl/qxl_release.c
> > > +++ b/drivers/gpu/drm/qxl/qxl_release.c
> > > @@ -166,6 +166,7 @@ qxl_release_free_list(struct qxl_release *release)
> > >             entry = container_of(release->bos.next,
> > >                                  struct qxl_bo_list, tv.head);
> > >             bo = to_qxl_bo(entry->tv.bo);
> > > +           bo->tbo.pin_count = 0; /* ttm_bo_unpin(&bo->tbo); */
> >
> > This code looks like a workaround or a bug.
> >
> > AFAICT the only place with pre-pinned BO is qdev->dumb_shadow_bo. Can you
> > remove the pinned flag entirely and handle pinning as part of
> > dumb_shadow_bo's code.
>
> No, the release objects are pinned too, and they must be
> pinned (qxl commands are in there, and references are
> placed in the qxl rings, so allowing them to roam is
> a non-starter).
>
> > if (pin_count)
> >     ttm_bo_unpin();
> > WARN_ON(pin_count); /* should always be 0 now */
>
> Well, the pin_count is 1 at this point.
> No need for the if().
>
> Just calling ttm_bo_unpin() here makes lockdep unhappy.

How does that one splat? But yeah if that's a problem should be
explained in the comment. I'd then also only do a pin_count--; to make
sure you can still catch other pin leaks if you have them. Setting it
to 0 kinda defeats the warning.
-Daniel

>
> Not calling ttm_bo_unpin() makes ttm_bo_release() throw
> a WARN() because of the pin.
>
> Clearing pin_count (which is how ttm fixes things up
> in the error path) works.
>
> I'm open to better ideas.
>
> take care,
>   Gerd
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
