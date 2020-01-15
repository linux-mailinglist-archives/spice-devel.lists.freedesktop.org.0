Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E408A13D6B1
	for <lists+spice-devel@lfdr.de>; Thu, 16 Jan 2020 10:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C645F6EC56;
	Thu, 16 Jan 2020 09:21:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E59F6E917
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 11:23:19 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id y19so12408329lfl.9
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CAQZB6CCogimCuEdhKe+d6uz9DHg8JzbK/0iEvaEtt8=;
 b=RwJgRjG2ONv6W0Vh7ym+Up0ytgBuW8ykosk6g2ERitrwhvjmnvzvsjRRh6nohlo9qt
 dgB+fxVyR5SHQl9Y3+8WbxkRjMyZweST5rGKtFHIF03oQ+QdFXkRB8SFbj+W8E7PNgf6
 30asshwKTpGVcnNs7mVixshNLCxppTlEdZ98U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CAQZB6CCogimCuEdhKe+d6uz9DHg8JzbK/0iEvaEtt8=;
 b=bxKaRheOSdXFdVA60zrnErJH13czPkEaLALrE2QtGhxrzjfs822oqfz89aDPMjB/NT
 68W7nNjPn3dVC/LyoA4XzQ9QgxONZvSlXjWHBc669YmEB3puVhcwebL+6giUfjlRVdSp
 6kO4GQji+ff62r/j5H+I/y614Ja2Jva7IGx3KS2g0+KcILOcc12rsfsBVGQ2fsd0wqI3
 g9oQWiIp0P4BisenbsOYzB71MnISqtVMUIFMzqv+ATfd/G0GZdfV7ZHheQmu90zDAnfF
 1IM5g7sAnBm9OEZ8cUek2hLFRrLbv5TaBR4vZwCbg5UB94klnhDQKwiuBUBp1CZ4A6rB
 idSA==
X-Gm-Message-State: APjAAAWtFKni2rDUIn6uIanKifyAlqj1T+AqkbH+RkDLMBFgiLrQpdF0
 YpktsR2ng86Eapvs6yQ+1sJTs++h5kYF/ooB/VMyKQ==
X-Google-Smtp-Source: APXvYqxtyjTFEJAEZt0k5ICWvgC3C/QWRTPqKW4IM+THV1XuV+JaZZG4r1enr3NqmHrCu1W4irmY/cAoAHQ7PSyDzbs=
X-Received: by 2002:ac2:5337:: with SMTP id f23mr4338748lfh.192.1579087397739; 
 Wed, 15 Jan 2020 03:23:17 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
 <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
In-Reply-To: <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Wed, 15 Jan 2020 20:23:06 +0900
Message-ID: <CAD90VcYnUin-4VXMeTi+4LvrBDRRZoLBT=Zf-0sZhPmLu8Bz=g@mail.gmail.com>
To: Tomasz Figa <tfiga@chromium.org>
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
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
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

On Wed, Jan 15, 2020 at 8:00 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Mon, Jan 13, 2020 at 10:27 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> >
> >   Hi,
> >
> > > > Well, no.  Tomasz Figa had splitted the devices into three groups:
> > > >
> > > >   (1) requires single buffer.
> > > >   (2) allows any layout (including the one (1) devices want).
> > > >   (3) requires per-plane buffers.
> > > >
> > > > Category (3) devices are apparently rare and old.  Both category (1)+(2)
> > > > devices can handle single buffers just fine.  So maybe support only
> > > > that?
> > >
> > > From the guest implementation point of view, Linux V4L2 currently
> > > supports 2 cases, if used in allocation-mode (i.e. the buffers are
> > > allocated locally by V4L2):
> > >
> > > i) single buffer with plane offsets predetermined by the format, (can
> > > be handled by devices from category 1) and 2))
> > > ii) per-plane buffers with planes at the beginning of their own
> > > buffers. (can be handled by devices from category 2) and 3))
> > >
> > > Support for ii) is required if one wants to be able to import buffers
> > > with arbitrary plane offsets, so I'd consider it unavoidable.
> >
> > If you have (1) hardware you simply can't import buffers with arbitrary
> > plane offsets, so I'd expect software would prefer the single buffer
> > layout (i) over (ii), even when using another driver + dmabuf
> > export/import, to be able to support as much hardware as possible.
> > So (ii) might end up being unused in practice.
> >
> > But maybe not, was just an idea, feel free to scratch it.
>
> That's true, simple user space would often do that. However, if more
> devices are in the game, often some extra alignment or padding between
> planes is needed and that is not allowed by (1), even though all the
> planes are in the same buffer.
>
> My suggestion, based on the latest V4L2 discussion on unifying the
> UAPI of i) and ii), is that we may want to instead always specify
> buffers on a per-plane basis. Any additional requirements would be
> then validated by the host, which could check if the planes end up in
> the same buffer (or different buffers for (3)) and/or at the right
> offsets.
>

It sounds reasonable. Even in the protocol design we discussed so far,
the driver sends an array of struct virtio_video_mem_entry in the
RESOURE_CREATE command:
struct virtio_video_mem_entry {
  le64 addr;
  le32 length;
  u8 padding[4];
};

struct virtio_video_resource_create {
  struct virtio_video_cmd_hdr hdr;
  le32 queue_type;
  le32 resource_id;
  le32 num_planes;
  le32 num_entries[VIRTIO_VIDEO_MAX_PLANES];
  u8 padding[4];
  /* Followed by struct virtio_video_mem_entry entries[] */
};

Does it match with your idea? We may need an |offset| in virtio_video_mem_entry?

Also, we should redesign "enum virtio_video_planes_layout" that we
originally discussed.
How about changing it like this?

enum virtio_video_planes_layout {
        VIRTIO_VIDEO_PLANES_LAYOUT_SINGLE_BUFFER = 1 << 0,
        VIRTIO_VIDEO_PLANES_LAYOUT_PER_PLANE = 1 << 1,
};

So, the device can combine flags to tell which (1), (2) or (3) it is.
Then, the device check if an incoming RESOURE_CREATE request violates
the requirement.
Does it make sense?

Best regards,
Keiichi

> WDYT?
>
> Best regards,
> Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
