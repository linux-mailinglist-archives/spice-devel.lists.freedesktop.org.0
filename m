Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C79182E0E
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 11:44:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864E56E12E;
	Thu, 12 Mar 2020 10:44:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9A66E124
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 10:29:44 +0000 (UTC)
Received: from spamfilter02.heinlein-hosting.de
 (spamfilter02.heinlein-hosting.de [80.241.56.116])
 by plasma.jpberlin.de (Postfix) with ESMTP id EF12EBBF62;
 Thu, 12 Mar 2020 11:29:40 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id gHerBSLszxZn; Thu, 12 Mar 2020 11:29:39 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 478A4BD71D;
 Thu, 12 Mar 2020 11:29:39 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 12 Mar
 2020 11:29:38 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>
Date: Thu, 12 Mar 2020 11:29:38 +0100
Message-ID: <1799967.VLH7GnMWUR@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <1ac18708-262f-c751-d955-267931270028@xs4all.nl>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <CAD90VcZUqU0nVQEn1vNOQkcicR5GA+HzBGd+M7O_b69f2BCUxA@mail.gmail.com>
 <1ac18708-262f-c751-d955-267931270028@xs4all.nl>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Thu, 12 Mar 2020 10:44:53 +0000
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
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Hans,

I'm not sure about crosvm, for us it is probably still feasible to implemen=
t =

FWHT in the device (but it is unfortunately not supposed to be upstreamed =

yet).

The main question is what would be the proper user-space tool to test that?=
 Is =

v4l2-ctl OK for that? As for gstreamer, AFAIK it does not respect the v4l2 =

Video Decoder Interface Spec and we have seen some issues with it.

Best regards,
Dmitry.

On Donnerstag, 12. M=E4rz 2020 10:54:35 CET Hans Verkuil wrote:
> On 3/12/20 10:49 AM, Keiichi Watanabe wrote:
> > Hi Hans,
> > =

> > On Wed, Mar 11, 2020 at 10:26 PM Hans Verkuil <hverkuil@xs4all.nl> wrot=
e:
> >> Hi Dmitry,
> >> =

> >> On 2/18/20 9:27 PM, Dmitry Sepp wrote:
> >>> Hi all,
> >>> =

> >>> This is a v4l2 virtio video driver for the virtio-video device
> >>> specification v3 [1].
> >>> =

> >>> The first version of the driver was introduced here [2].
> >>> =

> >>> Changes v1 -> v2:
> >>> * support the v3 spec (mostly)
> >>> * add a module parameter to ask for pages from ZONE_DMA
> >>> =

> >>> What is not implemented:
> >>> * Plane layout flags should be used to propagate number of planes to
> >>> =

> >>>   user-space
> >>> =

> >>> * There is no real use of stream creation with bitstream format in the
> >>> =

> >>>   parameter list. The driver just uses the first bitstream format from
> >>>   the list.
> >>> =

> >>> * Setting bitrate is done in a different way compared to the spec. Th=
is
> >>> =

> >>>   is because it has been already agreed on that the way the spec
> >>>   currently describes it requires changes.
> >>> =

> >>> Potential improvements:
> >>> * Do not send stream_create from open. Use corresponding state machine
> >>> =

> >>>   condition to do this.
> >>> =

> >>> * Do not send stream_destroy from close. Do it in reqbufs(0).
> >>> * Cache format and control settings. Reduce calls to the device.
> >> =

> >> Some general notes:
> >> =

> >> Before this can be merged it needs to pass v4l2-compliance.
> >> =

> >> I also strongly recommend adding support for V4L2_PIX_FMT_FWHT to
> >> allow testing with the vicodec emulation driver. This will also
> >> allow testing all sorts of corner cases without requiring special
> >> hardware.
> > =

> > I agree that it's great if we could test virtio-video with vicodec,
> > but I wonder if supporting FWHT is actually needed for the initial
> > patch.
> > Though it wouldn't be difficult to support FWHT in the driver, we also
> > needs to support it in the host's hypervisor to test it. It's not easy
> > for our hypervisor to support FWHT, as it doesn't talk to v4l2 driver
> > directly.
> > Without the host-side implementation, it makes no sense to support it.
> > Also, if we support FWHT, we should have the format in a list of
> > supported formats in the virtio specification. However, I'm not sure
> > if FWHT is a general codec enough to be added in the spec, which
> > shouldn't be specific to Linux.
> =

> Good point, I didn't know that.
> =

> Is it possible to add support for FWHT under a linux debug/test option?
> =

> It's really the main reason for having this, since you would never use
> this in production code. But it is so nice to have for regression testing.
> =

> Regards,
> =

> 	Hans
> =

> > Best regards,
> > Keiichi
> > =

> >> Regards,
> >> =

> >>         Hans
> >>> =

> >>> Best regards,
> >>> Dmitry.
> >>> =

> >>> [1] https://markmail.org/message/dmw3pr4fuajvarth
> >>> [2] https://markmail.org/message/wnnv6r6myvgb5at6


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
