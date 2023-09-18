Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326A27A4488
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 10:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9719B10E215;
	Mon, 18 Sep 2023 08:23:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FED10E215
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 08:23:26 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-573429f5874so2569661eaf.0
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 01:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695025405; x=1695630205; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aXib7CtF8lSDPhYupuZg5oU9DQD2k7QYqXIYgS6mUz8=;
 b=ho21O0mMHjpySiAP/w7sECQ8EjSMs+PmLuVJ7lNfvoF51kvCaNMlpeGrkkq2fMv0n4
 7zRRF+lF4gJLeCs9l4va8HVwRZzNBBNEkXpyWQtuV2O2/WwP8P/Nlvg467vHxnX9s1EK
 xws2GRfSCd7u2qQv8SGnuPgrNuSC2NrN+QUpjsizvv/ImPUSEbwiwiZpiOQiDS1s5S1P
 yUfMcKT7LpGZCP6nwA64QJSvqmOTuqkTCVvftClHNmaxFkMjei2gidNb+re4s7yevvpu
 8XhNkh1/Eewbnc7BJ1wMS3Q97XtkRGXM77+EHf7pYurgMLMu0TdF58c9Tppb5OPDCgER
 uMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695025405; x=1695630205;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aXib7CtF8lSDPhYupuZg5oU9DQD2k7QYqXIYgS6mUz8=;
 b=MlsoH/xmw2PvtZIyVxJ9iWSR7UWJie8qvj4GmbR1V+FA9yw3t0SVv7+L7aRkbuGFMQ
 1o+zD9WCXqVFwk/c3rdBNbzZqu1v33GHMrOd7/D8nXCPyQk6Ro2yCfvUN9216n3Cq60b
 k+W96z1Jno6UjTVRbX0t60jeviWG70vw2WK3sUZIn61Xh1VP359XZiHFQd9aE3tufocp
 LvE4I3UYFzOV8IfY5jxnXS9b2ol5dhac15R1gPTjWmgZO70ul6N6WNqMK2AQVMYfPdBT
 2ppCYfQjDzBY2R8kSR/ygpKFtb2AjmybDyw8h24g8RHmlT/mV5zlI5GosEfh0uCA3WUY
 vIEA==
X-Gm-Message-State: AOJu0YzyNXuinw9Qs5XGrzJc3dOBKO4xltHGEYtQhN2Cv9QKQerW+JH7
 HMp0bSwH0cIouqOnG1Nl8gSsfPWJsAI2gFg/rl8=
X-Google-Smtp-Source: AGHT+IE2fuXWpYj9v1bEcxK6KjTd3w9hOZ1SFQuvYRtWr6ByEAqPKFAhoWrqg6zQNSpm1hrRw7B2FCYSCF5Wc6k7458=
X-Received: by 2002:a4a:2a05:0:b0:573:bf68:8dbc with SMTP id
 k5-20020a4a2a05000000b00573bf688dbcmr7356363oof.7.1695025405498; Mon, 18 Sep
 2023 01:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-5-vivek.kasireddy@intel.com>
 <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
 <IA0PR11MB71852AFCB716616A471B6591F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71852AFCB716616A471B6591F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 18 Sep 2023 09:23:14 +0100
Message-ID: <CAHt6W4defEiit95oKpwv6VNtVUv6SB9Hgb=hxQHRggNMTkbB2Q@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
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
Cc: "Mazlan, Hazwan Arif" <hazwan.arif.mazlan@intel.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>, "Kim,
 Dongwon" <dongwon.kim@intel.com>, "Teng, Jin Chung" <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 18 set 2023 alle ore 06:53 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> > >
> > > Adding the string "stream-format=byte-stream" to decoder capabilities
> > > (dec_caps) for h264/h265 codecs stops Gstreamer from complaining
> > > about missing stream format.
> > >
> > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> > > Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  src/channel-display-priv.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
> > > index 66c9cff..1a7590a 100644
> > > --- a/src/channel-display-priv.h
> > > +++ b/src/channel-display-priv.h
> > > @@ -177,7 +177,7 @@ static const struct {
> > >       * (hardcoded in spice-server), let's add it here to avoid the warning.
> > >       */
> > >      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
> > > -      "h264parse ! avdec_h264", "video/x-h264" },
> > > +      "h264parse ! avdec_h264", "video/x-h264,stream-format=byte-
> > stream" },
> > >
> > >      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
> > >      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
> > > @@ -185,7 +185,7 @@ static const struct {
> > >
> > >      /* SPICE_DISPLAY_CAP_CODEC_H265 */
> > >      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
> > > -      "h265parse ! avdec_h265", "video/x-h265" },
> > > +      "h265parse ! avdec_h265", "video/x-h265,stream-format=byte-
> > stream" },
> > >
> > >  };
> > >
> >
> > Hi,
> >    I agree with this change. Specifically I'm getting the warning too
> > even if my system is pretty updated.
> >
> > This setting was removed by commit
> > https://gitlab.freedesktop.org/spice/spice-gtk/-
> > /commit/c9129ed202b00f4a74ea7a55de19150194257e77
> > but the explanation about it was removed is not really clear to me.
> >
> > Personally I think this commit should be applied in any case, it makes
> > sense independently of the series. Vivek, do you agree?
> TBH, I did not verify if avdec_h264 is selected by playbin and works as
> expected after applying this patch. Once we can confirm that avdec_h264
> works OK with this patch applied, you can consider merging this patch.
>
> Thanks,
> Vivek
>

Done, merged

Frediano

> >
> > Victor, do you agree to this change?
> >
> > Regards,
> >   Frediano
