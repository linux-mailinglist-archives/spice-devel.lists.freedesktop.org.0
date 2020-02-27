Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E83221711AC
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 08:48:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8C56EBFA;
	Thu, 27 Feb 2020 07:48:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F67A6EBFA
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 07:24:13 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id 143so2025761ljj.7
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Feb 2020 23:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ulhfzZtjqHVApyH23tC1m4uF97F2GaK3aqMyj12HxmE=;
 b=hHCjYsgfTgkXZ/zznQPV6HSvsdeObsvIsCq9SMzElPkgKtt/bEUuy26I6QqaTy1SE3
 ur2XA32s47U7T74czc1kqvvkkeyit7ImqaNrNgSzA1hcz24FR5V/ZloWOSrJhf2PV26O
 C4pHzE4cmSravi+LKRe0px08ajRcT+QwvZwCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ulhfzZtjqHVApyH23tC1m4uF97F2GaK3aqMyj12HxmE=;
 b=a5FuslUO6qjNtSFFh/dSHN5WEhQ3JARImG0CgQKWpMXNwj+BDUm6/0wVsFa2UodZ8d
 LVpM6vES3PqqgwNUIGCKAQqxlAmXVJj6EhbcFBbA1gKYmblrXgxCQN+emI2WUCCCSf4X
 x9Awmp/KOLIBa7v0FMogaiRj321imakARzPU4V/xOf7fC0FT1gDZDmiaNTpjsch0SwFm
 UOs9bLz+xPijydOtg75cWXNW33oVXxdxKkIlLuA4OUuOp8Bh+HrmZROy89GEN1ZLZjkI
 fjLCNTeJOEpKt++mG0/av/z0A+UFv5JhOJbhaz3sVFlTaSD7sk4PQhq7pTr6801c/aXe
 tdvA==
X-Gm-Message-State: ANhLgQ20hTDao0bHWBAw1MedqfAt0t3/fRLVlXpVjXJxTdEfu24NJ9Lf
 QId+O3NG+CpcSa7ikdvJCAtYJa3B5SL7Whcs+BG0Rg==
X-Google-Smtp-Source: ADFU+vul/JV3LM8z+jDl4Ywq6hXYMYZ79sLFk7RSr6JbYECi00uphmFPR6Tj9nVUMbPkox4o6RVK8PdqCACV6Gt/HuE=
X-Received: by 2002:a2e:3514:: with SMTP id z20mr1887966ljz.261.1582788251546; 
 Wed, 26 Feb 2020 23:24:11 -0800 (PST)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
In-Reply-To: <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 27 Feb 2020 16:24:00 +0900
Message-ID: <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Thu, 27 Feb 2020 07:48:50 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
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

Thanks for the review, Gerd.
Please see my replies inline below.

FYI, I'm implementing virtio-video device for ChromeOS that works with
Dmitry's virtio-video driver
https://patchwork.linuxtv.org/patch/61717/.
Once it becomes fully functional, I'll post a list of possible
improvements of protocol.

On Tue, Feb 25, 2020 at 7:00 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
> On Thu, Feb 06, 2020 at 07:20:57PM +0900, Keiichi Watanabe wrote:
> > From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
> >
> > The virtio video encoder device and decoder device provide functionalities to
> > encode and decode video stream respectively.
> > Though video encoder and decoder are provided as different devices, they use a
> > same protocol.
> >
> > Signed-off-by: Dmitry Sepp <dmitry.sepp@opensynergy.com>
> > Signed-off-by: Keiichi Watanabe <keiichiw@chromium.org>
>
> Finally found the time for a closer look.
> Pretty good overall, some minor nits below ...
>
> > +\begin{description}
> > +\item[\field{version}] is the protocol version that the device talks.
> > +  The device MUST set this to 0.
>
> What is the intended use case for this?
>
> Given that virtio has feature flags to negotiate support for optional
> features and protocol extensions between driver and device, why do you
> think this is needed?

While feature flags work well when we "extend" the protocol with an
optional feature, they don't when we want to "drop" or "modify"
features.
For example, I guess it'd be useful when we want:
* to abandon a non-optional command,
* to change a non-optional struct's layout,or
* to change the order of commands in which the device expects to be sent.

Though it might be possible to handle these changes by feature flags,
I suspect the version number allow us to transition protocols more
smoothly.
WDYT?

>
> > +The format description \field{virtio_video_format_desc} is defined as
> > +follows:
> > +\begin{lstlisting}
> > +enum virtio_video_format {
> > +        /* Raw formats */
> > +        VIRTIO_VIDEO_FORMAT_RAW_MIN = 1,
> > +        VIRTIO_VIDEO_FORMAT_ARGB8888 = VIRTIO_VIDEO_FORMAT_RAW_MIN,
> > +        VIRTIO_VIDEO_FORMAT_BGRA8888,
> > +        VIRTIO_VIDEO_FORMAT_NV12, /* 12  Y/CbCr 4:2:0  */
> > +        VIRTIO_VIDEO_FORMAT_YUV420, /* 12  YUV 4:2:0     */
> > +        VIRTIO_VIDEO_FORMAT_YVU420, /* 12  YVU 4:2:0     */
> > +        VIRTIO_VIDEO_FORMAT_RAW_MAX = VIRTIO_VIDEO_FORMAT_YVU420,
>
> I'm wondering what the *_MIN and *_MAX values here (and elsewhere) are
> good for?  I doubt drivers would actually loop over formats from min to
> max, I'd expect they check for specific formats they can handle instead.
>
> If you want define the range for valid raw formats I'd suggest to leave
> some room, so new formats can be added without changing MAX values, i.e.
> use -- for example -- RAW_MIN = 0x100, RAW_MAX = 0x1ff, CODED_MIN=0x200,
> CODED_MAX=0x2ff.  Or just drop them ...

Ah, that's a good point. I agree that drivers don't need to loop over formats.
If they need, they can define such an alias locally.

Still, I guess it's worth defining the range for valid raw/coded formats.
This allows devices to report more detailed errors if a driver sent an
unexpected format.
i.e. "opposite format type" v.s. "unknown format"

So, I'd use your idea of RAW_MIN = 0x100 and RAW_MAX = 0x1ff.

>
> > +struct virtio_video_query_control_level {
> > +        le32 profile; /* One of VIRTIO_VIDEO_PROFILE_* */
>                                                 ^^^^^^^  LEVEL ?

Nope, it should be profile.
This "profile" field is specified by the driver to query supported
levels for a specific profile.

In my understanding, supported levels depend on profiles.
At least, the specification of H.264 [1] says that `"levels" are
specified within each profile.` at section "0.5 Profiles and levels".

[1] https://www.itu.int/rec/T-REC-H.264-201906-I/en

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
