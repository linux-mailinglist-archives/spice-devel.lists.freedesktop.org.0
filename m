Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F20ED1E9662
	for <lists+spice-devel@lfdr.de>; Sun, 31 May 2020 10:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A3B6E063;
	Sun, 31 May 2020 08:42:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502426E915
 for <spice-devel@lists.freedesktop.org>; Fri, 29 May 2020 14:22:03 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id e4so2835291ljn.4
 for <spice-devel@lists.freedesktop.org>; Fri, 29 May 2020 07:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FeXFdyoCvNQF3pgWxWtWO2NguMkgHUvtrIPz9eUADy4=;
 b=Xba3g5VQHx3TlijgIw4CBB6eiM1RrvNew29eiPfzLe0J7ZDIDk/JpPDwxPt9SIKDoo
 8ATWFE8kM9daqtTEZHYUGYVFQurAbU0Ys08mew3RkDTeT59VmpdDdEwJKpCOrDqsiR2d
 to0NuYTthxNedlX5TupWBqZewnQ9bCWGKmD+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FeXFdyoCvNQF3pgWxWtWO2NguMkgHUvtrIPz9eUADy4=;
 b=ZTPviFxBW/PW+4jjGDylK3t5CnvNUmTU3T8PDtTyX4Kp8O3WslQBY+8ldmN7e0Pf15
 0Q6w6gdFYWV2AO373mXMUn0jYapWShwuudKIzq3I3H1PxQYa4/kT9Xl1WlUwTrD+0PYj
 RzyXtViUM2PI0VmRqIHmq8/3D0e6AOnYg4AHrs2/mPCiqbd+YiBh69O58MrpbyF8LzoK
 IDIHt+kmWqX+BW+PFi2GlegfkKNwOTCOHAEsjI5A6j+9+DWuUbX4z+hyaPkt2c03PNQm
 VKEeiQWitqowft4jYLHD9NjlgeQdT9T9arIrc5/lVHY+2XBRMolDnla5at+Zyzl5BKV9
 cTDg==
X-Gm-Message-State: AOAM532xd9EmTeX8insB57Mg/uznBP3sByoYm2r+C41g0P3tKIJWn4gF
 Lw1j2GzKmEyl7aNYPEn30AOtFZp37tKOHyqHJBRS8A==
X-Google-Smtp-Source: ABdhPJwBsXLo11BCkakhko0Lhvdg2YPGGNFaNLqfmakPB+Of19ImMqG4MRsNt+UPapL9e+3lkPbEh/ki5tjA7b8MPlQ=
X-Received: by 2002:a2e:9b50:: with SMTP id o16mr4526271ljj.164.1590762121629; 
 Fri, 29 May 2020 07:22:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <CAD90Vca6=AGq6aN8voNyQ7Lh69LeDZzCxebGQ+sv_mU+mqRGLA@mail.gmail.com>
 <3754945.rEp4dnK8H5@os-lin-dmo>
In-Reply-To: <3754945.rEp4dnK8H5@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Fri, 29 May 2020 23:21:49 +0900
Message-ID: <CAD90VcZuvDj+-fdM89w-gYH=v4vc7x=R3sn032An4-vAX6hN0A@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Sun, 31 May 2020 08:42:24 +0000
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

On Wed, May 27, 2020 at 9:12 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Keiichi,
>
> On Montag, 18. Mai 2020 07:17:53 CEST Keiichi Watanabe wrote:
> > > +struct virtio_video_stream_create {
> > > +        struct virtio_video_cmd_hdr hdr;
> > > +        le32 in_mem_type; /* One of VIRTIO_VIDEO_MEM_TYPE_* types */
> > > +        le32 out_mem_type; /* One of VIRTIO_VIDEO_MEM_TYPE_* types */
> > > +        le32 coded_format; /* One of VIRTIO_VIDEO_FORMAT_* types */
> > > +        u8 padding[4];
> > > +        u8 tag[64];
> > > +};
> > > +\end{lstlisting}
> > > +\begin{description}
> > > +\item[\field{in_mem_type, out_mem_type}] is a type of buffer
> > > +  management for input /output buffers. The driver MUST set a value in
> > > +  \field{enum virtio_video_mem_type} that the device reported a
> > > +  corresponding feature bit.
> > > +\begin{description}
> > > +\item[\field{VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES}] Use guest pages.
> > > +\end{description}
> > > +\item[\field{coded_format}] is the encoded format that will be
> > > +  processed.
> > > +\item[\field{tag}] is the name associated with this stream. The tag
> > > +  MUST be encoded in UTF-8 and NUL-terminated.
> >
> > I wonder why we need this "tag" field. I have kept this field from
> > Dmitry's first proposal, where this was called "char debug_name[64]".
> > However, on second thought, I have no idea what is the necessity to
> > have this field. Our VMM implementation in ChromeOS simply ignores
> > this field.
> > If OpenSynergy's implementation relies on this field, I'm curious
> > about the usage. We might want to have an enum value instead of this
> > field where arbitrary values can be stored.
> >
>
> The use of this field is not so clear because it was renamed. In fact, one can
> have an idea how it is used by simply looking at the driver code: the field is
> useful to know about the guest client app that uses the context. If someone
> wants to store arbitrary values, they have 64 bytes to do so with this so-
> called tag.

Hmm, though I understand this can be useful for you, I don't think we
should support it in the standard.
For the first example, I feel something is not abstracted well if you
want to send some information from a user app to the host device. User
applications shouldn't have a way to send messages to hardware
directly.
For the second example, who is "someone"? Driver or device? In any
case, I don't think it's the right way. They should extend existing
structs or add commands or feature flags, I think. Also, if arbitrary
values are allowed, the field won't be used correctly except in cases
where both driver implementation and device implementation are
available. This is against what the spec should be: virtio protocol
must work independently from the implementations.
Of course, it's obviously okay to have it as a downstream extension in
your product's local repository.

>
> > > +\end{description}
> > > +
> > > +The driver MUST set \field{stream_id} in \field{virtio_video_cmd_hdr}
> > > +to an integer that is not used before. If a used value is passed as
> > > +\field{stream_id}, the device MUST reports an error with
> > > +VIRTIO_VIDEO_RESP_ERR_INVALID_STREAM_ID.
> >
> > I'm wondering if we can't generate stream_id in the host side so that
> > we will have less error control code. In the current design, both the
> > device and the driver have error checks; the device must check that a
> > given ID is available and the driver must check if the device didn't
> > return the INVALID_STREAM_ID error. Instead, by generating IDs in the
> > device, we will be free from this type of failure. Same for
> > resource_id in RESOURCE_CREATE.
> >
> > I guess this design originally came from the virtio-gpu protocol.
> > However, I couldn't find a benefit of adopting the same design here.
> >
>
> Honestly I don't see too much difference: device still needs to check whether
> the id provided by the driver within some particular command is correct. If it
> is not, it will return an error. The driver needs to check (or skip checking)
> for an error either way as long as it is possible for the driver code to send
> a wrong number.

I'm talking about creation commands only. So, other commands won't be affected.

Let me try to explain my idea in a different way. The relationship
between the driver and the device can be seen as a client-server
model.
The client (driver) sends a request and the server (device) sends a
response by processing or generating some data.
Thus, I feel it's more natural that new data, including IDs, are
generated and provided by the device.

Best regards,
Keiichi

>
> Best regards,
> Dmitry.
>
> > Any feedback is welcome.
> >
> > Best regards,
> > Keiichi
> >
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
