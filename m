Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D5812644E
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 15:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7856E6EB81;
	Thu, 19 Dec 2019 14:10:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5F36E0F5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 12:12:06 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id r14so4190276lfm.5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 04:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XIAhps/+ifYr7Rb7CFWBGadYP4lae5rc+o3YgNr7BxY=;
 b=bYft5kZURSbQSr2bGp8TQE0W0vcbDA0osRKRIW/Fkg/qBuG8OvVUeaj9ppYqjmEoyn
 FHmrADmbnxGRoywDYgBJ2Wr+Zz0wJYEEp+/fVxCON/O73OK84pdwUYntc/foKbu9tUJt
 LlZ1DJ4wh/TePZYe3HzoBdbYsyR4YDrnZx1z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XIAhps/+ifYr7Rb7CFWBGadYP4lae5rc+o3YgNr7BxY=;
 b=HUW40eDodEIIw6r2g8GdAxoRStYvPVh6gSKa6aSBCn15N943zmzMowqpaAYayky2+P
 ZvaaNoT5A14Re8ZymrIGUHNoU/MyCL98JX+JoiM/zPj8H5RdMilv9zmJS2+xYJ9zyZKn
 74YUbLy2VVkwYaZOeLV5AfaCu3cXY1D/VK3JxFdAjrFj1porxxeLHpU7AtCqO1jPkuBw
 YkE2r0EZiAVj+iHYeXQuI4Vpkm0y7C1GkVhfBvFcHNonRtuf/RUX5pvPGPluf2iD0RB6
 EsshIuGYgzfdVdbMwLwRMs3Y0MmsitGP5/nCEvh3d5mp52NHuJCWAUrSV2nojugSZpYf
 d49A==
X-Gm-Message-State: APjAAAWMSLnjou/nZAyZNhz56hDvVZ5AqETFfClk3DGtNpkS0y+iLcw8
 lJrIOxlObW5m+tS41DZHDpKN3j5nTH2x7g==
X-Google-Smtp-Source: APXvYqxzZv7+GY9dPC3/f6Cj9lXop+KXsd8iYHsKsTOIqaYjbPBUbtXxWiOKqHLqSONGRD6kfuqo1g==
X-Received: by 2002:ac2:59dc:: with SMTP id x28mr5198887lfn.38.1576757524932; 
 Thu, 19 Dec 2019 04:12:04 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id 2sm2704720ljq.38.2019.12.19.04.12.04
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 04:12:04 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id u1so5960640ljk.7
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 04:12:04 -0800 (PST)
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr9617250wrt.100.1576757169872; 
 Thu, 19 Dec 2019 04:06:09 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
 <3878267.TzG3DlCiay@os-lin-dmo>
In-Reply-To: <3878267.TzG3DlCiay@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Dec 2019 21:05:56 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Bs5Aerr++gc=D_nyHu4KaWw6RfW-TXHRGEjVaf2dTx2Q@mail.gmail.com>
Message-ID: <CAAFQd5Bs5Aerr++gc=D_nyHu4KaWw6RfW-TXHRGEjVaf2dTx2Q@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 19 Dec 2019 14:10:42 +0000
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

On Thu, Dec 19, 2019 at 7:55 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Tomasz,
>
> On Donnerstag, 19. Dezember 2019 10:59:02 CET Tomasz Figa wrote:
> > On Thu, Dec 19, 2019 at 6:48 PM Dmitry Sepp <dmitry.sepp@opensynergy.com>
> wrote:
> > > Hi,
> > >
> > > On Donnerstag, 19. Dezember 2019 08:46:39 CET Gerd Hoffmann wrote:
> > > > On Wed, Dec 18, 2019 at 11:08:37PM +0900, Tomasz Figa wrote:
> > > > > On Wed, Dec 18, 2019 at 10:40 PM Gerd Hoffmann <kraxel@redhat.com>
> wrote:
> > > > > >   Hi,
> > > > > >
> > > > > > > +The device MUST mark the last buffer with the
> > > > > > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > > > > > +sequence.
> > > > > >
> > > > > > No, that would build a race condition into the protocol.  The device
> > > > > > could complete the last buffer after the driver has sent the drain
> > > > > > command but before the device saw it.  So the flag would not be
> > > > > > reliable.
> > > > > >
> > > > > > I also can't see why the flag is needed in the first place.  The
> > > > > > driver
> > > > > > should know which buffers are queued still and be able to figure
> > > > > > whenever the drain is complete or not without depending on that
> > > > > > flag.
> > > > > > So I'd suggest to simply drop it.
> > > > >
> > > > > Unfortunately video decoders are not that simple. There are always
> > > > > going to be some buffers on the decoder side used as reference frames.
> > > > > Only the decoder knows when to release them, as it continues decoding
> > > > > the stream.
> > > >
> > > > Not clearly defined in the spec:  When is the decoder supposed to send
> > > > the response for a queue request?  When it finished decoding (i.e. frame
> > > > is ready for playback), or when it doesn't need the buffer any more for
> > > > decoding (i.e. buffer can be re-queued or pages can be released)?
> > >
> > > In my eyes the both statements mean almost the same and both are valid. I
> > > think whatever underlying libraries are used for decoding on the device
> > > side, they simply won't return us the buffer as long as the HW device
> > > needs them to continue its normal operation. So your first sentence
> > > applies to output buffers, the second - to input buffers.
> > >
> > > My understanding is as follows: we send the response for a queue request
> > > as
> > > soon as the HW device on the host side passes the buffer ownership back to
> > > the client (like when VIDIOC_DQBUF has returned a buffer).
> >
> > That's how it's defined in V4L2 and what makes the most sense from the
> > video decoding point of view, as one wants to display frames as soon
> > as they are available.
> >
> > However that still doesn't let the driver know which buffers will be
> > dequeued when. A simple example of this scenario is when the guest is
> > done displaying a frame and requeues the buffer back to the decoder.
> > Then the decoder will not choose it for decoding next frames into as
> > long as the frame in that buffer is still used as a reference frame,
> > even if one sends the drain request.
> It might be that I'm getting your point wrong, but do you mean some hardware
> can mark a buffer as ready to be displayed yet still using the underlying
> memory to decode other frames? This means, if you occasionally/intentionally
> write to the buffer you mess up the whole decoding pipeline. That would be
> strange at least...

That's correct. It depends on the hardware, but in principle we don't
want to copy the frames decoded to temporary buffers for using them as
reference frames, as that would waste bandwidth and increase latency.
The contract between the kernel and the application is that it must
not write to the frame buffers if it wants to get correct decoding
results. But after all, I don't see a reason why the application would
write to those buffers.

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
