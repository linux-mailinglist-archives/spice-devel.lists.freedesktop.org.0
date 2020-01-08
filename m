Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDC5138D06
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC9F89F99;
	Mon, 13 Jan 2020 08:38:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354E56E2D7
 for <spice-devel@lists.freedesktop.org>; Wed,  8 Jan 2020 13:51:12 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id m26so3341357ljc.13
 for <spice-devel@lists.freedesktop.org>; Wed, 08 Jan 2020 05:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j2tbKyq2TJuMrRgt3tLabvZZ7HDbQHaIINM/EQteRrE=;
 b=QvhtXlgwALbRSIkFIh+z8nhyio+0jkI8xfs2zTf2Vk+w5YCHv6RFeXYrHcoqreGyfN
 keKfDlQxzWDLUPrrXuxjo7qlVy7kPkZEqorZ46fcP4oj4PmgIOQRqFc4OdT1MrOGYVVH
 fFqHLpQhtz/arlwgBv2VFJrvZHENZn49U7m9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j2tbKyq2TJuMrRgt3tLabvZZ7HDbQHaIINM/EQteRrE=;
 b=XIMfoTT9ur/iOY5YCaobAIhcfTDQ/156IkKIRVZxu/ea5UE38wZZmViN8N1kIv3pLX
 bX1LyxT0Co4tysuk94W6dLwN2tBv698JGO3vbs5vUwRF4V2ToJb5XZSIVZKTrJ+2ueWP
 ReB7VYXmAF6raf5ZDCpoRfm4w9OP2cWd155Jxdun1yce+A7DP1uw0CGAPD6rr9IwhET+
 SoUqE8C0pHZIULxlrwSLmeBb99hekDTLg6KWfMdJ27ITRtLFLottAc4hwygv1g9rTGMQ
 qVo2GM+z38MCeGpMdGbyIE6JgyOeinVmgWMUMZOjtPFBpQW0dgFxpjFa4hGlgj4mJO7Y
 mTbg==
X-Gm-Message-State: APjAAAV/ME4MDUStUhL2HtJjkuKswJuKm09PoGR1f3pJuwsSleKRXqAC
 aA8HjlCiAhj20QKVk7jgYuJ8CvAhg0tJFkpBWp+GbQ==
X-Google-Smtp-Source: APXvYqzAqTuo6bT4pNcKKL/sbaXHTO9l8rt9Z1w/LBzLQ0DT4qTftXan2TkzSFVCaphzTNcDj/6OZOE97YR+mLjrQw0=
X-Received: by 2002:a2e:9cd8:: with SMTP id g24mr2921078ljj.243.1578491470700; 
 Wed, 08 Jan 2020 05:51:10 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
 <20191219074639.kdkrqxwb6fdb67hu@sirius.home.kraxel.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <20191219130158.7rzdkyemupreudko@sirius.home.kraxel.org>
In-Reply-To: <20191219130158.7rzdkyemupreudko@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Wed, 8 Jan 2020 22:50:59 +0900
Message-ID: <CAD90VcYcXniT-HV09LJoMkm8JWZ1c9et829wBdHUx9xwx3ya=Q@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Mon, 13 Jan 2020 08:38:38 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Gerd,
Thank you so much for the review. I'm sorry for not replying earlier.

On Thu, Dec 19, 2019 at 10:02 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > Not clearly defined in the spec:  When is the decoder supposed to send
> > > the response for a queue request?  When it finished decoding (i.e. frame
> > > is ready for playback), or when it doesn't need the buffer any more for
> > > decoding (i.e. buffer can be re-queued or pages can be released)?

The answer is "when it doesn't need the buffer any more for decoding".
The device can access buffer contents from when a queue request is
sent until the device responds it. So, the device must not responds a
queue request before finishing all process that requires the buffer
content.

Actually, the first one "When it finished decoding (i.e. frame is
ready for playback)" doesn't make much sense, as it's not necessary to
have a one-to-one correspondence between an input bitstream buffer and
a decoded frame.
It's okay to decode one input buffer contains bitstream data for two
frames. Also, a user can pass bitstream for one frame as two input
buffers.

I'll document it in the spec.

Best regards,
Keiichi

> > In my eyes the both statements mean almost the same and both are valid.
>
> Well, no.  When the device decoded a P-Frame it can notify the device,
> saying "here is your decoded frame".  But the device might still need
> the buffer with the decoded frame to properly decode the following B/I
> Frames which reference the P-Frame.
>
> cheers,
>   Gerd
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
