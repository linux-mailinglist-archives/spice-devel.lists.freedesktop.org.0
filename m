Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D4E13D6B0
	for <lists+spice-devel@lfdr.de>; Thu, 16 Jan 2020 10:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A956EC55;
	Thu, 16 Jan 2020 09:21:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FC76E911
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 11:12:53 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id b8so15143312edx.7
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eOdaif1NVgwL9hvMEPH3Ef3KvMggsPK/6UdtVOfe5WQ=;
 b=CMtvA0hvoIcv3GParUJBnKAQHwN9yAtA3/IiefQ6WnadJP1BptsUA5ibJ1kUBdHf0p
 cFtNirchYuqStxf5CJRxeuahteeKcNbUjL6jAldDRISVO2ykCo+hheZRyynZoSOBI5fO
 c1ou50opq523ZfrUXLppeJBAWHCzDRWsxuDjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eOdaif1NVgwL9hvMEPH3Ef3KvMggsPK/6UdtVOfe5WQ=;
 b=W+ulMxpZ9yX8xqmfBupXD5zuZiMpznwdPkWHL6SNQgovcdvyYcC5Al+lG5o2G9IBgv
 FRqt7ZpEQeFaPUWwUkxd2ZsL4q86UAVevrsdGfsD9Racm6Pd9luJgdiLw0h3uKJv44vK
 YhO4cX5jj11d99daGc5pk0TpQIbScniX4smDlo9f41GKeN78k39tbkkJzX7khzL3J5zC
 GnjP1FBudfFGO+jp7kXNNDbs2JvvDpzR5YfDU7i4FiHQ9Dsw8p5mxWmjWI2t/ZYpSdzW
 fffK42q4KYeWDfot9z1vj0v5ERuDC4MmJX1nOzdhLhh7RHBuo5oYYs5x7LXgVSuiWuPn
 fn0A==
X-Gm-Message-State: APjAAAVGyXMhoy6D+CRK1fM9VOf8WdP3unE/1rrJoQgpSnFbDRFaDh3c
 IDWUDLLDUaPOVLAsFuKCyh9r5Rx4z38a9g==
X-Google-Smtp-Source: APXvYqw9tgk/Hkso5x9MCHrHCnOg4F3pWifgxp0IjWQTZZmWUReuzx01i3lRCLRnUEA5UcqaYiOkOQ==
X-Received: by 2002:aa7:ccc7:: with SMTP id y7mr29131020edt.45.1579086771992; 
 Wed, 15 Jan 2020 03:12:51 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id i31sm697840edi.42.2020.01.15.03.12.50
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 03:12:50 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id d139so4506380wmd.0
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:12:50 -0800 (PST)
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr33309398wmk.85.1579086769704; 
 Wed, 15 Jan 2020 03:12:49 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5DcYWymWyzdiyfy18HkUBsEhALYG+DLwjXGCpRGDaJqyQ@mail.gmail.com>
 <CAD90VcbG6kR1Nw6DTr2RjwFrDja2B=Ohje_2MMeKBwpXGZ_MyA@mail.gmail.com>
 <2337316.Sgy9Pd6rRy@os-lin-dmo>
In-Reply-To: <2337316.Sgy9Pd6rRy@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 15 Jan 2020 20:12:35 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CDQXfwRrdxH4afnz8WdUxczE9vDTXU+2gLjsjPFS7v3A@mail.gmail.com>
Message-ID: <CAAFQd5CDQXfwRrdxH4afnz8WdUxczE9vDTXU+2gLjsjPFS7v3A@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 16 Jan 2020 09:21:31 +0000
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
 Alexandre Courbot <acourbot@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

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
>

I'm afraid this may not be enough. "drivers usually get all buffers
back on stop_streaming" is more like executing DQBUF implicitly on all
queued buffers. Unfortunately it doesn't necessarily mean releasing
the buffers. AFAICT currently the only way to guarantee that the
stateful V4L2 decoder on the host wouldn't use the buffers anymore is
to call REQBUFS(CAPTURE, 0).

Best regards,
Tomasz

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
