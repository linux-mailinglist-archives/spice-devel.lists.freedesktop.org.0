Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A6959DB13
	for <lists+spice-devel@lfdr.de>; Tue, 23 Aug 2022 14:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393F210FADE;
	Tue, 23 Aug 2022 12:02:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9894310FADE
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 12:02:07 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-11cb3c811d9so14811289fac.1
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 05:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=bWm3box5hEVTjpgEnRNicC1Cs8osREBUnVN242phXtE=;
 b=Y+TOj/bB882dQ8rQaubMDe371HAyZRPt+7xa5r6yZ9kEAuVZLQ+tsmXBvrc6wmQ3V/
 TiFmE4jquOL/btfh8WsSYgr2mIXvnkD27ehmTdx05u7nIK6jd4b+wnCuWDc1BHfd+Nlt
 0LheBHXZDIys54bp8nAlFfhuM4TYuKPUO75u3b4juYexvknb+x1f58W8qCsOviGwqAEs
 qP3+bcRxNaPBk5H2DuWBBr5PAyXUuHk8uHh6DOhU3AUcvSwcjB5oQYrk/gb2UVNJbf8T
 TuQUOhAwoYPWb1oJu3YWF3BloC/xMntHxgzNaFhhlp/qnVHrUyXiA8NFyYluD+SOmq+B
 2mrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=bWm3box5hEVTjpgEnRNicC1Cs8osREBUnVN242phXtE=;
 b=UEnBaCFb+X0LfF0fTz/JNuTfDcMh219Ss8J3kWfJqVR9EVPmd1XOC1Ze2OxkV6SCRY
 6gqW6URAwivt7j7Je/B6zODS2WYP0fe/E2JY27nhC1869olCRH7AoeKymwvitcPjV/Bj
 z5inl9kTyNCPEy2xogzTmKvLdQg8GH4a75ZUoXgjQx9QFGUDHH9DkslJwJhGmhzNx7xY
 f99XqEUsWtLXIXIinoKKMoWhXGEOus7SjZB/FjzMNqzrWlVbwjIc5ihZqZrzAE5fCevd
 RyuEWYrpVTltQ20PQBJ/xKtsdZ0gfdKlCXs7JSPToMSiKEUcIJWUgpiyr3OLOCTFjKhD
 diyA==
X-Gm-Message-State: ACgBeo3a7x6dPnashXrWEr0zyj+IanfjkBkxJ4hvHP6ttzOWGQRrj/ic
 ukOurIww6gNCwibF9O6d9pDhVCMJouNagMg08TE=
X-Google-Smtp-Source: AA6agR7yR2q4JqEe3IIZd6fe1TDlJEkbJAvI6XFRvlmgprR2H0KQeacKJZLRqSXvSPPtMpTLsaToEpyMckwfwI2az6o=
X-Received: by 2002:a05:6870:6189:b0:11c:8487:80d5 with SMTP id
 a9-20020a056870618900b0011c848780d5mr1267970oah.179.1661256126646; Tue, 23
 Aug 2022 05:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220823093952.19560-1-hverbeet@codeweavers.com>
In-Reply-To: <20220823093952.19560-1-hverbeet@codeweavers.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 23 Aug 2022 13:01:55 +0100
Message-ID: <CAHt6W4df6uv07j9s+Yp1q8h_g-imiGXdYAbxuaJD1uQKLrzSzA@mail.gmail.com>
To: Henri Verbeet <hverbeet@codeweavers.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH x11spice] Call xf86SetDesiredModes() in
 DUMMYScreenInit().
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 23 ago 2022 alle ore 10:57 Henri Verbeet
<hverbeet@codeweavers.com> ha scritto:
>
> Otherwise, we may end up with no mode (and thus no refresh rate) set if
> nothing else (like e.g. .xinitrc) sets a mode for us.
>
> Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
> ---
>  spice-video-dummy/src/spicedummy_driver.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
> index 8d8ba48..0ed7f8c 100644
> --- a/spice-video-dummy/src/spicedummy_driver.c
> +++ b/spice-video-dummy/src/spicedummy_driver.c
> @@ -632,6 +632,8 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
>
>      if (!xf86CrtcScreenInit(pScreen))
>          return FALSE;
> +    if (!xf86SetDesiredModes(pScrn))
> +        return FALSE;
>
>      xf86DPMSInit(pScreen, xf86DPMSSet, 0);
>
> --
> 2.20.1
>

Hi Henri,
  not much of an expert.
Looking on the Internet this function is also called in EnterVT
callback. Don't we need something similar?

Frediano
