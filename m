Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B594B128B98
	for <lists+spice-devel@lfdr.de>; Sat, 21 Dec 2019 22:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24996E4BB;
	Sat, 21 Dec 2019 21:02:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6056E125
 for <spice-devel@lists.freedesktop.org>; Sat, 21 Dec 2019 06:18:50 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id t17so10619355eds.6
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AEFIbQSSHz3y4Rl8s/35Oa22lroC9OlD7WOREMEc25A=;
 b=V+bmygyMbnMNcV3ImyalmC9L7TUjVW/Klm0s9b8I4hnz4baW652nxw2f7SURUOht0V
 PrddHZhngdZ3TuibynOpD3S91SZuOHwMy/FkW4+0CRYRc9UF2Z7Sr5n/w9OuZbqOgiRg
 4Gt8QgW39qh6LwMNJtMm+2AjLFo8dKm1PtiT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AEFIbQSSHz3y4Rl8s/35Oa22lroC9OlD7WOREMEc25A=;
 b=lTOOu2cHGIEa9oXnZXxF/RgxmSrL2qCRimuhVKCtlXyFVug60on98pLxc5mutGQXUj
 CPWYSz850NXOz0ok3WTTBkmgU6Ie2/WXKFDOxs4GCvHiWuQCM3oCZvwvzt2gdYm/1uYg
 yOMbhecklv0tDfmaGxWNEK1p3fc3ThvzhIk6DkXy3gwpd+BNCCwrCAOPnLMtA2c0ABiR
 qsM+HmcMFYLowIB6ohi/EFG1DFkZq9NyJSNGsDmdeSx8iws7DamGSc81JcrZ0HWE8wKk
 y+MU2qIFVaIkyD5vpHdeZuimmltxiShpJufzzsxzTasAjLA1NYRlqmzvIaW9oXPo/iaU
 MeJg==
X-Gm-Message-State: APjAAAW52rwdnYDlpuCc7V4CpeSSAlsDKmiTacEpVr06W7Lie6AVB4kN
 C9R41qs35B3FzF9UwSxG+9f783lea8q6/Q==
X-Google-Smtp-Source: APXvYqwZ2NKWd9MxLmPgStqzZupi62gzb55o0RDZY8qIioszdr7dBh7JsFIxpqWToIwNFojaBrttbg==
X-Received: by 2002:a05:6402:3047:: with SMTP id
 bu7mr20436923edb.44.1576909128189; 
 Fri, 20 Dec 2019 22:18:48 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id r20sm1372866eju.60.2019.12.20.22.18.46
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 22:18:46 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id 20so11152444wmj.4
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:18:45 -0800 (PST)
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr21703351wmm.157.1576909125349; 
 Fri, 20 Dec 2019 22:18:45 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <2730251.jGmEEvB50I@os-lin-dmo>
 <CAD90Vcb=38fXTbsWy6dH9FuE0xU-GAVAHWMFFtju0txPg+e1FA@mail.gmail.com>
In-Reply-To: <CAD90Vcb=38fXTbsWy6dH9FuE0xU-GAVAHWMFFtju0txPg+e1FA@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 21 Dec 2019 15:18:33 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DbYC1P-nOCUxEtZfy5jGDoUb467nciHC9_A_H_6TwvoA@mail.gmail.com>
Message-ID: <CAAFQd5DbYC1P-nOCUxEtZfy5jGDoUb467nciHC9_A_H_6TwvoA@mail.gmail.com>
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

On Sat, Dec 21, 2019 at 1:36 PM Keiichi Watanabe <keiichiw@chromium.org> wrote:
>
> Hi Dmitry,
>
> On Sat, Dec 21, 2019 at 12:59 AM Dmitry Sepp
> <dmitry.sepp@opensynergy.com> wrote:
> >
> > Hi Keiichi,
> >
> > On Mittwoch, 18. Dezember 2019 14:02:13 CET Keiichi Watanabe wrote:
> > > Hi,
> > > This is the 2nd version of virtio-video patch. The PDF is available in [1].
> > > The first version was sent at [2].
> > >
> > > Any feedback would be appreciated. Thank you.
> > >
> > > Best,
> > > Keiichi
> > >
> > > [1]:
> > > https://drive.google.com/drive/folders/1eT5fEckBoor2iHZR4f4GLxYzFMVapOFx?us
> > > p=sharing [2]: https://markmail.org/message/gc6h25acct22niut
> > >
> > > Change log:
> > >
> > > v2:
> > > * Removed functionalities except encoding and decoding.
> > > * Splited encoder and decoder into different devices that use the same
> > > protocol. * Replaced GET_FUNCS with GET_CAPABILITY.
> > > * Updated structs for capabilities.
> > >   - Defined new structs and enums such as image formats, profiles, range
> > > (min, max, step), etc
> > >     * For virtio_video_pixel_format, chose a naming convention that is used
> > >       in DRM. We removed XBGR, NV21 and I422, as they are not used in the
> > >       current draft implementation. https://lwn.net/Articles/806416/
> > >   - Removed virtio_video_control, whose usage was not documented yet and
> > > which is not necessary for the simplest decoding scenario.
> > >   - Removed virtio_video_desc, as it is no longer needed.
> > > * Updated struct virtio_video_config for changes around capabilities.
> > > * Added a way to represent supported combinations of formats.
> > >   - A field "mask" in virtio_video_format_desc plays this role.
> > > * Removed VIRTIO_VIDEO_T_STREAM_{START,STOP} because they don't play any
> > > meaningful roles. * Removed VIRTIO_VIDEO_T_STREAM_{ATTACH, DETACH}_BACKING
> > > and merged them into RESOURCE_{CREATE, DESTROY}. * Added a way to
> > > notify/specify resource creation method.
> > >   - Added a feature flag.
> > >   - Defined enum virtio_video_mem_type.
> > >   - Added new fields in video_stream_create.
> > > * Modified fields in virtio_video_params.
> > >   - Added crop information.
> > > * Removed enum virtio_video_channel_type because we can get this information
> > > by image format.
> > Could you please explain this? How do you get the information?
>
> It means that if image formats are well-defined, channel information
> (e.g. the order of channels) is uniquely determined.
>
> >
> > Suppose you have some piece of HW on the host side that wants I420 as one
> > contig buffer w/ some offsets. But on the driver side, say, gralloc gives you
> > three separate buffers, one per channel. How do we pass those to the device
> > then?
>
> You're talking about CrOS use case where buffers are allocated by
> virtio-gpu, right?
> In this case, virtio-gpu allocates one contiguous host-side buffer and
> the client regards a pair of (buffer FD, offset) as one channel.
> And, we can register this pair to the device when the buffer is imported.
> In the virtio-vdec spec draft, this pair corresponds to struct
> virtio_vdec_plane in struct virtio_vdec_plane.
>
> So, I suppose we will need similar structs when we add a control to
> import buffers. However, I don't think it's necessary when guest pages
> are used.

I think we need some way for the guest to know whether it can allocate
the planes in separate buffers, even when guest pages are used. This
would be equivalent to V4L2 M and non-M formats, but mixing this into
FourCC in V4L2 is an acknowledged mistake, so we should add a query or
something.

For future V4L2 development we came up with the idea of a format flag
which could mean that the hardware allows putting planes in separate
buffers. We could have a similar per-format flag in the capabilities,
as we already have a list of all the supported formats there.

Best regards,
Tomasz

>
> Best regards,
> Keiichi
>
>
> >
> > Best regards,
> > Dmitry.
> >
> > > * Renamed virtio_video_pin to virtio_video_buf_type.
> > >   - It's similar to V4L2_BUF_TYPE_VIDEO_{OUTPUT, CAPTURE}.
> > > * Added an error event.
> > > * Reordered some subsections.
> > > * Changed styles to make it consistent with other devices.
> > >
> > > Dmitry Sepp (1):
> > >   virtio-video: Add virtio video device specification
> > >
> > >  content.tex      |   1 +
> > >  virtio-video.tex | 579 +++++++++++++++++++++++++++++++++++++++++++++++
> > >  2 files changed, 580 insertions(+)
> > >  create mode 100644 virtio-video.tex
> > >
> > > --
> > > 2.24.1.735.g03f4e72817-goog
> >
> >
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
