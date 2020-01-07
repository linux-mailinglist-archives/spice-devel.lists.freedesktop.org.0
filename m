Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8BD138CFF
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D138989F71;
	Mon, 13 Jan 2020 08:38:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB5F6E02C
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Jan 2020 10:26:09 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id l18so30328839lfc.1
 for <spice-devel@lists.freedesktop.org>; Tue, 07 Jan 2020 02:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xd8fa9SPUbV549yE1f/26W4MiJd3NRvcxsgdrP9AAig=;
 b=h2LwyyrncrsKin6b07Ir2k0hkaxv16zpsxHzULjlIkS5bOaoLo9lvxnJ8YLkiL2ZSl
 lHfoXtaGq/MmNZoNAz9Af1+qtcH6fuW32o0+xpA9fEfT9qNZ1X/YOR2BXJJKSvPFB+yY
 CongndD2vtdPe9983Ltb3bcGXjtusgw7fBCMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xd8fa9SPUbV549yE1f/26W4MiJd3NRvcxsgdrP9AAig=;
 b=FaLk/37p0kWE2OY9RDh8wxBDTU9Avx0ykRLkZ3RX10k8QfPdyqv2xZ+cVraathQAcu
 ZLtULDhPm+4pFLKn/ebGzbTjTexvbF29qU0ho8Ih2yeqyGxeC8b2Z55lRarx0nQ1V7Ue
 geTpiHgGqUilhG6rYDRB7zJhQ/2ib9vOvMMh5C79Q7movFdjW2UfGdlfch8HoYzSQmm4
 iTaiVgrGyog2Iyk5cTGcZ//4ml2xWRno4/zybX93wqXdzEX//wo88JLKpiMfTk+jWNQk
 8Sc6zax/w3iMo5kKSgAPAQfgOZmfq+209rHTFT+OIODb9Cikj6XXMX2hCCs1i3rSUyIJ
 VOoQ==
X-Gm-Message-State: APjAAAWST348nBy7dUtEYdDJ3mPWJWUIVzIbeXUAzOOEj0BXcCjkx/hw
 J1ZXE2gF7Z21G3+PS1qzLXtv4LjlEaMXhqwLd+KywA==
X-Google-Smtp-Source: APXvYqzazncdhHk64X4LNsP6C0KzMbTRDlZbsPuHD4IAZmhkjrdiAanD5j7r4+kIQag1gtm/rncvUo7McqSqUWHvSLI=
X-Received: by 2002:a19:a408:: with SMTP id q8mr57650934lfc.174.1578392767884; 
 Tue, 07 Jan 2020 02:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3016670.ToaXtcqt80@os-lin-dmo>
 <CAD90VcYtS1ZRdikyHGZPcXQMVC7MuNsAhBGAWwiVpGgO3Yittg@mail.gmail.com>
 <2751629.YRu87Tu1Bo@os-lin-dmo>
In-Reply-To: <2751629.YRu87Tu1Bo@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 7 Jan 2020 19:25:56 +0900
Message-ID: <CAD90VcaQCSFTv-JyxZ7cO+Qnc0U2NRGikcYmmy=zitJby9NfXg@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Mon, 13 Jan 2020 08:38:37 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Dmitry,

On Mon, Jan 6, 2020 at 8:28 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi,
>
> On Montag, 6. Januar 2020 11:30:22 CET Keiichi Watanabe wrote:
> > Hi Dmitry, Tomasz,
> >
> > On Fri, Jan 3, 2020 at 10:05 PM Dmitry Sepp <dmitry.sepp@opensynergy.com>
> wrote:
> > > Hi Tomasz, Keiichi,
> > >
> > > On Samstag, 21. Dezember 2019 07:19:23 CET Tomasz Figa wrote:
> > > > On Sat, Dec 21, 2019 at 3:18 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > > > On Sat, Dec 21, 2019 at 1:36 PM Keiichi Watanabe
> > > > > <keiichiw@chromium.org>
> > >
> > > wrote:
> > > > > > Hi Dmitry,
> > > > > >
> > > > > > On Sat, Dec 21, 2019 at 12:59 AM Dmitry Sepp
> > > > > >
> > > > > > <dmitry.sepp@opensynergy.com> wrote:
> > > > > > > Hi Keiichi,
> > > > > > >
> > > > > > > On Mittwoch, 18. Dezember 2019 14:02:13 CET Keiichi Watanabe
> wrote:
> > > > > > > > Hi,
> > > > > > > > This is the 2nd version of virtio-video patch. The PDF is
> > > > > > > > available
> > > > > > > > in [1].
> > > > > > > > The first version was sent at [2].
> > > > > > > >
> > > > > > > > Any feedback would be appreciated. Thank you.
> > > > > > > >
> > > > > > > > Best,
> > > > > > > > Keiichi
> > > > > > > >
> > > > > > > > [1]:
> > > > > > > > https://drive.google.com/drive/folders/1eT5fEckBoor2iHZR4f4GLxYz
> > > > > > > > FMVa
> > > > > > > > pOFx?us
> > > > > > > > p=sharing [2]: https://markmail.org/message/gc6h25acct22niut
> > > > > > > >
> > > > > > > > Change log:
> > > > > > > >
> > > > > > > > v2:
> > > > > > > > * Removed functionalities except encoding and decoding.
> > > > > > > > * Splited encoder and decoder into different devices that use
> > > > > > > > the
> > > > > > > > same
> > > > > > > > protocol. * Replaced GET_FUNCS with GET_CAPABILITY.
> > > > > > > > * Updated structs for capabilities.
> > > > > > > >
> > > > > > > >   - Defined new structs and enums such as image formats,
> > > > > > > >   profiles,
> > > > > > > >   range
> > > > > > > >
> > > > > > > > (min, max, step), etc
> > > > > > > >
> > > > > > > >     * For virtio_video_pixel_format, chose a naming convention
> > > > > > > >     that
> > > > > > > >     is used
> > > > > > > >
> > > > > > > >       in DRM. We removed XBGR, NV21 and I422, as they are not
> > > > > > > >       used
> > > > > > > >       in the
> > > > > > > >       current draft implementation.
> > > > > > > >       https://lwn.net/Articles/806416/
> > > > > > > >
> > > > > > > >   - Removed virtio_video_control, whose usage was not documented
> > > > > > > >   yet
> > > > > > > >   and
> > > > > > > >
> > > > > > > > which is not necessary for the simplest decoding scenario.
> > > > > > > >
> > > > > > > >   - Removed virtio_video_desc, as it is no longer needed.
> > > > > > > >
> > > > > > > > * Updated struct virtio_video_config for changes around
> > > > > > > > capabilities.
> > > > > > > > * Added a way to represent supported combinations of formats.
> > > > > > > >
> > > > > > > >   - A field "mask" in virtio_video_format_desc plays this role.
> > > > > > > >
> > > > > > > > * Removed VIRTIO_VIDEO_T_STREAM_{START,STOP} because they don't
> > > > > > > > play
> > > > > > > > any
> > > > > > > > meaningful roles. * Removed VIRTIO_VIDEO_T_STREAM_{ATTACH,
> > > > > > > > DETACH}_BACKING
> > > > > > > > and merged them into RESOURCE_{CREATE, DESTROY}. * Added a way
> > > > > > > > to
> > > > > > > > notify/specify resource creation method.
> > > > > > > >
> > > > > > > >   - Added a feature flag.
> > > > > > > >   - Defined enum virtio_video_mem_type.
> > > > > > > >   - Added new fields in video_stream_create.
> > > > > > > >
> > > > > > > > * Modified fields in virtio_video_params.
> > > > > > > >
> > > > > > > >   - Added crop information.
> > > > > > > >
> > > > > > > > * Removed enum virtio_video_channel_type because we can get this
> > > > > > > > information by image format.
> > > > > > >
> > > > > > > Could you please explain this? How do you get the information?
> > > > > >
> > > > > > It means that if image formats are well-defined, channel information
> > > > > > (e.g. the order of channels) is uniquely determined.
> > > > > >
> > > > > > > Suppose you have some piece of HW on the host side that wants I420
> > > > > > > as
> > > > > > > one
> > > > > > > contig buffer w/ some offsets. But on the driver side, say,
> > > > > > > gralloc
> > > > > > > gives you three separate buffers, one per channel. How do we pass
> > > > > > > those to the device then?
> > > > > >
> > > > > > You're talking about CrOS use case where buffers are allocated by
> > > > > > virtio-gpu, right?
> > > > > > In this case, virtio-gpu allocates one contiguous host-side buffer
> > > > > > and
> > > > > > the client regards a pair of (buffer FD, offset) as one channel.
> > > > > > And, we can register this pair to the device when the buffer is
> > > > > > imported.
> > > > > > In the virtio-vdec spec draft, this pair corresponds to struct
> > > > > > virtio_vdec_plane in struct virtio_vdec_plane.
> > > > > >
> > > > > > So, I suppose we will need similar structs when we add a control to
> > > > > > import buffers. However, I don't think it's necessary when guest
> > > > > > pages
> > > > > > are used.
> > > > >
> > > > > I think we need some way for the guest to know whether it can allocate
> > > > > the planes in separate buffers, even when guest pages are used. This
> > > > > would be equivalent to V4L2 M and non-M formats, but mixing this into
> > > > > FourCC in V4L2 is an acknowledged mistake, so we should add a query or
> > > > > something.
> > >
> > > Yes, this is what I mean. In fact, we already do face the situation when
> > > the device side is not happy with the sgt and wants contig. I think we'll
> > > add a module parameter for now.
> >
> > Okay. So, I suppose we'll be able to update structs:
> > * Add a flag in virtio_video_format_desc that indicates whether planes
> > can be in separate buffers, and
> > * Add a flag in virtio_video_format_desc that indicates that the
> > device requires contiguous buffers for this format.
> >
> > Does it make sense?
> >
> Sorry, I don't understand the difference between the two above: isn't the first
> case is just when the flag is not set?

Ah, I was confused and wrote something strange. Yeah,  these two are the same.
Sorry for that.

So, the suggestion is to add a field "planes_layout" in
virtio_video_format_desc, which is one of the following enums:

enum virtio_video_planes_layout {
    VIRTIO_VIDEO_PLANES_LAYOUT_UNSPEC = 0,  /* no special requirement */
    VIRTIO_VIDEO_PLANES_LAYOUT_CONTIGUOUS,
};

If we have a better idea or naming, please let me know.

Best regards,
Keiichi

>
> Regards,
> Dmitry.
>
> > Best regards,
> > Keiichi
> >
> > > Regards,
> > > Dmitry.
> > >
> > > > > For future V4L2 development we came up with the idea of a format flag
> > > > > which could mean that the hardware allows putting planes in separate
> > > > > buffers. We could have a similar per-format flag in the capabilities,
> > > > > as we already have a list of all the supported formats there.
> > > >
> > > > Sorry, forgot to paste the link from future V4L2 work notes from this
> > > > year
> > > > ELCE: https://www.spinics.net/lists/linux-media/msg159789.html
> > > >
> > > > > Best regards,
> > > > > Tomasz
> > > > >
> > > > > > Best regards,
> > > > > > Keiichi
> > > > > >
> > > > > > > Best regards,
> > > > > > > Dmitry.
> > > > > > >
> > > > > > > > * Renamed virtio_video_pin to virtio_video_buf_type.
> > > > > > > >
> > > > > > > >   - It's similar to V4L2_BUF_TYPE_VIDEO_{OUTPUT, CAPTURE}.
> > > > > > > >
> > > > > > > > * Added an error event.
> > > > > > > > * Reordered some subsections.
> > > > > > > > * Changed styles to make it consistent with other devices.
> > > > > > > >
> > > > > > > > Dmitry Sepp (1):
> > > > > > > >   virtio-video: Add virtio video device specification
> > > > > > > >
> > > > > > > >  content.tex      |   1 +
> > > > > > > >  virtio-video.tex | 579
> > > > > > > >  +++++++++++++++++++++++++++++++++++++++++++++++
> > > > > > > >  2 files changed, 580 insertions(+)
> > > > > > > >  create mode 100644 virtio-video.tex
> > > > > > > >
> > > > > > > > --
> > > > > > > > 2.24.1.735.g03f4e72817-goog
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
