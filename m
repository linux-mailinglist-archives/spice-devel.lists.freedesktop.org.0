Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FA586D1E7
	for <lists+spice-devel@lfdr.de>; Thu, 29 Feb 2024 19:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD6910E201;
	Thu, 29 Feb 2024 18:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hTshfWXY";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CDD10E5B2
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 18:19:44 +0000 (UTC)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-60915328139so14483517b3.0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 10:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709230783; x=1709835583; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZSVrCmGL4D2n3czY9WGyBiP3BPaYyc3aMgWDBB1PaiE=;
 b=hTshfWXYLckoVIEDOs65159Y0xMhQbi8TpUISQk5N9Cfq/jryuWmzq/UFnm4/2szXC
 VVS7vJnG8fidlNJy9yKzh0IaYDuT3KbTNtmVybGtW9DdZH8Tv5dh5hcGoa/3lybGTqL+
 Ux7fm3Vx4tBbNiSn5/vGrVeBVxi8IAGElBcjWZO0w2ssjp/319MNICjrr7aMqTsbjGSF
 m3nG77boINyp7YqDGItNYy0zl7AQZxikDond5/hrYpTOzo62t7xfoB3ooM97c2fGTVmL
 /jbAQmFYyPHqJe0JvI4+VdjB23Pkd9D2XpEeYGwwIquVnrOY3uxo4JWSTpiilF3/r7x6
 fASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709230783; x=1709835583;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZSVrCmGL4D2n3czY9WGyBiP3BPaYyc3aMgWDBB1PaiE=;
 b=GPaJg0JyayEkEA9Oth7B0G9102g1g3uPOB9Ewvbyw0RpPy8YVCQ44pDdIPH/WbMWVW
 cMpwAMLJ+R/TgcKsmNAXTZVVPDmbbmwX5srojPxdupVmbdf4GGjjQb8hh0LjInghAb+X
 C5eAJWy4yz3E6eWUBKM6aY2OnI+vvR1PmxZgfPLaWBfxdHYqZyQ6bKg3tL6Pks1fyCSb
 CvzPQQAUFySdIKjpm/7NVpfalIYmWsYqn2lyTYpx8L0OneeaCeIIzFSfvfVMTvSK0iau
 0CjIU3K6slhhQrdYOtkuIoUcfLdXt7i8g/v7XHquh9lE+6iIFMdTSXF3W/QkcZiQ48ar
 kx6A==
X-Gm-Message-State: AOJu0Yzz48gHUC7MmIvIw39EDMW/mO8JI7eAdcB7q8PSc6uB1zP86ndu
 WTWje7NwKIet3wAJ9ui00lAN2WPEoeOtwWtNVQLL7r+6iQ0m2u4sNvGNNO0716eIdD9d9AF9RRo
 VG62Zib159X4amSFrdpqMhVAhdhg=
X-Google-Smtp-Source: AGHT+IGB6Zjt0nh15CgpOBJ6NoJgLx3BvIvGsoaBJO5WcZet9NSN6VSokFVmH1S40SeSTa/B6tGJfkaxsaGrUFU3nV8=
X-Received: by 2002:a25:8c07:0:b0:dc2:65da:d3af with SMTP id
 k7-20020a258c07000000b00dc265dad3afmr2777867ybl.65.1709230783027; Thu, 29 Feb
 2024 10:19:43 -0800 (PST)
MIME-Version: 1.0
References: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
 <20240228081730.1374127-3-vivek.kasireddy@intel.com>
In-Reply-To: <20240228081730.1374127-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 29 Feb 2024 18:19:32 +0000
Message-ID: <CAHt6W4cpVSfWf4mABn_pftO0qSr21Jf1L34gd3BfihP=yaDmig@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dcc: Create a stream associated with gl_draw for
 non-gl clients (v3)
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>, 
 =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>, 
 Dongwon Kim <dongwon.kim@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 28 feb 2024 alle ore 08:41 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> For non-gl/remote clients, if there is no stream associated with
> the DisplayChannel, then we create a new stream. Otherwise, we
> just update the current stream's timestamp.
>
> v2: (suggestions and fixups from Frediano)
> - Moved the gl_draw_stream object from DCC to DC
> - Moved the stream initialization code from display_channel_create_stream=
()
>   into a separate function that is reused when creating gl_draw_stream
>
> v3:
> - Create a new primary surface whenever a new stream gets created
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/dcc.cpp                   |   9 ++
>  server/display-channel-private.h |   1 +
>  server/display-channel.cpp       |   1 +
>  server/video-stream.cpp          | 140 ++++++++++++++++++++++++-------
>  server/video-stream.h            |   2 +
>  5 files changed, 121 insertions(+), 32 deletions(-)
>
> diff --git a/server/dcc.cpp b/server/dcc.cpp
> index ca73470a..92e69860 100644
> --- a/server/dcc.cpp
> +++ b/server/dcc.cpp
> @@ -523,6 +523,15 @@ RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient=
 *rcc, void *data, int num)
>          return RedPipeItemPtr();
>      }
>
> +    if (!dcc->is_gl_client()) {
> +        if (!display_channel_update_gl_draw_stream(dcc, draw)) {
> +            red_channel_warning(rcc->get_channel(),
> +                                "Cannot create or update stream");
> +            rcc->disconnect();
> +            return RedPipeItemPtr();
> +        }
> +    }
> +
>      dcc->priv->gl_draw_ongoing =3D TRUE;
>      auto item =3D red::make_shared<RedGlDrawItem>();
>      item->draw =3D *draw;
> diff --git a/server/display-channel-private.h b/server/display-channel-pr=
ivate.h
> index 04ac2c0d..e0693f54 100644
> --- a/server/display-channel-private.h
> +++ b/server/display-channel-private.h
> @@ -110,6 +110,7 @@ struct DisplayChannelPrivate
>      uint32_t stream_count;
>      std::array<VideoStream, NUM_STREAMS> streams_buf;
>      VideoStream *free_streams;
> +    VideoStream *gl_draw_stream;
>      Ring streams;
>      std::array<ItemTrace, NUM_TRACE_ITEMS> items_trace;
>      uint32_t next_item_trace;
> diff --git a/server/display-channel.cpp b/server/display-channel.cpp
> index 4bd0cf41..53a4724d 100644
> --- a/server/display-channel.cpp
> +++ b/server/display-channel.cpp
> @@ -2172,6 +2172,7 @@ display_channel_new(RedsState *reds, QXLInstance *q=
xl,
>                                           video_codecs, n_surfaces);
>      if (display) {
>          display_channel_set_stream_video(display.get(), stream_video);
> +        display->priv->gl_draw_stream =3D nullptr;
>      }
>      return display;
>  }
> diff --git a/server/video-stream.cpp b/server/video-stream.cpp
> index 056d0c31..5d4e2690 100644
> --- a/server/video-stream.cpp
> +++ b/server/video-stream.cpp
> @@ -20,6 +20,7 @@
>  #include "display-channel-private.h"
>  #include "main-channel-client.h"
>  #include "red-client.h"
> +#include "red-qxl.h"
>
>  #define FPS_TEST_INTERVAL 1
>  #define FOREACH_STREAMS(display, item)                  \
> @@ -366,48 +367,46 @@ static VideoStream *display_channel_stream_try_new(=
DisplayChannel *display)
>      return stream;
>  }
>
> -static void display_channel_create_stream(DisplayChannel *display, Drawa=
ble *drawable)
> +static void display_channel_init_stream(DisplayChannel *display,
> +                                        VideoStream *stream,
> +                                        Drawable *drawable,
> +                                        SpiceRect* src_rect)
>  {
> -    DisplayChannelClient *dcc;
> -    VideoStream *stream;
> -    SpiceRect* src_rect;
> -
> -    spice_assert(!drawable->stream);
> -
> -    if (!(stream =3D display_channel_stream_try_new(display))) {
> -        return;
> -    }
> -
> -    spice_assert(drawable->red_drawable->type =3D=3D QXL_DRAW_COPY);
> -    src_rect =3D &drawable->red_drawable->u.copy.src_area;
> +    SpiceBitmap *bitmap;
> +    uint64_t duration;
>
>      ring_add(&display->priv->streams, &stream->link);
> -    stream->current =3D drawable;
> -    stream->last_time =3D drawable->creation_time;
> +    stream->last_time =3D spice_get_monotonic_time_ns();
>      stream->width =3D src_rect->right - src_rect->left;
>      stream->height =3D src_rect->bottom - src_rect->top;
> -    stream->dest_area =3D drawable->red_drawable->bbox;
> +    stream->dest_area =3D *src_rect;
>      stream->refs =3D 1;
> -    SpiceBitmap *bitmap =3D &drawable->red_drawable->u.copy.src_bitmap->=
u.bitmap;
> -    stream->top_down =3D !!(bitmap->flags & SPICE_BITMAP_FLAGS_TOP_DOWN)=
;
> -    drawable->stream =3D stream;
> -    /* Provide an fps estimate the video encoder can use when initializi=
ng
> -     * based on the frames that lead to the creation of the stream. Roun=
d to
> -     * the nearest integer, for instance 24 for 23.976.
> -     */
> -    uint64_t duration =3D drawable->creation_time - drawable->first_fram=
e_time;
> -    if (duration > NSEC_PER_SEC * drawable->frames_count / MAX_FPS) {
> -        stream->input_fps =3D (NSEC_PER_SEC * drawable->frames_count + d=
uration / 2) / duration;
> -    } else {
> -        stream->input_fps =3D MAX_FPS;
> -    }
> +    stream->input_fps =3D MAX_FPS * 2;
>      stream->num_input_frames =3D 0;
> -    stream->input_fps_start_time =3D drawable->creation_time;
> +    stream->input_fps_start_time =3D stream->last_time;
>      display->priv->streams_size_total +=3D stream->width * stream->heigh=
t;
>      display->priv->stream_count++;
> -    FOREACH_DCC(display, dcc) {
> -        dcc_create_stream(dcc, stream);
> +
> +    stream->current =3D drawable;
> +    if (drawable) {
> +        drawable->stream =3D stream;
> +        stream->last_time =3D drawable->creation_time;
> +        stream->dest_area =3D drawable->red_drawable->bbox;
> +        bitmap =3D &drawable->red_drawable->u.copy.src_bitmap->u.bitmap;
> +        stream->top_down =3D !!(bitmap->flags & SPICE_BITMAP_FLAGS_TOP_D=
OWN);
> +
> +        /* Provide an fps estimate the video encoder can use when initia=
lizing
> +         * based on the frames that lead to the creation of the stream. =
Round
> +         * to the nearest integer, for instance 24 for 23.976.
> +         */
> +        duration =3D drawable->creation_time - drawable->first_frame_tim=
e;
> +        if (duration > NSEC_PER_SEC * drawable->frames_count / MAX_FPS) =
{
> +            stream->input_fps =3D (NSEC_PER_SEC * drawable->frames_count=
 + duration / 2) / duration;
> +        } else {
> +            stream->input_fps =3D MAX_FPS;
> +        }
>      }
> +
>      spice_debug("stream %d %dx%d (%d, %d) (%d, %d) %u fps",
>                  display_channel_get_video_stream_id(display, stream), st=
ream->width,
>                  stream->height, stream->dest_area.left, stream->dest_are=
a.top,
> @@ -415,6 +414,83 @@ static void display_channel_create_stream(DisplayCha=
nnel *display, Drawable *dra
>                  stream->input_fps);
>  }
>
> +static void display_channel_create_stream(DisplayChannel *display,
> +                                          Drawable *drawable)
> +{
> +    DisplayChannelClient *dcc;
> +    VideoStream *stream;
> +    SpiceRect* src_rect;
> +
> +    spice_assert(!drawable->stream);
> +
> +    if (!(stream =3D display_channel_stream_try_new(display))) {
> +        return;
> +    }
> +
> +    spice_assert(drawable->red_drawable->type =3D=3D QXL_DRAW_COPY);
> +    src_rect =3D &drawable->red_drawable->u.copy.src_area;
> +
> +    display_channel_init_stream(display, stream, drawable, src_rect);
> +    FOREACH_DCC(display, dcc) {
> +        dcc_create_stream(dcc, stream);
> +    }
> +}
> +
> +bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           const SpiceMsgDisplayGlDraw *=
draw)
> +{
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +    QXLInstance* qxl =3D display->priv->qxl;
> +    SpiceMsgDisplayGlScanoutUnix *scanout =3D red_qxl_get_gl_scanout(qxl=
);
> +    VideoStream *stream =3D display->priv->gl_draw_stream;
> +    uint32_t w =3D draw->w, h =3D draw->h, top_down =3D 1;
> +    SpiceRect dest_area =3D {
> +        .left =3D draw->x,
> +        .top =3D draw->y,
> +        .right =3D draw->w,
> +        .bottom =3D draw->h
> +    };
> +
> +    if (scanout !=3D nullptr) {
> +        top_down =3D (scanout->flags & SPICE_GL_SCANOUT_FLAGS_Y0TOP) ? 0=
 : 1;
> +        w =3D scanout->width;
> +        h =3D scanout->height;
> +    }
> +    red_qxl_put_gl_scanout(qxl, scanout);

This part changed since last post with no notes. Qemu bug? There
should be no need to look at scanout, draw should be sync with.

red_qxl_put_gl_scanout could be moved inside the if.

> +
> +    if (stream) {
> +        if (stream->dest_area.left =3D=3D draw->x &&
> +            stream->dest_area.top =3D=3D draw->y &&
> +            stream->width =3D=3D draw->w &&
> +            stream->height =3D=3D draw->h &&
> +            stream->top_down =3D=3D top_down) {
> +            stream->last_time =3D spice_get_monotonic_time_ns();
> +            return true;
> +        }
> +    }
> +
> +    if (display->priv->surfaces[0]) {
> +        display_channel_surface_id_unref(display, 0);
> +    }
> +    display_channel_create_surface(display, 0, w, h, w * 4,
> +                                   SPICE_SURFACE_FMT_32_xRGB,
> +                                   NULL, 1, TRUE);

minor: "nullptr, true, true);"


> +    display_channel_set_monitors_config_to_primary(display);
> +    display_channel_push_monitors_config(display);
> +    display->pipes_add_empty_msg(SPICE_MSG_DISPLAY_MARK);
> +    display->push();
> +
> +    if (!(stream =3D display_channel_stream_try_new(display))) {
> +        return false;
> +    }
> +    stream->top_down =3D top_down;
> +    display->priv->gl_draw_stream =3D stream;
> +    display_channel_init_stream(display, stream, nullptr, &dest_area);
> +    dcc_create_stream(dcc, stream);
> +
> +    return true;
> +}
> +
>  // returns whether a stream was created
>  static bool video_stream_add_frame(DisplayChannel *display,
>                               Drawable *frame_drawable,
> diff --git a/server/video-stream.h b/server/video-stream.h
> index 23b44ff5..a35a00b6 100644
> --- a/server/video-stream.h
> +++ b/server/video-stream.h
> @@ -124,6 +124,8 @@ struct VideoStream {
>  };
>
>  void display_channel_init_video_streams(DisplayChannel *display);
> +bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           const SpiceMsgDisplayGlDraw *=
draw);
>  void video_stream_stop(DisplayChannel *display, VideoStream *stream);
>  void video_stream_trace_update(DisplayChannel *display, Drawable *drawab=
le);
>  void video_stream_maintenance(DisplayChannel *display, Drawable *candida=
te,

Frediano
