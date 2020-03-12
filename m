Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D25FB182D22
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 11:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40146E0E4;
	Thu, 12 Mar 2020 10:11:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83AA6E0CF
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 09:04:07 +0000 (UTC)
Received: from hefe.heinlein-support.de (hefe.heinlein-support.de
 [91.198.250.172])
 by plasma.jpberlin.de (Postfix) with ESMTP id 5D23FBDBE9;
 Thu, 12 Mar 2020 10:04:03 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id Rqa_x91R7uHK; Thu, 12 Mar 2020 10:03:59 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id C879CBDA56;
 Thu, 12 Mar 2020 10:03:58 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 12 Mar
 2020 10:03:58 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>
Date: Thu, 12 Mar 2020 10:03:58 +0100
Message-ID: <3182728.aeNJFYEL58@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <c4d7622b-e396-3920-0e14-5a73a0225c0f@xs4all.nl>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <c4d7622b-e396-3920-0e14-5a73a0225c0f@xs4all.nl>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Thu, 12 Mar 2020 10:11:32 +0000
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
Cc: samiullah.khawaja@opensynergy.com, virtio-dev@lists.oasis-open.org,
 alexlau@chromium.org, kiran.pawar@opensynergy.com, acourbot@chromium.org,
 dstaessens@chromium.org, tfiga@chromium.org, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 marcheu@chromium.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Hans,

Thanks for reviewing.

Sure, we understand the driver must pass v4l2-compliance. But the spec is n=
ot =

finalized yet, so it was a bit out of the scope.

Best regards,
Dmitry.

On Mittwoch, 11. M=E4rz 2020 14:26:46 CET Hans Verkuil wrote:
> Hi Dmitry,
> =

> On 2/18/20 9:27 PM, Dmitry Sepp wrote:
> > Hi all,
> > =

> > This is a v4l2 virtio video driver for the virtio-video device
> > specification v3 [1].
> > =

> > The first version of the driver was introduced here [2].
> > =

> > Changes v1 -> v2:
> > * support the v3 spec (mostly)
> > * add a module parameter to ask for pages from ZONE_DMA
> > =

> > What is not implemented:
> > * Plane layout flags should be used to propagate number of planes to
> > =

> >   user-space
> > =

> > * There is no real use of stream creation with bitstream format in the
> > =

> >   parameter list. The driver just uses the first bitstream format from
> >   the list.
> > =

> > * Setting bitrate is done in a different way compared to the spec. This
> > =

> >   is because it has been already agreed on that the way the spec
> >   currently describes it requires changes.
> > =

> > Potential improvements:
> > * Do not send stream_create from open. Use corresponding state machine
> > =

> >   condition to do this.
> > =

> > * Do not send stream_destroy from close. Do it in reqbufs(0).
> > * Cache format and control settings. Reduce calls to the device.
> =

> Some general notes:
> =

> Before this can be merged it needs to pass v4l2-compliance.
> =

> I also strongly recommend adding support for V4L2_PIX_FMT_FWHT to
> allow testing with the vicodec emulation driver. This will also
> allow testing all sorts of corner cases without requiring special
> hardware.
> =

> Regards,
> =

> 	Hans
> =

> > Best regards,
> > Dmitry.
> > =

> > [1] https://markmail.org/message/dmw3pr4fuajvarth
> > [2] https://markmail.org/message/wnnv6r6myvgb5at6


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
