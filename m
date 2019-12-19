Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A44126102
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 12:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177FF6EB5A;
	Thu, 19 Dec 2019 11:39:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93AC7899E8
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 10:00:17 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id f8so4264046edv.2
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 02:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kptvJQiwY0f0jKPZaorew/kszDrUaorltfUPXLGjup4=;
 b=nO0b7djIoFaOvx66XsstxLKhuKj0P8rEKwUMKYwb0zRK9ftZR4GmE5ExTT7jO1V5DV
 JuKTws8eHMuGgBuyAHWvFyf+jiivO0ykarHkxypviMNkqDfKt1aozB12FqzBeFTZV/hh
 /wrtx1UVos9y2NibHVStuulHHWoaZZVXKjJ2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kptvJQiwY0f0jKPZaorew/kszDrUaorltfUPXLGjup4=;
 b=qPx6If14KClkzok+a8W0y5rdTwPEjs2d7hwDGqeNpHBsLBfuRGHNgx1RF5sNbYBrrl
 dMpuRb8AR6e5yBRvW7Xd3Kf6wLN6aQDRjaRwtUL3hyEGV0biw9o+aYNPfREllIV6xRfK
 u0WXnYV0ypTUyUJP738c5Jx0uL2Hm2g75S1ig4jF43GcCeFLabc9CNs5mcxltwbe4Ghk
 rdP61fTwnrR0uhe63tTTeWDEuk8Eby44bC65JaF4es41JAY2J4Q/Y4Y845D/K5f2NkLC
 3PARQ6u8wHshzabhdsJHJZegWlNL/3WZJCAqNjWzcJu4vSdEWWcv6S0/tNHF9x+IUVal
 7vUg==
X-Gm-Message-State: APjAAAW+9qtlUMk2uOK1FScH8ZyltjoXBUB5rhtKjUB7Y3nzptaD2kkK
 x6tFeLF5gPZx1BR3G0wNg8A9zedvW186jA==
X-Google-Smtp-Source: APXvYqx66qiZj/dCCxAe6S/3udFOtNEjYro3zh2kZBfcEp8d2kLHQKrooTg76mNe3SWNzPLaY4fv5A==
X-Received: by 2002:aa7:cdcd:: with SMTP id h13mr7898507edw.42.1576749614556; 
 Thu, 19 Dec 2019 02:00:14 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id u13sm362476ejz.69.2019.12.19.02.00.12
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 02:00:12 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id b19so4771310wmj.4
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 02:00:12 -0800 (PST)
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr9136717wmk.85.1576749612032;
 Thu, 19 Dec 2019 02:00:12 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
 <2570078.xtWa8k4VtA@os-lin-dmo>
In-Reply-To: <2570078.xtWa8k4VtA@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Dec 2019 18:59:59 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CVkcQmMt=H74E4uHE26jidTfg2neJ6sYGKRa9XRxYxwQ@mail.gmail.com>
Message-ID: <CAAFQd5CVkcQmMt=H74E4uHE26jidTfg2neJ6sYGKRa9XRxYxwQ@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>,
 Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Dec 19, 2019 at 6:26 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Gerd,
>
> On Mittwoch, 18. Dezember 2019 14:40:37 CET Gerd Hoffmann wrote:
> >   Hi,
> >
> > > +The device MUST mark the last buffer with the
> > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > +sequence.
> >
> > No, that would build a race condition into the protocol.  The device
> > could complete the last buffer after the driver has sent the drain
> > command but before the device saw it.  So the flag would not be
> > reliable.
> No, then it means the device was not in drain, but, for example, hit a
> resolution change in the stream and tells us that this is the last buffer with
> the old resolution.
>
> >
> > I also can't see why the flag is needed in the first place.  The driver
> > should know which buffers are queued still and be able to figure
> > whenever the drain is complete or not without depending on that flag.
> > So I'd suggest to simply drop it.
> This flag is used not for drain only. In marks the completion of whatever
> specific buffer sequence, like a full end-of-stream, resolution change, drain
> etc. We also need this to handle nested sequences. For instance, a resolution
> change event might happen while in drain.

Good point. The resolution change event is in a different virtqueue,
so it's not serialized with the request completions.
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
