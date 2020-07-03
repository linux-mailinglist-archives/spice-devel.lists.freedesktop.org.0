Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DB1213854
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 12:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103316E8D0;
	Fri,  3 Jul 2020 10:02:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759276E1F5
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 09:27:14 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id 18so26237688otv.6
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 02:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=My7AEIFF8m+uLMru4rHgMTWXFzlW7n2k2ELeHm5OiLY=;
 b=HhFwvN3a6ABKc5S+t/sH9sQ3IwBkJPZ1XaxXkRJOAOiPO6UsNhMZ513t9LeD7Wo6zl
 J7OUxzIU6GKetseqEkcDPj/q0EBidHDEF03qmGWLNBK7qyAEJbcI2UkVFHkDZPQowx0G
 D5P32oTPd3NROTsJ3Gu5wrZgMBR0+m3sw7Mv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=My7AEIFF8m+uLMru4rHgMTWXFzlW7n2k2ELeHm5OiLY=;
 b=H8Bq70pAB2IA2N6oV248JNaviUZrreCPF65/cpSnBEZgtMcK+1aMNnk3OSvTlqIqJS
 +Olog0SpCM1bUCc/WiRKg1U/BhH2Dh9ZmffCr0Fvq1Ysr9A3vq2c2bzyEtyerXoVrHmk
 /gs7m+ZSi8QkdS1EItWn7wKeBSS1bJInjvW+/oIN8ozXUKLIQi1Q3Taw+u2ylcfi4Ey1
 k0k0V19dxqTl57eOpJXR6dpTQebnFUpnppfxi90thuov26V8hivRNwmbtbeWbUiTyVJd
 q4fwW8zvWngcD8/FJKuKinXJDGTsv8sfyxy/4K2fAKfKIOTpPupirrTO6hY0e9q8Dcnk
 s5Zg==
X-Gm-Message-State: AOAM533oOc0BbwknqF7Gw86MZ46w16QCfnNjhnuS+k7W737FKxzSd/9K
 nfb8c/RJOVWHbF8t5o1zLiLsPvlZZoQ=
X-Google-Smtp-Source: ABdhPJzBvmIbgQhakD+QRP6YkqPpYP/+5J2WW1G/RWtlzwLSC4gi7leS40DuXjKPlBx5uLzp9CTxrg==
X-Received: by 2002:a9d:6a11:: with SMTP id g17mr22826743otn.50.1593768432299; 
 Fri, 03 Jul 2020 02:27:12 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id a3sm3299031oif.38.2020.07.03.02.27.10
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jul 2020 02:27:11 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id 18so26237577otv.6
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 02:27:10 -0700 (PDT)
X-Received: by 2002:a9d:6389:: with SMTP id w9mr28658984otk.97.1593768430034; 
 Fri, 03 Jul 2020 02:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
 <3163123.i8GTTo9gJ5@os-lin-dmo>
 <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
 <20200703051756-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200703051756-mutt-send-email-mst@kernel.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 3 Jul 2020 18:26:58 +0900
X-Gmail-Original-Message-ID: <CAPBb6MXju_cc3FdWF60Ndx6aYfHmaGbQxu2a3QMxTfnLrXJxYQ@mail.gmail.com>
Message-ID: <CAPBb6MXju_cc3FdWF60Ndx6aYfHmaGbQxu2a3QMxTfnLrXJxYQ@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
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
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Jul 3, 2020 at 6:18 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Fri, Jul 03, 2020 at 02:45:15PM +0900, Alexandre Courbot wrote:
> > Hi Dmitry,
> >
> > On Thu, Jul 2, 2020 at 10:47 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
> > >
> > > Hi Keiichi,
> > >
> > > Thanks for the clarification. I believe we should explicitly describe this in
> > > the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem
> > > there. If it is a guest allocated resource, we cannot consider it to be free
> > > until the device really releases it. And it won't happen until we issue the
> > > next ATTACH call. Also, as we discussed before, it might be not possible to
> > > free individual buffers, but the whole queue only.
> >
> > In the case of the encoder, a V4L2 driver is not supposed to let
> > user-space dequeue an input frame while it is used as reference for
> > the encoding process. So if we add a similar rule in the virtio-video
> > specification, I suppose this would solve the problem?
> >
> > For the decoder case, we have a bigger problem though. Since DMABUFs
> > can be arbitrarily attached to any V4L2 buffer ID, we may end up
> > re-queueing the DMABUF of a decoded frame that is still used as
> > reference under a different V4L2 buffer ID. In this case I don't think
> > the driver has a way to know that the memory resource should not be
> > overwritten, and it will thus happily use it as a decode target. The
> > easiest fix is probably to update the V4L2 stateful specification to
> > require that reused DMABUFs must always be assigned to the same V4L2
> > buffer ID, and must be kept alive as long as decoding is in progress,
> > or until a resolution change event is received. We can then apply a
> > similar rule to the virtio device.
>
>
> Sounds like a generic kind of problem - how do other devices solve it?

Most users of V4L2 drivers use MMAP buffers, which don't suffer from
this problem: since MMAP buffers are managed by V4L2 and the same V4L2
buffer ID always corresponds to the same backing memory, the driver
just needs to refrain from decoding into a given V4L2 buffer as long
as it is used as a reference frames. This is something that all
drivers currently do AFAICT.

The problem only occurs if you let userspace map anything to V4L2
buffers (USERPTR or DMABUF buffers). In order to guarantee the same
reliable behavior as with MMAP buffers, you must enforce the same
rule: always the same backing memory for a given V4L2 buffer.

... or you can rotate between a large enough number of buffers to
leave enough space for the reference tag to expire on your frames, but
that's clearly not a good way to address the problem.
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
