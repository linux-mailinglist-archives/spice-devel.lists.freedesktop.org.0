Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 173C713D6AB
	for <lists+spice-devel@lfdr.de>; Thu, 16 Jan 2020 10:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F446EC52;
	Thu, 16 Jan 2020 09:21:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A9B6E910
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 11:06:43 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id a13so18051267ljm.10
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rJzm62o0oregtlHx6JggNzvTeqhXQvySWqorYcc+30k=;
 b=Sqybs2to0brQ1/Eetk24II31DizBNUS4Hn23+0ncv1S4dt+csN19wcu+VTmmzG+KCI
 p5Mzb6pfRhtplMLMV3ishWLKJaAsiX8UjXWBxjUHEUVm8iHyuKOxd3DLdD6qngEN6k9d
 /k2sx4zJCZnuvsx+7axGzsEezQQ/l/TUivUQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rJzm62o0oregtlHx6JggNzvTeqhXQvySWqorYcc+30k=;
 b=pixAjz/x6S+4dmLFuqP6NE0pO6DFgYYWtra71B2Fea6XDp9CX8tGGmjeBtNHuTzZXE
 kgo6NII1sP5QPipNsHTQYz07RefwChotUaFImcOW1il4zmOooONrEL6nrsQ0lP70fLgV
 JkKHKIcMMvcAt/wnvkZNAxDWXWmaUU7TN3u1IqfY9+S4y0RXa4y4lCNpnC7corosh7wn
 gIN+RHGMFvrN/SR3jAovWccC5ZT6ySSmn/EVl0e0UucKtpifLGxDkB0PuYlHsYvGJw0G
 yL1LX4jThnSm7z62t2IQSdiArNLKIcJfdBgbdZ4FxSlDqtL3D4EH2kPn8YPXjkirea0x
 CFOQ==
X-Gm-Message-State: APjAAAWL4q9FA/7r158B97wD0gd4UeNxyUhlRka/WWqeBw43sQg22X1E
 GwjOOIpeDVEcHs3F2YmR7NMSb+UT0XTHIQ==
X-Google-Smtp-Source: APXvYqySEFCBzdciFbyeG1k62AoML5Oc5PbuGs72OuzE73wjJ4asnKK2Tx1rjHmFGHKbjm5fXrjDMA==
X-Received: by 2002:a2e:93c5:: with SMTP id p5mr1386108ljh.192.1579086401703; 
 Wed, 15 Jan 2020 03:06:41 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id y7sm8712094lfe.7.2020.01.15.03.06.41
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 03:06:41 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id a13so18051207ljm.10
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:06:41 -0800 (PST)
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr32147207wrt.100.1579086044123; 
 Wed, 15 Jan 2020 03:00:44 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
In-Reply-To: <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 15 Jan 2020 20:00:31 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
Message-ID: <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Thu, 16 Jan 2020 09:21:31 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 10:27 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > Well, no.  Tomasz Figa had splitted the devices into three groups:
> > >
> > >   (1) requires single buffer.
> > >   (2) allows any layout (including the one (1) devices want).
> > >   (3) requires per-plane buffers.
> > >
> > > Category (3) devices are apparently rare and old.  Both category (1)+(2)
> > > devices can handle single buffers just fine.  So maybe support only
> > > that?
> >
> > From the guest implementation point of view, Linux V4L2 currently
> > supports 2 cases, if used in allocation-mode (i.e. the buffers are
> > allocated locally by V4L2):
> >
> > i) single buffer with plane offsets predetermined by the format, (can
> > be handled by devices from category 1) and 2))
> > ii) per-plane buffers with planes at the beginning of their own
> > buffers. (can be handled by devices from category 2) and 3))
> >
> > Support for ii) is required if one wants to be able to import buffers
> > with arbitrary plane offsets, so I'd consider it unavoidable.
>
> If you have (1) hardware you simply can't import buffers with arbitrary
> plane offsets, so I'd expect software would prefer the single buffer
> layout (i) over (ii), even when using another driver + dmabuf
> export/import, to be able to support as much hardware as possible.
> So (ii) might end up being unused in practice.
>
> But maybe not, was just an idea, feel free to scratch it.

That's true, simple user space would often do that. However, if more
devices are in the game, often some extra alignment or padding between
planes is needed and that is not allowed by (1), even though all the
planes are in the same buffer.

My suggestion, based on the latest V4L2 discussion on unifying the
UAPI of i) and ii), is that we may want to instead always specify
buffers on a per-plane basis. Any additional requirements would be
then validated by the host, which could check if the planes end up in
the same buffer (or different buffers for (3)) and/or at the right
offsets.

WDYT?

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
