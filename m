Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8395686D208
	for <lists+spice-devel@lfdr.de>; Thu, 29 Feb 2024 19:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F93710E572;
	Thu, 29 Feb 2024 18:23:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NtxffFkM";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B47310E572
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 18:23:07 +0000 (UTC)
Received: by mail-yb1-f171.google.com with SMTP id
 3f1490d57ef6-dc6d8bd612dso1358524276.1
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 10:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709230986; x=1709835786; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=riOv48OwcpB7gPmSNMRfZOU58sukGCOnf58GX/mHYdI=;
 b=NtxffFkMvxiV5k2sFRPiC6Clwcwhc0HbgfdFclmuuzPKc9IEgKsJ6AnDP6pU3cIA6Q
 URxH4zYYobkPH4g3rC7hM+My00AhFrGWwS3d5W7AxkZMBKSp05UAoLy4yLl2rnrYO6Po
 M4eJsj0+hmrYQNhV1zEjC2TCNafS0mRvXtwMSDOMooLK36lfJZCHqMzySgZ24dl5jZJj
 7D9HeLU/PoZK8/Qt2cjF5gchNLYKM7L8nUbZHp2Kei0bMpgN6jCs80+26CkeHiT/D4TM
 erNr5cAbgES5wMf8Fn9I4a02E8oT+FVVK+xuGTErwuELnu2Qi//H0c0uOEp/PFaOcMcF
 FWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709230986; x=1709835786;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=riOv48OwcpB7gPmSNMRfZOU58sukGCOnf58GX/mHYdI=;
 b=tfCbeAu1WCHmWz9BpxQJDAJvc2y4atyxWJzMpsxGTtDd/V5gvIgCWRrcA17edT4GAZ
 3sIs1JSt61ZCvw9FZbCNXOEitRZ/o5e8kjDuxE2aRMgSSP7kuUyMj0jHBKVQdyfkvh57
 Bz91ked73ahFlBk9ue6XXlOXt3ezPILCok7D/HQko2Ropr/BoJ82yt2jNmtxNDIVtiib
 9MGn2XeyMP1UaQUBGdM1LmhoRKeklOiAuZVZnWKZi/nqhrZWHi06kXSyDZjP3PaA8Wlm
 lg0uNH54pwQd1tHFDxk827dLpdEK3/5aMFUz/DEez2mGyur+ZJ04WWr4bWQ5/h/Ojpgc
 4P3A==
X-Gm-Message-State: AOJu0YzR+wWaEImc6g54NjIy+Tl3tpXJ6orUezht4/TZhQF+Z+fH3iCT
 eDFhco1ArQsL0NPU+Gfjo3u8WWAfh/ISP0QOA5Pgm8xeggO2IPbGw4S89gd9ulcTXXK+k8YBiiH
 +QX1gNlYYcIhBq7U/o6Po1d1LrBY=
X-Google-Smtp-Source: AGHT+IFvElKnVNYQ4cVlrPLR1+QdtVyZRtZNFZ83jyPq1IDwYw52/E2kgOUtXKSoJFOFVX51h+TfnGBR1Lcp2WJgEno=
X-Received: by 2002:a25:838d:0:b0:dbf:15a:c9e4 with SMTP id
 t13-20020a25838d000000b00dbf015ac9e4mr3254984ybk.48.1709230986496; Thu, 29
 Feb 2024 10:23:06 -0800 (PST)
MIME-Version: 1.0
References: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
 <20240228081730.1374127-5-vivek.kasireddy@intel.com>
In-Reply-To: <20240228081730.1374127-5-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 29 Feb 2024 18:22:55 +0000
Message-ID: <CAHt6W4csR+zNDidBTd64+r_kQXfsN90c91yB2gat4VH2tn=8nw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] gstreamer-encoder: Add an encoder function that
 takes dmabuf fd as input (v2)
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
> This patch adds a new function to enable the creation of Gst memory with
> the dmabuf fd as the source by using a dmabuf allocator. And, it also
> adds a mechanism to register and invoke any callbacks once the Gst memory
> object is no longer used by the pipeline.
>
> This patch also ensures that the source_fps value is always non-zero.
>
> v2: (suggestions from Frediano)
> - Moved the code associated with add_frame() and pipeline configuration
>   into separate functions that are used when encoding dmabuf fd
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  meson.build                |   2 +-
>  server/gstreamer-encoder.c | 164 ++++++++++++++++++++++++++++++-------
>  2 files changed, 135 insertions(+), 31 deletions(-)
>
> diff --git a/meson.build b/meson.build
> index b1237e61..d6aea60a 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -131,7 +131,7 @@ endforeach
>  spice_server_has_gstreamer =3D false
>  spice_server_gst_version =3D get_option('gstreamer')
>  if spice_server_gst_version !=3D 'no'
> -  gst_deps =3D ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstream=
er-video']
> +  gst_deps =3D ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstream=
er-video', 'gstreamer-allocators']
>    foreach dep : gst_deps
>      dep =3D '@0@-@1@'.format(dep, spice_server_gst_version)
>      spice_server_deps +=3D dependency(dep)

Forgot to send, update for Autoconf:

diff --git a/configure.ac b/configure.ac
index ff13ee3a..5ad947ca 100644
--- a/configure.ac
+++ b/configure.ac
@@ -99,7 +99,7 @@ AC_ARG_ENABLE(gstreamer,
               [enable_gstreamer=3D"auto"])

 if test "x$enable_gstreamer" !=3D "xno" && test "x$enable_gstreamer" !=3D
"x0.10"; then
-    SPICE_CHECK_GSTREAMER(GSTREAMER_1_0, 1.0, [gstreamer-1.0
gstreamer-base-1.0 gstreamer-app-1.0 gstreamer-video-1.0],
+    SPICE_CHECK_GSTREAMER(GSTREAMER_1_0, 1.0, [gstreamer-1.0
gstreamer-base-1.0 gstreamer-app-1.0 gstreamer-video-1.0
gstreamer-allocators-1.0],
         [enable_gstreamer=3D"1.0"
          SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
[gst-plugins-base 1.0], [appsrc videoconvert appsink])
          SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
[gstreamer-libav 1.0], [avenc_mjpeg])



> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index be8e3111..33e65345 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -27,6 +27,7 @@
>  #  pragma GCC diagnostic ignored "-Wunused-const-variable"
>  #endif
>  #include <gst/gst.h>
> +#include <gst/allocators/gstdmabuf.h>
>  #include <gst/app/gstappsrc.h>
>  #include <gst/app/gstappsink.h>
>  #include <gst/video/video.h>
> @@ -283,6 +284,7 @@ typedef struct SpiceGstEncoder {
>
>      /* How many frames were dropped by the server since the last encoded=
 frame. */
>      uint32_t server_drops;
> +    GstAllocator *allocator;
>  } SpiceGstEncoder;
>
>
> @@ -318,8 +320,12 @@ static inline double get_mbps(uint64_t bit_rate)
>   */
>  static uint32_t get_source_fps(const SpiceGstEncoder *encoder)
>  {
> -    return encoder->cbs.get_source_fps ?
> -        encoder->cbs.get_source_fps(encoder->cbs.opaque) : SPICE_GST_DEF=
AULT_FPS;
> +    uint32_t source_fps =3D 0;
> +
> +    if (encoder->cbs.get_source_fps) {
> +        source_fps =3D encoder->cbs.get_source_fps(encoder->cbs.opaque);
> +    }
> +    return source_fps ? source_fps : SPICE_GST_DEFAULT_FPS;
>  }
>
>  static uint32_t get_network_latency(const SpiceGstEncoder *encoder)
> @@ -1523,6 +1529,7 @@ static void spice_gst_encoder_destroy(VideoEncoder =
*video_encoder)
>  {
>      SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
>
> +    gst_object_unref(encoder->allocator);
>      free_pipeline(encoder);
>      pthread_mutex_destroy(&encoder->outbuf_mutex);
>      pthread_cond_destroy(&encoder->outbuf_cond);
> @@ -1533,35 +1540,45 @@ static void spice_gst_encoder_destroy(VideoEncode=
r *video_encoder)
>      g_free(encoder);
>  }
>
> +static void spice_gst_encoder_add_frame(SpiceGstEncoder *encoder,
> +                                        VideoBuffer **outbuf,
> +                                        uint64_t start,
> +                                        uint32_t frame_mm_time)
> +{
> +    uint32_t last_mm_time =3D get_last_frame_mm_time(encoder);
> +
> +    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - st=
art,
> +              (*outbuf)->size);
> +
> +    int32_t refill =3D encoder->bit_rate * (frame_mm_time - last_mm_time=
) / MSEC_PER_SEC / 8;
> +    encoder->vbuffer_free =3D MIN(encoder->vbuffer_free + refill,
> +                                encoder->vbuffer_size) - (*outbuf)->size=
;
> +
> +    server_increase_bit_rate(encoder, frame_mm_time);
> +    update_next_frame_mm_time(encoder);
> +}
> +
>  static VideoEncodeResults
> -spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
> -                               uint32_t frame_mm_time,
> -                               const SpiceBitmap *bitmap,
> -                               const SpiceRect *src, int top_down,
> -                               gpointer bitmap_opaque,
> -                               VideoBuffer **outbuf)
> +spice_gst_encoder_configure_pipeline(SpiceGstEncoder *encoder,
> +                                     uint32_t width, uint32_t height,
> +                                     const SpiceBitmap *bitmap,
> +                                     uint32_t frame_mm_time)
>  {
> -    SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
> -    g_return_val_if_fail(outbuf !=3D NULL, VIDEO_ENCODER_FRAME_UNSUPPORT=
ED);
> -    *outbuf =3D NULL;
> +    SpiceBitmapFmt format =3D bitmap ? (SpiceBitmapFmt) bitmap->format :
> +                            SPICE_BITMAP_FMT_32BIT;
>
> -    /* Unref the last frame's bitmap_opaque structures if any */
> -    clear_zero_copy_queue(encoder, FALSE);
> -
> -    uint32_t width =3D src->right - src->left;
> -    uint32_t height =3D src->bottom - src->top;
>      if (width !=3D encoder->width || height !=3D encoder->height ||
> -        encoder->spice_format !=3D bitmap->format) {
> +        encoder->spice_format !=3D format) {
>          spice_debug("video format change: width %d -> %d, height %d -> %=
d, format %d -> %d",
>                      encoder->width, width, encoder->height, height,
> -                    encoder->spice_format, bitmap->format);
> -        encoder->format =3D map_format((SpiceBitmapFmt) bitmap->format);
> +                    encoder->spice_format, format);
> +        encoder->format =3D map_format(format);
>          if (encoder->format =3D=3D GSTREAMER_FORMAT_INVALID) {
> -            spice_warning("unable to map format type %d", bitmap->format=
);
> +            spice_warning("unable to map format type %d", format);
>              encoder->errors =3D 4;
>              return VIDEO_ENCODER_FRAME_UNSUPPORTED;
>          }
> -        encoder->spice_format =3D (SpiceBitmapFmt) bitmap->format;
> +        encoder->spice_format =3D format;
>          encoder->width =3D width;
>          encoder->height =3D height;
>          if (encoder->bit_rate =3D=3D 0) {
> @@ -1600,8 +1617,36 @@ spice_gst_encoder_encode_frame(VideoEncoder *video=
_encoder,
>          return VIDEO_ENCODER_FRAME_UNSUPPORTED;
>      }
>
> +    return VIDEO_ENCODER_FRAME_ENCODE_DONE;
> +}
> +
> +static VideoEncodeResults
> +spice_gst_encoder_encode_frame(VideoEncoder *video_encoder,
> +                               uint32_t frame_mm_time,
> +                               const SpiceBitmap *bitmap,
> +                               const SpiceRect *src, int top_down,
> +                               gpointer bitmap_opaque,
> +                               VideoBuffer **outbuf)
> +{
> +    SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
> +    g_return_val_if_fail(outbuf !=3D NULL, VIDEO_ENCODER_FRAME_UNSUPPORT=
ED);
> +    VideoEncodeResults rc;
> +    *outbuf =3D NULL;
> +
> +    /* Unref the last frame's bitmap_opaque structures if any */
> +    clear_zero_copy_queue(encoder, FALSE);
> +
> +    uint32_t width =3D src->right - src->left;
> +    uint32_t height =3D src->bottom - src->top;
> +
> +    rc =3D spice_gst_encoder_configure_pipeline(encoder, width, height,
> +                                              bitmap, frame_mm_time);
> +    if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
> +        return rc;
> +    }
> +
>      uint64_t start =3D spice_get_monotonic_time_ns();
> -    VideoEncodeResults rc =3D push_raw_frame(encoder, bitmap, src, top_d=
own, bitmap_opaque);
> +    rc =3D push_raw_frame(encoder, bitmap, src, top_down, bitmap_opaque)=
;
>      if (rc =3D=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
>          rc =3D pull_compressed_buffer(encoder, outbuf);
>          if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
> @@ -1621,17 +1666,74 @@ spice_gst_encoder_encode_frame(VideoEncoder *vide=
o_encoder,
>      if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
>          return rc;
>      }
> -    uint32_t last_mm_time =3D get_last_frame_mm_time(encoder);
> -    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - st=
art,
> -              (*outbuf)->size);
>
> -    int32_t refill =3D encoder->bit_rate * (frame_mm_time - last_mm_time=
) / MSEC_PER_SEC / 8;
> -    encoder->vbuffer_free =3D MIN(encoder->vbuffer_free + refill,
> -                                encoder->vbuffer_size) - (*outbuf)->size=
;
> +    spice_gst_encoder_add_frame(encoder, outbuf, start, frame_mm_time);
> +    return rc;
> +}
>
> -    server_increase_bit_rate(encoder, frame_mm_time);
> -    update_next_frame_mm_time(encoder);
> +static void
> +spice_gst_mem_free_cb(VideoEncoderDmabufData *dmabuf_data, GstMiniObject=
 *obj)
> +{
> +    if (dmabuf_data->free) {
> +        dmabuf_data->free(dmabuf_data);
> +    }
> +}
>
> +static VideoEncodeResults
> +spice_gst_encoder_encode_dmabuf(VideoEncoder *video_encoder,
> +                                uint32_t frame_mm_time,
> +                                VideoEncoderDmabufData *dmabuf_data,
> +                                VideoBuffer **outbuf)
> +{
> +    SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
> +    g_return_val_if_fail(outbuf !=3D NULL, VIDEO_ENCODER_FRAME_UNSUPPORT=
ED);
> +    g_return_val_if_fail(dmabuf_data !=3D NULL, VIDEO_ENCODER_FRAME_UNSU=
PPORTED);
> +    VideoEncodeResults rc;
> +
> +    rc =3D spice_gst_encoder_configure_pipeline(encoder, dmabuf_data->wi=
dth,
> +                                              dmabuf_data->height, NULL,
> +                                              frame_mm_time);
> +    if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
> +        return rc;
> +    }
> +
> +    gsize size =3D dmabuf_data->stride * dmabuf_data->height;
> +    uint64_t start =3D spice_get_monotonic_time_ns();
> +    GstBuffer *buffer;
> +    GstMemory *mem;
> +    *outbuf =3D NULL;
> +
> +    mem =3D gst_dmabuf_allocator_alloc_with_flags(encoder->allocator,
> +                                                dmabuf_data->drm_dma_buf=
_fd,
> +                                                size,
> +                                                GST_FD_MEMORY_FLAG_DONT_=
CLOSE);
> +    if (!mem) {
> +        return rc;
> +    }
> +    buffer =3D gst_buffer_new();
> +    gst_buffer_append_memory(buffer, mem);
> +    gst_mini_object_weak_ref(GST_MINI_OBJECT(mem),
> +                             (GstMiniObjectNotify)spice_gst_mem_free_cb,
> +                             dmabuf_data);
> +    GstFlowReturn ret =3D gst_app_src_push_buffer(encoder->appsrc, buffe=
r);
> +    if (ret !=3D GST_FLOW_OK) {
> +        spice_warning("GStreamer error: unable to push source buffer (%d=
)", ret);
> +        return rc;
> +    }
> +
> +    rc =3D pull_compressed_buffer(encoder, outbuf);
> +    if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
> +        /* The input buffer will be stuck in the pipeline, preventing
> +         * later ones from being processed. Furthermore something went
> +         * wrong with this pipeline, so it may be safer to rebuild it
> +         * from scratch.
> +         */
> +        free_pipeline(encoder);
> +        encoder->errors++;
> +        return rc;
> +    }
> +
> +    spice_gst_encoder_add_frame(encoder, outbuf, start, frame_mm_time);
>      return rc;
>  }
>
> @@ -1825,6 +1927,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodec=
Type codec_type,
>      SpiceGstEncoder *encoder =3D g_new0(SpiceGstEncoder, 1);
>      encoder->base.destroy =3D spice_gst_encoder_destroy;
>      encoder->base.encode_frame =3D spice_gst_encoder_encode_frame;
> +    encoder->base.encode_dmabuf =3D spice_gst_encoder_encode_dmabuf;
>      encoder->base.client_stream_report =3D spice_gst_encoder_client_stre=
am_report;
>      encoder->base.notify_server_frame_drop =3D spice_gst_encoder_notify_=
server_frame_drop;
>      encoder->base.get_bit_rate =3D spice_gst_encoder_get_bit_rate;
> @@ -1837,6 +1940,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodec=
Type codec_type,
>      encoder->bitmap_ref =3D bitmap_ref;
>      encoder->bitmap_unref =3D bitmap_unref;
>      encoder->format =3D GSTREAMER_FORMAT_INVALID;
> +    encoder->allocator =3D gst_dmabuf_allocator_new();
>      pthread_mutex_init(&encoder->outbuf_mutex, NULL);
>      pthread_cond_init(&encoder->outbuf_cond, NULL);
>

Rest is fine

Frediano
