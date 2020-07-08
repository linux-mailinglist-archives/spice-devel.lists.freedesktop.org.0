Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEF12198A4
	for <lists+spice-devel@lfdr.de>; Thu,  9 Jul 2020 08:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2EE6E9AB;
	Thu,  9 Jul 2020 06:28:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com
 [IPv6:2a00:1450:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662C46E8BF
 for <spice-devel@lists.freedesktop.org>; Wed,  8 Jul 2020 12:55:37 +0000 (UTC)
Received: by mail-ej1-x641.google.com with SMTP id w6so50428848ejq.6
 for <spice-devel@lists.freedesktop.org>; Wed, 08 Jul 2020 05:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mK9nGtyk1yXoa5XhSZVTSHCPTsC0YOOqucSMxb5VkhE=;
 b=a0ofPs1E/HUWWrRpwOHL4ISSH+v/JkxQQzo5htYFmAZ6R7EqxA+leosg/wqZ0Opx0Q
 nGt3rO/W61bsiAIpQqNSLS23xfuCYTmFKyScd6tDXPy+zZ6FbREaYEg+wgjdjfvdhhFH
 7yfiOkMIPhqBprUxeFRtGiAxCzGhJM+OqBg+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mK9nGtyk1yXoa5XhSZVTSHCPTsC0YOOqucSMxb5VkhE=;
 b=NajOKbDXpRGXS7PZWut8I/2zwNXOTBoqWaGkQ9EcvTxPEdPx8DiVhCugpUcfQF+HXV
 4wlV9on/IOjQrYdfblvmSfGI/0XDwTrsVfTCXWk6CDhXdENVofxaOIwInh7vcZgSUL6b
 Ley3ElyRVV/uoflzbnhk3Feb5hvLwq558MahMO/tjIUal2GaY40wkeKOabYgruz55zhP
 yqhehuh5lNPBPhR5dyQCJEiZ1kNRBkO1DjeeX2dXKkXmLpyyBrGOqszuJIy0BdpbCsDH
 mhsSomP/nPRrNUE7Cy4J0bjxSp28qbw/gkw3vyrPnZ9391i/8RDxuGJ+Mh0UmWulrQxa
 qfqQ==
X-Gm-Message-State: AOAM533mqHkZ71ymFunODVyRdSw5Uq8GzyPjee9193r7u1AA6FcAn4IY
 hjaOzoPqQM0IaoRv1FPS9vhwKejXm23NdA==
X-Google-Smtp-Source: ABdhPJxMoMayRzbBEaMzP/Wk8SsdWsjvibQ+Ky8svZuDYUWrECSB9DZCWOI9CmQrvJls8DcJtgqLuw==
X-Received: by 2002:a17:906:12cd:: with SMTP id
 l13mr52711598ejb.96.1594212935657; 
 Wed, 08 Jul 2020 05:55:35 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id o60sm15743937edb.4.2020.07.08.05.55.33
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2020 05:55:34 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id k6so48895757wrn.3
 for <spice-devel@lists.freedesktop.org>; Wed, 08 Jul 2020 05:55:33 -0700 (PDT)
X-Received: by 2002:adf:dfcd:: with SMTP id q13mr58570699wrn.295.1594212933528; 
 Wed, 08 Jul 2020 05:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
 <3163123.i8GTTo9gJ5@os-lin-dmo>
 <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
 <20200703051756-mutt-send-email-mst@kernel.org>
 <CAPBb6MXju_cc3FdWF60Ndx6aYfHmaGbQxu2a3QMxTfnLrXJxYQ@mail.gmail.com>
 <CAAFQd5CQuDgvZrYC53yKEYBY1LOX2QO8+7eRAscN5wQFmHmkZQ@mail.gmail.com>
 <CAPBb6MXMFQe2Qg1_O01-9OcOEOwv+A0UFu9wBf1ctjVevHAWrg@mail.gmail.com>
In-Reply-To: <CAPBb6MXMFQe2Qg1_O01-9OcOEOwv+A0UFu9wBf1ctjVevHAWrg@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 8 Jul 2020 14:55:21 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CUsk2F3RgUKhCzXxkbMSxLwp+_Cox+apA750hy5svYrQ@mail.gmail.com>
Message-ID: <CAAFQd5CUsk2F3RgUKhCzXxkbMSxLwp+_Cox+apA750hy5svYrQ@mail.gmail.com>
To: Alexandre Courbot <acourbot@chromium.org>
X-Mailman-Approved-At: Thu, 09 Jul 2020 06:28:45 +0000
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
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Wed, Jul 8, 2020 at 6:35 AM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> On Fri, Jul 3, 2020 at 6:55 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Fri, Jul 3, 2020 at 11:27 AM Alexandre Courbot <acourbot@chromium.org> wrote:
> > >
> > > On Fri, Jul 3, 2020 at 6:18 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> > > >
> > > > On Fri, Jul 03, 2020 at 02:45:15PM +0900, Alexandre Courbot wrote:
> > > > > Hi Dmitry,
> > > > >
> > > > > On Thu, Jul 2, 2020 at 10:47 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
> > > > > >
> > > > > > Hi Keiichi,
> > > > > >
> > > > > > Thanks for the clarification. I believe we should explicitly describe this in
> > > > > > the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem
> > > > > > there. If it is a guest allocated resource, we cannot consider it to be free
> > > > > > until the device really releases it. And it won't happen until we issue the
> > > > > > next ATTACH call. Also, as we discussed before, it might be not possible to
> > > > > > free individual buffers, but the whole queue only.
> > > > >
> > > > > In the case of the encoder, a V4L2 driver is not supposed to let
> > > > > user-space dequeue an input frame while it is used as reference for
> > > > > the encoding process. So if we add a similar rule in the virtio-video
> > > > > specification, I suppose this would solve the problem?
> > > > >
> > > > > For the decoder case, we have a bigger problem though. Since DMABUFs
> > > > > can be arbitrarily attached to any V4L2 buffer ID, we may end up
> > > > > re-queueing the DMABUF of a decoded frame that is still used as
> > > > > reference under a different V4L2 buffer ID. In this case I don't think
> > > > > the driver has a way to know that the memory resource should not be
> > > > > overwritten, and it will thus happily use it as a decode target. The
> > > > > easiest fix is probably to update the V4L2 stateful specification to
> > > > > require that reused DMABUFs must always be assigned to the same V4L2
> > > > > buffer ID, and must be kept alive as long as decoding is in progress,
> > > > > or until a resolution change event is received. We can then apply a
> > > > > similar rule to the virtio device.
> > > >
> > > >
> > > > Sounds like a generic kind of problem - how do other devices solve it?
> > >
> > > Most users of V4L2 drivers use MMAP buffers, which don't suffer from
> > > this problem: since MMAP buffers are managed by V4L2 and the same V4L2
> > > buffer ID always corresponds to the same backing memory, the driver
> > > just needs to refrain from decoding into a given V4L2 buffer as long
> > > as it is used as a reference frames. This is something that all
> > > drivers currently do AFAICT.
> > >
> > > The problem only occurs if you let userspace map anything to V4L2
> > > buffers (USERPTR or DMABUF buffers). In order to guarantee the same
> > > reliable behavior as with MMAP buffers, you must enforce the same
> > > rule: always the same backing memory for a given V4L2 buffer.
> > >
> > > ... or you can rotate between a large enough number of buffers to
> > > leave enough space for the reference tag to expire on your frames, but
> > > that's clearly not a good way to address the problem.
> >
> > FWIW, it's typically solved with regular devices by completely
> > disallowing the DMABUF/USERPTR modes and only allowing the
> > V4L2-managed MMAP mode for affected buffer queues.
> >
> > However, that's quite a severe limitation and with a careful API
> > extension, DMABUF could be still handled. Namely:
> >  - pre-registration of buffers at initialization time: that would
> > likely mean mandating VIDIOC_QBUF for all indexes before any
> > decoding/encoding can start,
>
> Can't we get around this by just requiring that DMABUFs passed to
> VIDIOC_QBUFs are always the same for a given index? Why would it be
> necessary to require all buffers to be queued before starting the
> codec?
>

There are decoders (e.g. s5p-mfc) which require all the framebuffers
to be registered beforehands.

> >  - enforcement of index-buffer mapping: VIDIOC_QBUF would have to fail
> > if one attempts to queue another buffer at the same index,
> >  - ability to explicitly release existing buffers: there is
> > VIDIOC_RELEASE_BUF in the works which could be used to release a
> > specific index,
> >  - ability to explicitly add new buffers: a combination of
> > VIDIOC_CREATEBUFS + VIDIOC_QBUF could be already used to achieve this.
>
> Even without these I guess we can probably get something working at
> the cost of higher restrictions to clients (i.e. purely static set of
> buffers).

I suppose you mean without the last two?

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
