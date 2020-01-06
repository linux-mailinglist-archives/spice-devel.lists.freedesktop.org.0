Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 026061311CC
	for <lists+spice-devel@lfdr.de>; Mon,  6 Jan 2020 13:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAD06E288;
	Mon,  6 Jan 2020 12:07:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8BAE6E213
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Jan 2020 09:29:14 +0000 (UTC)
Received: from spamfilter06.heinlein-hosting.de
 (spamfilter06.heinlein-hosting.de [80.241.56.125])
 by plasma.jpberlin.de (Postfix) with ESMTP id 0844DBA027;
 Mon,  6 Jan 2020 10:29:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id eeTI_rgntkVz; Mon,  6 Jan 2020 10:29:10 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 61421B44C7;
 Mon,  6 Jan 2020 10:29:09 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 6 Jan 2020
 10:29:08 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Mon, 6 Jan 2020 10:29:08 +0100
Message-ID: <7363398.GW5YExTkCf@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <20200106083335.jmzhavtlq7ppgtic@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5ANkgPdu71Oo6YjFPJ2dT24GK_Ne5=Omp6Sh+6FXT2BTw@mail.gmail.com>
 <20200106083335.jmzhavtlq7ppgtic@sirius.home.kraxel.org>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Mon, 06 Jan 2020 12:07:42 +0000
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
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Montag, 6. Januar 2020 09:33:35 CET Gerd Hoffmann wrote:
>   Hi,
> 
> > > We also see the need to add a max_streams value to this structure so as
> > > to
> > > explicitly provide a limit on the number of streams the guest can
> > > create.
> > 
> > What would be the advantage over just trying to create one and
> > failing? The maximum number would be only meaningful for the special
> > case when the streams are always only created by one user space
> > process. Otherwise, if several processes do that, they are not aware
> > of each other and the number could be higher than they can actually
> > create, because other processes could have some streams created
> > already.
> 
> Also the number of streams might not be fixed but depend on stream
> parameters, i.e. hardware can decode one hd or two sd streams ...
> 
Ok, you are right. We'd better return an error from the device side.

Regards,
Dmitry.

> cheers,
>   Gerd


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
