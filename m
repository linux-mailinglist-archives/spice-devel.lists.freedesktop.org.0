Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 141186EB1B8
	for <lists+spice-devel@lfdr.de>; Fri, 21 Apr 2023 20:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC37F10EEBC;
	Fri, 21 Apr 2023 18:37:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F139110EEBC
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 18:37:36 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id
 5614622812f47-38e5c33305cso1731743b6e.3
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 11:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682102256; x=1684694256;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2D24IjBzilEueWcPg0OrABjB4ghgLJgz8rbX3hTUvC8=;
 b=DisNjVJCkIuHvutpUxrCQ3mH1ATs7+sFek+iM/upXTy+dnMSDX0B6Zi04ro31ac87F
 B/hV1bVQBmruC2h5ezZaspxGObpFr2sUWtOcw1KMQQvqLFum4r3wArJtLDBpL2J8a8kL
 bi/MnBQHx8xQvZLtK+CEnotfRa8WrLyg/JA3c8kLHYdhwHEX+dm3hQvQ2ntbWbimH9Mm
 I3RuNNKjbQ1nZPeVHqLV5vFo32D81681vC9eHZgzh6JbjQCZF//YB0o0YLPQdxRRunRa
 J5zQdrMe1gv0cpGTpYGVkhnxCQUMZ2YYP+CmCM4Bbq4DlQvycJAda0cuZ+LakaLC+PyC
 vw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682102256; x=1684694256;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2D24IjBzilEueWcPg0OrABjB4ghgLJgz8rbX3hTUvC8=;
 b=jItDWCRdLilHGBgy/IlbhilJvuqcu+43PDM2kfEBzwtTBbQ5Jo7I8h5maaOvGzF/qk
 7oZhzHnsHHt4hoNnjJ1MZRRjTWIiULRZ5H4PmDKIwz97kVks99+YOlHAE7pVuFSPEQQH
 h+JJVnkb0XEuDjzWbbaML4QO4lTh3Bh83VA1hjA+MsVR1C3mXPXaYqz5FyHR59MFIws9
 A7gLbJRQEPkVhNi2z38gVpBmOh4c806JKZMvT+6S6x3ALMmbFGjhozG9Yvm+BENVAa8A
 W+Uy3d1J4UaOthpVs/+t1DHIavhtlHocuPdftSc73Elk+A7LZE4i4hslUhrmsvjbxKHE
 2/Nw==
X-Gm-Message-State: AAQBX9fRCN29NDjf+dIHVWZzVZurzCkHRQ0E8uFz55M1i5K0bOjMTSJJ
 74eKWxVkISX6Mmthb+husCv+8lVgHplFGNT3bWcv+jAI
X-Google-Smtp-Source: AKy350Z+VJbWilYX2EAJIlDalXDyzyreJV8q2BEUWhOu1BSyBX3DLBkg9/lVQC4e6eFSjtNvsDrt/SaynxZWFZ6nOCQ=
X-Received: by 2002:a05:6808:638c:b0:38d:e097:aca1 with SMTP id
 ec12-20020a056808638c00b0038de097aca1mr3130635oib.15.1682102255735; Fri, 21
 Apr 2023 11:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <20230316054458.1546085-3-vivek.kasireddy@intel.com>
In-Reply-To: <20230316054458.1546085-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 21 Apr 2023 19:37:24 +0100
Message-ID: <CAHt6W4d+KMGjAi-NPnfN94jZYiVR3Sb4SuT=M-KiuiR5oKvB0g@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v1 2/5] dcc: Create a stream associated
 with gl_draw for non-gl clients
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
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> For non-gl/remote clients, if a stream does not exist or if any
> of the key parameters associated with gl_draw such as x/y or
> width/height are changed, then we create a new stream. Otherwise,
> we just update the current stream's timestamp.
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/dcc-private.h    |  2 ++
>  server/dcc.cpp          | 14 +++++++++++++
>  server/video-stream.cpp | 44 +++++++++++++++++++++++++++++++++++++++++
>  server/video-stream.h   |  2 ++
>  4 files changed, 62 insertions(+)
>
> diff --git a/server/dcc-private.h b/server/dcc-private.h
> index bf485aec..cd5b76a3 100644
> --- a/server/dcc-private.h
> +++ b/server/dcc-private.h
> @@ -69,6 +69,8 @@ struct DisplayChannelClientPrivate
>      uint32_t streams_max_latency;
>      uint64_t streams_max_bit_rate;
>      bool gl_draw_ongoing;
> +
> +    VideoStream *gl_draw_stream;

This raw pointer smells pretty bad. Defined here seems also to
indicate that every client could have a different draw stream, which
seems wrong.

>  };
>
>  #include "pop-visibility.h"
> diff --git a/server/dcc.cpp b/server/dcc.cpp
> index f0b355ca..9d91ca53 100644
> --- a/server/dcc.cpp
> +++ b/server/dcc.cpp
> @@ -525,6 +525,20 @@ RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient=
 *rcc, void *data, int num)
>      auto item =3D red::make_shared<RedGlDrawItem>();
>      item->draw =3D *draw;
>
> +    if (!dcc_is_gl_client(dcc)) {
> +        VideoStream *stream =3D dcc->priv->gl_draw_stream;
> +
> +        if (!stream ||
> +            stream->dest_area.left !=3D draw->x ||
> +            stream->dest_area.top !=3D draw->y ||
> +            stream->width !=3D draw->w || stream->height !=3D draw->h) {
> +            stream =3D display_channel_create_gl_draw_stream(dcc, draw);
> +        } else {
> +            stream->last_time =3D spice_get_monotonic_time_ns();
> +        }
> +        dcc->priv->gl_draw_stream =3D stream;

This rewrite with a create and not a destroy looks like a leak.
Why assign it even if you are not changing it?

> +    }
> +
>      return item;
>  }
>
> diff --git a/server/video-stream.cpp b/server/video-stream.cpp
> index 056d0c31..03a7d68d 100644
> --- a/server/video-stream.cpp
> +++ b/server/video-stream.cpp
> @@ -415,6 +415,47 @@ static void display_channel_create_stream(DisplayCha=
nnel *display, Drawable *dra
>                  stream->input_fps);
>  }
>
> +VideoStream *
> +display_channel_create_gl_draw_stream(DisplayChannelClient *dcc,
> +                                      const SpiceMsgDisplayGlDraw *draw)
> +{
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +    VideoStream *stream;
> +    SpiceRect dest_area =3D {
> +        .left =3D draw->x,
> +        .top =3D draw->y,
> +        .right =3D draw->w,
> +        .bottom =3D draw->h
> +    };
> +
> +    if (!(stream =3D display_channel_stream_try_new(display))) {
> +        return nullptr;
> +    }
> +
> +    ring_add(&display->priv->streams, &stream->link);
> +    stream->current =3D nullptr;
> +    stream->last_time =3D spice_get_monotonic_time_ns();
> +    stream->width =3D draw->w;
> +    stream->height =3D draw->h;
> +    stream->dest_area =3D dest_area;
> +    stream->refs =3D 1;
> +    stream->top_down =3D 1;
> +    stream->input_fps =3D MAX_FPS;
> +    stream->num_input_frames =3D 0;
> +    stream->input_fps_start_time =3D spice_get_monotonic_time_ns();
> +    display->priv->streams_size_total +=3D stream->width * stream->heigh=
t;
> +    display->priv->stream_count++;
> +
> +    dcc_create_stream(dcc, stream);
> +    spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
> +                display_channel_get_video_stream_id(display, stream), st=
ream->width,
> +                stream->height, stream->dest_area.left, stream->dest_are=
a.top,
> +                stream->dest_area.right, stream->dest_area.bottom,
> +                stream->input_fps);
> +
> +    return stream;
> +}
> +

This looks like a big copy&paste from another function. Could we not
reuse some code?

>  // returns whether a stream was created
>  static bool video_stream_add_frame(DisplayChannel *display,
>                               Drawable *frame_drawable,
> @@ -744,6 +785,9 @@ void dcc_create_stream(DisplayChannelClient *dcc, Vid=
eoStream *stream)
>      if (stream->current) {
>          region_clone(&agent->vis_region, &stream->current->tree_item.bas=
e.rgn);
>          region_clone(&agent->clip, &agent->vis_region);
> +    } else {
> +        region_add(&agent->vis_region, &stream->dest_area);
> +        region_clone(&agent->clip, &agent->vis_region);
>      }
>      agent->dcc =3D dcc;
>
> diff --git a/server/video-stream.h b/server/video-stream.h
> index 23b44ff5..a8b2c61c 100644
> --- a/server/video-stream.h
> +++ b/server/video-stream.h
> @@ -124,6 +124,8 @@ struct VideoStream {
>  };
>
>  void display_channel_init_video_streams(DisplayChannel *display);
> +VideoStream *display_channel_create_gl_draw_stream(DisplayChannelClient =
*dcc,
> +                                                   const SpiceMsgDisplay=
GlDraw *draw);
>  void video_stream_stop(DisplayChannel *display, VideoStream *stream);
>  void video_stream_trace_update(DisplayChannel *display, Drawable *drawab=
le);
>  void video_stream_maintenance(DisplayChannel *display, Drawable *candida=
te,
> --
> 2.37.2
>
