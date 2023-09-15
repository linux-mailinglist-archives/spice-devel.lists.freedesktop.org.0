Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683BB7A2246
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 17:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D8C10E645;
	Fri, 15 Sep 2023 15:24:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0707D10E645
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 15:24:28 +0000 (UTC)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-57128297bd7so1348521eaf.0
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 08:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694791468; x=1695396268; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2wMeyvGmKm7W0BvUeLB+RDQubIV8ckJLdUNojWguJcs=;
 b=gDfeFmxY97g16GFSlEqVssowVEOKYSI2FlNLl2m8y+jtQd9QISVazd7nY0vi9IinOf
 3IOPU0FW6fZIl6OkJUb8vum2dvinwQvPoNhq/8lZrhCwyvR9pD/1IwC4erAp3SDhyKVk
 R6bURQmPzORyiuhzwORqo1KI018amSwI/2/A6FwvEGsDQyua768vCgsuDKrpwrRZrJD0
 WyUOd8DSPjtmnqZ0sQCJ+5euEJE7bfvMg2IZ+DZdxF4lxzcQ5PzK142fwwHZ+QQHg/mX
 pLGckqBu+jgemWWW2JdNRg++7RwuCdY1tMt7U3BbY7Tiw/tiUM9kjmueyFhKw5MglfdW
 34gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694791468; x=1695396268;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2wMeyvGmKm7W0BvUeLB+RDQubIV8ckJLdUNojWguJcs=;
 b=rALK1Llazx6hLreXSEdk31urd6SC1NemBKq88D8x+PKb1ARCAXxUBg1PlRUG8EGKc2
 68JTehouAaYuUzI7R/Kj4KzoGgo3RyNMGf4BgqV9Bho1Cqp0mZMalWJ15HAvEtggnQsz
 YiHRg5x1uFgPVaBs4ZsE+wwMrS2LdSSw1rOPRpR9tlc/He1lqhk73xNjFeyTBmyDPlcH
 Awu9rL44w8iXIX6YrBQc3ioqbwJWhN0TeTcB5eLuxYtGx2f2H2d0E1QV2s4Pd980ggS7
 Lb3CojexWQEYrgJWc8yqO9I8p+JYZeMqQ6oB82e86mo4ELvuid3TvQ/XLbvBGMYWXJTF
 rP+Q==
X-Gm-Message-State: AOJu0Yx32vYRo+sUUm/oeaNcVzN4nDCgM9XqhqcnPDEBn4nCLR65HK4+
 vfB1WcTBmxSkqGMpXb1n2T4GXfW2hCVpw7E9fXKMS3sJ5sA=
X-Google-Smtp-Source: AGHT+IHKOuW6fRX4+iwNhq6+IHLBBLeLeYKQqcBk0fsVVSAX1/RhlIckFtOEFrQNWYBO4fdBHlYwyJXqNRgHrkgwjKs=
X-Received: by 2002:a4a:6545:0:b0:56d:2cbf:2315 with SMTP id
 z5-20020a4a6545000000b0056d2cbf2315mr2192790oog.9.1694791468094; Fri, 15 Sep
 2023 08:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-4-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-4-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 16:24:17 +0100
Message-ID: <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 1/2] gstreamer-encoder: Use NV12 as the
 default vpp conversion format
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
> From: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
>
> Using NV12 as the output format for the videoconvert element would
> allow us to pair a s/w based encoder with a h/w based decoder for
> decoding the stream as most h/w based decoders only accept NV12 as
> the input format given its popularity.
>

I don't fully understand the rationale. Yes, the h/w codecs usually
would convert this to NV12 however should not this be done by
gstreamer instead?
Surely YUV conversion is useful but what if a software conversion
would like to use Y444 instead? With NV12 you would lose image
quality.
Isn't gstreamer supposed to come out with the best combination?
Maybe it would be easier to have a more complete pipeline string
instead specified for each codec?

> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/gstreamer-encoder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index d8af91f1..057509b5 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -918,7 +918,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  #ifdef HAVE_GSTREAMER_0_10
>      const gchar *converter = "ffmpegcolorspace";
>  #else
> -    const gchar *converter = "videoconvert";
> +    const gchar *converter = "videoconvert ! video/x-raw,format=NV12";
>  #endif
>      const gchar* gstenc_name = get_gst_codec_name(encoder);
>      if (!gstenc_name) {


Frediano
