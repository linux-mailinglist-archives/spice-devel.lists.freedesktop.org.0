Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189D61711AE
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 08:48:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE786EC01;
	Thu, 27 Feb 2020 07:48:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CC06EBFB
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 07:24:38 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id e3so2121376lja.10
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Feb 2020 23:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1fYhwtQugourf/YHI26V7fjd8Ko33Z1d0MTgj5fBllA=;
 b=WSbKcFqJ4JsgtMOnaqrCgpReGO+t6fT/urco7XNmD5aegv/hWCBT/JQ0uj9QyoXC9h
 yoJbfsBZasuYfjDQ9poaaVlBtFBLNnd1PlRiS83x9XRHzkH8rfK0PVPxEd6ZWA1f7zlh
 Vzvqz29hSWlCg6SjL81UiPpokRvDbCbkyoFSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1fYhwtQugourf/YHI26V7fjd8Ko33Z1d0MTgj5fBllA=;
 b=Dkf30wqZlt+SxbO1nImUE6AvexUTktcK5QSXFHZU44H8Z7EYkPlmIDHttcv5PDnwK9
 ZuCb7xrYBhSfTQ5NfMpBJkmJxH8K+xIbh7c+MhGi7IfM2qcLPrNghL1DEGb0Nk0X5KD8
 K+t3WJFMzP0Y1A3ym2/f/uVL0VcBvGH7LMeMqguWR3Mm9MwaY6bntF936sk+YeF3T7ss
 XlrFCJSXEjJtqasWcDCN5/7Q7897qxwv3lK4gL7S8FCeFDpJfxW9uhzr4xSzolyNuJVI
 xpg5EwJK8SFiZ56vC5B1pwIyLuz6HAzrRKvroArLFXKFPri33lcpgBGLof1LhRUiu851
 o51Q==
X-Gm-Message-State: ANhLgQ0Lh64h/b4YalMWItEWALpRNCzk1FKU+1doqM1cw8N3oIawoF+4
 H0pZbn49H8arXsI2LIX0F5gaVIGowQQoSyhsPh9UFA==
X-Google-Smtp-Source: ADFU+vtNCr/250cISpJsBUpbs9vkqScUP52zZPdToAzJT1L+kZY3XIt5c86eam0t5V7qTMZ7noC06DquWvXrtlRtrac=
X-Received: by 2002:a2e:8e6e:: with SMTP id t14mr1910977ljk.149.1582788276864; 
 Wed, 26 Feb 2020 23:24:36 -0800 (PST)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-3-keiichiw@chromium.org>
 <20200225100144.c3rmtmq7kqyskkq7@sirius.home.kraxel.org>
In-Reply-To: <20200225100144.c3rmtmq7kqyskkq7@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 27 Feb 2020 16:24:25 +0900
Message-ID: <CAD90VcaFyd2bFJUYzDF7OMsm+sWFFJuAHAqCk9hFEWnR8p+zVg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Thu, 27 Feb 2020 07:48:50 +0000
Subject: Re: [Spice-devel] [PATCH v3 2/2] virtio-video: Define a feature for
 exported objects from different virtio devices
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

Hi,

On Tue, Feb 25, 2020 at 7:01 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > +        /*
> > +         * Followed by either
> > +         * - struct virtio_video_mem_entry entries[]
> > +         *   for VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES
> > +         * - struct virtio_video_object_entry entries[]
> > +         *   for VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT
>
> Wouldn't that be a single virtio_video_object_entry?
> Or could it be one per plane?

It depends on the value of "planes_layout" in virtio_video_resource_create.
I have documented this restriction as follows:

> +If \field{planes_layout} is VIRTIO_VIDEO_PLANES_LAYOUT_SINGLE_BUFFER,
> +the number of \field{virtio_video_object_entry} MUST be one. If it is
> +VIRTIO_VIDEO_PLANES_LAYOUT_PER_PLANE, the number MUST be equal to
> +\field{num_planes}.

Best regards,
Keiichi


>
> cheers,
>   Gerd
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
