Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B6614387C
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jan 2020 09:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D107C6EBED;
	Tue, 21 Jan 2020 08:41:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3B86E5A9
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jan 2020 07:20:17 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id m30so23146231lfp.8
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jan 2020 23:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yvt1rmGce/1VEo6G6EJG7siE0F1HO1l0rw7xbgdOvxc=;
 b=c658G9XKpYvMasXpniEQjS+S27Oi/4tWg047Q+8jR/nr5k0n0GJAdKg3ab2+SQRiHj
 pFgDmg7xylJLdlWpEsG8kICU95IbIWATfJaB28kqqfEfYrtj4vWICxZ/qk1ypUZh5WMX
 xYdYAs2i4j5iLH/YcOaEt+xFPZmPWJZ49kfAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yvt1rmGce/1VEo6G6EJG7siE0F1HO1l0rw7xbgdOvxc=;
 b=XzBGzv9fR/Xfuh2SLYBhoKFIK7jNiItWd65kXTnii3AUnaGGF7F9edHTUcgwY0DAmA
 LYOC82nNQjE7fbl7iSX092PMhiAz7yKy64YgYPoYjYuIiJABDV9TXbi5ORVIP1+zRYFM
 JBCAGSsoTJ8nFs7qKtKPXHYDbUAWM9Sh92OCfkDi3w8x33uplxEoWc920O9Nht9fY70k
 ZJT8XudEpmAm2J5WXDODSfzyiS2Q2UtaSgTByNhJtbBf7bZMn+ySM8Hr8mUT3V6lfFCS
 SfOuRzlf1a8RrfjlnsfS0GP5f6X4SqrVQo/MB5yTRz0Igayy90yFlxcFiI3U+xyrrBvD
 u/2g==
X-Gm-Message-State: APjAAAVkUQP5PMNglPdZehoy3sXFDkLeEbqwVLtRnyaLrFjT3oeaWPgo
 kTtMHbks821ygq+BNhY4UewbYw6r/czvAU05UdDYGw==
X-Google-Smtp-Source: APXvYqzn/IYCrYnx6G5lalYOUsF+SfvCRArFZxpsXag1PrIYA5NPUP4ThH6TlISFeo4nZZ6GFU5nsDLOi628M8nBHO8=
X-Received: by 2002:ac2:485c:: with SMTP id 28mr12293616lfy.118.1579504815235; 
 Sun, 19 Jan 2020 23:20:15 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
 <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
 <20200115112640.52kemwg4lncuvvir@sirius.home.kraxel.org>
In-Reply-To: <20200115112640.52kemwg4lncuvvir@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Mon, 20 Jan 2020 16:20:03 +0900
Message-ID: <CAD90VcaAaomTnwVESp9RaBwhjx+cKjXAJv4T7wSkFiCEhOUo5Q@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Tue, 21 Jan 2020 08:41:11 +0000
Subject: Re: [Spice-devel] [virtio-dev] Re: [PATCH v2 0/1] VirtIO video
 device specification
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Wed, Jan 15, 2020 at 8:26 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > If you have (1) hardware you simply can't import buffers with arbitrary
> > > plane offsets, so I'd expect software would prefer the single buffer
> > > layout (i) over (ii), even when using another driver + dmabuf
> > > export/import, to be able to support as much hardware as possible.
> > > So (ii) might end up being unused in practice.
> > >
> > > But maybe not, was just an idea, feel free to scratch it.
> >
> > That's true, simple user space would often do that. However, if more
> > devices are in the game, often some extra alignment or padding between
> > planes is needed and that is not allowed by (1), even though all the
> > planes are in the same buffer.
> >
> > My suggestion, based on the latest V4L2 discussion on unifying the
> > UAPI of i) and ii), is that we may want to instead always specify
> > buffers on a per-plane basis. Any additional requirements would be
> > then validated by the host, which could check if the planes end up in
> > the same buffer (or different buffers for (3)) and/or at the right
> > offsets.
>
> Hmm, using (ii) the API, then check whenever your three plane buffers
> happen to have the correct layout for (1) hardware looks somewhat
> backwards to me.

Can't this problem be solved by adding "offset" field in virtio_video_mem_entry?

struct virtio_video_mem_entry {
  le64 addr;
  le32 length;
  le32 offset;
  u8 padding[4];
};

Here, "addr" must be the same in every mem_entry for (1) hardware.

>
> I'd suggest to use (i) API and allow the device specify alignment
> requirements.  So (1) hardware would say "need_align=0", whereas (3)
> hardware would probably say "need_align=PAGE_SIZE" so it can easily
> split the single buffer into three per-plane buffers.

Just to confirm, is "need_align" a field added in virtio_video_format_desc?
It sounds workable, too.

Best regards,
Keiichi


>
> cheers,
>   Gerd
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
