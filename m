Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9DA7A44BF
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 10:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0583B10E209;
	Mon, 18 Sep 2023 08:32:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com
 [IPv6:2607:f8b0:4864:20::c36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C279910E209
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 08:32:50 +0000 (UTC)
Received: by mail-oo1-xc36.google.com with SMTP id
 006d021491bc7-5733d431209so2656190eaf.0
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 01:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695025970; x=1695630770; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xConAh4CM4ViE9g/1T86DIX8XezbUcAycIyWgRtfD28=;
 b=UB6FPHDP2G95Ra+7gog18bb4tpyvD8A7QpKDAIFsm2ennUBcg3IkTV/sLnv7+vKQx7
 9WgAzvSYchv8ZRP8vnLXTx/R6CIc3r2vkVe2lSsyijHl9CWNKujEmcPCOawDGQlHicrr
 52gq4AD3C3epMx9T2EXB3oxvid8tKyizF3QT2LNJwv+gqQ/87q9irXsK1ZIVRwD9WZYn
 jB68GR1oN+QPg923L/I8QfdNGtO1QYfda6l1b5CZP2Vo1/Vv+5OJP86SnaXMbOhJjRV9
 gpZssAmkBL2o8zjVJqok4ZxwRkH/zWEQVQmXmcKpPUi7K55bPIKIlBoHOhALlpiqyC+E
 WH7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695025970; x=1695630770;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xConAh4CM4ViE9g/1T86DIX8XezbUcAycIyWgRtfD28=;
 b=oXC1sjlQQd1IWszzLAwLOXIqZEV4SXgqOnttEotEQF/rqIhmHTQ8+dsyzN5Jn6ck9w
 imR4R+S5WEJ+qtu4sV/+Rn6+XKgxKfm6i8BNNexFxMvzOeNp6XtgoNwqPLLWuPPC6j9e
 GEhgW9bYWNkLAhNu3mMygfG3FvzXX6/ynrAe8rRpAJx6iJV3vqFEmbspp8wLmeiwHV3P
 ReVs5OnUAY+1ONQzjyM35yGitqUPY97fO4DelG4IzaoTKpnbKapt3OQyv4wAYrXmdXiZ
 yaPVO49U29SjTmVA+lWIPimBos3qIESG2ARttkGB41ljmCP1BgMEWvs4ETtrXTplCG0h
 FCTQ==
X-Gm-Message-State: AOJu0Yw9QNVdAhZlQieUjKNsCm2beQ9SAAh1wfrEfHwJxinymJtLxJ0p
 UmF7GYLE9J4EvYOE+2ah3QCF8ajwFjxDFEinKToi7uqGRHk=
X-Google-Smtp-Source: AGHT+IG5UmSbveHY0u+fQY7RZIljDsbYtvM9YBmyvJ/Gv3QeZQTCasYsLvdMI0Zwzde4KQK0+h6L+/Xs6EmwpErzIAA=
X-Received: by 2002:a05:6820:1792:b0:56e:a14a:f04e with SMTP id
 bs18-20020a056820179200b0056ea14af04emr7764533oob.9.1695025969878; Mon, 18
 Sep 2023 01:32:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-4-vivek.kasireddy@intel.com>
 <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
 <IA0PR11MB7185717AE7EDF12BE2C64649F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185717AE7EDF12BE2C64649F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 18 Sep 2023 09:32:38 +0100
Message-ID: <CAHt6W4eFkVbBPmkzQmafAybHvKVX_=A7oFZ3-Hni=M9KRm=SXQ@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Teng, Jin Chung" <jin.chung.teng@intel.com>, "Kim,
 Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 18 set 2023 alle ore 06:49 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> > > From: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > >
> > > Using NV12 as the output format for the videoconvert element would
> > > allow us to pair a s/w based encoder with a h/w based decoder for
> > > decoding the stream as most h/w based decoders only accept NV12 as
> > > the input format given its popularity.
> > >
> >
> > I don't fully understand the rationale.
> Yeah, I should have added more details.
>
> > Yes, the h/w codecs usually
> > would convert this to NV12 however should not this be done by
> > gstreamer instead?
> > Surely YUV conversion is useful but what if a software conversion
> > would like to use Y444 instead? With NV12 you would lose image
> > quality.
> > Isn't gstreamer supposed to come out with the best combination?
> > Maybe it would be easier to have a more complete pipeline string
> > instead specified for each codec?
> My understanding is that the goal with this patch is to ensure uniformity
> of the format and specifically address the case where we use x264enc
> on the encode side and msdkh264dec on the decode side. Since Y444
> is the default input format for x264enc, videoconvert converts the BGRx
> data into Y444. However, on the decode side, msdkh264dec can only work
> with NV12; so this patch is ensuring that we start with NV12 on the encode
> side as well. Jin Chung, feel free to add more details if I missed anything.
>
> Thanks,
> Vivek
>

The problem is compatibility. A client with h/w h264 support should be
able to talk to a server without any changes.
This patch is not fixing this, unless you use a time machine and you
apply it at the time h264 and x264enc were introduced.
So, basically the client should be able to decode y444 produced by x264enc.
Either keep using x264enc if the server could send it or be able to
detect from the first data frame (it should be possible,
maybe with a fail and try) and use the correct pipeline.

Regards,
  Frediano

> >
> > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > > Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  server/gstreamer-encoder.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> > > index d8af91f1..057509b5 100644
> > > --- a/server/gstreamer-encoder.c
> > > +++ b/server/gstreamer-encoder.c
> > > @@ -918,7 +918,7 @@ static gboolean create_pipeline(SpiceGstEncoder
> > *encoder)
> > >  #ifdef HAVE_GSTREAMER_0_10
> > >      const gchar *converter = "ffmpegcolorspace";
> > >  #else
> > > -    const gchar *converter = "videoconvert";
> > > +    const gchar *converter = "videoconvert ! video/x-raw,format=NV12";
> > >  #endif
> > >      const gchar* gstenc_name = get_gst_codec_name(encoder);
> > >      if (!gstenc_name) {
> >
> >
> > Frediano
