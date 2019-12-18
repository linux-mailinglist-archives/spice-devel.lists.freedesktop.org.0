Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D48124F80
	for <lists+spice-devel@lfdr.de>; Wed, 18 Dec 2019 18:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288526EA2D;
	Wed, 18 Dec 2019 17:38:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716CF6E2DA
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 14:08:54 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e10so1744806edv.9
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 06:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=evrYOOuomFe9tdD3KBiTjInS7pmV9ulXAvfxRSVoT44=;
 b=KCDwxgP4MCuwW63X1ZGCm58bnN4StTkBk/96kX7113sj/Vqadn+mWQcrRs3KlAYiuF
 7lnsppmTXqHYJoqAnGqyUS1RixRodmF+MbiwGBFDCXretq3LqFdouwqVCV+kSD+pLCSB
 hgEIdbgl0RE5Z1ie4ze7X7ub3G0raWHaIPads=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=evrYOOuomFe9tdD3KBiTjInS7pmV9ulXAvfxRSVoT44=;
 b=Gqjb/1KAhkR8wh3TDwQCH+20S01FbM5N/YXQ4Qlhwh20y6p224yR1HZTe2jSbr397a
 gcWA8RnJ5txSYNTICIzE+GZWnQq7qwnYctkLwa/TRIGmILYZ88aVyHZVOoEN6o1K3v9K
 lj1BO4NvXJj3/dzB9Fy27MJByoAXt2GrbfX9rb8QewGRvbyV9T0zEkelwXNW901aj6eH
 AmM6NvOONUrh6v5O2vPspie7t2M0sa049fjM26jNvBGAEJJWQbec9hZYjHdYFxj5kEI6
 WASlE3jziEfdXZ0km2xK4g7V66FV4nmwNdyct2uih8KRMTXcQfyw9nvJOyHjDr/i8kjX
 FLxQ==
X-Gm-Message-State: APjAAAVY0WJfhcAqXvBkg2E+7dWKQpzOacZTfep1z4rNXfjf3sUfASa9
 xh1wGnvB+l7GrCagm48n93NqGngjB3BknA==
X-Google-Smtp-Source: APXvYqwJGcwi0ijNg4LRS8jxZbIr4NbK8KNv6cY9S1D6L4tWaeFrv8c7iHAppRVS8Mcp29NQSlh9oA==
X-Received: by 2002:a17:907:2179:: with SMTP id
 rl25mr2897160ejb.8.1576678132344; 
 Wed, 18 Dec 2019 06:08:52 -0800 (PST)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id c19sm92995ejx.26.2019.12.18.06.08.50
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 06:08:50 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id 20so1924441wmj.4
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 06:08:50 -0800 (PST)
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr3560459wmk.85.1576678129975;
 Wed, 18 Dec 2019 06:08:49 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
In-Reply-To: <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 18 Dec 2019 23:08:37 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
Message-ID: <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Wed, 18 Dec 2019 17:38:44 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 10:40 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
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
>
> I also can't see why the flag is needed in the first place.  The driver
> should know which buffers are queued still and be able to figure
> whenever the drain is complete or not without depending on that flag.
> So I'd suggest to simply drop it.

Unfortunately video decoders are not that simple. There are always
going to be some buffers on the decoder side used as reference frames.
Only the decoder knows when to release them, as it continues decoding
the stream. Moreover, with certain features of certain codecs (e.g.
framebuffer reordering in H.264), there could be decoded frames that
need to be held by decoder, because later bitstream may contain
earlier frames.

How we defined this in the V4L2 stateful decoder interface is that if
the decoder happened to return the last framebuffer before the drain
request arrived, it would return one more, empty. From our experience
that was the easiest thing to deal with from both the driver and the
application, so I believe the same should apply to the host device
implementation and the guest driver.

>
> That is the only issue I've spotted in the protocol on a first quick
> look.  There are a few places where the spec text could be improved.
> I'll try to set aside some time to go over this in detail, but I can't
> promise I'll find the time to do that before xmas and new year.

Thanks a lot for review.

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
