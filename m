Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37C11834F5
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 16:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FC26EAE8;
	Thu, 12 Mar 2020 15:29:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993F16E1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 11:48:55 +0000 (UTC)
Received: from gerste.heinlein-support.de (gerste.heinlein-support.de
 [91.198.250.173])
 by plasma.jpberlin.de (Postfix) with ESMTP id D0FE9B9A08;
 Thu, 12 Mar 2020 12:48:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 8s9p-ZFrkGl4; Thu, 12 Mar 2020 12:48:50 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 31E39B786B;
 Thu, 12 Mar 2020 12:48:50 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 12 Mar
 2020 12:48:49 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>
Date: Thu, 12 Mar 2020 12:48:49 +0100
Message-ID: <12620787.dW097sEU6C@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <6f8c37b1-8dc4-e3bb-01ed-4ebedaf90915@xs4all.nl>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <20719772.EfDdHjke4D@os-lin-dmo>
 <6f8c37b1-8dc4-e3bb-01ed-4ebedaf90915@xs4all.nl>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Thu, 12 Mar 2020 15:29:12 +0000
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
Cc: samiullah.khawaja@opensynergy.com, virtio-dev@lists.oasis-open.org,
 alexlau@chromium.org, kiran.pawar@opensynergy.com, acourbot@chromium.org,
 dstaessens@chromium.org, tfiga@chromium.org, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 marcheu@chromium.org, dgreid@chromium.org,
 Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>, egranata@google.com,
 posciak@chromium.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Hans,

One more thing:

> GFP_DMA? That's unusual. I'd expect GFP_DMA32. All V4L2 drivers use that.

GFP_DMA32 had no effect for me on arm64. Probably I need to recheck.

Best regards,
Dmitry. =


On Donnerstag, 12. M=E4rz 2020 11:18:26 CET Hans Verkuil wrote:
> On 3/12/20 11:15 AM, Dmitry Sepp wrote:
> > Hi Hans,
> > =

> > Thank you for your great detailed review!
> > =

> > I won't provide inline answers as your comments totally make sense. The=
re
> > is> =

> > only one thing I want to mention:
> >>> +	struct video_plane_format plane_format[VIRTIO_VIDEO_MAX_PLANES];
> >> =

> >> Why is this virtio specific? Any reason for not using VIDEO_MAX_PLANES?
> > =

> > I'd say this is because VIDEO_MAX_PLANES does not exist outside of the
> > Linux OS, so for whatever other system we need a virtio specific
> > definition.
> OK, good reason :-)
> =

> It's probably a good thing to add a comment where VIRTIO_VIDEO_MAX_PLANES=
 is
> defined that explains this.
> =

> Regards,
> =

> 	Hans


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
