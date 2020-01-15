Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4538C13BACA
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jan 2020 09:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC53A6E86C;
	Wed, 15 Jan 2020 08:19:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA6356E862
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 07:49:13 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id b15so11921278lfc.4
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 23:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rGPQv9MaslCBNPTnj4WxVDVZyv/RLwri+eqqZahHhXY=;
 b=Ph7Jxj5mP3lrRk1jI/qQ2DrK3XScf+TYXbP1p7nW9WRonammkRxr63xjWzRF1D/6pz
 U6v20gVJtb5ggfJoFsHV9UCxzeAhhUbfvXhZyDfMlC81Uvp1dClrZ3TpfQOVqAOZkFBv
 nUahCdqOmHOsi93RBNZ0l6llPVX+sugxKAERQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rGPQv9MaslCBNPTnj4WxVDVZyv/RLwri+eqqZahHhXY=;
 b=tPRjL7XVctWhId2Je/mdCkCzgnPPPk0LmyEDJTIXk4oI4a3u7hniNmkTz4LLxA4WXV
 a9LNd4eCfQCM9Tn3Drr7PjO6+UkJxEEBsZNO973iQRlvK36QRQXyHT51zTWHpGzJ0U+C
 cC27zLwvHXGDnHHO54OZtJyEIbRm7Swjnf8ZGqEm2y3GjZetxsbt/ktwov0GcEN5psSC
 q3zhROH46lq8GEbGF5yvtunoG8cPKtmsCG/Tf0S4xERiPg06vQgzuoVA2BI64FX2Eh2a
 ZXwvY9Jz3K8wYQ4+HrHPY5jiCKq5qkxR8EyrgmrPsrmm3/C+ZyaZHhv08wJyT1MMBWxG
 Dlrw==
X-Gm-Message-State: APjAAAXamJxc1R8pDx8TcpgoZIiYKYSm/CADboZFh9jvlTMRbJuQazCy
 fWs4NznuloLisLORDmUqHA0uBpWrIs/VWD/uHvbMDw==
X-Google-Smtp-Source: APXvYqxMZnXmEGVxkikPGn81uoipjgEqyn7yX9ZBXsJu+lGtvqz8CYpF/6YELoEwMO317dBH1NJBy3FZMe2kmlJYnDM=
X-Received: by 2002:ac2:5337:: with SMTP id f23mr3900801lfh.192.1579074551993; 
 Tue, 14 Jan 2020 23:49:11 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5DcYWymWyzdiyfy18HkUBsEhALYG+DLwjXGCpRGDaJqyQ@mail.gmail.com>
 <CAD90VcbG6kR1Nw6DTr2RjwFrDja2B=Ohje_2MMeKBwpXGZ_MyA@mail.gmail.com>
 <2337316.Sgy9Pd6rRy@os-lin-dmo>
In-Reply-To: <2337316.Sgy9Pd6rRy@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Wed, 15 Jan 2020 16:49:00 +0900
Message-ID: <CAD90Vca35=J1e=eqNxQ4jNhSrsgW8Y=_oXi_euc1mOjPNrmhaA@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Wed, 15 Jan 2020 08:19:35 +0000
Subject: Re: [Spice-devel] [virtio-dev] Re: [PATCH v2 1/1] virtio-video: Add
 virtio video device specification
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

Hi,

On Tue, Jan 14, 2020 at 7:35 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Keiichi,
>
> thank you for the update.
>
> On Dienstag, 14. Januar 2020 08:18:50 CET Keiichi Watanabe wrote:
> > Hi,
> >
> > On Thu, Jan 9, 2020 at 11:21 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > On Wed, Jan 8, 2020 at 10:52 PM Keiichi Watanabe <keiichiw@chromium.org>
> wrote:
> > > > Hi Gerd,
> > > >
> > > > On Thu, Dec 19, 2019 at 10:12 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> > > > >   Hi,
> > > > >
> > > > > > > However that still doesn't let the driver know which buffers will
> > > > > > > be
> > > > > > > dequeued when. A simple example of this scenario is when the guest
> > > > > > > is
> > > > > > > done displaying a frame and requeues the buffer back to the
> > > > > > > decoder.
> > > > > > > Then the decoder will not choose it for decoding next frames into
> > > > > > > as
> > > > > > > long as the frame in that buffer is still used as a reference
> > > > > > > frame,
> > > > > > > even if one sends the drain request.
> > > > > >
> > > > > > It might be that I'm getting your point wrong, but do you mean some
> > > > > > hardware can mark a buffer as ready to be displayed yet still using
> > > > > > the underlying memory to decode other frames?
> > > > >
> > > > > Yes, this is how I understand Tomasz Figa.
> > > > >
> > > > > > This means, if you occasionally/intentionally
> > > > > > write to the buffer you mess up the whole decoding pipeline.
> > > > >
> > > > > And to avoid this the buffer handling aspect must be clarified in the
> > > > > specification.  Is the device allowed to continue using the buffer
> > > > > after
> > > > > finishing decoding and completing the queue request?  If so, how do we
> > > > > hand over buffer ownership back to the driver so it can free the
> > > > > pages?
> > > > > drain request?  How do we handle re-using buffers?  Can the driver
> > > > > simply re-queue them and expect the device figures by itself whenever
> > > > > it
> > > > > can use the buffer or whenever it is still needed as reference frame?
> > > >
> > > > The device shouldn't be able to access buffers after it completes a
> > > > queue request.
> > > > The device can touch buffer contents from when a queue request is sent
> > > > until the device responds it.
> > > > In contrast, the driver must not modify buffer contents in that period.
> > > >
> > > > Regarding re-using, the driver can simply re-queue buffers returned by
> > > > the device. If the device needs a buffer as reference frame, it must
> > > > not return the buffer.
> > >
> > > I think that might not be what we expect. We want the decoder to
> > > return a decoded frame as soon as possible, but that decoded frame may
> > > be also needed for decoding next frames. In V4L2 stateful decoder, the
> > > API is defined that the client must not modify the decoded
> > > framebuffer, otherwise decoding next frames may not be correct.
> >
> > Thanks Tomasz! I didn't know the V4L2's convention.
> > So, the host should be able to read a frame buffer after it is
> > returned by responding RESOURCE_QUEUE command.
> >
> > > We may
> > > need something similar, with an explicit operation that makes the
> > > buffers not accessible to the host anymore. I think the queue flush
> > > operation could work as such.
> >
> > After offline discussion with Tomasz, I suspect the queue flush
> > operation (= VIRTIO_VIDEO_CMD_QUEUE_CLEAR) shouldn't work so, as it
> > just forces pending QUEUE requests to be backed for video seek.
> > So, a buffer can be readable from the device once it's queued until
> > STREAM_DESTROY or RESOURCE_DESTROY is called.
>
> Speaking of v4l2, drivers usually get all buffers back on stop_streaming  (this
> means seek(decoder), reset (encoder)). As per my understanding, this means
> that the device should not read the buffers anymore after
> stop_streaming(STREAMOFF) has been called. We can mention that after
> VIRTIO_VIDEO_CMD_QUEUE_CLEAR no device access is allowed.
>
> So:
> stop_streaming() = VIRTIO_VIDEO_CMD_QUEUE_CLEAR
> REQBUFS(0) = RESOURCE_DESTROY

Thank you for the explanation.

It seems that the problem here is:
"Should we _guarantee_ that the device won't read buffers after
VIRTIO_VIDEO_CMD_QUEUE_CLEAR is called in the spec?"

If we want to guarantee it and choose the way you suggested, the state
machine and the table I posted were not enough to explain who can
read/write which buffers.
I suspect we would need to define states of streams like "on" and
"off" in the spec.
Then, VIRTIO_VIDEO_CMD_QUEUE_CLEAR will
(1) force every pending command to being backed, and
(2) change the stream state to "off".
As a result, the table will become like this:

 state                | Guest   |    Host
-------------------------------------------
created               | Read    | -
queued                | -       | Read/Write
dequeued (stream: on) | Read    | Read
dequeued (stream: off)| Read    | -

However, I doubt we really want to guarantee it going so far as
introducing such more complexity.
If we don't need to guarantee it, "on" and "off" of streams are simply
the V4L2 driver's internal state and the spec won't care about it.

Moreover, even if we realize we actually want to guarantee it and
define "stream on" and "stream off" in the spec, we can define a
separate command that only changes the stream state.
In other words, the command only does (2) above.

So, I'd suggest:
* we don't guarantee that the device won't read buffers after
VIRTIO_VIDEO_CMD_QUEUE_CLEAR is called in the spec.
* If we realize that it's worth having a way to prevent buffers from
being read by the device in the future, we will define a concept of
"stream_on/off" in the spec and add a new command to change the stream
state.

Does it make sense?

>
> >
> > In my understanding, the life cycle of video buffers is defined as
> > this state machine.
> > https://drive.google.com/file/d/1c6oY5S_9bhpJlrOt4UfoQex0CanpG-kZ/view?usp=s
> > haring
> >
> > ```
> > # The definition of the state machine in DOT language
> > digraph G {
> >   graph [ rankdir = LR, layout = dot ];
> >
> >   init [shape=point]
> >   created [label="created", shape=circle]
> >   dequeued [label="dequeued", shape=circle]
> >   queued [label="queued", shape=circle]
> >
> >   init -> created [label="RESOURCE_CREATE"]
> >
> >   created -> queued [label="RESOURCE_QUEUE \n is sent"]
> >   dequeued -> queued [label="RESOURCE_QUEUE \n is sent"]
> >   queued -> dequeued [label="RESOURCE_QUEUE \n is returned"]
> >
> >   created -> init [label="DESTROY"]
> >   dequeued -> init [label="DESTROY"]
> > }
> > ```
> >
> > In each state of this figure, the accessibility of each buffer should
> > be like the following:
> >
> > # Input buffers
> >  state   |   Guest    |    Host
> > -----------------------------------
> > created  | Read/Write | -
> > queued   | -          | Read
> > dequeued | Read/Write | -
> >
> > # Output buffers
> >  state   |   Guest    |    Host
> > ----------------------------------
> > created  | Read       | -
> > queued   | -          | Read/Write
> > dequeued | Read       | Read
> >
> > Does it make sense?
> > If ok, I'll have this state machine and tables in the next version of
> > spec to describe device/driver requirements by adding a subsection
> > about buffer life cycle.
> >
>
> Yes, I think this is ok.
>
> >
> > By the way, regarding destruction of buffers, I suspect it doesn't
> > make much sense to have RESOURCE_DESTROY command. Though it was
> > suggested as a per-buffer command, it doesn't match the existing V4L2
> > API, as REQBUFS(0) destroys all buffers at once. I guess per-buffer
> > destruction would require hardware or firmware supports.
> > Even if we want to destroy buffers at once, we can destroy the stream
> > and recreate one. So, I wonder if we can remove RESOURCE_DESTROY
> > command from the first version of spec at least.
> > What do you think?
>
> Stream might have a context behind it (and it in fact does), and the contents
> of that might depend on the device side implementation. For instance, the
> context can be used to keep the currently set parameters, controls and so on.
> So we'd avoid destroyng streams all the time for seek, resolution change,
> reset and so on.
>
> It still makes sense to use RESOURCE_DESTROY to destroy all resources at once
> for one particular queue though. We can rename it to something more
> meaningful.
>

Having REQBUFS(0) = RESOURCE_DESTROY makes sense.
So far, every CMD_RESOURCE_* commands only affect one specified
resource. To follow this naming convention, how about renaming it to
something like "CMD_STREAM_RESOUCES_DESTROY"?
Any other ideas are welcome.

Best regards,
Keiichi

> Best regards,
> Dmitry.
>
> >
> > Best regards,
> > Keiichi
> >
> > > > I'll describe this rule in the next version of the patch.
> > > >
> > > > Best regards,
> > > > Keiichi
> > > >
> > > > > cheers,
> > > > >
> > > > >   Gerd
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
