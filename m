Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3681927E6
	for <lists+spice-devel@lfdr.de>; Wed, 25 Mar 2020 13:12:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F656E83F;
	Wed, 25 Mar 2020 12:12:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C5389EA6
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Mar 2020 09:47:35 +0000 (UTC)
Received: from hefe.heinlein-support.de (hefe.heinlein-support.de
 [91.198.250.172])
 by plasma.jpberlin.de (Postfix) with ESMTP id A0824B6F58;
 Wed, 25 Mar 2020 10:47:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id NA1pINGt8Iq3; Wed, 25 Mar 2020 10:47:30 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 55CEFB9950;
 Wed, 25 Mar 2020 10:47:29 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 25 Mar
 2020 10:47:28 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Wed, 25 Mar 2020 10:47:28 +0100
Message-ID: <6557912.4vTCxPXJkl@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90VcZ2zzzwveYgDs5UdjfZUt=yX4wNX-f_-3V18xz93_fpvQ@mail.gmail.com>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <8121654.T7Z3S40VBb@os-lin-dmo>
 <CAD90VcZ2zzzwveYgDs5UdjfZUt=yX4wNX-f_-3V18xz93_fpvQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Wed, 25 Mar 2020 12:12:20 +0000
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

On Montag, 23. M=E4rz 2020 16:48:14 CET Keiichi Watanabe wrote:
> Hi,
> =

> On Mon, Mar 23, 2020 at 10:28 PM Dmitry Sepp
> =

> <dmitry.sepp@opensynergy.com> wrote:
> > Hi Keiichi,
> > =

> > On Montag, 23. M=E4rz 2020 13:07:54 CET Keiichi Watanabe wrote:
> > > Hi everyone,
> > > =

> > > I have implemented a virtio-video device following my v3 spec in
> > > crosvm, which worked well together with Dmitry's driver [1]. I've
> > > started preparing v4 proposal to address problems found while
> > > implementing the driver and the devices.
> > =

> > Great news!
> > =

> > > Regarding v3 protocol, I'm thinking about how we can differentiate
> > > 'parameters' and 'controls' in the virtio-video spec?
> > > In the previous discussion, we decided to have a profile, level and
> > > bitrate as controls because we want to query supported values for each
> > > field.
> > > But, I don't think it's a good criteria because it'd be possible to
> > > query other values in params.
> > =

> > Could you elaborate on this? Do you now how the design could look like =
or
> > it is just an idea? AFAIR during the discussion of OpenSynergy's origin=
al
> > v1 spec your point was to separate something that we call 'controls' now
> > to reduce the command data size and make command handling less error
> > prone.
> =

> The problem in v3 is that if we want to add a new value to be set it'd
> be unclear which params or controls is better to be extended.
> One possible rule may be "if a value can be queried by the driver, it
> should be a control". However, this rule doesn't explain why we have
> "format" in params for example. So, I think we need a discussion and
> may want to rearrange the structures.
> =

> Yeah, in the previous discussion, I suggested to have profile, level
> and bitrate as control values instead of members of params. Now, I'm
> wondering whether we can have every values as control values.
> I don't think it's a perfect idea, but I haven't come up with any
> better concrete design yet. So, I'd really appreciate if you could
> share your thoughts.
> =


Ok, we can for example add more precise definition to input and output. Let=
's =

say we have 'bitstream' format structure and a 'image' format structure. E.=
g. =

for decoder obviously bitstream is input and image is output.

Then instead of params and controls we can define some abstract 'properties=
'. =

And make some of the properties assigned/mapped/available to bitstream and =

some to image, depending on the current function. I think that could make =

sense as for example for decoder 'bitstream' probably requires very few bas=
ic =

'properties' like fourcc format, in contrast to 'image'. But for encoder =

'bitstream' will also have the bitrate 'property' set.

> > On one hand if don't really see any difference in params vs controls it
> > would for sure make sense to remove one of the two. On the other hand I=
'd
> > of course like to avoid moving back in forth, especially when it comes =
to
> > such a major driver rework.
> =

> Yes, I understand that it may require a big change in the implementation.
> I'm sorry for not being able to think of this point seriously in the
> previous thread.
> =

> Of course, I'd also really like to avoid rework, but I believe we
> shouldn't give up defining a clean and reasonable specification.
> Let's find a clear definition in this cycle to avoid future rework.
> =

> > > So, I'm thinking about what should be the difference between params
> > > and controls. If no difference, we should deprecate
> > > virtio_video_params and have every field there as a control value
> > > instead.
> > =

> > I deem we should then deprecate controls instead. Params seem to be more
> > abstract. Width and height don't sound like a control for me.
> =

> Though this is actually one of options, how can we query profiles and
> levels if they are in params?
> This is why we decided them as controls.
> =

> Best regards,
> Keiichi
> =

> > > If we add a new command to get and set multiple controls at once, this
> > > change won't cause overhead.
> > =

> > How would we do this? Provide a flexible array member where each entry =
has
> > a type field first?
> =

> Yeah, something like the idea. But, I haven't designed an actual structure
> yet.
> > What can also make sense is to potentially join set and get calls
> > (probably
> > provide 'get' stuff automatically within a response to 'set'). Anyway s=
et
> > and get are currently used in conjunction all the time.
> =

> It'd make sense to return new input and output params when one of
> params is updated.
> But, if we choose this design, we need to assume one device has just
> two params; input and output.
> =

> This is okay for video decoder and encoder, but it may become a
> problem if we want to support other types of video device that has
> only one direction. (e.g. video capture device)
> Though we have no plan for supporting this, OpenSynergy's v1 proposal
> contained this type IIRC.

Honestly speaking, the idea is not completely abandoned. The spec and the =

driver has more than enough functionality to handle a simple Android EVS =

camera use-case. But I think let's discuss this separately later.

Best regards,
Dmitry.

> =

> Best regards,
> Keiichi
> =

> > Best regards,
> > Dmitry.
> > =

> > > What do you think? Is there anything I missed?
> > > If it sounds fine, I'll remove virtio_video_params from the v4 spec
> > > proposal.
> > > =

> > > Best regards,
> > > Keiichi
> > > =

> > > [1]: https://patchwork.linuxtv.org/patch/61717/


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
