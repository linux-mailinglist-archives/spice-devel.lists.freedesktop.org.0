Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E4F138CFD
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4369189F63;
	Mon, 13 Jan 2020 08:38:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67996E2D7
 for <spice-devel@lists.freedesktop.org>; Wed,  8 Jan 2020 13:52:28 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id 203so2473338lfa.12
 for <spice-devel@lists.freedesktop.org>; Wed, 08 Jan 2020 05:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gREgVfNHkrnImh18R6g4ghj10okoL/GHfD2UjRLPdA0=;
 b=A11jpJ+00gSOHB4pIP5SpNG4HWfLUBIhw2k0vgU4zLFNCAj1WTdiYRswhhwTccNk3i
 WZutgP0MR+iN7hzA2QZYi0GcFgtEGZCGiHR2GsPsRLEyOdY6psdkhHmrNiDmJie7/T1Y
 wuZb0IILLOH6DcaDOSCSRhg3W1DBx1ofXWLlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gREgVfNHkrnImh18R6g4ghj10okoL/GHfD2UjRLPdA0=;
 b=Kot4sR3R9q9kW9s8iX92QRi5Ojajl/7EoJLTZm+T8n2m8+L2DOLQJFU70qFW5Z3mrn
 EKUb5riYHne90h4XiZamj7DPUwSOAO08lg7huKM0Wr/uqqNMqvNdayvTE1mSvH6xK1B0
 1AJjUkY4Tq/WX5QqIaQTSMLbzaLoPn9ckYlgZGoVGJZ8Ll7PeLbbH57unBcXLWXRIpki
 KKkNbvUllhVcHBMg4GS1d8Rckfw6EVUivTaP6HbC8RnOPb+eRJV2z6xF40ZMlg9GuMX6
 sCUGK0Bx8gDyYZAZJPpIcMezKU5fqKTQhFPOJERqKvFtjpLAC74NQ6y8vhubpemr8LzG
 hj/Q==
X-Gm-Message-State: APjAAAWhImIALImDojQUjcnkNVgbYtYs/zDJ+GFHdGj3RcwzLK06hPZC
 er4prWphg0pjgxbECvEq++nHyGa4aLqotcnp5OV/gQ==
X-Google-Smtp-Source: APXvYqxT0+1T5zXeB+Bka51eCtxJvOSOH6wawbBWn4yF/znOVkEXzEw9qpv/KD/+IXn5iC3Lw09Y4IPbxGkInxQyYeE=
X-Received: by 2002:a19:a408:: with SMTP id q8mr2843544lfc.174.1578491547417; 
 Wed, 08 Jan 2020 05:52:27 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
 <3878267.TzG3DlCiay@os-lin-dmo>
 <20191219131234.wm24cazvc7zrnhpn@sirius.home.kraxel.org>
In-Reply-To: <20191219131234.wm24cazvc7zrnhpn@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Wed, 8 Jan 2020 22:52:16 +0900
Message-ID: <CAD90Vcb4Vb49uHGRRg0nJaKo=goH6zOxdQR2d7piLH_byxDYyw@mail.gmail.com>
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

On Thu, Dec 19, 2019 at 10:12 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > However that still doesn't let the driver know which buffers will be
> > > dequeued when. A simple example of this scenario is when the guest is
> > > done displaying a frame and requeues the buffer back to the decoder.
> > > Then the decoder will not choose it for decoding next frames into as
> > > long as the frame in that buffer is still used as a reference frame,
> > > even if one sends the drain request.
> > It might be that I'm getting your point wrong, but do you mean some hardware
> > can mark a buffer as ready to be displayed yet still using the underlying
> > memory to decode other frames?
>
> Yes, this is how I understand Tomasz Figa.
>
> > This means, if you occasionally/intentionally
> > write to the buffer you mess up the whole decoding pipeline.
>
> And to avoid this the buffer handling aspect must be clarified in the
> specification.  Is the device allowed to continue using the buffer after
> finishing decoding and completing the queue request?  If so, how do we
> hand over buffer ownership back to the driver so it can free the pages?
> drain request?  How do we handle re-using buffers?  Can the driver
> simply re-queue them and expect the device figures by itself whenever it
> can use the buffer or whenever it is still needed as reference frame?

The device shouldn't be able to access buffers after it completes a
queue request.
The device can touch buffer contents from when a queue request is sent
until the device responds it.
In contrast, the driver must not modify buffer contents in that period.

Regarding re-using, the driver can simply re-queue buffers returned by
the device. If the device needs a buffer as reference frame, it must
not return the buffer.
I'll describe this rule in the next version of the patch.

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
