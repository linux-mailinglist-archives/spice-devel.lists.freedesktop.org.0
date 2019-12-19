Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DAC126100
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 12:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932DF6EB56;
	Thu, 19 Dec 2019 11:39:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDA06EAF2
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 09:48:22 +0000 (UTC)
Received: from gerste.heinlein-support.de (gerste.heinlein-support.de
 [91.198.250.173])
 by plasma.jpberlin.de (Postfix) with ESMTP id 814AEB81B5;
 Thu, 19 Dec 2019 10:48:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id g6wCCpDh6J79; Thu, 19 Dec 2019 10:48:17 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 85C35B507A;
 Thu, 19 Dec 2019 10:48:16 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 19 Dec
 2019 10:48:15 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Thu, 19 Dec 2019 10:48:15 +0100
Message-ID: <3550989.gzE5nMqd4t@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <20191219074639.kdkrqxwb6fdb67hu@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
 <20191219074639.kdkrqxwb6fdb67hu@sirius.home.kraxel.org>
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
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>, Linux Media
 Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Donnerstag, 19. Dezember 2019 08:46:39 CET Gerd Hoffmann wrote:
> On Wed, Dec 18, 2019 at 11:08:37PM +0900, Tomasz Figa wrote:
> > On Wed, Dec 18, 2019 at 10:40 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> > >   Hi,
> > >   
> > > > +The device MUST mark the last buffer with the
> > > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > > +sequence.
> > > 
> > > No, that would build a race condition into the protocol.  The device
> > > could complete the last buffer after the driver has sent the drain
> > > command but before the device saw it.  So the flag would not be
> > > reliable.
> > > 
> > > I also can't see why the flag is needed in the first place.  The driver
> > > should know which buffers are queued still and be able to figure
> > > whenever the drain is complete or not without depending on that flag.
> > > So I'd suggest to simply drop it.
> > 
> > Unfortunately video decoders are not that simple. There are always
> > going to be some buffers on the decoder side used as reference frames.
> > Only the decoder knows when to release them, as it continues decoding
> > the stream.
> 
> Not clearly defined in the spec:  When is the decoder supposed to send
> the response for a queue request?  When it finished decoding (i.e. frame
> is ready for playback), or when it doesn't need the buffer any more for
> decoding (i.e. buffer can be re-queued or pages can be released)?
In my eyes the both statements mean almost the same and both are valid. I 
think whatever underlying libraries are used for decoding on the device side, 
they simply won't return us the buffer as long as the HW device needs them to 
continue its normal operation. So your first sentence applies to output buffers, 
the second - to input buffers.

My understanding is as follows: we send the response for a queue request as 
soon as the HW device on the host side passes the buffer ownership back to the 
client (like when VIDIOC_DQBUF has returned a buffer).

Thanks for reviewing!

Regards,
Dmitry.

> 
> > How we defined this in the V4L2 stateful decoder interface is that if
> > the decoder happened to return the last framebuffer before the drain
> > request arrived, it would return one more, empty.
> 
> Ok.  That is not clear from the spec.  I've read the drain request as as
> "please stop decoding and complete all queue requests which are in the
> virtqueue, even when you didn't process them yet".  In which case
> completing the last pending queue request would clearly indicate the
> draining request is complete.  Also completing the drain request should
> only happen when the operation is finished.
> 
> I think the various states a buffer can have and how queuing & deciding
> & draining changes these states should be clarified in the
> specification.
> 
> cheers,
>   Gerd


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
