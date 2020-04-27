Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273821BA6E6
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 16:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5266589F89;
	Mon, 27 Apr 2020 14:51:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma33.jpberlin.de (plasma33.jpberlin.de [80.241.58.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44306E2E9
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 14:28:39 +0000 (UTC)
Received: from spamfilter04.heinlein-hosting.de
 (spamfilter04.heinlein-hosting.de [80.241.56.122])
 by plasma.jpberlin.de (Postfix) with ESMTP id E7BBD10165D;
 Mon, 27 Apr 2020 16:28:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.76])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 5ppAa0GIDohX; Mon, 27 Apr 2020 16:28:29 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id E6A87101D98;
 Mon, 27 Apr 2020 16:28:28 +0200 (CEST)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 27 Apr
 2020 16:30:12 +0200
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Mon, 27 Apr 2020 16:28:28 +0200
Message-ID: <36408073.J2Yia2DhmK@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90VcZpXevAF9=d1FvdHyGkU3ShKWga+_AhPWN4BBFTTRY1aQ@mail.gmail.com>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <3597088.V25eIC5XRa@os-lin-dmo>
 <CAD90VcZpXevAF9=d1FvdHyGkU3ShKWga+_AhPWN4BBFTTRY1aQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Rspamd-Queue-Id: E7BBD10165D
X-Rspamd-Score: -0.32 / 15.00 / 200.00
X-Mailman-Approved-At: Mon, 27 Apr 2020 14:51:47 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

Thanks for the update.

> > Thanks for providing this detailed overview. But again, we have already
> > discussed this in a similar way and it does not answer the questions. Ok,
> > suppose we set bitrate to 0xffffffff as I assumed above. Then the decoder
> > code should ideally wait until metadata has been parsed, then query
> > parameters and get min buffers (using get_params). Encoder does not have
> > such logic. What values should we set for encoder to make sure that the
> > pipelines does not stall? Probably people from the Chromium team has
> > better knowledge, if they can provide some sane value it'd be just great.
> 
> Sorry that my explanation was unclear to you.  Let me try to explain
> my idea in another way.
> 
> The design I'm proposing can be seen as a kind of "Copy-on-Write"
> strategy. The resource creation can be deferred to the first write.
> In other words, the call of STREAM_CREATE can be delayed to the first
> place where a user makes a change to the stream, instead of open().
> The code snippet I wrote above explains a general way of achieving
> CoW. In this design, ctx2stream() will be called when modifying a
> stream.
> 
> In the V4L2 stateful encoder API, the first place in which a user
> writes values is the first call of VIDIOC_S_FMT().
> So, we can have a virtio_video_cmd_stream_cmd() call in the callback
> for VIDIOC_S_FMT. I guess it's even better than my previous proposal
> of ctx2stream, as the driver can raise an error when a user calls
> ioctls in a wrong order.
> (I think I said that the place would be REQBUFS callback in a previous
> review comment to your patch. It was my misunderstanding. My
> apologies.)
> 
> Does it make sense? I hope this answers your question.

I had understood the idea behind the proposal. But I didn't see a correct way 
to implement that. But now it looks different of course. The decoder should 
also be fine if we create a stream on S_FMT.

Best regards,
Dmitry.

> 
> Best regards,
> Keiichi
> 


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
