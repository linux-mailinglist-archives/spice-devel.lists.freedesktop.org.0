Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD2F21267C
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 16:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C216E95B;
	Thu,  2 Jul 2020 14:40:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E7289872
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 12:51:11 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id h22so24724113lji.9
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 05:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Om4uTrCN8xkUirJdIKXiYjpK2aPsQISXbuQouET3Xvc=;
 b=HyH4mY49Rv+NRiK2oKsq0mnRnwMrS6YMnBxZfK8wBhsyPVf5d7/QTTaBaD++MFGqxj
 0bsnEUnPgHpmVpMYvtAEEoYk7xFp2l9wv21GdcvkmHId/4lmvslnynpCp9eFnM6/Mct2
 gi1WkslmGt4nI44NxAy6z0nmIKQpPojztznJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Om4uTrCN8xkUirJdIKXiYjpK2aPsQISXbuQouET3Xvc=;
 b=BQjsDW1HMNyvh3Bjdtv3B0+tpbuisMAYIygLPd4XzVihaNkazLMEnVHpPFRP/Q7yjg
 JXV8+7iidE/oYTQoboFtzD+CNk7muqN+aTfIoaDjvzY/zyrTveNXeflUjJqxLWlU9jAH
 uWi4VKGfjmnu3jSMeWQhtXRW0UgNDpZjhlIK+oMtxVtejDKJ3DoC4bpwLWe9mnPAeVym
 QNEsynz34pRVTRtF5ozOni7h/T7wxVLbZO8Hofq1/+CXtY+zooFo2Irtn5jJpJYVyX1A
 TCZfCeR0acjiQ3y4ILge96stKaewe/cqCsEB3zykJTONEmrFYtrJyfwi4z/bskARTKC8
 z2uA==
X-Gm-Message-State: AOAM531e2H5ZjFP5Ha228hU3gJyeRXmYVnPI+98nmhqNKOoKx1YeCcRI
 jNCdfDrYQVw4xBUkFobVSkLjIFrogaaCm5iaa9Iv4A==
X-Google-Smtp-Source: ABdhPJxgTLd1WUSCBKeYVGZONAJF66pxbyVIxELx1CmDzpE78kNV3LllehQPuVXMJt2m/pdw3wWkx/fFkoCO42+R8+E=
X-Received: by 2002:a2e:b5a3:: with SMTP id f3mr14938775ljn.361.1593694268323; 
 Thu, 02 Jul 2020 05:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
In-Reply-To: <2850781.lI95146Gml@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 2 Jul 2020 21:50:58 +0900
Message-ID: <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 02 Jul 2020 14:40:39 +0000
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
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Dmitry,

On Thu, Jul 2, 2020 at 4:32 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Keiichi,
>
> Thank you very much for the hard work to update the spec and to summarize all
> of the recent proposals!
>
> I want to again raise a topic that was discussed earlier and unfortunately the
> latest proposal cannot resolve the problem. I hope together with upstream
> people we'll be able to find a neat solution.
>
> Please consider the following case:
> 1. Encoder case
> 2. User app does reqbufs with DMABUF flag.
> 3. User app submits frames to encode, each frame has a different fd, might be a
> completely new buffer.
> 4. Driver receives this buffer via queue() and does this check to verify
> whether it is a known dmabuf:
> https://elixir.bootlin.com/linux/v5.7.6/source/drivers/media/common/videobuf2/
> videobuf2-core.c#L1163
> 5. When the check fails, it does cleanup.
> 6. BUG: As we got rid of the flexible resource detach/destroy calls, host side
> has no way to know the resource has a new memory region. The new sgt is never
> propagated to the host.
>
> The mentioned earlier CMD_RESOURE_REASSIGN_ENTRIES/CMD_RESOURE_REASSIGN_OBJECT
> are not included in the spec.

This shouldn't be a problem. Though we don't have a per-resource
detach command, we can _replace_ attached sg-list or virtio-object by
calling the attach command.
In your scenario, if the driver notices a new dmabuf is given at 4 and
5, the driver should send RESOURCE_ATTACH command with the new dmabuf.
Then, the old dmabuf was regarded as "detached". Please see the
"Buffer life cycle" section.

I renamed RESOURCE_REASSIGN_* commands to RESOURCE_ATTACH as it's also
used at the first time to attach a buffer.

Best regards,
Keiichi

>
> Thanks in advance.
>
> Best regards,
> Dmitry.
>
> On Dienstag, 23. Juni 2020 13:13:24 CEST Keiichi Watanabe wrote:
> >
> > This is the v4 RFC of virtio video device specification.
> > PDF versions are available at [1, 2].
> >
> > Note that this patch depends on a recent patchset "Cross-device resource
> > sharing" [3].
> >
> > Here is a list of major changes from v3:
> > * Redesingned struct definitions for each command and request based on
> >   discussions at [4].
> > * Renamed commands/structs/enums to more descriptive names.
> > * Had different structs and fields for image formats and bitstream formats.
> > * Added more detailed specification for supported video codecs.
> > * Made stream_id be allocated by the device.
> > * Had a single parameter struct per-stream instead of per-queue parameters
> > and controls.
> > * Allowed the driver to specify the number of buffers to use via
> >   "cur_{image,bitstream}_buffers".
> > * Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow the
> >   driver to use this command when replacing backing memories as well.
> >
> > [5] is the diff of the header file from v3. Note that it only contains
> > changes in the header. We haven't updated the driver nor device
> > implementation to focus on protocol design discussion first.
> >
> > While it may appear that many parts have been changed since the previous
> > revision, these changes are to address the issues raised in previous
> > discussions or/and to make the protocol simpler and easier to prevent
> > misuse.
> > I'd appreciate any types of feedback.
> >
> > Best regards,
> > Keiichi
> >
> > [1] (full):
> > https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?usp=
> > sharing [2] (only video section):
> > https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8rslj3/view?usp=
> > sharing [3]
> > https://lists.oasis-open.org/archives/virtio-comment/202003/msg00035.html
> > [4] https://markmail.org/thread/c6h3e3zn647qli3w
> > [5]
> > https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/
> > 2164411
> >
> > Keiichi Watanabe (1):
> >   virtio-video: Add virtio video device specification
> >
> >  .gitignore                        |    1 +
> >  content.tex                       |    1 +
> >  images/video-buffer-lifecycle.dot |   18 +
> >  make-setup-generated.sh           |    8 +
> >  virtio-video.tex                  | 1163 +++++++++++++++++++++++++++++
> >  5 files changed, 1191 insertions(+)
> >  create mode 100644 .gitignore
> >  create mode 100644 images/video-buffer-lifecycle.dot
> >  create mode 100644 virtio-video.tex
> >
> > --
> > 2.27.0.111.gc72c7da667-goog
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
