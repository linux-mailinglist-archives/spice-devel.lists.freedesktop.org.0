Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A08411308C9
	for <lists+spice-devel@lfdr.de>; Sun,  5 Jan 2020 16:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 327C389F31;
	Sun,  5 Jan 2020 15:33:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BE46E2F8
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jan 2020 13:05:56 +0000 (UTC)
Received: from spamfilter02.heinlein-hosting.de
 (spamfilter02.heinlein-hosting.de [80.241.56.116])
 by plasma.jpberlin.de (Postfix) with ESMTP id D70A5C2130;
 Fri,  3 Jan 2020 14:05:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id C0D58mG9R_l0; Fri,  3 Jan 2020 14:05:47 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id BB0B7C20E2;
 Fri,  3 Jan 2020 14:05:46 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 3 Jan 2020
 14:05:46 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 3 Jan 2020 14:05:45 +0100
Message-ID: <3016670.ToaXtcqt80@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAAFQd5BxpOjAXV2TtF3GZfuZUJb65bECUn3VGtOxBOMz=bmnFg@mail.gmail.com>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5DbYC1P-nOCUxEtZfy5jGDoUb467nciHC9_A_H_6TwvoA@mail.gmail.com>
 <CAAFQd5BxpOjAXV2TtF3GZfuZUJb65bECUn3VGtOxBOMz=bmnFg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Sun, 05 Jan 2020 15:33:03 +0000
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
 Alexandre Courbot <acourbot@chromium.org>,
 Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Tomasz, Keiichi,

On Samstag, 21. Dezember 2019 07:19:23 CET Tomasz Figa wrote:
> On Sat, Dec 21, 2019 at 3:18 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > On Sat, Dec 21, 2019 at 1:36 PM Keiichi Watanabe <keiichiw@chromium.org> 
wrote:
> > > Hi Dmitry,
> > > 
> > > On Sat, Dec 21, 2019 at 12:59 AM Dmitry Sepp
> > > 
> > > <dmitry.sepp@opensynergy.com> wrote:
> > > > Hi Keiichi,
> > > > 
> > > > On Mittwoch, 18. Dezember 2019 14:02:13 CET Keiichi Watanabe wrote:
> > > > > Hi,
> > > > > This is the 2nd version of virtio-video patch. The PDF is available
> > > > > in [1].
> > > > > The first version was sent at [2].
> > > > > 
> > > > > Any feedback would be appreciated. Thank you.
> > > > > 
> > > > > Best,
> > > > > Keiichi
> > > > > 
> > > > > [1]:
> > > > > https://drive.google.com/drive/folders/1eT5fEckBoor2iHZR4f4GLxYzFMVa
> > > > > pOFx?us
> > > > > p=sharing [2]: https://markmail.org/message/gc6h25acct22niut
> > > > > 
> > > > > Change log:
> > > > > 
> > > > > v2:
> > > > > * Removed functionalities except encoding and decoding.
> > > > > * Splited encoder and decoder into different devices that use the
> > > > > same
> > > > > protocol. * Replaced GET_FUNCS with GET_CAPABILITY.
> > > > > * Updated structs for capabilities.
> > > > > 
> > > > >   - Defined new structs and enums such as image formats, profiles,
> > > > >   range
> > > > > 
> > > > > (min, max, step), etc
> > > > > 
> > > > >     * For virtio_video_pixel_format, chose a naming convention that
> > > > >     is used
> > > > >     
> > > > >       in DRM. We removed XBGR, NV21 and I422, as they are not used
> > > > >       in the
> > > > >       current draft implementation. https://lwn.net/Articles/806416/
> > > > >   
> > > > >   - Removed virtio_video_control, whose usage was not documented yet
> > > > >   and
> > > > > 
> > > > > which is not necessary for the simplest decoding scenario.
> > > > > 
> > > > >   - Removed virtio_video_desc, as it is no longer needed.
> > > > > 
> > > > > * Updated struct virtio_video_config for changes around
> > > > > capabilities.
> > > > > * Added a way to represent supported combinations of formats.
> > > > > 
> > > > >   - A field "mask" in virtio_video_format_desc plays this role.
> > > > > 
> > > > > * Removed VIRTIO_VIDEO_T_STREAM_{START,STOP} because they don't play
> > > > > any
> > > > > meaningful roles. * Removed VIRTIO_VIDEO_T_STREAM_{ATTACH,
> > > > > DETACH}_BACKING
> > > > > and merged them into RESOURCE_{CREATE, DESTROY}. * Added a way to
> > > > > notify/specify resource creation method.
> > > > > 
> > > > >   - Added a feature flag.
> > > > >   - Defined enum virtio_video_mem_type.
> > > > >   - Added new fields in video_stream_create.
> > > > > 
> > > > > * Modified fields in virtio_video_params.
> > > > > 
> > > > >   - Added crop information.
> > > > > 
> > > > > * Removed enum virtio_video_channel_type because we can get this
> > > > > information by image format.
> > > > 
> > > > Could you please explain this? How do you get the information?
> > > 
> > > It means that if image formats are well-defined, channel information
> > > (e.g. the order of channels) is uniquely determined.
> > > 
> > > > Suppose you have some piece of HW on the host side that wants I420 as
> > > > one
> > > > contig buffer w/ some offsets. But on the driver side, say, gralloc
> > > > gives you three separate buffers, one per channel. How do we pass
> > > > those to the device then?
> > > 
> > > You're talking about CrOS use case where buffers are allocated by
> > > virtio-gpu, right?
> > > In this case, virtio-gpu allocates one contiguous host-side buffer and
> > > the client regards a pair of (buffer FD, offset) as one channel.
> > > And, we can register this pair to the device when the buffer is
> > > imported.
> > > In the virtio-vdec spec draft, this pair corresponds to struct
> > > virtio_vdec_plane in struct virtio_vdec_plane.
> > > 
> > > So, I suppose we will need similar structs when we add a control to
> > > import buffers. However, I don't think it's necessary when guest pages
> > > are used.
> > 
> > I think we need some way for the guest to know whether it can allocate
> > the planes in separate buffers, even when guest pages are used. This
> > would be equivalent to V4L2 M and non-M formats, but mixing this into
> > FourCC in V4L2 is an acknowledged mistake, so we should add a query or
> > something.
> > 

Yes, this is what I mean. In fact, we already do face the situation when the 
device side is not happy with the sgt and wants contig. I think we'll add a 
module parameter for now.

Regards,
Dmitry.

> > For future V4L2 development we came up with the idea of a format flag
> > which could mean that the hardware allows putting planes in separate
> > buffers. We could have a similar per-format flag in the capabilities,
> > as we already have a list of all the supported formats there.
> 
> Sorry, forgot to paste the link from future V4L2 work notes from this year
> ELCE: https://www.spinics.net/lists/linux-media/msg159789.html
> 
> > Best regards,
> > Tomasz
> > 
> > > Best regards,
> > > Keiichi
> > > 
> > > > Best regards,
> > > > Dmitry.
> > > > 
> > > > > * Renamed virtio_video_pin to virtio_video_buf_type.
> > > > > 
> > > > >   - It's similar to V4L2_BUF_TYPE_VIDEO_{OUTPUT, CAPTURE}.
> > > > > 
> > > > > * Added an error event.
> > > > > * Reordered some subsections.
> > > > > * Changed styles to make it consistent with other devices.
> > > > > 
> > > > > Dmitry Sepp (1):
> > > > >   virtio-video: Add virtio video device specification
> > > > >  
> > > > >  content.tex      |   1 +
> > > > >  virtio-video.tex | 579
> > > > >  +++++++++++++++++++++++++++++++++++++++++++++++
> > > > >  2 files changed, 580 insertions(+)
> > > > >  create mode 100644 virtio-video.tex
> > > > > 
> > > > > --
> > > > > 2.24.1.735.g03f4e72817-goog


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
