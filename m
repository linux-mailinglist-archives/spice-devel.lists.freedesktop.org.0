Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2631886F8
	for <lists+spice-devel@lfdr.de>; Tue, 17 Mar 2020 15:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C9089E15;
	Tue, 17 Mar 2020 14:11:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88376E4E3
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Mar 2020 06:53:39 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id s13so21508205ljm.1
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Mar 2020 23:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UHxmhFFcYZF+UZNMOhwIVQ7Tv4SsSyq8ObQnKpBcd84=;
 b=VrwIajnR7To9zpuokuo6NAn5K/HgtoQnkaEIZSeGeLiXCqRQZfED8YhCn8t2XRtSiz
 GvZPCURNZLozZAT2AO+cBFsm0wm50/qI1E0TBQLc9Fq6waVz6i9RGYWin0+qSD6b6BiV
 N6hWsntHL4zfn53/ZutTfoL0CjES4BsXmyLTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UHxmhFFcYZF+UZNMOhwIVQ7Tv4SsSyq8ObQnKpBcd84=;
 b=GpEvZue8eMop9oJ3RViXgT4bBMtcuxVAUDnvMSocJNcKFMC3BcrpLEvlDIUwaa0N5k
 frSFDzVgyxG/9edQriy7naWV7llt3MeJYYj1eYhv2sp0qXVpLdwQX6MS0/t4W9cMEGRQ
 WIQOgZSfFIyomFUCqujo4rywsZc/UGe8ScPewBXpJGIXA2p2UM51xST0uvgI813+MPtY
 jqPvdUGIyAhAJU/tryVQUF5lIr9Rmo9NZf7myob70IFnIDYxUt1EdtWdCsO9gmo3Agyl
 ts1vfa1Nzasvf8mZbmJMuRb3J3phiCzylQvub8GlBe9NDCJ271SuJ9/Fy+zk1jRjNjnC
 zOMA==
X-Gm-Message-State: ANhLgQ1HTZ0DofY6zWm2KVI2wLE229ienh9476bX/+FeHqVrFHW57A9b
 vvny8YxxpCFAtRwIMs/COjblB1i4MIJyDdbsL5mdcw==
X-Google-Smtp-Source: ADFU+vv11IBT5dSrtWgJAWXTEXCSdtYZuFP405C8QmgQA2ga3ts/2rfu4J5Cm+BzNAmzYceiAw20TPs1zAxychK5V5Y=
X-Received: by 2002:a2e:a551:: with SMTP id e17mr1920421ljn.86.1584428018289; 
 Mon, 16 Mar 2020 23:53:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <20200218202753.652093-2-dmitry.sepp@opensynergy.com>
 <CAD90VcZ5rYHw9qqS7pvaX0TP240qcmoA5MKxKuVVn-eVVrORSA@mail.gmail.com>
In-Reply-To: <CAD90VcZ5rYHw9qqS7pvaX0TP240qcmoA5MKxKuVVn-eVVrORSA@mail.gmail.com>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 17 Mar 2020 15:53:26 +0900
Message-ID: <CAD90VcbON1XTuBpuqxV6E+reY8dYq08N8G-jrAO=z-6ytcvtHQ@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Tue, 17 Mar 2020 14:11:42 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
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
 Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
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

> > diff --git a/include/uapi/linux/virtio_video.h b/include/uapi/linux/virtio_video.h
> > new file mode 100644
> > index 000000000000..0dd98a2237c6
> > --- /dev/null
> > +++ b/include/uapi/linux/virtio_video.h
> > @@ -0,0 +1,469 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
>
> I suspect it's not expected to use GPL licence without exceptions in a
> UAPI header file:
> https://www.kernel.org/doc/html/v5.4/process/license-rules.html
>
> If GPL is used here, only GPL user programs can include this header
> file, can't they?
> So, can we use BSD licence like other virtio headers (e.g. virtio_gpu.h)?
>
> Note that I found this program when running
> /scripts/headers_install.sh. Though it suggested to add "WITH
> Linux-syscall-note", it shouldn't be the case because this header
> doesn't provide syscall interface.
>
> Best regards,
> Keiichi
>
> > +/*
> > + * Virtio Video Device
> > + *
> > + * This header is BSD licensed so anyone can use the definitions
> > + * to implement compatible drivers/servers:
> > + *

Ah, this line says this header is BSD licensed.
So, the SPDX-License-Identifier above should be simply wrong.

Best regards,
Keiichi
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
