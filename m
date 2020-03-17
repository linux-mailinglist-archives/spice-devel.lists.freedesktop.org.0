Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12221886F9
	for <lists+spice-devel@lfdr.de>; Tue, 17 Mar 2020 15:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5363389E19;
	Tue, 17 Mar 2020 14:11:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC658890B9
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Mar 2020 09:10:45 +0000 (UTC)
Received: from spamfilter03.heinlein-hosting.de
 (spamfilter03.heinlein-hosting.de [80.241.56.117])
 by plasma.jpberlin.de (Postfix) with ESMTP id 3AB01BA5C2;
 Tue, 17 Mar 2020 10:10:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id R0oXR1GvTyAL; Tue, 17 Mar 2020 10:10:33 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id C735DA0674;
 Tue, 17 Mar 2020 10:10:32 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 17 Mar
 2020 10:10:32 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 17 Mar 2020 10:10:31 +0100
Message-ID: <1780647.tdWV9SEqCh@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90VcbON1XTuBpuqxV6E+reY8dYq08N8G-jrAO=z-6ytcvtHQ@mail.gmail.com>
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <CAD90VcZ5rYHw9qqS7pvaX0TP240qcmoA5MKxKuVVn-eVVrORSA@mail.gmail.com>
 <CAD90VcbON1XTuBpuqxV6E+reY8dYq08N8G-jrAO=z-6ytcvtHQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Tue, 17 Mar 2020 14:11:42 +0000
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

On Dienstag, 17. M=E4rz 2020 07:53:26 CET Keiichi Watanabe wrote:
> > > diff --git a/include/uapi/linux/virtio_video.h
> > > b/include/uapi/linux/virtio_video.h new file mode 100644
> > > index 000000000000..0dd98a2237c6
> > > --- /dev/null
> > > +++ b/include/uapi/linux/virtio_video.h
> > > @@ -0,0 +1,469 @@
> > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > =

> > I suspect it's not expected to use GPL licence without exceptions in a
> > UAPI header file:
> > https://www.kernel.org/doc/html/v5.4/process/license-rules.html
> > =

> > If GPL is used here, only GPL user programs can include this header
> > file, can't they?
> > So, can we use BSD licence like other virtio headers (e.g. virtio_gpu.h=
)?
> > =

> > Note that I found this program when running
> > /scripts/headers_install.sh. Though it suggested to add "WITH
> > Linux-syscall-note", it shouldn't be the case because this header
> > doesn't provide syscall interface.
> > =

> > Best regards,
> > Keiichi
> > =

> > > +/*
> > > + * Virtio Video Device
> > > + *
> > > + * This header is BSD licensed so anyone can use the definitions
> > > + * to implement compatible drivers/servers:
> > > + *
> =

> Ah, this line says this header is BSD licensed.
> So, the SPDX-License-Identifier above should be simply wrong.
> =


According to some recent upstream discussion about virtio-snd, which was al=
so =

proposed by our engineers, it should be
/* SPDX-License-Identifier: BSD-3-Clause */

Best regards,
Dmitry.

> Best regards,
> Keiichi


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
