Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32281260FA
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 12:39:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE09E6EB51;
	Thu, 19 Dec 2019 11:39:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724796EAF5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 09:59:18 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id v28so4227805edw.12
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 01:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JvCZyJtNfYnDKMl2uNXPFvRqMOQ0xf1KJQt+pHKHvDc=;
 b=H7M7sT9kt8F69kx8XJ9vvdfZ+umfyW3TkLRFtKkP1x0OCFsXoYrO28LktzrsPvgu65
 hi0Lfo+si/q7C9+06tUWUSdszhQEslo0WBEPvJ8s2dAHwCEHbfaL7f1tkSZe0itf2Jjn
 iuh4AlLF9sUsLQtuwCjosHWGYIN/YABYco/Q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JvCZyJtNfYnDKMl2uNXPFvRqMOQ0xf1KJQt+pHKHvDc=;
 b=p1OrwsNkGx8F847FVjEzJYOpgondND1DVsbSDTHom5zSGambMShR29XXrpMLeD3/CY
 KN7XDZTiUpnrTVdFpOdc7I3GbZUEMZFrDHG01j7Br/QOV66AlrmTsh6heo5n2HmAkQsE
 lRPZbWovEP7J0xM9AODl2ITdrs1oaf17gnOZbz6bz+XVyxO2DCebWUwGW6ZDHtZEs0Cs
 eQDmqLkUOzSHTl2Njigs9sxSYxnW9OpA2ne1S9YQj3AoTWnokJUUyHTEQD3skW0tR8lm
 4iAY5W56QttCnWoPABXu1UHkL816HE7zYxPyja4kW+FeuiQV+itIw45sFXtv6iibhEaz
 +vPg==
X-Gm-Message-State: APjAAAVlZnMoxO/gqyOCPHeugsaPrCYahm2cZwOqwqLi/o9kNKnUEHAR
 uGTz4+eSXdQzOsTe2gBDmcAdPy5X0zkaBg==
X-Google-Smtp-Source: APXvYqwWWUzdK3TTogAmuZ/wb11Ew3jyK1Q7qL2hoPjVZ3cJ6NM/0G12kzb8kbkVtsailwL3NctTjA==
X-Received: by 2002:aa7:d415:: with SMTP id z21mr8048292edq.264.1576749556697; 
 Thu, 19 Dec 2019 01:59:16 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id b27sm366966ejg.40.2019.12.19.01.59.15
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 01:59:15 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id d16so5288491wre.10
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 01:59:15 -0800 (PST)
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr8434296wrs.113.1576749554751; 
 Thu, 19 Dec 2019 01:59:14 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
 <20191219074639.kdkrqxwb6fdb67hu@sirius.home.kraxel.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
In-Reply-To: <3550989.gzE5nMqd4t@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Dec 2019 18:59:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
Message-ID: <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 19 Dec 2019 11:39:32 +0000
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
 Keiichi Watanabe <keiichiw@chromium.org>,
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

On Thu, Dec 19, 2019 at 6:48 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi,
>
> On Donnerstag, 19. Dezember 2019 08:46:39 CET Gerd Hoffmann wrote:
> > On Wed, Dec 18, 2019 at 11:08:37PM +0900, Tomasz Figa wrote:
> > > On Wed, Dec 18, 2019 at 10:40 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> > > >   Hi,
> > > >
> > > > > +The device MUST mark the last buffer with the
> > > > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > > > +sequence.
> > > >
> > > > No, that would build a race condition into the protocol.  The device
> > > > could complete the last buffer after the driver has sent the drain
> > > > command but before the device saw it.  So the flag would not be
> > > > reliable.
> > > >
> > > > I also can't see why the flag is needed in the first place.  The driver
> > > > should know which buffers are queued still and be able to figure
> > > > whenever the drain is complete or not without depending on that flag.
> > > > So I'd suggest to simply drop it.
> > >
> > > Unfortunately video decoders are not that simple. There are always
> > > going to be some buffers on the decoder side used as reference frames.
> > > Only the decoder knows when to release them, as it continues decoding
> > > the stream.
> >
> > Not clearly defined in the spec:  When is the decoder supposed to send
> > the response for a queue request?  When it finished decoding (i.e. frame
> > is ready for playback), or when it doesn't need the buffer any more for
> > decoding (i.e. buffer can be re-queued or pages can be released)?
> In my eyes the both statements mean almost the same and both are valid. I
> think whatever underlying libraries are used for decoding on the device side,
> they simply won't return us the buffer as long as the HW device needs them to
> continue its normal operation. So your first sentence applies to output buffers,
> the second - to input buffers.
>
> My understanding is as follows: we send the response for a queue request as
> soon as the HW device on the host side passes the buffer ownership back to the
> client (like when VIDIOC_DQBUF has returned a buffer).

That's how it's defined in V4L2 and what makes the most sense from the
video decoding point of view, as one wants to display frames as soon
as they are available.

However that still doesn't let the driver know which buffers will be
dequeued when. A simple example of this scenario is when the guest is
done displaying a frame and requeues the buffer back to the decoder.
Then the decoder will not choose it for decoding next frames into as
long as the frame in that buffer is still used as a reference frame,
even if one sends the drain request.

>
> Thanks for reviewing!
>
> Regards,
> Dmitry.
>
> >
> > > How we defined this in the V4L2 stateful decoder interface is that if
> > > the decoder happened to return the last framebuffer before the drain
> > > request arrived, it would return one more, empty.
> >
> > Ok.  That is not clear from the spec.  I've read the drain request as as
> > "please stop decoding and complete all queue requests which are in the
> > virtqueue, even when you didn't process them yet".  In which case
> > completing the last pending queue request would clearly indicate the
> > draining request is complete.  Also completing the drain request should
> > only happen when the operation is finished.
> >
> > I think the various states a buffer can have and how queuing & deciding
> > & draining changes these states should be clarified in the
> > specification.
> >
> > cheers,
> >   Gerd
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
