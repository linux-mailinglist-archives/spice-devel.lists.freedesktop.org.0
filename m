Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAF7AC714
	for <lists+spice-devel@lfdr.de>; Sun, 24 Sep 2023 09:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BED10E0EB;
	Sun, 24 Sep 2023 07:56:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D71F10E0EB
 for <spice-devel@lists.freedesktop.org>; Sun, 24 Sep 2023 07:56:03 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 46e09a7af769-6bf298ef1f5so3016275a34.0
 for <spice-devel@lists.freedesktop.org>; Sun, 24 Sep 2023 00:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695542162; x=1696146962; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TiJWJGWjgtm/6VZ2BpiiBHuZdfoeWyU30s6/sywh5gE=;
 b=UsihmpjecyZ9ioLLquySX0KHrPEksETJvlGjOa/GbI2yX1dG4PHhV1EPqwrCtRFqqh
 BYf3eYRdoOleyrCv5cwCwZJtK8yoSpA18h6+wZSobn0ZYASrOI0xqiBVKfy+bMc/x0cE
 EtxwSRYrZvlZs/CsNNM6k7YrPYwdC1qxwZwvVLDrWErDufg72JHJHgxu6BOEUODWlfqv
 Mvl5mjKfQjVnGTLrFKhjnhVNzd0eXjgrcQWFWNdvJQegmnVsY45f/fxsVGQBACze1Vpe
 CQRxROJ12FGCfY5cgQ9MF5+Gh8blUyxlrxWKPmTRu7phNK13T9FjJFbQiQYOLFR/rI/6
 4W/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695542162; x=1696146962;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TiJWJGWjgtm/6VZ2BpiiBHuZdfoeWyU30s6/sywh5gE=;
 b=O4OrzIdkgvJ3DSui5lg/aWzNaewhADsfQN/bZ38lN4NU8Af9mTuFHJZgJcLw97JxY3
 Oy1ue62P0N/UdndefjOzWYy6vNEvxVqqQpt6CRgJzoMJaXob8TWb0dR6XmB2e+DO6DZp
 aAEnyNlGWd7EDEuRgLoeuF2u/ODt1ZqygppeDGMAshihz1Etcka7AgDSr0W1D+E4EfzS
 W5XNvcThR65MOHLrUlI51t0iOA8OH5PuBrxZiK8wnjKJVi5osMc6Fvn+goHarYVZgUnn
 Dt2EaikXzBYICO6EMRrkz1GRcrYme6BkUpb7iiVEFqKWt5ei/l40AFJcvpjZls2Fp31a
 /wLA==
X-Gm-Message-State: AOJu0YzcTPNT9MNdT8hojkud0vlhE/E+7dfAYqZdM01q6R3M641DXG4m
 cvTmuhQudWPupPk43sAvfldzwEVtrCKBbAsD0G8=
X-Google-Smtp-Source: AGHT+IEyyZ5HGWA1kI6p0FHLm7oaTDt9FlsgcN8J9TJhQTtqIfY6rVy4D29W3BbCEAvZoxwiUprFIUEYBE/SRx5qxpM=
X-Received: by 2002:a05:6830:19a:b0:6b9:52cb:3adf with SMTP id
 q26-20020a056830019a00b006b952cb3adfmr4442970ota.20.1695542162260; Sun, 24
 Sep 2023 00:56:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-4-vivek.kasireddy@intel.com>
 <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
 <IA0PR11MB7185717AE7EDF12BE2C64649F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4eFkVbBPmkzQmafAybHvKVX_=A7oFZ3-Hni=M9KRm=SXQ@mail.gmail.com>
 <IA0PR11MB71858FFACB9B9E79E8F36DBDF8F8A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71858FFACB9B9E79E8F36DBDF8F8A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 24 Sep 2023 08:55:51 +0100
Message-ID: <CAHt6W4et5EjRzY8TfP=o1rVpC-6k8SvHFRBauzzdesbE3=2K3w@mail.gmail.com>
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
 "Kim, Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno gio 21 set 2023 alle ore 22:19 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> > >
> > > > > From: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > > > >
> > > > > Using NV12 as the output format for the videoconvert element would
> > > > > allow us to pair a s/w based encoder with a h/w based decoder for
> > > > > decoding the stream as most h/w based decoders only accept NV12 as
> > > > > the input format given its popularity.
> > > > >
> > > >
> > > > I don't fully understand the rationale.
> > > Yeah, I should have added more details.
> > >
> > > > Yes, the h/w codecs usually
> > > > would convert this to NV12 however should not this be done by
> > > > gstreamer instead?
> > > > Surely YUV conversion is useful but what if a software conversion
> > > > would like to use Y444 instead? With NV12 you would lose image
> > > > quality.
> > > > Isn't gstreamer supposed to come out with the best combination?
> > > > Maybe it would be easier to have a more complete pipeline string
> > > > instead specified for each codec?
> > > My understanding is that the goal with this patch is to ensure uniformity
> > > of the format and specifically address the case where we use x264enc
> > > on the encode side and msdkh264dec on the decode side. Since Y444
> > > is the default input format for x264enc, videoconvert converts the BGRx
> > > data into Y444. However, on the decode side, msdkh264dec can only work
> > > with NV12; so this patch is ensuring that we start with NV12 on the encode
> > > side as well. Jin Chung, feel free to add more details if I missed anything.
> > >
> > > Thanks,
> > > Vivek
> > >
> >
> > The problem is compatibility. A client with h/w h264 support should be
> > able to talk to a server without any changes.
> > This patch is not fixing this, unless you use a time machine and you
> > apply it at the time h264 and x264enc were introduced.
> > So, basically the client should be able to decode y444 produced by x264enc.
> > Either keep using x264enc if the server could send it or be able to
> > detect from the first data frame (it should be possible,
> > maybe with a fail and try) and use the correct pipeline.
> What I have learnt is that some Intel h/w cannot decode the default format
> used by x264enc (h264 (High 4:4:4 Predictive), yuv444p). Therefore, we'd have to
> use NV12 in these cases. However, I believe this choice has to be left to the user.
>
> In order to do this, I think it makes sense to have an environment variable
> (SPICE_CONVERTER_PREFERRED_FORMAT?) to override the default format used
> by x264enc.
>

That makes sense. What about making the change a bit more detailed, I
would extent the message
to something like

"Using NV12 as the output format for the videoconvert element would
allow us to pair a s/w based encoder with a h/w based decoder for
decoding the stream as most h/w based decoders only accept NV12 as
the input format given its popularity.

Although this restricts the formats used and potentially decrease video
quality the current capabilities exchange does not allow fine H264 tuning
so the server is not able to select a format better suitable for the
client. So use a more compatible, but potentially limited, format."

And in code

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d8af91f1..057509b5 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -918,7 +918,8 @@ static gboolean create_pipeline(SpiceGstEncode
r *encoder)
 #ifdef HAVE_GSTREAMER_0_10
     const gchar *converter = "ffmpegcolorspace";
 #else
-    const gchar *converter = "videoconvert";
+    // Limit for compatibility, see "gstreamer-encoder: Use NV12 as
the default vpp conversion format" commit
+    const gchar *converter = "videoconvert ! video/x-raw,format=NV12";
 #endif
     const gchar* gstenc_name = get_gst_codec_name(encoder);
     if (!gstenc_name) {


Frediano
