Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00CE7A23F7
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 18:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5582B10E656;
	Fri, 15 Sep 2023 16:53:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F3C10E656
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 16:53:56 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 006d021491bc7-5736caaf151so1274148eaf.3
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 09:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694796836; x=1695401636; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Z0HfbHFp/e+h715B/1fWeOX+ZrWHKt6WIowUO0D9En8=;
 b=TZdvY+WO3IVvmPavNdLfv0PRTxrt4Uwj52B4Is2rfeyFR4cD0qyA2FcI4c9TniEtUP
 x6wF9+XHu2VrPTqrEwXsc2ZNwvJ+bWVoZZOGa1eMONMvy6GtxEfZLc3Jui6FF2iU7zap
 jWW/21L69c/N4P2c4S0X/MTKEBFarsQiNM2Cve6tqTyRx2h4kPO6DPqnii2wZo14NL2o
 Gdgk8aKm/yRGjf1JfAAcwq8iiAnuOO8J6RVqM1Xw2Np/GItjiNKmUS+8JSgRlZzy1qZD
 +9pfuRA9Ui0YOIzc5w8aRo9yFyz4IDgw03dJcHneQUQKV+48D1OqL7Y227F9DizOuXq4
 /SVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694796836; x=1695401636;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Z0HfbHFp/e+h715B/1fWeOX+ZrWHKt6WIowUO0D9En8=;
 b=rE2v7Js54N8HgL4yHHCV+Pwv47xBngrsXZBjC+A0WIYO+KQq38eyMjG0qFHiM9WhuA
 ABSXVaVVXD84D10DSl6hqSs6MN529skdpHDw4ImLbk0oJDePooNzYQ189YRwrY42TK7v
 L6e3qaWysIpe2rXCf4poRkUbcORXtYCdq5V9C2mvp29VDTjZ6DEnfrAUIs9TpZ4sn5S4
 vNASttrN02TZ+DfzgEcu5FHFVCGhLNFjOjdaJQQ0UbIdVgLD/jl7Nabt1M87is2EcHcV
 wiLLX6Zx+Adv1iR2tD9xEo+mABfMFUXqz8y5YYuXNpB7XdXwICf5gUu1J3ihwGXLWRRb
 0QiA==
X-Gm-Message-State: AOJu0Yywb/pgOTANyUK/ohVhHMfFUEqHwNtpdA2/T//csjf2/CAk2hDn
 tZ4h+rqea2/mtNrV6OTxGtGYZHJT7bjbFF3kpNSsLdAMGuLkhA==
X-Google-Smtp-Source: AGHT+IG07UqM0ClGIBpWh9pfXMl4NmicycNLg2eH69d0HzoLgg0RBqZ7AjOsQJcKXmvJa7Gfcjrrc3HCCO+vQNNesDY=
X-Received: by 2002:a4a:91d7:0:b0:571:aceb:26c8 with SMTP id
 e23-20020a4a91d7000000b00571aceb26c8mr2604016ooh.3.1694796835877; Fri, 15 Sep
 2023 09:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-2-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 17:53:44 +0100
Message-ID: <CAHt6W4dzzhKxMW_dcptw4gmx_p8yyVqphACYOhiMOSd3T4JzHQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 1/4] channel-display-gst: Prefer playbin3
 to playbin
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
Cc: spice-devel@lists.freedesktop.org,
 Jin Chung Teng <jin.chung.teng@intel.com>, Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> From: Jin Chung Teng <jin.chung.teng@intel.com>
>
> If playbin3 is available (checked in Gstreamer registry), it
> makes sense to prefer it given the major improvements and
> features it offers including the capability to handle higher
> bitrates.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  src/channel-display-gst.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 36db3a3..3f46a65 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -496,10 +496,13 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
>      SpiceGstPlayFlags flags;
>      GstCaps *caps;
>
> -    playbin = gst_element_factory_make("playbin", "playbin");
> +    playbin = gst_element_factory_make("playbin3", "playbin3");

Beside the other comment, I think we should keep the name, so it
should be gst_element_factory_make("playbin3", "playbin").

>      if (playbin == NULL) {
> -        spice_warning("error upon creation of 'playbin' element");
> -        return FALSE;
> +        playbin = gst_element_factory_make("playbin", "playbin");
> +        if (playbin == NULL) {
> +            spice_warning("error upon creation of 'playbin' element");
> +            return FALSE;
> +        }
>      }
>
>      /* Passing the pipeline to widget, try to get window handle and

Frediano
