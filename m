Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335C186A36
	for <lists+spice-devel@lfdr.de>; Mon, 16 Mar 2020 12:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EB16E40B;
	Mon, 16 Mar 2020 11:40:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285C989F08
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Mar 2020 10:37:04 +0000 (UTC)
Received: from spamfilter06.heinlein-hosting.de
 (spamfilter06.heinlein-hosting.de [80.241.56.125])
 by plasma.jpberlin.de (Postfix) with ESMTP id BFE0CBA040;
 Mon, 16 Mar 2020 11:37:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id BUj_QcXenZVA; Mon, 16 Mar 2020 11:36:56 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id E665FB9E50;
 Mon, 16 Mar 2020 11:36:55 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 16 Mar
 2020 11:36:44 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 16 Mar 2020 11:36:55 +0100
Message-ID: <2171890.ElGaqSPkdT@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAAFQd5A-ZaTkx8YEdq=Q_KpbmzZ4kGxJ1ju8shXMot9WMytd=w@mail.gmail.com>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <6194402.K2JlShyGXD@os-lin-dmo>
 <CAAFQd5A-ZaTkx8YEdq=Q_KpbmzZ4kGxJ1ju8shXMot9WMytd=w@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Mon, 16 Mar 2020 11:40:29 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
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
Cc: David Stevens <stevensd@chromium.org>, virtio-dev@lists.oasis-open.org,
 Alex Lau <alexlau@chromium.org>, kiran.pawar@opensynergy.com,
 Alexandre Courbot <acourbot@chromium.org>, samiullah.khawaja@opensynergy.com,
 dstaessens@chromium.org, Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Tomasz,

On Freitag, 13. M=E4rz 2020 12:11:51 CET Tomasz Figa wrote:
> On Fri, Mar 13, 2020 at 11:27 AM Dmitry Sepp
> =

> <dmitry.sepp@opensynergy.com> wrote:
> > Hi Tomasz,
> > =

> > On Freitag, 13. M=E4rz 2020 11:05:35 CET Tomasz Figa wrote:
> > > On Thu, Mar 12, 2020 at 12:48 PM Dmitry Sepp
> > > =

> > > <dmitry.sepp@opensynergy.com> wrote:
> > > > Hi Hans,
> > > > =

> > > > One more thing:
> > > > > GFP_DMA? That's unusual. I'd expect GFP_DMA32. All V4L2 drivers u=
se
> > > > > that.
> > > > =

> > > > GFP_DMA32 had no effect for me on arm64. Probably I need to recheck.
> > > =

> > > What's the reason to use any specific GFP flags at all? GFP_DMA(32)
> > > memory in the guest would typically correspond to host pages without
> > > any specific location guarantee.
> > =

> > Typically, but not always, especially for non x86. Say, some platforms
> > don't have IOMMUs for codec devices and those devices require physically
> > contig low memory. We had to find a way to handle that.
> =

> So basically your hypervisor guarantees that the guest pages inside
> the GFP_DMA zone are contiguous and DMA-able on the host as well?
> Given the Linux-specific aspect of GFP flags and differences in the
> implementation across architectures, perhaps it would be a better idea
> to use the DMA mask instead? That wouldn't currently affect vb2_dma_sg
> allocations, but in that case the host decoder would have some IOMMU
> anyway, right?
> =


DMA mask has no effect for vb2_dma_sg, but GFP has. Unfortunately we need t=
o =

support both of the two: low mem phys contig and low mem sg. So DMA mask =

cannot be an option. No, there are use-cases with obsolutely no iommus.

Best regards,
Dmitry.

> > Best regards,
> > Dmitry.
> > =

> > > Best regards,
> > > Tomasz
> > > =

> > > > Best regards,
> > > > Dmitry.
> > > > =

> > > > On Donnerstag, 12. M=E4rz 2020 11:18:26 CET Hans Verkuil wrote:
> > > > > On 3/12/20 11:15 AM, Dmitry Sepp wrote:
> > > > > > Hi Hans,
> > > > > > =

> > > > > > Thank you for your great detailed review!
> > > > > > =

> > > > > > I won't provide inline answers as your comments totally make
> > > > > > sense.
> > > > > > There
> > > > > > is>
> > > > > > =

> > > > > > only one thing I want to mention:
> > > > > >>> + struct video_plane_format
> > > > > >>> plane_format[VIRTIO_VIDEO_MAX_PLANES];
> > > > > >> =

> > > > > >> Why is this virtio specific? Any reason for not using
> > > > > >> VIDEO_MAX_PLANES?
> > > > > > =

> > > > > > I'd say this is because VIDEO_MAX_PLANES does not exist outside=
 of
> > > > > > the
> > > > > > Linux OS, so for whatever other system we need a virtio specific
> > > > > > definition.
> > > > > =

> > > > > OK, good reason :-)
> > > > > =

> > > > > It's probably a good thing to add a comment where
> > > > > VIRTIO_VIDEO_MAX_PLANES is defined that explains this.
> > > > > =

> > > > > Regards,
> > > > > =

> > > > >       Hans


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
