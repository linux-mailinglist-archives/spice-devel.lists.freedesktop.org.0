Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C07D21343B
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 08:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEC96E8C8;
	Fri,  3 Jul 2020 06:35:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3279E6E8C5
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 05:50:39 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id 72so25919469otc.3
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 22:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YHaRbdolqkz8jcWhwgVqLvvhyIEi7Wo2td1s1ya5wVA=;
 b=LSccDe/hO6HaOT7AeFBQkqj7VeHBevWDCM32VW6vhczFKuf4eABwtOO8sc+Qc5Gj9t
 slXcACPE/EE7ME+hdmWXM0VPk/mPVhhEzMC4jZG/EL70YY3rvPvUaoL4IUUCKfychOJB
 0muHZfaVRucQ/0/HFg7ZdnVLa9NmNr/OdWrtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YHaRbdolqkz8jcWhwgVqLvvhyIEi7Wo2td1s1ya5wVA=;
 b=drz3fJHYlldU9orvf4ON70aQgUpZEGwlh93G3IcdYRuY/VuG1nLZ0r+FPW8uY+rBlJ
 Q+Kru3SzlVhK3UOIN1R8drO53PEBycUsjw/BRafNXUKVKWoGDiIkEEGGwkQQrGR6Cf2o
 S4YGQSHP4kh9gY8t0vducH1hWl65rCnuRBulugz++Da8+0Hcxd5xgFAxlYciCHyMmSDH
 27eafReooWmqtJDvdtY3ESaiZNbMY1C7qZZ+W10hwfp3/vD1DF8NPDSEpLHYu2UYq4BS
 KSN5u1kDzcjdqPP/w10C6pNQzpGSKjeLVmmB1x8/KLRL3t+7xkmPgbhJd3nKA8frQQK6
 RMbg==
X-Gm-Message-State: AOAM532HywOEar1H90+CC/6VL5W3Y0u6bkLPQDx8qnswVooUjdPrMEO/
 JZci21Aq809u6LhpEJsnobp6E1xmvPc=
X-Google-Smtp-Source: ABdhPJzv6EF6mIjR46do25YlVY7Rmi7xpKxXeZ9G3mPxZN8Ik4dgZSGYBZ7WXWin20ex1H/VFni/wQ==
X-Received: by 2002:a05:6830:14c6:: with SMTP id
 t6mr17102738otq.18.1593755433918; 
 Thu, 02 Jul 2020 22:50:33 -0700 (PDT)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com.
 [209.85.167.181])
 by smtp.gmail.com with ESMTPSA id t16sm3310459oou.28.2020.07.02.22.50.33
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jul 2020 22:50:33 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id t198so13074727oie.7
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 22:50:33 -0700 (PDT)
X-Received: by 2002:aca:7243:: with SMTP id p64mr16148813oic.94.1593755127258; 
 Thu, 02 Jul 2020 22:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
 <3163123.i8GTTo9gJ5@os-lin-dmo>
In-Reply-To: <3163123.i8GTTo9gJ5@os-lin-dmo>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 3 Jul 2020 14:45:15 +0900
X-Gmail-Original-Message-ID: <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
Message-ID: <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Fri, 03 Jul 2020 06:35:45 +0000
Subject: Re: [Spice-devel] [PATCH RFC v4 0/1] Virtio Video Device
 Specification
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pawel Osciak <posciak@chromium.org>, virtio-dev@lists.oasis-open.org,
 David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 Kiran Pawar <kiran.pawar@opensynergy.com>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Dmitry,

On Thu, Jul 2, 2020 at 10:47 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Keiichi,
>
> Thanks for the clarification. I believe we should explicitly describe this in
> the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem
> there. If it is a guest allocated resource, we cannot consider it to be free
> until the device really releases it. And it won't happen until we issue the
> next ATTACH call. Also, as we discussed before, it might be not possible to
> free individual buffers, but the whole queue only.

In the case of the encoder, a V4L2 driver is not supposed to let
user-space dequeue an input frame while it is used as reference for
the encoding process. So if we add a similar rule in the virtio-video
specification, I suppose this would solve the problem?

For the decoder case, we have a bigger problem though. Since DMABUFs
can be arbitrarily attached to any V4L2 buffer ID, we may end up
re-queueing the DMABUF of a decoded frame that is still used as
reference under a different V4L2 buffer ID. In this case I don't think
the driver has a way to know that the memory resource should not be
overwritten, and it will thus happily use it as a decode target. The
easiest fix is probably to update the V4L2 stateful specification to
require that reused DMABUFs must always be assigned to the same V4L2
buffer ID, and must be kept alive as long as decoding is in progress,
or until a resolution change event is received. We can then apply a
similar rule to the virtio device.

>
> Best regards,
> Dmitry.
>
> On Donnerstag, 2. Juli 2020 14:50:58 CEST Keiichi Watanabe wrote:
> > Hi Dmitry,
> >
> > On Thu, Jul 2, 2020 at 4:32 PM Dmitry Sepp <dmitry.sepp@opensynergy.com>
> wrote:
> > > Hi Keiichi,
> > >
> > > Thank you very much for the hard work to update the spec and to summarize
> > > all of the recent proposals!
> > >
> > > I want to again raise a topic that was discussed earlier and unfortunately
> > > the latest proposal cannot resolve the problem. I hope together with
> > > upstream people we'll be able to find a neat solution.
> > >
> > > Please consider the following case:
> > > 1. Encoder case
> > > 2. User app does reqbufs with DMABUF flag.
> > > 3. User app submits frames to encode, each frame has a different fd, might
> > > be a completely new buffer.
> > > 4. Driver receives this buffer via queue() and does this check to verify
> > > whether it is a known dmabuf:
> > > https://elixir.bootlin.com/linux/v5.7.6/source/drivers/media/common/videob
> > > uf2/ videobuf2-core.c#L1163
> > > 5. When the check fails, it does cleanup.
> > > 6. BUG: As we got rid of the flexible resource detach/destroy calls, host
> > > side has no way to know the resource has a new memory region. The new sgt
> > > is never propagated to the host.
> > >
> > > The mentioned earlier
> > > CMD_RESOURE_REASSIGN_ENTRIES/CMD_RESOURE_REASSIGN_OBJECT are not included
> > > in the spec.
> >
> > This shouldn't be a problem. Though we don't have a per-resource
> > detach command, we can _replace_ attached sg-list or virtio-object by
> > calling the attach command.
> > In your scenario, if the driver notices a new dmabuf is given at 4 and
> > 5, the driver should send RESOURCE_ATTACH command with the new dmabuf.
> > Then, the old dmabuf was regarded as "detached". Please see the
> > "Buffer life cycle" section.
> >
> > I renamed RESOURCE_REASSIGN_* commands to RESOURCE_ATTACH as it's also
> > used at the first time to attach a buffer.
> >
> > Best regards,
> > Keiichi
> >
> > > Thanks in advance.
> > >
> > > Best regards,
> > > Dmitry.
> > >
> > > On Dienstag, 23. Juni 2020 13:13:24 CEST Keiichi Watanabe wrote:
> > > > This is the v4 RFC of virtio video device specification.
> > > > PDF versions are available at [1, 2].
> > > >
> > > > Note that this patch depends on a recent patchset "Cross-device resource
> > > > sharing" [3].
> > > >
> > > > Here is a list of major changes from v3:
> > > > * Redesingned struct definitions for each command and request based on
> > > >
> > > >   discussions at [4].
> > > >
> > > > * Renamed commands/structs/enums to more descriptive names.
> > > > * Had different structs and fields for image formats and bitstream
> > > > formats.
> > > > * Added more detailed specification for supported video codecs.
> > > > * Made stream_id be allocated by the device.
> > > > * Had a single parameter struct per-stream instead of per-queue
> > > > parameters
> > > > and controls.
> > > > * Allowed the driver to specify the number of buffers to use via
> > > >
> > > >   "cur_{image,bitstream}_buffers".
> > > >
> > > > * Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow
> > > > the
> > > >
> > > >   driver to use this command when replacing backing memories as well.
> > > >
> > > > [5] is the diff of the header file from v3. Note that it only contains
> > > > changes in the header. We haven't updated the driver nor device
> > > > implementation to focus on protocol design discussion first.
> > > >
> > > > While it may appear that many parts have been changed since the previous
> > > > revision, these changes are to address the issues raised in previous
> > > > discussions or/and to make the protocol simpler and easier to prevent
> > > > misuse.
> > > > I'd appreciate any types of feedback.
> > > >
> > > > Best regards,
> > > > Keiichi
> > > >
> > > > [1] (full):
> > > > https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?u
> > > > sp=
> > > > sharing [2] (only video section):
> > > > https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8rslj3/view?u
> > > > sp=
> > > > sharing [3]
> > > > https://lists.oasis-open.org/archives/virtio-comment/202003/msg00035.htm
> > > > l
> > > > [4] https://markmail.org/thread/c6h3e3zn647qli3w
> > > > [5]
> > > > https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel
> > > > /+/
> > > > 2164411
> > > >
> > > > Keiichi Watanabe (1):
> > > >   virtio-video: Add virtio video device specification
> > > >
> > > >  .gitignore                        |    1 +
> > > >  content.tex                       |    1 +
> > > >  images/video-buffer-lifecycle.dot |   18 +
> > > >  make-setup-generated.sh           |    8 +
> > > >  virtio-video.tex                  | 1163 +++++++++++++++++++++++++++++
> > > >  5 files changed, 1191 insertions(+)
> > > >  create mode 100644 .gitignore
> > > >  create mode 100644 images/video-buffer-lifecycle.dot
> > > >  create mode 100644 virtio-video.tex
> > > >
> > > > --
> > > > 2.27.0.111.gc72c7da667-goog
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
