Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCA17A23EB
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 18:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E59910E64B;
	Fri, 15 Sep 2023 16:51:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0632D10E64B
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 16:51:26 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id
 5614622812f47-3a8614fe8c4so1500600b6e.1
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 09:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694796686; x=1695401486; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7tFU7ZyDomGlt34KIpdmydskjomUZ/pyH0bUaQAE/fY=;
 b=NrXtvT7Vds6B+Vc6KZYOsd60lDLY5JuJhGN4HQhG9J4FerYcHJNC2anDNrkedCSncB
 JfBA3KSaH38Kzs4ROf5lbQ+wr0VNtdaZsMy5OAp+Um/yFjuKwWS121bicF1GWshi4zQp
 rz2tX4S8aXpVjAZN0Pk77VQ3kzyctVBgR0qMP5Sl8ErZGuZth/v1HE0mjg+4wm7Eotzs
 0EIikk7bXww9T3MF+86Eg2oaHoCpHja/EPIC2mZXNSniIpQnjPbZPUd3RTpfmNX7di56
 pc4AoU0UAYOoCTGlalRBmw7VVWa6xJPCO0GFxEk7pXc7+OZyaVIdXoADzqe52JvoUpt8
 SXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694796686; x=1695401486;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7tFU7ZyDomGlt34KIpdmydskjomUZ/pyH0bUaQAE/fY=;
 b=TCNfpsnS6z64Qg30/VmJYlcSvk1YegjrmYTeAatIW7xSdRxGxU9CIbGWVF4EsYmHIR
 BXByWXTJNTgSII+9vtQf95TdVCsk7yuJEgcQzr4FPsTrBmSXLEXPArCIZeprOjxSSy10
 gkTt7SxIWiMZGCfGnqduaQfykESzWH7aJYfIk89fSVBnGY+/a52UZFjmgvSC4SWOJFmU
 78pzqT3eVbWdZw3l3YUgSYO1MR96Uw27zEGPqkC8XXnw92KsPBYsofWvWpVH6KahNDeY
 JvrVSMfDC9we8Aziftdp++3k94kV0WSLKjY5dNGwO/rDBVxO1GHz2ZW0JJc2Y1u23Kwb
 db9g==
X-Gm-Message-State: AOJu0YyUl+eYzqwR4aT/YONJeX+ZpoPp91dNbqdEhr4hfbyVmo+68ags
 FRBnBLGi4/6r3/Hf+1+YIJlaCF9SKgk6NCxUHO0=
X-Google-Smtp-Source: AGHT+IGmqn0/JlLWGJ8HWje7Eh/iEYFmBa/yUo1dezyipD8lK3hm1J6kORUxKHgyfQ13A/UmZewsTW+orsrkgFYb33s=
X-Received: by 2002:a05:6870:468a:b0:1d6:5133:2f37 with SMTP id
 a10-20020a056870468a00b001d651332f37mr2383852oap.48.1694796685931; Fri, 15
 Sep 2023 09:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-5-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-5-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 17:51:14 +0100
Message-ID: <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 2/4] channel-display-gst: Add
 "byte-stream" as the stream format for h264
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
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Jin Chung Teng <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> Adding the string "stream-format=byte-stream" to decoder capabilities
> (dec_caps) for h264/h265 codecs stops Gstreamer from complaining
> about missing stream format.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  src/channel-display-priv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
> index 66c9cff..1a7590a 100644
> --- a/src/channel-display-priv.h
> +++ b/src/channel-display-priv.h
> @@ -177,7 +177,7 @@ static const struct {
>       * (hardcoded in spice-server), let's add it here to avoid the warning.
>       */
>      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
> -      "h264parse ! avdec_h264", "video/x-h264" },
> +      "h264parse ! avdec_h264", "video/x-h264,stream-format=byte-stream" },
>
>      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
>      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
> @@ -185,7 +185,7 @@ static const struct {
>
>      /* SPICE_DISPLAY_CAP_CODEC_H265 */
>      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
> -      "h265parse ! avdec_h265", "video/x-h265" },
> +      "h265parse ! avdec_h265", "video/x-h265,stream-format=byte-stream" },
>
>  };
>

Hi,
   I agree with this change. Specifically I'm getting the warning too
even if my system is pretty updated.

This setting was removed by commit
https://gitlab.freedesktop.org/spice/spice-gtk/-/commit/c9129ed202b00f4a74ea7a55de19150194257e77
but the explanation about it was removed is not really clear to me.

Personally I think this commit should be applied in any case, it makes
sense independently of the series. Vivek, do you agree?

Victor, do you agree to this change?

Regards,
  Frediano
