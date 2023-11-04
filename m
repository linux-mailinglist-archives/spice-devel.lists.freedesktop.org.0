Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5A37E10EC
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 21:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B0F10E0FE;
	Sat,  4 Nov 2023 20:41:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FDF10E045
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 20:41:08 +0000 (UTC)
Received: by mail-oo1-xc2f.google.com with SMTP id
 006d021491bc7-5845a94dae1so1580218eaf.0
 for <spice-devel@lists.freedesktop.org>; Sat, 04 Nov 2023 13:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699130467; x=1699735267; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=W3jY/r92qxbQWDQoo61SCeRXlVsRLNBybsNGrWQPiRc=;
 b=DeC/Yzt0GAxfAHLry+orxHWNwdUNh9Keu4D1Y8F4psA+gjA25BCqkLV1DrnrfyzXWD
 pTatoflXWsydNKQoAakjc7qWMbrWxxjVlvWgbQQkwFniT8cvAagpezxIKevkI1z+iiuj
 wEPWAnvY61cKkSLLtYSQn9bq+p7TeoIQpV26oBeMX+dalZiYkPChk2lQWgjzLWOh/Ykg
 7GucyA5pQloDe+aY8hBqVnZJyjkA1uAVjMrsONWG7hhzsu2/9FYNzY+xYUmhycGVrbP6
 6l8ULLP3ku6Dgi5zsZ8FNNJeC4AftdCegOq2yBuuonZP5u+nBHpt0hawnPJIVU2D+IQF
 2mTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699130467; x=1699735267;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=W3jY/r92qxbQWDQoo61SCeRXlVsRLNBybsNGrWQPiRc=;
 b=Ppk/US6B9FW3WpEZiThpIYziMjwhH2PgviXjZZ4CAm/J5CsPilzJyspf00eAMAxNlF
 xidwskiWIR3X2r8SHzrA1Mqyw/JAn1u3BMZHjhktTVMBX9QcVa2BtOtuArsLZkl37ZeG
 XQFJlfI2yQBX6tR5/siGV6NF7BV8PRn0656NFJRcDWTxFspuCBRVT0ZYFVwhbbXc7HwU
 1/7HvWqE23Is9xe2zJWufLQ0NPaC9FLZoHj7rCG4pDMiAass1WkGxP69fjtdmhHssXYb
 YtSWi5C6M8WaYLtPwDN0J+wVkgIucOLOnpfMN6DWuaWaQKXG0Aws3xua3h4wKrWOlD7+
 19Tg==
X-Gm-Message-State: AOJu0Yx4zwz4d9+BizVOFa7DtKOf1uF5bFmeH6Ky6CxiFixFHYGxpg3r
 fQnccWsm5xIzpFdH4bFU35SxJZn//Jg7JTl5OmQ=
X-Google-Smtp-Source: AGHT+IHEqvVFmTLvr/4PJU4y7TmXK7SKiy0wBAuEDT1g/a38mtj7jGwnRcT8cMcDcQAwKPXRrPJgTUjCmmd8XpSoy4s=
X-Received: by 2002:a4a:df4c:0:b0:576:bbf6:8a8e with SMTP id
 j12-20020a4adf4c000000b00576bbf68a8emr3654923oou.2.1699130467319; Sat, 04 Nov
 2023 13:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <20231103085120.1339-1-freddy77@gmail.com>
 <IA0PR11MB71850E1CB2DF0C71234E0DF5F8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71850E1CB2DF0C71234E0DF5F8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 4 Nov 2023 20:40:56 +0000
Message-ID: <CAHt6W4fu4_huXxZ2Ew=b_nU=yj-jdvQFT8EFEC38=TXke8=p7A@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Fix leak using
 GstBus watch
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

Il giorno sab 4 nov 2023 alle ore 16:22 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > This patch fixes a leak due to not freeing GstBus watch.
> > The watch is attached (as GSource) to the main loop and retains
> > a pointer to the bus so we need to remove it to release the bus
> > when we release the pipeline.
> > This was detected forcibly creating and destroying lot of streams.
> > After a while the client program consumed all file descriptors
> > and stopped working. This as GstBus retains a GPoll which,
> > under Unix, uses 2 file descriptors.
> > For some reasons using gst_pipeline_get_bus again in free_pipeline
> > do not fix entirely the leak so keep a pointer to the exact
> > bus we set our watch on.
> >
> > Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> > ---
> >  src/channel-display-gst.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > index 3b372dc0..6e126000 100644
> > --- a/src/channel-display-gst.c
> > +++ b/src/channel-display-gst.c
> > @@ -47,6 +47,7 @@ typedef struct SpiceGstDecoder {
> >      GstAppSink *appsink;
> >      GstElement *pipeline;
> >      GstClock *clock;
> > +    GstBus *bus;
> >
> >      /* ---------- Decoding and display queues ---------- */
> >
> > @@ -352,6 +353,13 @@ static void free_pipeline(SpiceGstDecoder
> > *decoder)
> >          return;
> >      }
> >
> > +    GstBus *bus = decoder->bus;
> > +    if (bus) {
> > +        gst_bus_remove_watch(bus);
> > +        gst_object_unref(bus);
> > +        decoder->bus = NULL;
> > +    }
> Looks like the watch can be removed by returning FALSE from the bus
> func (handle_pipeline_message) as well. Would it make sense to handle
> it this way?
>

The problem is that if we don't get a message we are not sure the
watch is removed.
There are many cases where we could release the pipeline but receive
different events from the bus.

> > +
> >      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
> >      gst_object_unref(decoder->appsrc);
> >      decoder->appsrc = NULL;
> > @@ -534,7 +542,7 @@ static bool launch_pipeline(SpiceGstDecoder
> > *decoder)
> >      }
> >      bus = gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
> >      gst_bus_add_watch(bus, handle_pipeline_message, decoder);
> > -    gst_object_unref(bus);
> But the docs say that it is ok to unref the bus as the watch will take an additional
> reference on the bus.
>

Yes, it should be safe, but in this case the bus pointer is retained
to be able to remove the watch.
Yes, in theory we could store the bus pointer but still have the
gst_object_unref but nobody would prevent some other code to remove
the watch and make the pointer a dangling pointer. Keeping the
reference makes sure the pointer is not dangling.
Maybe a comment would help. I'll add one.

> Thanks,
> Vivek
> > +    decoder->bus = bus;
> >
> >      decoder->clock = gst_pipeline_get_clock(GST_PIPELINE(decoder-
> > >pipeline));
> >

Regards,
   Frediano
