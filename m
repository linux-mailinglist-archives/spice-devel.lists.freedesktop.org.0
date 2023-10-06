Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C01A7BB2CE
	for <lists+spice-devel@lfdr.de>; Fri,  6 Oct 2023 10:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C470810E2F2;
	Fri,  6 Oct 2023 08:06:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F5210E2F2
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Oct 2023 08:06:22 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 006d021491bc7-57d086365f7so1059261eaf.0
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Oct 2023 01:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696579581; x=1697184381; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=G55AnGTVUjIekjYWN+RUfVzCF0nLCK9rpE8l5o97PtI=;
 b=eiD8AbYGAFAlJLdbinwXLWF+T95e440iD1M0VtkAEEUcqZjr1TxHZZhagRl4bVDhcq
 95tW5tGrOeTdpJg4XrLYSVinLNe6RmS8yX4rxRl8839+8xS+qpPlRZycTm0cfRk2eOMw
 DzNDAvLCVjyt2y/emn/zKIahVhHIwPAoCEgp4iLZXWa9L0+PNFBe9AFYJAFqWdIji86f
 2L/jOa5mULsSFKCnPUJpI0ol/szZlo+sY39iIP5S2pAGj9RWw6uTPtlI6Qwm8Ci6zvM2
 ZQR1RSoa7lXuA7g7deDJNpVZPyouVnhvfvgIV7PTqmdwqzge3tt+woXYhLLGW5EJt7kD
 lNDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696579581; x=1697184381;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=G55AnGTVUjIekjYWN+RUfVzCF0nLCK9rpE8l5o97PtI=;
 b=wWBdpq0hgTaXY7q38aYrCE2q/LviYk/F6vrtAgTj7BtNJfi0I58H+rDoKbTvBHb9Sw
 jtOtcL8QvIhYrmWSzdbnInSt0bF5aZT0W9oyZ+gPrRTiNrxHnHLn1j8FcJevi1LR/Pj7
 /3zvJp2Ak2LT0apJDyYG4uVtv5CiDTNa/PajEatdmayKSJb5wEWe9J7QGI8gNtl35LA1
 HkL9aOFxEbuUvxtbnLwxG+AqEHR1lkERqS5v6FvpxJigKoQtlukJIPD5/OwkHxEO3moz
 hmwvP6lnYeo1XxAn27FwHJLA+IduD0BLjLOsHmnf/W62RnDPsMI6oJ9B4YLNpbQ841DG
 zKQg==
X-Gm-Message-State: AOJu0YxZ4C9DBU6oPwJFM3j+4iQifJD5R5yYxR1tBeueGtLHMouHNmCU
 QOjn7aXtSwtfOUxwSDTXQ0Vj3h0nVdgVheOPXHs=
X-Google-Smtp-Source: AGHT+IHAVPKdMryvX6+xm6rYnk9HCp9OUPDI0Z9WhlmBZ7sb9ydqtnWx0lCMoVslDfbqyZRsZPioGXm2oHlPky0+i0A=
X-Received: by 2002:a4a:3158:0:b0:56c:a41c:f264 with SMTP id
 v24-20020a4a3158000000b0056ca41cf264mr6935144oog.8.1696579581148; Fri, 06 Oct
 2023 01:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
 <20231002052026.2994546-2-vivek.kasireddy@intel.com>
In-Reply-To: <20231002052026.2994546-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 6 Oct 2023 09:06:10 +0100
Message-ID: <CAHt6W4e+_upcEyuXJ8qUzoCYsixHhucz8Q8upvibkBTUUyT7cg@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 1/2] channel-display-gst: Prefer playbin3
 to playbin (v2)
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
Cc: spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 2 ott 2023 alle ore 06:41 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> From: Jin Chung Teng <jin.chung.teng@intel.com>
>
> If playbin3 is available (checked in Gstreamer registry), it
> makes sense to prefer it given the major improvements and
> features it offers including the capability to handle higher
> bitrates.
>
> v2: (Frediano)
> - Cache the playbin3 is available check
> - Keep the playbin name for playbin3 element as well
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  src/channel-display-gst.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 36db3a3..5c9927b 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -495,11 +495,17 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
>      GstElement *playbin, *sink;
>      SpiceGstPlayFlags flags;
>      GstCaps *caps;
> +    static bool playbin3_supported = true;
>
> -    playbin = gst_element_factory_make("playbin", "playbin");
> +    playbin = playbin3_supported ?
> +              gst_element_factory_make("playbin3", "playbin") : NULL;
>      if (playbin == NULL) {
> -        spice_warning("error upon creation of 'playbin' element");
> -        return FALSE;
> +        playbin3_supported = false;
> +        playbin = gst_element_factory_make("playbin", "playbin");
> +        if (playbin == NULL) {
> +            spice_warning("error upon creation of 'playbin' element");
> +            return FALSE;
> +        }
>      }
>
>      /* Passing the pipeline to widget, try to get window handle and

Acked

Frediano
