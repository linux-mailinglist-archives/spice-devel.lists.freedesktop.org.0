Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5EF213856
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 12:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A296EABD;
	Fri,  3 Jul 2020 10:02:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC536E226
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 09:55:44 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id w16so33570626ejj.5
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 02:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pQYKVipN6WWa9Jevaw4SfxJC0LyLoitPbDxTwSWvSWI=;
 b=Jn3/32I03rvuuTtHe4CbgvMEuyW3m2fuhOLsaxZMSDaRO/Oq0P5mU7WixlqCJuZK4D
 MFWhE1cQX6cXHkciBf9z/H4nuOXEg3gSyJ+/FSs+DlU2G4wluNR8tS1Wii2sQ5t1Neek
 IcdNQht1shaNooMun9Djk/HUHw9t8Mx2o2Sqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pQYKVipN6WWa9Jevaw4SfxJC0LyLoitPbDxTwSWvSWI=;
 b=LwPxOaTQsZuPYB8NiS61gGgsAyA+zNI3YQvEzqGY6tbGMw3Ncf7Gu5/dvA4i3w6mDr
 gld5UbVae/RsNsnmxaBRGt99C6j6h33Iu/fwy1JUmQZyLJS9YbRKmTCQ6fZ987Daut/j
 dEOBeezZz0q2Barkvoc6rWM4U1QnvOMTUuhI7/NVt73e8yz8gzi7AtT1MKmFtTuGBU/C
 kHaK4+kA0cUa55lDCc6MgnJa4QIKyJyUOXJYNa+lKE0VV0LhtYg9pQL1EKEmswyf1WVG
 JhOVFhKy5tbd98CJh+JedayxL9K2KJv3vq+93t2N4YHtRn4ywL+R6dmwhZWGWO+yi/1m
 +mfg==
X-Gm-Message-State: AOAM532pre2I4dbxMiv4N6axhReQsm4eYJ2cx/Vy1kUUlC1OA8aiSdLm
 k8sacCevrLtmFCkg5WLVImUPsZm7dQS/4g==
X-Google-Smtp-Source: ABdhPJxFo2NQ7JkMHS7gYjRT7DedexPeBmpawvap8Xf3IxREImOSnfbKf1TiyKEG3a0U48QA2IYGbg==
X-Received: by 2002:a17:906:f53:: with SMTP id
 h19mr30436635ejj.491.1593770143159; 
 Fri, 03 Jul 2020 02:55:43 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id u18sm12286343edx.34.2020.07.03.02.55.42
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jul 2020 02:55:42 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id a6so32006426wrm.4
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 02:55:42 -0700 (PDT)
X-Received: by 2002:adf:dfcd:: with SMTP id q13mr35885221wrn.295.1593770141671; 
 Fri, 03 Jul 2020 02:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
 <3163123.i8GTTo9gJ5@os-lin-dmo>
 <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
 <20200703051756-mutt-send-email-mst@kernel.org>
 <CAPBb6MXju_cc3FdWF60Ndx6aYfHmaGbQxu2a3QMxTfnLrXJxYQ@mail.gmail.com>
In-Reply-To: <CAPBb6MXju_cc3FdWF60Ndx6aYfHmaGbQxu2a3QMxTfnLrXJxYQ@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 3 Jul 2020 11:55:29 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CQuDgvZrYC53yKEYBY1LOX2QO8+7eRAscN5wQFmHmkZQ@mail.gmail.com>
Message-ID: <CAAFQd5CQuDgvZrYC53yKEYBY1LOX2QO8+7eRAscN5wQFmHmkZQ@mail.gmail.com>
To: Alexandre Courbot <acourbot@chromium.org>
X-Mailman-Approved-At: Fri, 03 Jul 2020 10:02:10 +0000
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
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Jul 3, 2020 at 11:27 AM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> On Fri, Jul 3, 2020 at 6:18 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > On Fri, Jul 03, 2020 at 02:45:15PM +0900, Alexandre Courbot wrote:
> > > Hi Dmitry,
> > >
> > > On Thu, Jul 2, 2020 at 10:47 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
> > > >
> > > > Hi Keiichi,
> > > >
> > > > Thanks for the clarification. I believe we should explicitly describe this in
> > > > the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem
> > > > there. If it is a guest allocated resource, we cannot consider it to be free
> > > > until the device really releases it. And it won't happen until we issue the
> > > > next ATTACH call. Also, as we discussed before, it might be not possible to
> > > > free individual buffers, but the whole queue only.
> > >
> > > In the case of the encoder, a V4L2 driver is not supposed to let
> > > user-space dequeue an input frame while it is used as reference for
> > > the encoding process. So if we add a similar rule in the virtio-video
> > > specification, I suppose this would solve the problem?
> > >
> > > For the decoder case, we have a bigger problem though. Since DMABUFs
> > > can be arbitrarily attached to any V4L2 buffer ID, we may end up
> > > re-queueing the DMABUF of a decoded frame that is still used as
> > > reference under a different V4L2 buffer ID. In this case I don't think
> > > the driver has a way to know that the memory resource should not be
> > > overwritten, and it will thus happily use it as a decode target. The
> > > easiest fix is probably to update the V4L2 stateful specification to
> > > require that reused DMABUFs must always be assigned to the same V4L2
> > > buffer ID, and must be kept alive as long as decoding is in progress,
> > > or until a resolution change event is received. We can then apply a
> > > similar rule to the virtio device.
> >
> >
> > Sounds like a generic kind of problem - how do other devices solve it?
>
> Most users of V4L2 drivers use MMAP buffers, which don't suffer from
> this problem: since MMAP buffers are managed by V4L2 and the same V4L2
> buffer ID always corresponds to the same backing memory, the driver
> just needs to refrain from decoding into a given V4L2 buffer as long
> as it is used as a reference frames. This is something that all
> drivers currently do AFAICT.
>
> The problem only occurs if you let userspace map anything to V4L2
> buffers (USERPTR or DMABUF buffers). In order to guarantee the same
> reliable behavior as with MMAP buffers, you must enforce the same
> rule: always the same backing memory for a given V4L2 buffer.
>
> ... or you can rotate between a large enough number of buffers to
> leave enough space for the reference tag to expire on your frames, but
> that's clearly not a good way to address the problem.

FWIW, it's typically solved with regular devices by completely
disallowing the DMABUF/USERPTR modes and only allowing the
V4L2-managed MMAP mode for affected buffer queues.

However, that's quite a severe limitation and with a careful API
extension, DMABUF could be still handled. Namely:
 - pre-registration of buffers at initialization time: that would
likely mean mandating VIDIOC_QBUF for all indexes before any
decoding/encoding can start,
 - enforcement of index-buffer mapping: VIDIOC_QBUF would have to fail
if one attempts to queue another buffer at the same index,
 - ability to explicitly release existing buffers: there is
VIDIOC_RELEASE_BUF in the works which could be used to release a
specific index,
 - ability to explicitly add new buffers: a combination of
VIDIOC_CREATEBUFS + VIDIOC_QBUF could be already used to achieve this.

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
