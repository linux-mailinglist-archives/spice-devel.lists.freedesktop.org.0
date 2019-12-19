Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C94DC1260FE
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 12:39:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F466EB53;
	Thu, 19 Dec 2019 11:39:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 389 seconds by postgrey-1.36 at gabe;
 Thu, 19 Dec 2019 09:33:13 UTC
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75296EAEF
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 09:33:13 +0000 (UTC)
Received: from spamfilter05.heinlein-hosting.de
 (spamfilter05.heinlein-hosting.de [80.241.56.123])
 by plasma.jpberlin.de (Postfix) with ESMTP id 25C60B9C33;
 Thu, 19 Dec 2019 10:26:40 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id KTstFXxyl3Vg; Thu, 19 Dec 2019 10:26:39 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 609A8B9C9D;
 Thu, 19 Dec 2019 10:26:38 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 19 Dec
 2019 10:26:37 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Thu, 19 Dec 2019 10:26:37 +0100
Message-ID: <2570078.xtWa8k4VtA@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Thu, 19 Dec 2019 11:39:32 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] virtio-video: Add virtio video
 device specification
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
Cc: virtio-dev@lists.oasis-open.org, alexlau@chromium.org,
 acourbot@chromium.org, tfiga@chromium.org,
 Keiichi Watanabe <keiichiw@chromium.org>, stevensd@chromium.org,
 daniel@ffwll.ch, spice-devel@lists.freedesktop.org, hverkuil@xs4all.nl,
 marcheu@chromium.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Gerd,

On Mittwoch, 18. Dezember 2019 14:40:37 CET Gerd Hoffmann wrote:
>   Hi,
> 
> > +The device MUST mark the last buffer with the
> > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > +sequence.
> 
> No, that would build a race condition into the protocol.  The device
> could complete the last buffer after the driver has sent the drain
> command but before the device saw it.  So the flag would not be
> reliable.
No, then it means the device was not in drain, but, for example, hit a 
resolution change in the stream and tells us that this is the last buffer with 
the old resolution.

> 
> I also can't see why the flag is needed in the first place.  The driver
> should know which buffers are queued still and be able to figure
> whenever the drain is complete or not without depending on that flag.
> So I'd suggest to simply drop it.
This flag is used not for drain only. In marks the completion of whatever 
specific buffer sequence, like a full end-of-stream, resolution change, drain 
etc. We also need this to handle nested sequences. For instance, a resolution 
change event might happen while in drain.

Regards,
Dmitry.

> 
> That is the only issue I've spotted in the protocol on a first quick
> look.  There are a few places where the spec text could be improved.
> I'll try to set aside some time to go over this in detail, but I can't
> promise I'll find the time to do that before xmas and new year.
> 
> cheers,
>   Gerd


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
