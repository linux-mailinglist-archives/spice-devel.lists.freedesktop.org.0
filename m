Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 005ED7E10FD
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 21:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE1510E045;
	Sat,  4 Nov 2023 20:53:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1457910E045
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 20:53:44 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 46e09a7af769-6ce2de8da87so2018552a34.1
 for <spice-devel@lists.freedesktop.org>; Sat, 04 Nov 2023 13:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699131223; x=1699736023; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=BpIyiivf+9sxOFnXwQPz0HHFYH9+cdfVpcGZbXTlzjk=;
 b=kmAgWQywDo4pVb1asYYPz35+nPLJuWd7hTvR4JYWttgO8/YC8Oqc5bRD8nfZfM8rDj
 Ul+CopNkjwNmqP09Q+/Oqu34C8kw0Vwp4g1HU8PjaUwkmKLo+7bw6hAS4mjd4ub5BkFn
 1nHyqgxa4+0JA3zNpING9JGCio8wgyR5IBLpN3uAhvR4WjnQiMja6adtO72Eay3fLZP+
 dSDblEnf//wmWeLAu2xPiU1YHizW2VzRPKiTEF5/W/1dHsbpjg3RvcpnRxyZlsOYtB0v
 TFXUJ8H/eadXeY4F/Vyw6/I0ZroHGP73MkhopMWu0qMMjLiyfCrzHYgg5smD/fJZBKNc
 CWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699131223; x=1699736023;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BpIyiivf+9sxOFnXwQPz0HHFYH9+cdfVpcGZbXTlzjk=;
 b=cF/gYLVmq38PNqZGMcoV6YnZykswI2u0m6cXzQhD687Hlky4BC9qAFKPafmS3Lzyzr
 pdwEq1yGg0oPZENnro8fNgWAlyQd2W2BEYZhE1lF3UXF7AwA96PD/+QeZiYHnWmk1Kxn
 TI9z6fWttoN86HqKPJ69cJM6u+IymcCsANzIzZ2+AxD0v6DWmrmInXzAIVRwPb1ZAyv2
 qC8h6JUnMjj6EJAzx2FObPETFoZzLed5Z5GGhaqsB+UjKQDqHDxeuapMM7kC6xOq6GVP
 XI8au87zxtwySrygG6bR69kJyLwRS5+JkvGQ5dCnMBBWwwPRH7wLXOuuR+y96roD5kQW
 iYFg==
X-Gm-Message-State: AOJu0YwI/lGH9DN6gjj6GIh3ZSLnmAPVQB+BoeCJ5NIYPKzjNJUPMznr
 o1r6xOKd8ESjXFPRuYQzCBUKBnETUt/euDM6KkgFgpOb
X-Google-Smtp-Source: AGHT+IHAOG1JafB+YVsUfs0BGPidEf6u7Ezeq8kbO6Qo2GFB/p0UR2CoQvLIBlVE23dWyTjmIrLf2LwYs09ZhhX9RfQ=
X-Received: by 2002:a9d:6ac3:0:b0:6b8:9483:35ba with SMTP id
 m3-20020a9d6ac3000000b006b8948335bamr26542334otq.24.1699131223204; Sat, 04
 Nov 2023 13:53:43 -0700 (PDT)
MIME-Version: 1.0
References: <20231103085120.1339-1-freddy77@gmail.com>
 <20231103085120.1339-2-freddy77@gmail.com>
 <IA0PR11MB7185721625533B50371249EAF8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185721625533B50371249EAF8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 4 Nov 2023 20:53:32 +0000
Message-ID: <CAHt6W4drZNj_mNk6Rri-oxphaET3-vN86ZD_hmEmOeR40vu3_w@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Fallback to S/W
 decoder if H/W one is not working
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

Il giorno sab 4 nov 2023 alle ore 16:19 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > In case the H/W decoder is not able to decode the stream (like too high
> > profile) try the S/W version.
> > This is done detecting the failure and trying to recreate the pipeline
> > in case:
> > - we are using a H/W pipeline;
> > - we didn't decode any frame (otherwise it means we lost the beginning
> >   or it was not a problem of H/W decoder).
> >
> > Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> > ---
> >  src/channel-display-gst.c | 43 ++++++++++++++++++++++++++++++++++-----
> >  1 file changed, 38 insertions(+), 5 deletions(-)
> >
> > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > index 6e126000..1238c943 100644
> > --- a/src/channel-display-gst.c
> > +++ b/src/channel-display-gst.c
> > @@ -48,6 +48,8 @@ typedef struct SpiceGstDecoder {
> >      GstElement *pipeline;
> >      GstClock *clock;
> >      GstBus *bus;
> > +    bool is_hw_pipeline;
> > +    bool frame_removed;
> >
> >      /* ---------- Decoding and display queues ---------- */
> >
> > @@ -125,6 +127,7 @@ static void free_gst_frame(SpiceGstFrame *gstframe)
> >  /* ---------- GStreamer pipeline ---------- */
> >
> >  static void schedule_frame(SpiceGstDecoder *decoder);
> > +static void try_sw_pipeline(SpiceGstDecoder *decoder);
> >
> >  RECORDER(frames_stats, 64, "Frames statistics");
> >
> > @@ -231,6 +234,7 @@ static guint32 pop_up_to_frame(SpiceGstDecoder
> > *decoder, const SpiceGstFrame *po
> >      SpiceGstFrame *gstframe;
> >      guint32 freed = 0;
> >
> > +    decoder->frame_removed = true;
> >      while ((gstframe = g_queue_pop_head(decoder->decoding_queue)) !=
> > popframe) {
> >          free_gst_frame(gstframe);
> >          freed++;
> > @@ -371,6 +375,7 @@ static void free_pipeline(SpiceGstDecoder *decoder)
> >      decoder->clock = NULL;
> >      gst_object_unref(decoder->pipeline);
> >      decoder->pipeline = NULL;
> > +    decoder->is_hw_pipeline = false;
> >  }
> >
> >  static gboolean handle_pipeline_message(GstBus *bus, GstMessage *msg,
> > gpointer video_decoder)
> > @@ -390,8 +395,12 @@ static gboolean handle_pipeline_message(GstBus
> > *bus, GstMessage *msg, gpointer v
> >          }
> >          g_clear_error(&err);
> >
> > -        /* We won't be able to process any more frame anyway */
> > -        free_pipeline(decoder);
> If you keep the above line, I think you can avoid the else below;
> given that you are freeing the pipeline anyway in try_sw_pipeline?
>

Done

> > +        if (decoder->is_hw_pipeline && !decoder->frame_removed) {
> > +            try_sw_pipeline(decoder);
> > +        } else {
> > +            /* We won't be able to process any more frame anyway */
> > +            free_pipeline(decoder);
> > +        }
> >          break;
> >      }
> >      case GST_MESSAGE_STREAM_START: {
> > @@ -670,6 +679,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> > *decoder)
> >      }
> >
> >      decoder->pipeline = pipeline;
> > +    decoder->is_hw_pipeline = true;
> >      return launch_pipeline(decoder);
> >
> >  err:
> > @@ -702,7 +712,7 @@ err:
> >      return false;
> >  }
> >
> > -static gboolean create_pipeline(SpiceGstDecoder *decoder)
> > +static gboolean create_pipeline(SpiceGstDecoder *decoder, bool
> > try_hw_pipeline)
> >  {
> >      GstElement *playbin, *sink;
> >      SpiceGstPlayFlags flags;
> > @@ -712,7 +722,7 @@ static gboolean create_pipeline(SpiceGstDecoder
> > *decoder)
> >
> >      if (vendor == VENDOR_GPU_DETECTED ||
> >          vendor == VENDOR_GPU_UNKNOWN) {
> > -        if (try_intel_hw_pipeline(decoder)) {
> > +        if (try_hw_pipeline && try_intel_hw_pipeline(decoder)) {
> >              return TRUE;
> >          }
> >      }
> > @@ -995,7 +1005,7 @@ VideoDecoder* create_gstreamer_decoder(int
> > codec_type, display_stream *stream)
> >          g_mutex_init(&decoder->queues_mutex);
> >          decoder->decoding_queue = g_queue_new();
> >
> > -        if (!create_pipeline(decoder)) {
> > +        if (!create_pipeline(decoder, true)) {
> >              decoder->base.destroy((VideoDecoder*)decoder);
> >              decoder = NULL;
> >          }
> > @@ -1064,3 +1074,26 @@ gboolean gstvideo_has_codec(int codec_type)
> >      gst_plugin_feature_list_free(all_decoders);
> >      return TRUE;
> >  }
> > +
> > +static void try_sw_pipeline(SpiceGstDecoder *decoder)
> > +{
> > +    // try to create a S/W pipeline
> > +    free_pipeline(decoder);
> > +    if (!create_pipeline(decoder, false)) {
> > +        return;
> > +    }
> > +
> > +    // reply the old queue
> replay?
>

Yes, typo

> Thanks,
> Vivek
> > +    g_mutex_lock(&decoder->queues_mutex);
> > +    GList *l = g_queue_peek_head_link(decoder->decoding_queue);
> > +    while (l) {
> > +        const SpiceGstFrame *gstframe = l->data;
> > +        GstBuffer *buf = gst_buffer_ref(gstframe->encoded_buffer);
> > +        if (gst_app_src_push_buffer(decoder->appsrc, buf) != GST_FLOW_OK) {
> > +            SPICE_DEBUG("GStreamer error: unable to push frame");
> > +            stream_dropped_frame_on_playback(decoder->base.stream);
> > +        }
> > +        l = l->next;
> > +    }
> > +    g_mutex_unlock(&decoder->queues_mutex);
> > +}

Regards,
   Frediano
