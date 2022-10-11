Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD26A5FB10E
	for <lists+spice-devel@lfdr.de>; Tue, 11 Oct 2022 13:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5CA10E090;
	Tue, 11 Oct 2022 11:09:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E8210E090
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Oct 2022 11:09:44 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id g130so15441140oia.13
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Oct 2022 04:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yzliSAliMmyn1sOUCReGBnsz0ZHTlIuO5dbpLvLUOOE=;
 b=XAvZZgeVPKirr7ZYsictitXl1Qf4QDbg7hH6sdMzWh2qhbLB93DPFWOO3hHlUeDUSf
 1N1YKWeVGmOFx8162pynzRX223HdS5drsPdYfqVb84tHTSGQZ4fYTjDHGzDjEer5m6fr
 jHNFVJ5kl8LM2HM251uXN2yhsmVfkROQPukDtMOzZWZpTUzDCgnxg+o2Zk+8HF6jH8/B
 w7yDEi36FakMpCDmXy9Bs3TMLzl05e9TjPtvg+wJk/zc2TeFqDH616Sz9IR5Wb6WxmGM
 WK9VRj2vb0hAW0UU0KPQZiubVpuNGR/NfD+/Bz61XHC+8obQbxhr71UYABvd0Go8j13n
 zQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yzliSAliMmyn1sOUCReGBnsz0ZHTlIuO5dbpLvLUOOE=;
 b=0HiWRzKzHJj6kIYFgIcXF/keYCGe8KgFFVPtBMyE0vvm8QGsJa6o4qabXc59nNgSb+
 XpnFE91bQQcoyUsAlfco1aTvOwmN7niHwLvHE3HjAD0XNV1fQIsftyd8wCGHwDvNmvB1
 VbpAcZBc0AHS3G7fsTAQ10t2qObao19Sz91WxwDpUDusgSJp2ckPr46XZ4x9RHcL0+ga
 ZYMHyyEov12yKYhvGA1cqdFQvey/BZit85uyp4cB6B0KE0iDcbG8llaiiZq95rL3DUJh
 zwr1KU/7zmY8LBnegKzWFBzdi4NYxZ661Wa7EqRxa9hjqdpLey4JrYhodFEux1qHBEGT
 IVNw==
X-Gm-Message-State: ACrzQf0BmLWIwd3ftgujnFdk+Lym/TANbBrW8yUZ5UbqY2PSSELm9h3h
 lHS9f0l4CM+SCc72Hg9Pr7jATAqRH8IloquQ9NmBC/NM
X-Google-Smtp-Source: AMsMyM44lw5JnbQjaad7znEzoWnifZ7hmUScTSFMFSf4aLGkwuauxmbZD/Fq1aRapykmSb4XG6belTv4M16yBbM6TmU=
X-Received: by 2002:a05:6808:1507:b0:350:7653:2351 with SMTP id
 u7-20020a056808150700b0035076532351mr11619298oiw.179.1665486583889; Tue, 11
 Oct 2022 04:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <20221011101837.2580079-1-festevam@gmail.com>
In-Reply-To: <20221011101837.2580079-1-festevam@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 11 Oct 2022 12:09:32 +0100
Message-ID: <CAHt6W4eRp8pX4vkJq86sH=fotJABEnjvZUNXji=E6ibk9R7TNQ@mail.gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH v2] meson: Allow building on a
 Wayland-only environment
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
Cc: spice-devel@lists.freedesktop.org, Fabio Estevam <festevam@denx.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Merged.

Thanks,
   Frediano

Il giorno mar 11 ott 2022 alle ore 11:18 Fabio Estevam
<festevam@gmail.com> ha scritto:
>
> From: Fabio Estevam <festevam@denx.de>
>
> Currently, it is not possible to build spice-gtk on a Wayland-only
> environment due to the x11 dependency in meson.
>
> Since commit a7381b0864b7 ("Allow to build without X11 gdk backend)
> it is possible to build spice-gtk without X11 GDK backend, so make
> the x11 dependency in meson optional.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Make the x11 dependency optional instead of removing it (Frediano).
>
>  meson.build | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/meson.build b/meson.build
> index dd46294085b0..c163a44f2d60 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -152,7 +152,10 @@ if d.found()
>    spice_gtk_deps += d
>    if host_machine.system() != 'windows'
>      spice_gtk_deps += dependency('epoxy')
> -    spice_gtk_deps += dependency('x11')
> +    d = dependency('x11', required: false)
> +    if d.found()
> +      spice_gtk_deps += d
> +    endif
>      d = dependency('libva-x11', required: false)
>      if d.found()
>        spice_gtk_deps += d
> --
> 2.25.1
>
