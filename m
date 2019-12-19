Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE95A126101
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 12:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1246EB57;
	Thu, 19 Dec 2019 11:39:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AFE8982D
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 10:55:05 +0000 (UTC)
Received: from spamfilter05.heinlein-hosting.de
 (spamfilter05.heinlein-hosting.de [80.241.56.123])
 by plasma.jpberlin.de (Postfix) with ESMTP id 8FA49A06B0;
 Thu, 19 Dec 2019 11:55:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id U3E_5-q9hpuV; Thu, 19 Dec 2019 11:54:59 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id ED158B9B55;
 Thu, 19 Dec 2019 11:54:58 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 19 Dec
 2019 11:54:58 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Dec 2019 11:54:58 +0100
Message-ID: <3878267.TzG3DlCiay@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
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
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>, Linux Media
 Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Tomasz,

On Donnerstag, 19. Dezember 2019 10:59:02 CET Tomasz Figa wrote:
> On Thu, Dec 19, 2019 at 6:48 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> 
wrote:
> > Hi,
> > 
> > On Donnerstag, 19. Dezember 2019 08:46:39 CET Gerd Hoffmann wrote:
> > > On Wed, Dec 18, 2019 at 11:08:37PM +0900, Tomasz Figa wrote:
> > > > On Wed, Dec 18, 2019 at 10:40 PM Gerd Hoffmann <kraxel@redhat.com> 
wrote:
> > > > >   Hi,
> > > > >   
> > > > > > +The device MUST mark the last buffer with the
> > > > > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > > > > +sequence.
> > > > > 
> > > > > No, that would build a race condition into the protocol.  The device
> > > > > could complete the last buffer after the driver has sent the drain
> > > > > command but before the device saw it.  So the flag would not be
> > > > > reliable.
> > > > > 
> > > > > I also can't see why the flag is needed in the first place.  The
> > > > > driver
> > > > > should know which buffers are queued still and be able to figure
> > > > > whenever the drain is complete or not without depending on that
> > > > > flag.
> > > > > So I'd suggest to simply drop it.
> > > > 
> > > > Unfortunately video decoders are not that simple. There are always
> > > > going to be some buffers on the decoder side used as reference frames.
> > > > Only the decoder knows when to release them, as it continues decoding
> > > > the stream.
> > > 
> > > Not clearly defined in the spec:  When is the decoder supposed to send
> > > the response for a queue request?  When it finished decoding (i.e. frame
> > > is ready for playback), or when it doesn't need the buffer any more for
> > > decoding (i.e. buffer can be re-queued or pages can be released)?
> > 
> > In my eyes the both statements mean almost the same and both are valid. I
> > think whatever underlying libraries are used for decoding on the device
> > side, they simply won't return us the buffer as long as the HW device
> > needs them to continue its normal operation. So your first sentence
> > applies to output buffers, the second - to input buffers.
> > 
> > My understanding is as follows: we send the response for a queue request
> > as
> > soon as the HW device on the host side passes the buffer ownership back to
> > the client (like when VIDIOC_DQBUF has returned a buffer).
> 
> That's how it's defined in V4L2 and what makes the most sense from the
> video decoding point of view, as one wants to display frames as soon
> as they are available.
> 
> However that still doesn't let the driver know which buffers will be
> dequeued when. A simple example of this scenario is when the guest is
> done displaying a frame and requeues the buffer back to the decoder.
> Then the decoder will not choose it for decoding next frames into as
> long as the frame in that buffer is still used as a reference frame,
> even if one sends the drain request.
It might be that I'm getting your point wrong, but do you mean some hardware 
can mark a buffer as ready to be displayed yet still using the underlying 
memory to decode other frames? This means, if you occasionally/intentionally 
write to the buffer you mess up the whole decoding pipeline. That would be 
strange at least...

Regds,
Dmitry.

> 
> > Thanks for reviewing!
> > 
> > Regards,
> > Dmitry.
> > 
> > > > How we defined this in the V4L2 stateful decoder interface is that if
> > > > the decoder happened to return the last framebuffer before the drain
> > > > request arrived, it would return one more, empty.
> > > 
> > > Ok.  That is not clear from the spec.  I've read the drain request as as
> > > "please stop decoding and complete all queue requests which are in the
> > > virtqueue, even when you didn't process them yet".  In which case
> > > completing the last pending queue request would clearly indicate the
> > > draining request is complete.  Also completing the drain request should
> > > only happen when the operation is finished.
> > > 
> > > I think the various states a buffer can have and how queuing & deciding
> > > & draining changes these states should be clarified in the
> > > specification.
> > > 
> > > cheers,
> > > 
> > >   Gerd


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
