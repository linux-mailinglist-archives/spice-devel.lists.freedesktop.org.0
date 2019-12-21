Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31C5128B95
	for <lists+spice-devel@lfdr.de>; Sat, 21 Dec 2019 22:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8F16E4B1;
	Sat, 21 Dec 2019 21:02:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F4096E125
 for <spice-devel@lists.freedesktop.org>; Sat, 21 Dec 2019 06:27:29 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id f8so10643487edv.2
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H/X4Ym1U85HJ91rGwxFE/y1GE5D50EQx7s81Fpm3Ahw=;
 b=Nrx2A/Ymq4RG7BHHoBG3BsmoknfJc5W6snQqWkDd4PseWRthT9KcYDA0uO9QW+GvwR
 e2agZUmozQPCiPEbE5F7wBA5p1G+6fJ7/AVI4kCGg69U/lNwzR/ykFWVyyW3twl0MRT7
 BIj6X7M3eOtV38cDswZ1QzbMEYjnGx7tglqJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H/X4Ym1U85HJ91rGwxFE/y1GE5D50EQx7s81Fpm3Ahw=;
 b=pCE9sNR6hUDbByBd9WCwYLyldqU86PWya4iv5O/lu5ByJnSiA3MZatI2fqZdmvFvu/
 3lh3Trw6fwPKZgsBBKLPGH/BtpX4+2I8mk/UxTODijK6btPRVfv+uIAzrXMlUh9xFDwF
 uLnRw5U6Neegkxa18UnAYfM5XAWGfNsTwbDv0gP0LO3HKY5Uq4f7OR86iPa7mjG4hdex
 8+DIRjdsFZr/DOi4he1u9l0fqA0juxkeWhQUimU9ypUwgaXh9lXYOHacKp6mSbPg+Mp5
 oJcQFDDZRsTb0vUCHv14dNaUcYVawpP4mBbp613Rabe3KbUS336C0ELqV4oF6H5egAsw
 CirA==
X-Gm-Message-State: APjAAAXlSl7Gw+DWY+6VhZshiqeTwLmL60qlgLaQgq+u8655qtgsPNx3
 N8FYXKIegwqfb2sybkBcMUFli2o4jkOE4A==
X-Google-Smtp-Source: APXvYqzc3eFgKftvxWxlokGFzj8z4TyOjefHcoUGQwgLxj0V1w1TZ/scTrGezp4dw8IDyh4lk8ZACQ==
X-Received: by 2002:a17:906:f852:: with SMTP id
 ks18mr20781235ejb.260.1576909647720; 
 Fri, 20 Dec 2019 22:27:27 -0800 (PST)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com.
 [209.85.208.48])
 by smtp.gmail.com with ESMTPSA id gl17sm1376356ejb.72.2019.12.20.22.27.27
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 22:27:27 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id l8so10638657edw.1
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:27:27 -0800 (PST)
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr19021438wrs.113.1576909174987; 
 Fri, 20 Dec 2019 22:19:34 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <2730251.jGmEEvB50I@os-lin-dmo>
 <CAD90Vcb=38fXTbsWy6dH9FuE0xU-GAVAHWMFFtju0txPg+e1FA@mail.gmail.com>
 <CAAFQd5DbYC1P-nOCUxEtZfy5jGDoUb467nciHC9_A_H_6TwvoA@mail.gmail.com>
In-Reply-To: <CAAFQd5DbYC1P-nOCUxEtZfy5jGDoUb467nciHC9_A_H_6TwvoA@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 21 Dec 2019 15:19:23 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BxpOjAXV2TtF3GZfuZUJb65bECUn3VGtOxBOMz=bmnFg@mail.gmail.com>
Message-ID: <CAAFQd5BxpOjAXV2TtF3GZfuZUJb65bECUn3VGtOxBOMz=bmnFg@mail.gmail.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
X-Mailman-Approved-At: Sat, 21 Dec 2019 21:02:46 +0000
Subject: Re: [Spice-devel] [PATCH v2 0/1] VirtIO video device specification
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
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Sat, Dec 21, 2019 at 3:18 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Sat, Dec 21, 2019 at 1:36 PM Keiichi Watanabe <keiichiw@chromium.org> wrote:
> >
> > Hi Dmitry,
> >
> > On Sat, Dec 21, 2019 at 12:59 AM Dmitry Sepp
> > <dmitry.sepp@opensynergy.com> wrote:
> > >
> > > Hi Keiichi,
> > >
> > > On Mittwoch, 18. Dezember 2019 14:02:13 CET Keiichi Watanabe wrote:
> > > > Hi,
> > > > This is the 2nd version of virtio-video patch. The PDF is available in [1].
> > > > The first version was sent at [2].
> > > >
> > > > Any feedback would be appreciated. Thank you.
> > > >
> > > > Best,
> > > > Keiichi
> > > >
> > > > [1]:
> > > > https://drive.google.com/drive/folders/1eT5fEckBoor2iHZR4f4GLxYzFMVapOFx?us
> > > > p=sharing [2]: https://markmail.org/message/gc6h25acct22niut
> > > >
> > > > Change log:
> > > >
> > > > v2:
> > > > * Removed functionalities except encoding and decoding.
> > > > * Splited encoder and decoder into different devices that use the same
> > > > protocol. * Replaced GET_FUNCS with GET_CAPABILITY.
> > > > * Updated structs for capabilities.
> > > >   - Defined new structs and enums such as image formats, profiles, range
> > > > (min, max, step), etc
> > > >     * For virtio_video_pixel_format, chose a naming convention that is used
> > > >       in DRM. We removed XBGR, NV21 and I422, as they are not used in the
> > > >       current draft implementation. https://lwn.net/Articles/806416/
> > > >   - Removed virtio_video_control, whose usage was not documented yet and
> > > > which is not necessary for the simplest decoding scenario.
> > > >   - Removed virtio_video_desc, as it is no longer needed.
> > > > * Updated struct virtio_video_config for changes around capabilities.
> > > > * Added a way to represent supported combinations of formats.
> > > >   - A field "mask" in virtio_video_format_desc plays this role.
> > > > * Removed VIRTIO_VIDEO_T_STREAM_{START,STOP} because they don't play any
> > > > meaningful roles. * Removed VIRTIO_VIDEO_T_STREAM_{ATTACH, DETACH}_BACKING
> > > > and merged them into RESOURCE_{CREATE, DESTROY}. * Added a way to
> > > > notify/specify resource creation method.
> > > >   - Added a feature flag.
> > > >   - Defined enum virtio_video_mem_type.
> > > >   - Added new fields in video_stream_create.
> > > > * Modified fields in virtio_video_params.
> > > >   - Added crop information.
> > > > * Removed enum virtio_video_channel_type because we can get this information
> > > > by image format.
> > > Could you please explain this? How do you get the information?
> >
> > It means that if image formats are well-defined, channel information
> > (e.g. the order of channels) is uniquely determined.
> >
> > >
> > > Suppose you have some piece of HW on the host side that wants I420 as one
> > > contig buffer w/ some offsets. But on the driver side, say, gralloc gives you
> > > three separate buffers, one per channel. How do we pass those to the device
> > > then?
> >
> > You're talking about CrOS use case where buffers are allocated by
> > virtio-gpu, right?
> > In this case, virtio-gpu allocates one contiguous host-side buffer and
> > the client regards a pair of (buffer FD, offset) as one channel.
> > And, we can register this pair to the device when the buffer is imported.
> > In the virtio-vdec spec draft, this pair corresponds to struct
> > virtio_vdec_plane in struct virtio_vdec_plane.
> >
> > So, I suppose we will need similar structs when we add a control to
> > import buffers. However, I don't think it's necessary when guest pages
> > are used.
>
> I think we need some way for the guest to know whether it can allocate
> the planes in separate buffers, even when guest pages are used. This
> would be equivalent to V4L2 M and non-M formats, but mixing this into
> FourCC in V4L2 is an acknowledged mistake, so we should add a query or
> something.
>
> For future V4L2 development we came up with the idea of a format flag
> which could mean that the hardware allows putting planes in separate
> buffers. We could have a similar per-format flag in the capabilities,
> as we already have a list of all the supported formats there.

Sorry, forgot to paste the link from future V4L2 work notes from this year ELCE:
https://www.spinics.net/lists/linux-media/msg159789.html

>
> Best regards,
> Tomasz
>
> >
> > Best regards,
> > Keiichi
> >
> >
> > >
> > > Best regards,
> > > Dmitry.
> > >
> > > > * Renamed virtio_video_pin to virtio_video_buf_type.
> > > >   - It's similar to V4L2_BUF_TYPE_VIDEO_{OUTPUT, CAPTURE}.
> > > > * Added an error event.
> > > > * Reordered some subsections.
> > > > * Changed styles to make it consistent with other devices.
> > > >
> > > > Dmitry Sepp (1):
> > > >   virtio-video: Add virtio video device specification
> > > >
> > > >  content.tex      |   1 +
> > > >  virtio-video.tex | 579 +++++++++++++++++++++++++++++++++++++++++++++++
> > > >  2 files changed, 580 insertions(+)
> > > >  create mode 100644 virtio-video.tex
> > > >
> > > > --
> > > > 2.24.1.735.g03f4e72817-goog
> > >
> > >
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
