Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D08D138D0B
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB5D6E04B;
	Mon, 13 Jan 2020 08:38:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C276E428
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Jan 2020 14:20:59 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id c26so5722836eds.8
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Jan 2020 06:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0nJwPkHynCXhPFMR6q+iIUUkXlM488ZgEFq/3mlsCBs=;
 b=S6h1KytFT7dqEU8MG5BZAkUKlqrDG73W3dfgQGSjEiqZzv2XX4pHJoMQbDgMK/DNnC
 nBkWkXtuaaXhkOwvI3eH/MLrfOhqebmQfA3Fwe+EJzMREIArGsFcNxfAFgLfSKPjA+RE
 LRc0RP9wcfCLoiUPtATYvMrCw/o9qV1I9a524=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0nJwPkHynCXhPFMR6q+iIUUkXlM488ZgEFq/3mlsCBs=;
 b=ExDCt0n3Fb/YpcU+155XOykmcot2xwHhfPUXDhoRgf+GLsJdHuRwNf/Lg+qxsMF0SO
 wwv9/ZK0331f5ZC1OoKittALabRDN5yxNh7lhw+E6RJkzNsso1UlvnMWTxF65qxBTeEQ
 dO+AC5GKhbIWuRcby5aeHxA+2gFHRgLo9kfuWMWjfwaxy3g9VblXkjVmUnLT+IrBT+LI
 EeYMsPLqsn22uWBuGVwqTsfXcwWP1qOGEXRue0Qezv3l3L62kgvwLJcF+Lj7OWv3Newu
 lOi5JxaW+pAvX59/rMqGNwcoMSwxLpv7WJqUpe6eI+ZxuK5JZjkrbmSXDdBdKfT4PuXM
 FKBg==
X-Gm-Message-State: APjAAAXQ8dGMUFQHxnG3035yj9kihaYS58klj66OItfv2YmSIEwo2v1k
 fSMgeeeoVmLMZnxnt6GN0PLYHG+ZUguhrw==
X-Google-Smtp-Source: APXvYqxPqitehtkcmq9ZF/xjW0zLZxtBgGHlRN3IN+eDNmHXGrXB8s+NH4P/qxaMmIIn2/6qZ2Ww7Q==
X-Received: by 2002:a50:b905:: with SMTP id m5mr11220954ede.154.1578579657981; 
 Thu, 09 Jan 2020 06:20:57 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id ck28sm158111edb.45.2020.01.09.06.20.56
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 06:20:56 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id d73so3118874wmd.1
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Jan 2020 06:20:56 -0800 (PST)
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr5113112wmc.168.1578579655936; 
 Thu, 09 Jan 2020 06:20:55 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
 <3878267.TzG3DlCiay@os-lin-dmo>
 <20191219131234.wm24cazvc7zrnhpn@sirius.home.kraxel.org>
 <CAD90Vcb4Vb49uHGRRg0nJaKo=goH6zOxdQR2d7piLH_byxDYyw@mail.gmail.com>
In-Reply-To: <CAD90Vcb4Vb49uHGRRg0nJaKo=goH6zOxdQR2d7piLH_byxDYyw@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 9 Jan 2020 23:20:40 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DcYWymWyzdiyfy18HkUBsEhALYG+DLwjXGCpRGDaJqyQ@mail.gmail.com>
Message-ID: <CAAFQd5DcYWymWyzdiyfy18HkUBsEhALYG+DLwjXGCpRGDaJqyQ@mail.gmail.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
X-Mailman-Approved-At: Mon, 13 Jan 2020 08:38:48 +0000
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

On Wed, Jan 8, 2020 at 10:52 PM Keiichi Watanabe <keiichiw@chromium.org> wrote:
>
> Hi Gerd,
>
> On Thu, Dec 19, 2019 at 10:12 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> >
> >   Hi,
> >
> > > > However that still doesn't let the driver know which buffers will be
> > > > dequeued when. A simple example of this scenario is when the guest is
> > > > done displaying a frame and requeues the buffer back to the decoder.
> > > > Then the decoder will not choose it for decoding next frames into as
> > > > long as the frame in that buffer is still used as a reference frame,
> > > > even if one sends the drain request.
> > > It might be that I'm getting your point wrong, but do you mean some hardware
> > > can mark a buffer as ready to be displayed yet still using the underlying
> > > memory to decode other frames?
> >
> > Yes, this is how I understand Tomasz Figa.
> >
> > > This means, if you occasionally/intentionally
> > > write to the buffer you mess up the whole decoding pipeline.
> >
> > And to avoid this the buffer handling aspect must be clarified in the
> > specification.  Is the device allowed to continue using the buffer after
> > finishing decoding and completing the queue request?  If so, how do we
> > hand over buffer ownership back to the driver so it can free the pages?
> > drain request?  How do we handle re-using buffers?  Can the driver
> > simply re-queue them and expect the device figures by itself whenever it
> > can use the buffer or whenever it is still needed as reference frame?
>
> The device shouldn't be able to access buffers after it completes a
> queue request.
> The device can touch buffer contents from when a queue request is sent
> until the device responds it.
> In contrast, the driver must not modify buffer contents in that period.
>
> Regarding re-using, the driver can simply re-queue buffers returned by
> the device. If the device needs a buffer as reference frame, it must
> not return the buffer.

I think that might not be what we expect. We want the decoder to
return a decoded frame as soon as possible, but that decoded frame may
be also needed for decoding next frames. In V4L2 stateful decoder, the
API is defined that the client must not modify the decoded
framebuffer, otherwise decoding next frames may not be correct. We may
need something similar, with an explicit operation that makes the
buffers not accessible to the host anymore. I think the queue flush
operation could work as such.

> I'll describe this rule in the next version of the patch.
>
> Best regards,
> Keiichi
>
> >
> > cheers,
> >   Gerd
> >
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
