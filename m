Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64AB128B96
	for <lists+spice-devel@lfdr.de>; Sat, 21 Dec 2019 22:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57D96E4B6;
	Sat, 21 Dec 2019 21:02:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0B36E426
 for <spice-devel@lists.freedesktop.org>; Sat, 21 Dec 2019 06:46:49 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id c26so10642236eds.8
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F68oGD/1SJ7SshN3GZaSjxmczsdUavxsZol8X28uIyE=;
 b=P8SMOXEIcUFxwGpwlOTMUv+4/qMmRz1JSK6Ez8a6nErhGrgf9xjca1S2ra0j/J5GJo
 LdqciioD8JtJdPfr1Ck3F9rnJf3h7FMjvbLHRymJxUj+4BSxBpi38qmOPKsJvMh9ruY3
 rDDaH+9m6+KmRVAkgtmUuKjpJayROo7NuUfLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F68oGD/1SJ7SshN3GZaSjxmczsdUavxsZol8X28uIyE=;
 b=tGGsjIn10vFlCCDCav+vfC2kxXy2QZPbCu2k8DjLEDk2hAeoTMa237Vz6VLI1/deLs
 73/kWaUV30naBs7Uhwff/mg+Yedb0tezhUxlDKm6pqz7uzkjcsOTpXcFet2PcbbCA6kY
 t1P63rcElTiy87+ywuJ45xK1+Dnx7SU9Oz7t9L9SA+rEX7Xv2zk6PVT/SE9cX2NO2bZv
 4X5Z6CHVHiGevKBEYDna01RCxzOPbXZZlnzTO4S4EUqMYJrqr5GVDBTaWtnsirLxZ+Mp
 NBfmxFV9+cf5MCRNUbRaaN2jvLcuHaqXetMGGqJXPmmbTdzVqXL+/y5Yp42m4yw25tLb
 BN8w==
X-Gm-Message-State: APjAAAXNmANrO2Z/WURlbawU1v5uQXsDLWLk/hP4jyooq/UuBk0iOTbu
 zEdXbb2cyRZnT51daHDuTf0AGENHDwU7zQ==
X-Google-Smtp-Source: APXvYqyg54Ga9dDB7ba7ONYeLiPYGjBSK13LXjZq4RhfUP4n5I4wCZ8i08CkiPAS/gPwhfUff4OSHw==
X-Received: by 2002:aa7:c6c5:: with SMTP id b5mr20365066eds.281.1576910808004; 
 Fri, 20 Dec 2019 22:46:48 -0800 (PST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id 11sm1385924ejw.34.2019.12.20.22.46.46
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 22:46:47 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id b6so11482810wrq.0
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 22:46:46 -0800 (PST)
X-Received: by 2002:adf:f586:: with SMTP id f6mr18456128wro.46.1576910806048; 
 Fri, 20 Dec 2019 22:46:46 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <2932378.s8JBUXtX1Y@os-lin-dmo>
 <CAD90VcZU_jkY=wZ21R_abTnO8BrL_Sf4AO4Rfz3NP5xZMwmaHA@mail.gmail.com>
 <2584386.DF4NACHtsB@os-lin-dmo>
In-Reply-To: <2584386.DF4NACHtsB@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 21 Dec 2019 15:46:34 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DUY6jYu-kuOP9pc72dddg80gZzMktxTGdkxE_PDw1HRg@mail.gmail.com>
Message-ID: <CAAFQd5DUY6jYu-kuOP9pc72dddg80gZzMktxTGdkxE_PDw1HRg@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Sat, 21 Dec 2019 21:02:46 +0000
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

On Sat, Dec 21, 2019 at 12:46 AM Dmitry Sepp
<dmitry.sepp@opensynergy.com> wrote:
> On Freitag, 20. Dezember 2019 16:26:50 CET Keiichi Watanabe wrote:
> > On Thu, Dec 19, 2019 at 10:28 PM Dmitry Sepp
> > <dmitry.sepp@opensynergy.com> wrote:
> > > On Mittwoch, 18. Dezember 2019 14:02:14 CET Keiichi Watanabe wrote:
[snip]
> > > > +enum virtio_video_format {
> > > > + VIRTIO_VIDEO_FORMAT_UNDEFINED = 0,
> > > > + /* Raw formats */
> > > > + VIRTIO_VIDEO_FORMAT_NV12 = 1,
> > > > + VIRTIO_VIDEO_FORMAT_YUV420,
> > > > + VIRTIO_VIDEO_FORMAT_YVU420,
> > >
> > > Let's add some variants of RGB, like RGBA, ARGB. We need it for the
> > > encoder in particular .
> >
> > Sounds good.
> > BTW, which "ARGB8888" or "A8R8G8B8" is preferred? While the first one
> > comes from DRM's FourCC, the second one comes from virtio_gpu_formats.
> > I personally prefer the first one, then we can have a naming convention
> > like: VIRTIO_VIDEO_FORMAT_<name from drm_fourcc.h>
> >
>
> I'd go with ARGB8888 and BGRA8888 (might be with X variants).

Just to make sure we're talking about the same formats. DRM naming
convention is based on the little endian convention, which for 32-bit
formats means that you interpret the whole pixel as a packed 32-bit
word on a little endian system. For ARGB8888 that would mean (bit 31)
ARGB (bit 0) in the 32-bit word and (byte 0) B, G, R, A (byte 3) when
looking at separate bytes in memory. Does that correspond to your
expected format?

We also have to be specific about the A and X formats, as the A format
should be supported only if the hardware (host) doesn't ignore the
alpha channel. I haven't seen any hardware capable of encoding alpha
channel yet, but apparently for WebM the standard is to just encode
the alpha channel into another stream as Y, together with dummy U and
V values. [1] That sounds like something that would be handled by two
separate encoding streams and not just one that accepts RGBA on the
input.

[1] http://wiki.webmproject.org/alpha-channel

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
