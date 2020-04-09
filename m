Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8341A364B
	for <lists+spice-devel@lfdr.de>; Thu,  9 Apr 2020 16:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298AB6EBCA;
	Thu,  9 Apr 2020 14:52:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 693336E0DE
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Apr 2020 10:47:09 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id 142so6399047ljj.7
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Apr 2020 03:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9cRaeh08mhFE2IVS+WsO4x0a5cpWTPgRt9aIdP5PwiQ=;
 b=jFpYGhmgzOldXb8rpUJ/nVO2sXHaWA79GfNvdt8TouA7H3059Acn2M5bjlzHrGMYeu
 WCdKC2GrhFL1UPT/ZIsmobLgnqCWRZqRwBUZdBWsktKp6VKSNTFwSwx1KFhyKEjZwKtw
 Tasdv0PYbmo7ZbhxYCj1cMBcTIm/eVxR+nNhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9cRaeh08mhFE2IVS+WsO4x0a5cpWTPgRt9aIdP5PwiQ=;
 b=WHyQk7PQL+CVnqHIgs6FPK0JIvFUEGqivqzuiEwzW80c07CIPgZLCq8DgbQ8Uzii8c
 zmZuzhNQZz2t8V6Lolx9SukMnGThR4jkw3zvGBqimtiKCsqQj2a/3rFeJvkYZIA2LnIG
 ishcHBiKbh3KlrktVJ5tXO9khwyVWL4P7Zsnxp/bmA24CpvOb01BcOFxCbodXnBMR9Qb
 7hlcIEbfycV7NfKM/XmMJizLSzIVuj+fVjfcVQOR73uGeceXEtRrJOm2xhUI1Ylj9HAo
 S2bqCEHXCdj4rvSm00YduFCTkMzHMl9lijoeOxR650ttWr35NUNwKn9CloYN8WQG+Ah5
 p2kA==
X-Gm-Message-State: AGi0Pub3MXZdexMW5HWrKyl2gIkUPK4H2/Jh996pCB/bDrCJwjriJo/H
 RGbUXJOAC/1v//OJK3mmLq4mw5zCSQCJU5vzXzD2FA==
X-Google-Smtp-Source: APiQypInLkppToS8D1aCf9MmTCvnQdp7Jrrf2sFNxcy0G624vRt+PfF5eMJNF1KZM2/L4mVNdYC05Hw90OYtPGbACOE=
X-Received: by 2002:a2e:b4ca:: with SMTP id r10mr1915591ljm.149.1586429227856; 
 Thu, 09 Apr 2020 03:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <4320831.CvnuH1ECHv@os-lin-dmo>
In-Reply-To: <4320831.CvnuH1ECHv@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 9 Apr 2020 19:46:56 +0900
Message-ID: <CAD90Vca4jqLPdK4my3mCmPM45Lwc5te6PbDhA+H=0X1QyTFWzQ@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 09 Apr 2020 14:52:56 +0000
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
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Tue, Apr 7, 2020 at 11:49 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi,
>
> > +\item[VIRTIO_VIDEO_CMD_STREAM_DESTROY] Destroy a video stream
> > +  (context) within the device.
> > +
> > +\begin{lstlisting}
> > +struct virtio_video_stream_destroy {
> > +        struct virtio_video_cmd_hdr hdr;
> > +};
> > +\end{lstlisting}
>
> Let's add more strict description to stream_destroy, like as follows:
> Device MUST NOT generate any events for the stream in question after receiving
> the command. Before completing the command, Device MUST ensure that all
> asynchronous commands that are related to the stream have been completed and
> all memory objects are unreferenced.

Sounds good. But, the device should probably be able to generate
VIRTIO_VIDEO_EVENT_ERROR for a device-wide error?
Or, should VIRTIO_VIDEO_EVENT_ERROR always be a per-stream error? (I
haven't documented it in v3)

Best regards,
Keiichi

>
> Best regards,
> Dmitry.
>
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
