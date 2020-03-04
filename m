Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6399178E43
	for <lists+spice-devel@lfdr.de>; Wed,  4 Mar 2020 11:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569F36E136;
	Wed,  4 Mar 2020 10:16:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57C186EB06
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Mar 2020 10:08:15 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id x19so1435385otp.7
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Mar 2020 02:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sFNlb303vXOf6uZAl3GT6yPk8PlWh22iQZBwvfdvj2E=;
 b=TZXZrMKkk758Lg6vVCtng+mEVA184wncNb5kAMpPaKfHqEc1s1uj6+BnwhazveLDgO
 bre0e/8i580ATLM2J9xKYX2EQrsNmcqGQpciJTgyE6LzmGkipaP1ebJ+AHJQJ9hvS/ye
 hsOCZMrwH/1kwmFuTRtWp2zYMcle0qxqoEhZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sFNlb303vXOf6uZAl3GT6yPk8PlWh22iQZBwvfdvj2E=;
 b=cWrsCiprIaDHwoHydXt3L0sIxu9FQqeVFpUS+HqO4qDZysBsmo5P7Xhn3aHh2NmUK9
 f5xGV1aE+QSky4wFM6Oj30Pghv/L7b0dm+xjSFNNdzoGagBEQwwuUXKITuxIScXRdLrX
 md5NcCBGcGZthtT/C7rhgys8ggugwJm8bHUAYI1pTPhVN/NmjGhvTDJrpIXab+K8+C6s
 dBCJLRx6s5bldFBXpQhzgcG54t68pOrcoCZIZrWcntoWTkJD1kRVvNrg1Ofx1YAgpG8y
 TFnTGfK7C8IJXiKJTEaA3YKQwy8GCS1RA5UCTQJvvEIDCMPRA1EarwzWfVlWqRzBxKft
 +Myw==
X-Gm-Message-State: ANhLgQ3kzsNtXVmiHMJVXv1LTKOOw20UeNtC9W9uBSZo6zMvLnGZYaK5
 mBYNfJFlxwyAQnEgtnW5769mewUKu4h3Fg==
X-Google-Smtp-Source: ADFU+vvEIddahtuOCKN0j/bJYIceeyCAHMS/QdSp0lytIJ73sNCo+1HeaqL7ySazFRbODIVsBzR7VQ==
X-Received: by 2002:a9d:70d5:: with SMTP id w21mr1743596otj.65.1583316493383; 
 Wed, 04 Mar 2020 02:08:13 -0800 (PST)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id q9sm8893888otl.53.2020.03.04.02.08.11
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Mar 2020 02:08:12 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id i14so1446123otp.5
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Mar 2020 02:08:11 -0800 (PST)
X-Received: by 2002:a9d:5cc4:: with SMTP id r4mr1721385oti.33.1583316490692;
 Wed, 04 Mar 2020 02:08:10 -0800 (PST)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
 <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
 <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
 <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
 <20200304064251.zzkhevqgth6uets6@sirius.home.kraxel.org>
In-Reply-To: <20200304064251.zzkhevqgth6uets6@sirius.home.kraxel.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Wed, 4 Mar 2020 19:07:58 +0900
X-Gmail-Original-Message-ID: <CAPBb6MVPjgLkbVjOY6O3srywNm8Zb1pMR2pGM1NinByhgFaZ_A@mail.gmail.com>
Message-ID: <CAPBb6MVPjgLkbVjOY6O3srywNm8Zb1pMR2pGM1NinByhgFaZ_A@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Wed, 04 Mar 2020 10:16:39 +0000
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
 Kiran Pawar <kiran.pawar@opensynergy.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
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

On Wed, Mar 4, 2020 at 3:43 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > With a feature flag both driver and device can choose whenever they want
> > > support v1 or v2 or both.  With a version config field this is more
> > > limited, the device can't decide to support both.  So the bonus points
> > > for a smooth transition go to the feature flags not the version field ;)
> >
> > I agree that feature flags would be preferable in general, but I'm
> > concerned by the fact that there is (IIUC) a limited number of them.
>
> We have 64 total, some reserved, 24 are available to devices right now,
> see https://www.kraxel.org/virtio/virtio-v1.1-cs01-video-v3.html#x1-130002
>
> > Video tends to change significantly over time, and to have optional
> > features that would also be presented as feature flags. After a while
> > we may run out of them, while a new protocol version would allow us to
> > extend the config struct with some new flags. Or am I missing
> > something?
>
> Not everything needs a feature flag.  For example we have
> VIRTIO_VIDEO_CMD_QUERY_CAPABILITY, and we can add new video formats
> without needing a feature flag.  Maybe it is a good idea to explicitly
> say in the specs that this can happen and that the driver should simply
> ignore any unknown format returned by the device.
>
> > I also wonder how "support v1 or v2 or both" would work with feature
> > flags. In order to make it possible to opt out of v1, I guess we would
> > need "v1 supported" flag to begin with?
>
> The driver can ignore any device without v2 feature flag set.
> The device can refuse to accept a driver without v2 support (don't allow
> setting the FEATURES_OK bit).

That should work as long as we want to add features. I had deprecation
of old features in mind, but maybe the more reasonable answer to that
is "always remain backward compatible". :)

As for the 24 feature flags, I guess that should we run out of them we
can always use the last one to signal that more flags can be found at
the end of the device configuration space.
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
