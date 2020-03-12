Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EECCF182D21
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 11:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6792E6E0E0;
	Thu, 12 Mar 2020 10:11:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D8B6E0E0
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 09:49:24 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id j17so4229773lfe.7
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 02:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ihDA5z/RB6EziP2l1mK0CTlDF0iu+inIbruq+zZtDCQ=;
 b=Z7CsPvtViFrzA/69kofxcBVaBnbTWNmbuL51JtAh+O33iyTY0Eo6PsMCIvNlF3nM/P
 cUVuzZ3giLxRuysQCRLgfhHVKSp+YGvC2d2nKIuCudR/LIXHV1/y9TWkl4hImqt0yxzk
 zTghrM9Lnt2M1F7TnIBpQWnz4ulugPqOEjnck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ihDA5z/RB6EziP2l1mK0CTlDF0iu+inIbruq+zZtDCQ=;
 b=kg/1qepYEVXewSHOqrVV1+LzNI4mhUma7//T21YHLf7PZc+AszhiTpPerX8nsKVI2T
 bbCG2e5yEIqp9uyp/hHuVG9/bYQizM8fY7mRt/RPQkWTlpzr1SpsjLB2iHTc2MLwps0d
 TfZhv3jSrjLNuDMTdLyv/zUdWxAfpfBsA49B0A/IqT3P6KM/V1QeOKVtFZnbFLOyKLh5
 XZ/osfwf7H4Gtu7lo7HdchUYI47Za47b5kkcre6SKragXOVPKWL4PqBFrlR13XeYp7wM
 7JSrGGwBnRq71tPh4xvRDJAT2gBUV9TttXHQ2kGDpdqZPGZyDTZHOmHaqLh/XExWG4FT
 d35w==
X-Gm-Message-State: ANhLgQ1rfx6KXVwAIYftQr4Li2rEce0c2/kwtuhHluSOefD+6htZSTM4
 wdIVzW5aXnO1rqy/thTnlXCFsYOR7gtLTPAESSPMKg==
X-Google-Smtp-Source: ADFU+vs/N/pAegpoMyJQhDsktbDiRdVGouE4qmZM6UzCstoU9btKXYbgO9oLeOdJ4ZD2a+8VDCJ7cl1oH4OYRe+kRzg=
X-Received: by 2002:a19:f00d:: with SMTP id p13mr4700463lfc.147.1584006563275; 
 Thu, 12 Mar 2020 02:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <c4d7622b-e396-3920-0e14-5a73a0225c0f@xs4all.nl>
In-Reply-To: <c4d7622b-e396-3920-0e14-5a73a0225c0f@xs4all.nl>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 12 Mar 2020 18:49:11 +0900
Message-ID: <CAD90VcZUqU0nVQEn1vNOQkcicR5GA+HzBGd+M7O_b69f2BCUxA@mail.gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
X-Mailman-Approved-At: Thu, 12 Mar 2020 10:11:32 +0000
Subject: Re: [Spice-devel] [PATCH v2 0/1] Virtio Video V4L2 driver
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
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
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

Hi Hans,

On Wed, Mar 11, 2020 at 10:26 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> Hi Dmitry,
>
> On 2/18/20 9:27 PM, Dmitry Sepp wrote:
> > Hi all,
> >
> > This is a v4l2 virtio video driver for the virtio-video device
> > specification v3 [1].
> >
> > The first version of the driver was introduced here [2].
> >
> > Changes v1 -> v2:
> > * support the v3 spec (mostly)
> > * add a module parameter to ask for pages from ZONE_DMA
> >
> > What is not implemented:
> > * Plane layout flags should be used to propagate number of planes to
> >   user-space
> > * There is no real use of stream creation with bitstream format in the
> >   parameter list. The driver just uses the first bitstream format from
> >   the list.
> > * Setting bitrate is done in a different way compared to the spec. This
> >   is because it has been already agreed on that the way the spec
> >   currently describes it requires changes.
> >
> > Potential improvements:
> > * Do not send stream_create from open. Use corresponding state machine
> >   condition to do this.
> > * Do not send stream_destroy from close. Do it in reqbufs(0).
> > * Cache format and control settings. Reduce calls to the device.
>
> Some general notes:
>
> Before this can be merged it needs to pass v4l2-compliance.
>
> I also strongly recommend adding support for V4L2_PIX_FMT_FWHT to
> allow testing with the vicodec emulation driver. This will also
> allow testing all sorts of corner cases without requiring special
> hardware.

I agree that it's great if we could test virtio-video with vicodec,
but I wonder if supporting FWHT is actually needed for the initial
patch.
Though it wouldn't be difficult to support FWHT in the driver, we also
needs to support it in the host's hypervisor to test it. It's not easy
for our hypervisor to support FWHT, as it doesn't talk to v4l2 driver
directly.
Without the host-side implementation, it makes no sense to support it.
Also, if we support FWHT, we should have the format in a list of
supported formats in the virtio specification. However, I'm not sure
if FWHT is a general codec enough to be added in the spec, which
shouldn't be specific to Linux.

Best regards,
Keiichi

>
> Regards,
>
>         Hans
>
> >
> > Best regards,
> > Dmitry.
> >
> > [1] https://markmail.org/message/dmw3pr4fuajvarth
> > [2] https://markmail.org/message/wnnv6r6myvgb5at6
> >
> >
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
