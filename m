Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB0E44FFFE
	for <lists+spice-devel@lfdr.de>; Mon, 15 Nov 2021 09:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25706E94C;
	Mon, 15 Nov 2021 08:31:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48816E162
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Nov 2021 06:45:03 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id 84so8577603vkc.6
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Nov 2021 22:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m9H+3SNDJR+XZqqu8ZCe/GuzGKqSuyusz+/yend6Is4=;
 b=nQHr1GrZ82k88zxEm97aywPYP/oMimrq1JAipcdFeakpuKcgdREQoAeGLMpnhS4IM+
 AcWpi7IGqCOtDrP5p8mY7nOgU8ORpW+ZiBS6L7JASeCPGcpVJEgJp5iI7c6uYMh63H7Q
 BCPv1P4poOt6+qNx6+WkoOFBlVrOXcXxXjZjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m9H+3SNDJR+XZqqu8ZCe/GuzGKqSuyusz+/yend6Is4=;
 b=fSN3E2gVCptER2c68noFrAdHsih9C0uHlIGDaTKiMqbsqaonRsA0sSRit7QzgbxE8T
 vHA0D3qqOPnHF1+bmdPAm28TApDDHqA3op2zF/y3PpSYRGWxebVV7TcDCIKcULDXg+Jw
 sdcSew+GZ53AhtnOWH0QkT4wK8XudXp8rlKHeeOoGo+RIbdhS5RK4tRVFnCTqicKxyRe
 bJsf79djFX898WB/FuQSIVVYMTTQS5UtpoeVQhs1+Ge7DJwV1swO1DPRLd9EMa86RdAw
 NVOucLEh3ko0WO4YJCz2YsvmGY2YmuCnHOC0GeuTYZ40o6DGaXyYjWdNPT63SOtaUv2c
 s5FQ==
X-Gm-Message-State: AOAM533dtyEqvA1cSu8zGJEjnH447h4tXaghOZFfEvV0k0yO5C2ihKfE
 hOeop4ZD6hTHOO5eJl61yfxRyCd66ZrLnA==
X-Google-Smtp-Source: ABdhPJyuIseggmMUQMpu3R5yuwyqKlA28cUNmKn0lKuCpMIAnRwcV6MtIVfXLZ/xZl1du+pVhXhJCA==
X-Received: by 2002:a1f:a08e:: with SMTP id j136mr56264891vke.14.1636958702564; 
 Sun, 14 Nov 2021 22:45:02 -0800 (PST)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com.
 [209.85.221.170])
 by smtp.gmail.com with ESMTPSA id t189sm8686349vsb.13.2021.11.14.22.45.01
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Nov 2021 22:45:01 -0800 (PST)
Received: by mail-vk1-f170.google.com with SMTP id e64so8562983vke.4
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Nov 2021 22:45:01 -0800 (PST)
X-Received: by 2002:a05:6122:da0:: with SMTP id
 bc32mr55142586vkb.4.1636958700620; 
 Sun, 14 Nov 2021 22:45:00 -0800 (PST)
MIME-Version: 1.0
References: <20210120083143.766189-1-acourbot@chromium.org>
 <874k8k9wsi.fsf@redhat.com>
In-Reply-To: <874k8k9wsi.fsf@redhat.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Mon, 15 Nov 2021 15:44:50 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUD_oYeUt8_bGRwAPCPam40Jtktz2F7+A3SO5PFRdUsiw@mail.gmail.com>
Message-ID: <CAPBb6MUD_oYeUt8_bGRwAPCPam40Jtktz2F7+A3SO5PFRdUsiw@mail.gmail.com>
To: Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 15 Nov 2021 08:31:22 +0000
Subject: Re: [Spice-devel] [virtio-dev] [RFC PATCH v5] virtio-video: Add
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
Cc: virtio-dev@lists.oasis-open.org, alexlau@chromium.org,
 kiran.pawar@opensynergy.com, Matti.Moell@opensynergy.com,
 alex.bennee@linaro.org, dstaessens@chromium.org, tfiga@chromium.org,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, enric.balletbo@collabora.com,
 spice-devel@lists.freedesktop.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org, linux-media@vger.kernel.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Cornelia,

On Wed, Nov 10, 2021 at 6:37 PM Cornelia Huck <cohuck@redhat.com> wrote:
>
> On Wed, Jan 20 2021, Alexandre Courbot <acourbot@chromium.org> wrote:
>
> > From: Keiichi Watanabe <keiichiw@chromium.org>
> >
> > The virtio video encoder and decoder devices are virtual devices that
> > support video encoding and decoding respectively. Although they are
> > different devices, they use the same protocol.
> >
> > Signed-off-by: Dmitry Sepp <dmitry.sepp@opensynergy.com>
> > Signed-off-by: Keiichi Watanabe <keiichiw@chromium.org>
> > Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> > ---
> > Here is the new revision of the virtio-video specification. Compared to
> > v4 some extra simplification work has been performed, and all stream
> > settings are now consolidated under the parameters. Hopefully this can
> > be used as the basis to write a new version of the Linux driver and
> > virtual device, or maybe even to drop that RFC tag! :)
>
> It seems that there has not been any followup on this, has there?
>
> I assume that there is still interest (after all, the ids have already
> been reservered); let me add some quick comments from the spec pov (I
> don't really know anything about how video is supposed to work here.)

Thanks for the comments ; they come at the right time as we are
currently working on what will become the v6 of this draft. The
precision about the use of normative sections in particular is
welcome.

Although other work keeps getting in the way I hope to post v6
sometime this week. We are also thinking of updating our current
implementation of an older protocol version to provide a working
proof-of-concept, although this will likely take some more time to be
done.

Cheers,
Alex.
