Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABDD190073
	for <lists+spice-devel@lfdr.de>; Mon, 23 Mar 2020 22:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C70E8991E;
	Mon, 23 Mar 2020 21:36:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE7089FC3
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Mar 2020 12:08:07 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id 19so14212352ljj.7
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Mar 2020 05:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G1kmi4azK6I9kl/p6cHctZkv1a8MPJawGqGhCqNb2yk=;
 b=QLcac98mZfYlUtwusKNdWQU97I9Gs25cvgovhkOCpd4RgltH2AGqXNffMFrSq68r4j
 zuKISq/voPy0eDDl+v6U5R5VlAwahbwWP8eJCxYRW2G79FmHM8Lh7JgQcvBq/c7fWg7u
 KZSSdprcwLpwe+/YXyfW0E6p570hudPMSMmLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G1kmi4azK6I9kl/p6cHctZkv1a8MPJawGqGhCqNb2yk=;
 b=UvfpkXYl8eZkEKctPuCxz84enWulGqRXK9DI38Y8ZsmLr1BmypeiZFBlvvSZ1R404x
 nT+atT61b/s3yDdmFDe+yeaLqmIeiXYZG0WqoC5J/U52mjcmdNBuZEOhmGgtwn0KukZ3
 SarxZncx7pUexOIQlJzH5uViUqOxSELUfyrDZ6Nb0SSPupqrvkhM5iKj3GcQGmIjzuaS
 o0qi/xUKLWip/Pz6u4i209EUqTmpytF+ct6h2JdMTgBkjHRigiTZCQRIipA+L9lN/gFD
 OL68KUDdd54fPZS5tfQpCl0dNqye7fDEe8P1HM6pTHQycwVzqIQkHRarQITcOpD5jaVe
 9Iug==
X-Gm-Message-State: ANhLgQ1qnMTsSHfN+128xAZkei7zvVMRr+LdDQ/xLmmgQLrY7G5cdPAE
 vtayCJxiGJ1XDn3IY66ky/v2ueoiCQKMCRr3CEbL4A==
X-Google-Smtp-Source: ADFU+vtLvIvZ3eN7AZJeNEGr1wODw+/sFDTcLwS1UWMXcHhKbrn9CKkocKY6q2JoeJ/iLSi2NCXOlm9wfjftCJtm2hs=
X-Received: by 2002:a2e:9a90:: with SMTP id p16mr14058285lji.277.1584965285362; 
 Mon, 23 Mar 2020 05:08:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
 <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
 <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
 <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
 <20200304064251.zzkhevqgth6uets6@sirius.home.kraxel.org>
 <CAPBb6MVPjgLkbVjOY6O3srywNm8Zb1pMR2pGM1NinByhgFaZ_A@mail.gmail.com>
In-Reply-To: <CAPBb6MVPjgLkbVjOY6O3srywNm8Zb1pMR2pGM1NinByhgFaZ_A@mail.gmail.com>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Mon, 23 Mar 2020 21:07:54 +0900
Message-ID: <CAD90VcaYi2KawNOewRaL1QihUjgja6nLyzU+0R7nsHPN3voXDA@mail.gmail.com>
To: Alexandre Courbot <acourbot@chromium.org>
X-Mailman-Approved-At: Mon, 23 Mar 2020 21:36:11 +0000
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
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi everyone,

I have implemented a virtio-video device following my v3 spec in
crosvm, which worked well together with Dmitry's driver [1]. I've
started preparing v4 proposal to address problems found while
implementing the driver and the devices.

Regarding v3 protocol, I'm thinking about how we can differentiate
'parameters' and 'controls' in the virtio-video spec?
In the previous discussion, we decided to have a profile, level and
bitrate as controls because we want to query supported values for each
field.
But, I don't think it's a good criteria because it'd be possible to
query other values in params.

So, I'm thinking about what should be the difference between params
and controls. If no difference, we should deprecate
virtio_video_params and have every field there as a control value
instead.
If we add a new command to get and set multiple controls at once, this
change won't cause overhead.

What do you think? Is there anything I missed?
If it sounds fine, I'll remove virtio_video_params from the v4 spec proposal.

Best regards,
Keiichi

[1]: https://patchwork.linuxtv.org/patch/61717/
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
