Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1B6184551
	for <lists+spice-devel@lfdr.de>; Fri, 13 Mar 2020 11:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBD56EBBF;
	Fri, 13 Mar 2020 10:54:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910716EBAD
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 10:20:15 +0000 (UTC)
Received: from spamfilter05.heinlein-hosting.de
 (spamfilter05.heinlein-hosting.de [80.241.56.123])
 by plasma.jpberlin.de (Postfix) with ESMTP id D06FBBCE2B;
 Fri, 13 Mar 2020 11:20:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id ErxkpdfTeGOd; Fri, 13 Mar 2020 11:20:10 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id EDA81BC5C9;
 Fri, 13 Mar 2020 11:20:09 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 13 Mar
 2020 11:20:06 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Date: Fri, 13 Mar 2020 11:20:09 +0100
Message-ID: <1779643.X513TT2pbd@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <75f3a24ac5cd4f656aadf4312bdbcb70a6803a6e.camel@ndufresne.ca>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <1799967.VLH7GnMWUR@os-lin-dmo>
 <75f3a24ac5cd4f656aadf4312bdbcb70a6803a6e.camel@ndufresne.ca>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Fri, 13 Mar 2020 10:54:04 +0000
Subject: Re: [Spice-devel] [PATCH v2 0/1] Virtio Video V4L2 driver
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
 Hans Verkuil <hverkuil@xs4all.nl>, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>, virtio-dev@lists.oasis-open.org,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd
 Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico
 Granata <egranata@google.com>, Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Nicolas,

On Freitag, 13. M=E4rz 2020 03:29:44 CET Nicolas Dufresne wrote:
> Hi Dimitry,
> =

> Le jeudi 12 mars 2020 =E0 11:29 +0100, Dmitry Sepp a =E9crit :
> > Hi Hans,
> > =

> > I'm not sure about crosvm, for us it is probably still feasible to
> > implement FWHT in the device (but it is unfortunately not supposed to be
> > upstreamed yet).
> > =

> > The main question is what would be the proper user-space tool to test
> > that? Is v4l2-ctl OK for that? As for gstreamer, AFAIK it does not
> > respect the v4l2 Video Decoder Interface Spec and we have seen some
> > issues with it.
> GStreamer element has been implemented to support what real drivers do,
> not what the spec suggest should be done. AFAIC, not all drivers have
> been updated with all the new features required by the spec. And the
> new features are not compatible with drivers that are not ported, so it
> creates a lot of complexity for userspace to stay backward compatible.
> Though, the spec should allow drivers to stay backward compatible, if
> not, we'd be very happy to learn why.
> =

> About the other issues, I'd be very happy to learn what they are, it's
> the first feedback I get from your team thus far. Please feel free to
> file issues or send me (or gstreamer-devel list) an email.

I guess the issues we've observed are related to your point from above: spe=
c =

vs real HW.

We had that issue with buffer pool configuration for instance: https://
gitlab.freedesktop.org/gstreamer/gst-plugins-good/issues/672

Also it would be nice to wait for metadata to be decoded and only then send =

V4L2_CID_MIN_BUFFERS_FOR_CAPTURE. Currently gstreamer queries that on pipel=
ine =

start, so for the virtio-video driver we simply have to return 0.

Best regards,
Dmitry.

> =

> In term of userspace, please consider FFMPEG also, as it's support for
> V4L2 Stateful CODECs has gained momentum. It is again implemented to
> support real drivers, but started much more recently targetting the
> Qualcomm/Venus driver, so it didn't have to suffer all the legacy and
> directions changes in the V4L2 API since 2011.
> =

> As for the virtio video driver, it will remain useless to non-
> chromeos/chrome users as long as it's not supported by any userspace.
> I'd be very happy so see more contribution into FFMPEG and GStreamer to
> implement the features that, for now, are only implemented in the
> spec.
> =

> From your comment, bridging a Linux driver in the host through virtio-
> video seems like a huge tasks. I believe this is an important issue to
> address in the long term. If you could provide more details, I think it
> would benefit to readers understanding.
> =

> > Best regards,
> > Dmitry.
> > =

> > On Donnerstag, 12. M=E4rz 2020 10:54:35 CET Hans Verkuil wrote:
> > > On 3/12/20 10:49 AM, Keiichi Watanabe wrote:
> > > > Hi Hans,
> > > > =

> > > > On Wed, Mar 11, 2020 at 10:26 PM Hans Verkuil <hverkuil@xs4all.nl> =

wrote:
> > > > > Hi Dmitry,
> > > > > =

> > > > > On 2/18/20 9:27 PM, Dmitry Sepp wrote:
> > > > > > Hi all,
> > > > > > =

> > > > > > This is a v4l2 virtio video driver for the virtio-video device
> > > > > > specification v3 [1].
> > > > > > =

> > > > > > The first version of the driver was introduced here [2].
> > > > > > =

> > > > > > Changes v1 -> v2:
> > > > > > * support the v3 spec (mostly)
> > > > > > * add a module parameter to ask for pages from ZONE_DMA
> > > > > > =

> > > > > > What is not implemented:
> > > > > > * Plane layout flags should be used to propagate number of plan=
es
> > > > > > to
> > > > > > =

> > > > > >   user-space
> > > > > > =

> > > > > > * There is no real use of stream creation with bitstream format=
 in
> > > > > > the
> > > > > > =

> > > > > >   parameter list. The driver just uses the first bitstream form=
at
> > > > > >   from
> > > > > >   the list.
> > > > > > =

> > > > > > * Setting bitrate is done in a different way compared to the sp=
ec.
> > > > > > This
> > > > > > =

> > > > > >   is because it has been already agreed on that the way the spec
> > > > > >   currently describes it requires changes.
> > > > > > =

> > > > > > Potential improvements:
> > > > > > * Do not send stream_create from open. Use corresponding state
> > > > > > machine
> > > > > > =

> > > > > >   condition to do this.
> > > > > > =

> > > > > > * Do not send stream_destroy from close. Do it in reqbufs(0).
> > > > > > * Cache format and control settings. Reduce calls to the device.
> > > > > =

> > > > > Some general notes:
> > > > > =

> > > > > Before this can be merged it needs to pass v4l2-compliance.
> > > > > =

> > > > > I also strongly recommend adding support for V4L2_PIX_FMT_FWHT to
> > > > > allow testing with the vicodec emulation driver. This will also
> > > > > allow testing all sorts of corner cases without requiring special
> > > > > hardware.
> > > > =

> > > > I agree that it's great if we could test virtio-video with vicodec,
> > > > but I wonder if supporting FWHT is actually needed for the initial
> > > > patch.
> > > > Though it wouldn't be difficult to support FWHT in the driver, we a=
lso
> > > > needs to support it in the host's hypervisor to test it. It's not e=
asy
> > > > for our hypervisor to support FWHT, as it doesn't talk to v4l2 driv=
er
> > > > directly.
> > > > Without the host-side implementation, it makes no sense to support =
it.
> > > > Also, if we support FWHT, we should have the format in a list of
> > > > supported formats in the virtio specification. However, I'm not sure
> > > > if FWHT is a general codec enough to be added in the spec, which
> > > > shouldn't be specific to Linux.
> > > =

> > > Good point, I didn't know that.
> > > =

> > > Is it possible to add support for FWHT under a linux debug/test optio=
n?
> > > =

> > > It's really the main reason for having this, since you would never use
> > > this in production code. But it is so nice to have for regression
> > > testing.
> > > =

> > > Regards,
> > > =

> > > 	Hans
> > > 	=

> > > > Best regards,
> > > > Keiichi
> > > > =

> > > > > Regards,
> > > > > =

> > > > >         Hans
> > > > > > =

> > > > > > Best regards,
> > > > > > Dmitry.
> > > > > > =

> > > > > > [1] https://markmail.org/message/dmw3pr4fuajvarth
> > > > > > [2] https://markmail.org/message/wnnv6r6myvgb5at6


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
