Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E5C7DFF49
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 08:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4769910E478;
	Fri,  3 Nov 2023 07:00:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F370510E478
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 07:00:54 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 46e09a7af769-6ce29d1db6eso1330483a34.1
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Nov 2023 00:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698994854; x=1699599654; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Mk2ORNAeudYKTT7e5Tqj/Z6ChagJ0LniMRG+aRThWOc=;
 b=nLqz8FGBBtV33nPJmRPvybBoRf33dieIL/jfpYnPn7J92FGsqeDSP8g+m5dmxJzwgT
 uZ4N2kUAwTs9Kc5A+9GTPlWemkArhwVdi/Agx49DiaHGX/MnF6Xj+lb5bl7ICIyoaEcM
 XZAZ/yBpFZ1WeRXAvbHqu9FgOv2pynnRCeq0qxZb5G/hN+lmH9LzjFkDAt2bx2wM57dn
 uQgYypEG+IVL78po8dmmF7/rWCXhvr7cD0dq8gFyS0mOfLql/TgdP4yBYy+ms0+ESBci
 1BHFUplFrjqlB6QrIm8s3zCH1zYMJQ8JznUABR4RyB8Nqoqf4s4MHd+C2z41LV0q/9Km
 SLLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698994854; x=1699599654;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mk2ORNAeudYKTT7e5Tqj/Z6ChagJ0LniMRG+aRThWOc=;
 b=OHjUDOnozdC8eaAnRI2DIDbun2N6EVuxzzf1LpVyIlAJc3jsaumSk1c6lvshCcT5/i
 sISg1T4P+Ut/tbqaiolvzGxqTjWWjMKYi+wwJrNBB4NDS1S5ttr/zgCJ1dsu57oHmonm
 ZxL5xxwFHX1rIiTZoTDsDgM+2I/xg0UOneHst1I2NwpEBctrV0IT7hPJhEFdkeYk89hq
 eeOcSpsJ6ae/jdei/zcI6gGeEcrAO8I8Ng/3F9IHfzt/NO7n4hVywt/3EqUYRlUCVhqS
 7fNwM4FAU9xsyqf87t7M+Ag0UEJGW09b22VOJBGUJJjiGVN4XmEkTk6iiwcQBJoFDE3T
 VhIg==
X-Gm-Message-State: AOJu0YwXh+nXIwH7gcPz7FsfycSllN4nUrtpb9BJVwtC+ntCtthIrd+x
 98hQcp2NiWWb9noYwAoArgYLwnxEx/LQEhSB4Kw=
X-Google-Smtp-Source: AGHT+IERYVukOTB9RltRded2ITmCK3iageSFoXmzewGEG5Tlt+MZF4IQIcMpdFbrWjJ0WhHz/zttndtXxpS7P8wJQbU=
X-Received: by 2002:a05:6830:1210:b0:6c7:d3d6:c3b7 with SMTP id
 r16-20020a056830121000b006c7d3d6c3b7mr786572otp.19.1698994854216; Fri, 03 Nov
 2023 00:00:54 -0700 (PDT)
MIME-Version: 1.0
References: <20231102171138.409-1-freddy77@gmail.com>
 <20231102171138.409-2-freddy77@gmail.com>
 <IA0PR11MB7185324EC61C8A49A618C792F8A5A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185324EC61C8A49A618C792F8A5A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 3 Nov 2023 07:00:43 +0000
Message-ID: <CAHt6W4d2qS680nrwrrziyB0sYnFSiRCekgXaTQsj7BGT-6B=rA@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Avoid dangling
 pointers in free_pipeline
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

Il giorno ven 3 nov 2023 alle ore 04:58 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Although currently after free_pipeline we free the entire structure
> > the name and the function suggests that we only free the pipeline.
> > Also this is fixing a future possible problem with the series
> > from Vivek Kasireddy reusing the SpiceGstDecoder for another
> > pipeline if H/W encoder pipeline creation fails.
> >
> > Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> > ---
> >  src/channel-display-gst.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > index 3bd948d2..ffc2edbf 100644
> > --- a/src/channel-display-gst.c
> > +++ b/src/channel-display-gst.c
> > @@ -361,11 +361,14 @@ static void free_pipeline(SpiceGstDecoder
> > *decoder)
> >
> >      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
> >      gst_object_unref(decoder->appsrc);
> > +    decoder->appsrc = NULL;
> >      if (decoder->appsink) {
> Would it make sense to get rid of the above if as well to be consistent?
> I don't see why it is needed given that gst_object_unref can accept NULL
> as input. Regardless, this patch is
> Acked-by: Vivek Kasireddy <vivek.kasireddy@intel.com>


If you pass NULL it gives a warning which we don't want (free and
g_free are different in this respect).
Wondering if it won't be better or more consistent to always check for NULL.
In this case the pipeline can be fully constructed but appsink can be
NULL in case we arrange to have GStreamer writing directly on video
using an overlay.

Thanks for the review.

>
> Thanks,
> Vivek
>
> >          gst_object_unref(decoder->appsink);
> > +        decoder->appsink = NULL;
> >      }
> > -    gst_object_unref(decoder->pipeline);
> >      gst_object_unref(decoder->clock);
> > +    decoder->clock = NULL;
> > +    gst_object_unref(decoder->pipeline);
> >      decoder->pipeline = NULL;
> >  }
> >

Frediano
