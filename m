Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3F1B737B
	for <lists+spice-devel@lfdr.de>; Fri, 24 Apr 2020 13:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B69E6EAA2;
	Fri, 24 Apr 2020 11:58:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3C46EAA2
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Apr 2020 11:45:51 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id g4so9647095ljl.2
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Apr 2020 04:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=95uqkebeHf7dQxE+4F7EdCqt0giQUolqlX9+pJlKNo8=;
 b=McRxgPsturGvemx6LQUyKlVq97jV1fp4T8rYSt5QIEJwc4+wPCfqoQaumMASYrRivq
 3Bk79kaP6sGMWJEILojUXj1Zexth3wcWyzJf3Mc26C0CLrNF+l8vS2nf2l8iofWTlNwh
 UvLn5Y5m7wlwO78fXNJQws8NCYYXue5vvJGNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=95uqkebeHf7dQxE+4F7EdCqt0giQUolqlX9+pJlKNo8=;
 b=q5+sqTtiIEWf96Gh7HAv2nvbGVxEwgxSSKZpi3tC6nlPT2y44XcwF49UjvbBu9VVKg
 utVpO+PudaWt6E9pTNXWoe8/v9+OgO+DUdvTrK0LuQTdor6LHCOFKO9mxUDmieOhjnbH
 ICsKuiMXs8Ooxt70IxfnmBci2nqEkuFV6NUfmJeV89ufeML4h1BRZfiwT2aV0u0EfMCM
 x5DczvYKUcRnWLJVDqouFygHq8Fti0G7vFUAOXKTWI8H5tHg1gwRc/UatOner6WecATs
 H7C6IVCVYfLEpETR18VLRqjV2fGJpcckDEaH5t35sMKt727LuE51KmCL4C0JkPtLDNZ1
 m90Q==
X-Gm-Message-State: AGi0PuaMe1ks8eXUUFz9/hj69Bk/JRnZS9xhDcruNBmnuGxyU4Toka2I
 8cF1SXqADrrRZh+it/z/ESYIS3iWZGkvPYfRVUIdkA==
X-Google-Smtp-Source: APiQypJjMfpHfD2gZgpMSn7TIRfXNVPKhn5y+ZajpqtefKWXMDIW4Y/VH39q5Hcm+zIcM9NxPW1spC0H7Ay3l4ttlOE=
X-Received: by 2002:a2e:7a0a:: with SMTP id v10mr5765813ljc.86.1587728750324; 
 Fri, 24 Apr 2020 04:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <4320831.CvnuH1ECHv@os-lin-dmo>
 <CAD90Vca4jqLPdK4my3mCmPM45Lwc5te6PbDhA+H=0X1QyTFWzQ@mail.gmail.com>
 <17068786.sWSEgdgrri@os-lin-dmo>
In-Reply-To: <17068786.sWSEgdgrri@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Fri, 24 Apr 2020 20:45:38 +0900
Message-ID: <CAD90Vcbrgf2dK2EYeQDJ=-AFA2NkFnyJhutLX3nfeD7ajNYw=A@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Fri, 24 Apr 2020 11:58:18 +0000
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

Hi Dmitry,

On Thu, Apr 9, 2020 at 10:23 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Keiichi,
>
> On Donnerstag, 9. April 2020 12:46:56 CEST Keiichi Watanabe wrote:
> > Hi,
> >
> > On Tue, Apr 7, 2020 at 11:49 PM Dmitry Sepp <dmitry.sepp@opensynergy.com>
> wrote:
> > > Hi,
> > >
> > > > +\item[VIRTIO_VIDEO_CMD_STREAM_DESTROY] Destroy a video stream
> > > > +  (context) within the device.
> > > > +
> > > > +\begin{lstlisting}
> > > > +struct virtio_video_stream_destroy {
> > > > +        struct virtio_video_cmd_hdr hdr;
> > > > +};
> > > > +\end{lstlisting}
> > >
> > > Let's add more strict description to stream_destroy, like as follows:
> > > Device MUST NOT generate any events for the stream in question after
> > > receiving the command. Before completing the command, Device MUST ensure
> > > that all asynchronous commands that are related to the stream have been
> > > completed and all memory objects are unreferenced.
> >
> > Sounds good. But, the device should probably be able to generate
> > VIRTIO_VIDEO_EVENT_ERROR for a device-wide error?
> > Or, should VIRTIO_VIDEO_EVENT_ERROR always be a per-stream error? (I
> > haven't documented it in v3)
> >
>
> In the current version of the driver  I have we interpret it a stream error. I
> think it makes sense as several stream formats might be backed by different
> hardware devices on the host side. So it would be an overkill to mark the
> whole virtio device as broken on the guest side.

It makes sense. I'll explicitly document that it's a per-stream error.

>
> BTW, I think we should add some hard limit to the max_cap_length and
> max_resp_length in the spec, so buggy device does not make us allocate all
> memory for a response on the host side by providing a garbage value. I think
> 4k might be a good value.

Sounds good. Thank you for the suggestion.

Best regards,
Keiichi


>
> Best regards,
> Dmitry.
>
> > Best regards,
> > Keiichi
> >
> > > Best regards,
> > > Dmitry.
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
