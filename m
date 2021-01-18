Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF5A2F9F6C
	for <lists+spice-devel@lfdr.de>; Mon, 18 Jan 2021 13:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0496E1F1;
	Mon, 18 Jan 2021 12:22:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501B06E1D6
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jan 2021 11:22:27 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id m10so17826976lji.1
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jan 2021 03:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BiOeQObj1lWg++oDC0igsl1yme7R9sAH9n3rrQCoHD8=;
 b=DpMVg2MbierGpSbhzEntYbaeNip/kLGJBsOF3ZssNvBJd7P3b8GKmSoqDjUhwfwKAM
 YRfi5k8eqKcHArItKgeOnCyRBgPmynrrPstxpeF7QEvzTqmtWYJtFmGHHiB9Y8KT5woH
 PJfCV5EBX4mdQfTKQ5zIfDcH+Lw7d0uRlTGI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BiOeQObj1lWg++oDC0igsl1yme7R9sAH9n3rrQCoHD8=;
 b=Hd9vCjEbRdPaI0GT5OKXFMlXG2DbK+hDVo24emZ+Y7v8vYTGZhQlcxVF5FyXIaVJ4D
 bydo6eXcSaHk7nEWLCxq13HApYaLDSOE4B8ZrexJi9fb8sEuHPQ1zmEfTndV+RfGJPfN
 6gQvOrTYRu3rWnHsRYYxh8Sw1lvq4UOf8+Qq9XoX50MkjFAy4QxIMOR6NenRd61HX15K
 eeOaDUlB//8/yn8tbnn+pQictek/T39PGWdvdURtHLu3YR7UFqpsLD5PbFVzyy5SBU3m
 L8hD+eyVjqwsbaR/0GWtklspcj2rz187Dat7WxfpX6ULWYl50RjoCQmU9MEcH51H1kXc
 KvKw==
X-Gm-Message-State: AOAM532KfB4/mxEKgvq6JUnmt2teBWw+AgB/8lM/zQpkQlSQT2QEswL7
 U6tS3m2psbSvm4dv1aiY3By2wUIEZYOAxyf/
X-Google-Smtp-Source: ABdhPJwEvESp9COwUm/d9STHtlKuabTzQLykwx2/yKR+0YisoLsdHYPI5BbnvuRmMnAixg0LTGVKhA==
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr10972861ljj.220.1610968945333; 
 Mon, 18 Jan 2021 03:22:25 -0800 (PST)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id 6sm1586157ljq.69.2021.01.18.03.22.25
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jan 2021 03:22:25 -0800 (PST)
Received: by mail-lf1-f45.google.com with SMTP id m25so23496605lfc.11
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jan 2021 03:22:25 -0800 (PST)
X-Received: by 2002:a2e:8e63:: with SMTP id t3mr10249115ljk.88.1610968568684; 
 Mon, 18 Jan 2021 03:16:08 -0800 (PST)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <87czy7l6uu.fsf@linaro.org>
 <CAD90Vca=VPVM7+Cj-2cK3SWaSR_Ciajt7oOr0OyB-34bL15ewg@mail.gmail.com>
 <f3b177a7-1792-25ff-5bef-9e6b7fb4bde3@opensynergy.com>
In-Reply-To: <f3b177a7-1792-25ff-5bef-9e6b7fb4bde3@opensynergy.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Mon, 18 Jan 2021 20:15:57 +0900
X-Gmail-Original-Message-ID: <CAPBb6MV=r3yin5cH+VW7s1njhWZFF-Xx6STrtUfOPKeDmJjURg@mail.gmail.com>
Message-ID: <CAPBb6MV=r3yin5cH+VW7s1njhWZFF-Xx6STrtUfOPKeDmJjURg@mail.gmail.com>
To: Matti Moell <Matti.Moell@opensynergy.com>
X-Mailman-Approved-At: Mon, 18 Jan 2021 12:22:33 +0000
Subject: Re: [Spice-devel] [virtio-dev] [PATCH RFC v4 0/1] Virtio Video
 Device Specification
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ruchika Gupta <ruchika.gupta@linaro.org>, Pawel Osciak <posciak@chromium.org>,
 virtio-dev@lists.oasis-open.org, David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>, dmitry.sepp@outlook.com,
 Tomasz Figa <tfiga@chromium.org>, Mike Holmes <mike.holmes@linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Frediano Ziglio <fziglio@redhat.com>, Enrico Granata <egranata@google.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all,

I think the v5 should be ready for public review. It has considerably
changed compared to v3, however the changes are mostly simplifications
and addressing issues we experienced with v3 on Chrome OS, so
hopefully it's for the better. Let me do a final check before sending
it to the virtio list.

Cheers,
Alex.

On Sat, Jan 16, 2021 at 1:55 AM Matti Moell <Matti.Moell@opensynergy.com> wrote:
>
>
> On 15.01.21 15:25, Keiichi Watanabe wrote:
> > I think the driver implementation is necessary for the spec to be
> > merged, but it's not yet clear when we can spend time implementing
> > drivers. It's likely to be after April or so.
> >
> > IIRC, OpenSynergy folks, who implemented the v3 driver, also had some
> > plan to implement the driver with the v5 spec.
> > Matti, do you have any update on it? I'd really appreciate it if we
> > could keep working for upstream together.
>
> Hey Keiichi and Alex!
>
> Yeah, I think for us it'll also be in the March/April timeline before we
> can start looking at it again, there's quite a few loose ends when going
> from v3 to v5 so it'll probably take a while to get it in shape and make
> sure that all the comments from the drivers v2 are properly addressed.
>
> I'm not 100% sure how to proceed but perhaps it makes sense to jointly
> iterate on the driver sources together once the v5 is mostly agreed. Any
> suggestions welcome.
>
> Cheers,
>
>                 Matti
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
