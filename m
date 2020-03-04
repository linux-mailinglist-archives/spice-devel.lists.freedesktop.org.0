Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBC0178CF6
	for <lists+spice-devel@lfdr.de>; Wed,  4 Mar 2020 09:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E4389229;
	Wed,  4 Mar 2020 08:58:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D39BF893BC
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Mar 2020 04:31:34 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id v19so738677ote.8
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Mar 2020 20:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i1xlbs3ZbDJUunrG0mUnxMqSYzI4Jrrt9ZvoGKTfYcA=;
 b=mKz8qgktXJjlsD4v4w7CRBUnqXzujHbbWhudDh37GcM/8kPum3j/j3WHX/fK9GmDUE
 TF0lKoAK2oJTLDxrxHbEOzW9mLfLJedSz5hT2EnY1334JPNFvxK2E27Sza3GmNpG4MHR
 YEtktMPfSPIc0bZSaYESIvhgzq3ZP4tjaaBPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i1xlbs3ZbDJUunrG0mUnxMqSYzI4Jrrt9ZvoGKTfYcA=;
 b=CYAiYuUyZDS4EU3xWCbmzLgMjERuZRR9ow3YnlLTEbOGrv6v0zjwY6oRlQ3SGuJrEQ
 KtEtfi5iDMmDkz9Tr22zh2whDToVuUZro95C96p96H2JWnecm6K+sl6J2Efopp+m6Pcs
 x1rQl0dQ1lM2ndfQ2nvskpmzhfmZXCHNYfQM0BVz8YMYnuasRmtSak0udtV1DdyE/fBu
 udPcZJ1lxvat6RzBs4nkVoGxsXMa510MLOxA4WTdb1WCaEmQaFEqWB+1wbaPy0dMnisv
 C9B0QtC3nAEJMUaD6wVdrG7xAHpUnqicgqhaZYnSTumvlxgM8Y1fgBZrqAFgkfIk9nnn
 XppA==
X-Gm-Message-State: ANhLgQ369xoxhZe885Mx4qC394BYXSzAcc+fqUo/L6+PXUxNTKA67DOl
 vfnP9ZR8VPjC5MSNi8okwCS9M244Ny4=
X-Google-Smtp-Source: ADFU+vsmwkbu4nkRbVktBqGa3XSrvy1RAgFGej4LFWInl5cfhukiRypFHMobX/YbFUSclkRo5cq23g==
X-Received: by 2002:a9d:64cd:: with SMTP id n13mr973099otl.274.1583296293008; 
 Tue, 03 Mar 2020 20:31:33 -0800 (PST)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id y13sm8665990otk.40.2020.03.03.20.31.31
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 20:31:31 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id a20so772001otl.0
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Mar 2020 20:31:31 -0800 (PST)
X-Received: by 2002:a9d:75ca:: with SMTP id c10mr897245otl.97.1583296290586;
 Tue, 03 Mar 2020 20:31:30 -0800 (PST)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
 <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
 <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
In-Reply-To: <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Wed, 4 Mar 2020 13:31:19 +0900
X-Gmail-Original-Message-ID: <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
Message-ID: <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Wed, 04 Mar 2020 08:58:08 +0000
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

On Thu, Feb 27, 2020 at 6:29 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > Dmitry's virtio-video driver
> > https://patchwork.linuxtv.org/patch/61717/.
> > Once it becomes fully functional, I'll post a list of possible
> > improvements of protocol.
>
> Cool.  Actually implementing things can find design problems
> in the protocol you didn't notice earlier.
>
> > > > +\begin{description}
> > > > +\item[\field{version}] is the protocol version that the device talks.
> > > > +  The device MUST set this to 0.
> > >
> > > What is the intended use case for this?
> > >
> > > Given that virtio has feature flags to negotiate support for optional
> > > features and protocol extensions between driver and device, why do you
> > > think this is needed?
> >
> > While feature flags work well when we "extend" the protocol with an
> > optional feature, they don't when we want to "drop" or "modify"
> > features.
> > For example, I guess it'd be useful when we want:
> > * to abandon a non-optional command,
> > * to change a non-optional struct's layout,or
> > * to change the order of commands in which the device expects to be sent.
> >
> > Though it might be possible to handle these changes by feature flags,
> > I suspect the version number allow us to transition protocols more
> > smoothly.
>
> Feature flags can be mandatory, both device and driver can fail
> initialization when a specific feature is not supported by the other
> end.  So in case we did screw up things so badly that we have to
> effectively start over (which I hope wouldn't be the case) we can add a
> VERSION_2 feature flag for a new set of commands with new structs and
> new semantics.
>
> With a feature flag both driver and device can choose whenever they want
> support v1 or v2 or both.  With a version config field this is more
> limited, the device can't decide to support both.  So the bonus points
> for a smooth transition go to the feature flags not the version field ;)

I agree that feature flags would be preferable in general, but I'm
concerned by the fact that there is (IIUC) a limited number of them.
Video tends to change significantly over time, and to have optional
features that would also be presented as feature flags. After a while
we may run out of them, while a new protocol version would allow us to
extend the config struct with some new flags. Or am I missing
something?

I also wonder how "support v1 or v2 or both" would work with feature
flags. In order to make it possible to opt out of v1, I guess we would
need "v1 supported" flag to begin with?

Sorry for the newbie question about feature flags, I'm still in the
process of wrapping my head around virtio. :)
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
