Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7D086F669
	for <lists+spice-devel@lfdr.de>; Sun,  3 Mar 2024 18:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5863810F07D;
	Sun,  3 Mar 2024 17:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IhLPpsPC";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793C110F07D
 for <spice-devel@lists.freedesktop.org>; Sun,  3 Mar 2024 17:28:00 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id
 3f1490d57ef6-dcc7cdb3a98so3581037276.2
 for <spice-devel@lists.freedesktop.org>; Sun, 03 Mar 2024 09:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709486879; x=1710091679; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=G7Zh9tPH/hvOsMO/xjsa9aVnvcqUbnlh4YwXn/CUNgI=;
 b=IhLPpsPCYIVBXxjGAxN2yiOmUgZRlqn/VvXOMhh4f1UAOszFItn7IrFNWR0Dt1rJJ3
 HrNnWV5LpDhzcdy3IuoemGc03Y/wxMLDN/XGpzGIkgIWjp32YlOYKaEep8RKSIyqsgEl
 9uLQ2Mg5Hu6mixXSMMDVymDJ5jN60YW4Od+o4IjOJPsN5PnpzuOrrixMvL9vxMaAQxQw
 Jrlt8hhejjtI0sEZEnjHN6lSAZy08kfeYGSfaSdz4lRc9VNLQ3SUWVZCA2xmfRA7EE3z
 tLB46DaBmRNIZVcEuP5ySlLNz2JhH8fPjNgH7wIINjBfe7EHnBOCirw9IR7E8qdzVGc2
 p9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709486879; x=1710091679;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=G7Zh9tPH/hvOsMO/xjsa9aVnvcqUbnlh4YwXn/CUNgI=;
 b=SLXTJ7qrmeeUdCE1vuTbcb3dX3qSKo1gWfn0B92HYtgkGAAscL+BsfWbyT203cKXdy
 x8x8lqpgYfHccDXz+H1b6zgi+rldjBgUGxSVsJiQ5JIb1xbIGDXIv3PgHDXuVpMgjXWO
 mlNMV4VtQrRqUls3ITjLS/+s18M5djN6hgZM4ETU32qv5zSQx5gtZ5X9FuxaZAPp5AJD
 6tCTKXVQfrs7mtpKINvtV/6S1GsJuuUSteWQfHZAR45C6u7kOG2knoW5LPyxz7NDx6XL
 GLqJNYnHUgG6PnaWYUu3Xl3GP4mhid6QtkvCNycrg5wsIM+o6qPm9pJE5mv0RTYdu773
 K/5w==
X-Gm-Message-State: AOJu0YwH78G+6WMM3LJqt2Lsg5BlkYWwCJSKw8zySMvnKKc4A5RT1R9T
 g+cWmInxiCWgaHdjK48Jof8AHAjzVlTOtAy1ohVaf9ELBGc8ZlTyF48EHa9ZOQyNjQGFwig5Qv7
 QlmEZ5UWzVapH4NZnLgPBNAd2Olk=
X-Google-Smtp-Source: AGHT+IHBX2KQmS4m2zlNvuS1PMoZQ5JNqlXojJFgntRh0iroOaZ+6y16xKWZTg5QkAoD3rXwh4TCLDyaLlJcTmWczS8=
X-Received: by 2002:a25:ad67:0:b0:dc7:483d:5903 with SMTP id
 l39-20020a25ad67000000b00dc7483d5903mr4513433ybe.17.1709486879222; Sun, 03
 Mar 2024 09:27:59 -0800 (PST)
MIME-Version: 1.0
References: <20240302025656.1385463-1-vivek.kasireddy@intel.com>
 <20240302025656.1385463-3-vivek.kasireddy@intel.com>
In-Reply-To: <20240302025656.1385463-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 3 Mar 2024 17:27:48 +0000
Message-ID: <CAHt6W4dJZmBwf095nHbvXH9+saZuuUWgQAArPV3sKnu7gz8XhA@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] dcc: Create a stream associated with gl_draw for
 non-gl clients (v4)
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

Il giorno sab 2 mar 2024 alle ore 03:21 Vivek Kasireddy
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
> v4:
> - Use nullptr instead of NULL and true instead of TRUE (Frediano)
> - Create the stream as part of gl scanout instead of gl draw operation
>   so that if would be easily possible to obtain key params such as
>   stride, flags, etc
> - Store key params such as fd, flags, stride, etc in the stream so that
>   we do not have to look at scanout again
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/dcc.cpp                   |  19 +++-
>  server/display-channel-private.h |   1 +
>  server/display-channel.cpp       |   1 +
>  server/video-stream.cpp          | 166 +++++++++++++++++++++++++------
>  server/video-stream.h            |   6 ++
>  5 files changed, 159 insertions(+), 34 deletions(-)
>
> diff --git a/server/dcc.cpp b/server/dcc.cpp
> index ca73470a..3cc1e5a9 100644
> --- a/server/dcc.cpp
> +++ b/server/dcc.cpp
> @@ -495,17 +495,23 @@ RedSurfaceDestroyItem::RedSurfaceDestroyItem(uint32=
_t surface_id)
>  RedPipeItemPtr dcc_gl_scanout_item_new(RedChannelClient *rcc, void *data=
, int num)
>  {
>      auto dcc =3D static_cast<DisplayChannelClient *>(rcc);
> +    auto scanout =3D static_cast<SpiceMsgDisplayGlScanoutUnix *>(data);
>

"data" is always nullptr.

>      if (dcc->is_gl_client()) {
>          return red::make_shared<RedGlScanoutUnixItem>();
>      } else if (rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
> -        return RedPipeItemPtr();
> +        if (!display_channel_create_gl_draw_stream(dcc, scanout)) {
> +            red_channel_warning(rcc->get_channel(),
> +                                "Cannot create GL stream");
> +            rcc->disconnect();
> +        }
>      } else {
>          red_channel_warning(rcc->get_channel(),
>                              "Client does not support GL scanout or multi=
ple codecs");
>          rcc->disconnect();
> -        return RedPipeItemPtr();
>      }
> +
> +    return RedPipeItemPtr();
>  }
>
>  XXX_CAST(RedChannelClient, DisplayChannelClient, DISPLAY_CHANNEL_CLIENT)=
;
> @@ -523,6 +529,15 @@ RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient=
 *rcc, void *data, int num)
>          return RedPipeItemPtr();
>      }
>
> +    if (!dcc->is_gl_client()) {
> +        if (!display_channel_update_gl_draw_stream(dcc, draw)) {
> +            red_channel_warning(rcc->get_channel(),
> +                                "Cannot update GL stream");
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
> index 056d0c31..b62b2924 100644
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

If drawable is valid we are computing the time even if it is useless.

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

Why MAX_FPS * 2 ?? It was MAX_FPS.

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
> @@ -415,6 +414,109 @@ static void display_channel_create_stream(DisplayCh=
annel *display, Drawable *dra
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
> +bool display_channel_create_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           SpiceMsgDisplayGlScanoutUnix =
*scanout)
> +{
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +    QXLInstance* qxl =3D display->priv->qxl;
> +    VideoStream *stream;
> +
> +    if (!scanout) {
> +        scanout =3D red_qxl_get_gl_scanout(qxl);
> +        /* If the scanout is NULL, it could mean the scanout is explicit=
ly
> +         * (or temporarily) disabled, which is not an error condition.
> +         */
> +        if (!scanout) {
> +            return true;
> +        }
> +    }
> +
> +    SpiceRect dest_area =3D {
> +        .left =3D 0,
> +        .top =3D 0,
> +        .right =3D scanout->width,
> +        .bottom =3D scanout->height
> +    };
> +
> +    if (display->priv->surfaces[0]) {
> +        display_channel_surface_id_unref(display, 0);
> +    }
> +    display_channel_create_surface(display, 0, scanout->width,
> +                                   scanout->height, scanout->stride,
> +                                   SPICE_SURFACE_FMT_32_xRGB,
> +                                   nullptr, true, true);
> +
> +    display_channel_set_monitors_config_to_primary(display);
> +    display_channel_push_monitors_config(display);
> +    display->pipes_add_empty_msg(SPICE_MSG_DISPLAY_MARK);
> +    display->push();
> +
> +    if (!(stream =3D display_channel_stream_try_new(display))) {
> +        red_qxl_put_gl_scanout(qxl, scanout);
> +        return false;
> +    }
> +
> +    stream->top_down =3D (scanout->flags & SPICE_GL_SCANOUT_FLAGS_Y0TOP)=
 ? 0 : 1;
> +    stream->stride =3D scanout->stride;
> +    stream->drm_dma_buf_fd =3D scanout->drm_dma_buf_fd;

That is pretty dangerous there's no ownership handling. But I
understand why this would make things easier. I'll think about it.

> +    display->priv->gl_draw_stream =3D stream;
> +    display_channel_init_stream(display, stream, nullptr, &dest_area);
> +    dcc_create_stream(dcc, stream);

That sounds in principle wrong if there were multiple clients connected.

> +
> +    red_qxl_put_gl_scanout(qxl, scanout);
> +    return true;
> +}
> +
> +bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           const SpiceMsgDisplayGlDraw *=
draw)
> +{
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +    VideoStream *stream =3D display->priv->gl_draw_stream;
> +    SpiceRect dest_area =3D {
> +        .left =3D draw->x,
> +        .top =3D draw->y,
> +        .right =3D draw->w,
> +        .bottom =3D draw->h
> +    };
> +
> +    if (stream) {
> +        stream->width =3D draw->w;
> +        stream->height =3D draw->h;
> +        stream->dest_area =3D dest_area;
> +        stream->last_time =3D spice_get_monotonic_time_ns();
> +        return true;
> +    }
> +
> +    /* Ideally, the stream should be created as part of gl scanout opera=
tion
> +     * but when there are no clients connected, a stream won't be create=
d.
> +     * However, when clients start connecting, a gl draw will happen fir=
st
> +     * which is why we need to create a stream below.
> +     */
> +    return display_channel_create_gl_draw_stream(dcc, nullptr);
> +}
> +
>  // returns whether a stream was created
>  static bool video_stream_add_frame(DisplayChannel *display,
>                               Drawable *frame_drawable,
> diff --git a/server/video-stream.h b/server/video-stream.h
> index 23b44ff5..4ae13958 100644
> --- a/server/video-stream.h
> +++ b/server/video-stream.h
> @@ -113,6 +113,8 @@ struct VideoStream {
>      red_time_t last_time;
>      int width;
>      int height;
> +    int stride;

This is usually uint32_t.

> +    int drm_dma_buf_fd;
>      SpiceRect dest_area;
>      int top_down;
>      VideoStream *next;
> @@ -124,6 +126,10 @@ struct VideoStream {
>  };
>
>  void display_channel_init_video_streams(DisplayChannel *display);
> +bool display_channel_create_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           SpiceMsgDisplayGlScanoutUnix =
*scanout);
> +bool display_channel_update_gl_draw_stream(DisplayChannelClient *dcc,
> +                                           const SpiceMsgDisplayGlDraw *=
draw);
>  void video_stream_stop(DisplayChannel *display, VideoStream *stream);
>  void video_stream_trace_update(DisplayChannel *display, Drawable *drawab=
le);
>  void video_stream_maintenance(DisplayChannel *display, Drawable *candida=
te,

Frediano
